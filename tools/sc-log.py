#!/usr/bin/env python
# -*- coding: utf-8 -*-

#Copyright (c) 2011, Remco Vermeulen
#All rights reserved.
#
#Redistribution and use in source and binary forms, with or without
#modification, are permitted provided that the following conditions
#are met:
#
# * Redistributions of source code must retain the above copyright
#   notice, this list of conditions and the following disclaimer.
# * Redistributions in binary form must reproduce the above
#   copyright notice, this list of conditions and the following
#   disclaimer in the documentation and/or other materials provided
#   with the distribution.
# * Neither the name of the Vrije Universiteit nor the names of its
#   contributors may be used to endorse or promote products derived
#   from this software without specific prior written permission.
#
#THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
#"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
#LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
#FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
#COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
#INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
#(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
#SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
#HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
#STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
#ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
#OF THE POSSIBILITY OF SUCH DAMAGE.

import sys
import os
import struct
import string
from optparse import OptionParser
import pydasm

class LogHeader():
    STRUCT_FMT = '<HHI'
    STRUCT_SIZE = struct.calcsize(STRUCT_FMT)
    SIGNATURE = 0x4353
    MAJOR_VERSION_MASK = 0xFF00
    MINOR_VERSION_MASK = 0xFF
    ARCH_MASK = 0x80000000
    NET_TRACKER_MASK = 0x40000000
    def __init__(self, header):
        struct_elems = struct.unpack(LogHeader.STRUCT_FMT, header)

        self.signature = struct_elems[0]
        self.version = '%u.%u' % ((struct_elems[1] &
            LogHeader.MAJOR_VERSION_MASK) >> 8,
            struct_elems[1] & LogHeader.MINOR_VERSION_MASK)
        self.arch = 'X86_64' if (struct_elems[2] &
                LogHeader.ARCH_MASK) != 0 else 'X86'
        self.net_tracker = True if (struct_elems[2] &
                LogHeader.NET_TRACKER_MASK) != 0 else False

    def is_valid(self):
        return self.signature == LogHeader.SIGNATURE

    def is_net_tracker_enabled(self):
        return self.net_tracker

    def guest_is_X86(self):
        return self.arch == 'X86'

    def guest_is_X86_64(self):
        return self.arch == 'X86_64'

class CPUState():
    STRUCT_FMT = '<8III'
    STRUCT_SIZE = struct.calcsize(STRUCT_FMT)
    REGISTERS = ('EAX', 'ECX', 'EDX', 'EBX', 'ESP', 'EBP', 'ESI', 'EDI',
            'EIP', 'EFLAGS')
    def __init__(self, cpu_state):
        struct_elems = struct.unpack(CPUState.STRUCT_FMT, cpu_state)
        self.registers= dict(zip(CPUState.REGISTERS, struct_elems))

class Instruction():

    @staticmethod
    def STRUCT_FMT(hdr):
        if hdr.is_net_tracker_enabled() and hdr.version == '1.0':
            return '<15ccc64c15I'
        elif hdr.is_net_tracker_enabled() and hdr.version == '1.1':
            return '<15cc64c15Ic'
        elif hdr.version == '1.0':
            return '<15ccc64c'
        elif hdr.version == '1.1':
            return '<15cc64c'
        else:
            raise Exception()

    @staticmethod
    def STRUCT_SIZE(hdr):
        return struct.calcsize(Instruction.STRUCT_FMT(hdr))

    def __init__(self, hdr, instruction):
        struct_elems = struct.unpack(Instruction.STRUCT_FMT(hdr), instruction)
        self.instr_bytes = struct_elems[:15]
        self.instr =  pydasm.get_instruction(''.join(self.instr_bytes),
                pydasm.MODE_32)
        self.size = ord(struct_elems[15])
        self.symbol = byte_array_to_str(struct_elems[16:80])
        if hdr.is_net_tracker_enabled():
            self.netidx = struct_elems[80:95]
            self.stage = struct_elems[95]

    def __str__(self):
        return pydasm.get_instruction_string(self.instr,
                pydasm.FORMAT_INTEL, 0)

    def is_call(self):
        return self.instr.type == pydasm.INSTRUCTION_TYPE_CALL

    def is_jmp(self):
        return self.instr.type == pydasm.INSTRUCTION_TYPE_JMP

class MemoryAccess():
    MEMORY_NONE = 0
    MEMORY_READ = 1
    MEMORY_WRITE = 2

    @staticmethod
    def STRUCT_FMT(hdr):
        # TODO: Add support X86_64 guest.
        if hdr.is_net_tracker_enabled():
            return '<9I'
        else:
            return '<5I'

    @staticmethod
    def STRUCT_SIZE(hdr):
        return struct.calcsize(MemoryAccess.STRUCT_FMT(hdr))

    def __init__(self, hdr, memory_access):
        struct_elems = struct.unpack(MemoryAccess.STRUCT_FMT(hdr), memory_access)
        self.access_type = struct_elems[0]
        self.vaddr = struct_elems[1]
        self.paddr = struct_elems[2]
        self.value = struct_elems[3]
        self.size = struct_elems[4]
        if hdr.is_net_tracker_enabled():
            self.netidx = struct_elems[5:]

class LogEntry():
    @staticmethod
    def STRUCT_FMT(hdr):
        return  '<' + CPUState.STRUCT_FMT[1:] + \
            Instruction.STRUCT_FMT(hdr)[1:] + \
            2 * MemoryAccess.STRUCT_FMT(hdr)[1:]

    #STRUCT_FMT = '<' + CPUState.STRUCT_FMT[1:] + \
    #        Instruction.STRUCT_FMT(False)[1:] + \
    #        2 * MemoryAccess.STRUCT_FMT(False)[1:]
    @staticmethod
    def STRUCT_SIZE(hdr):
        return struct.calcsize(LogEntry.STRUCT_FMT(hdr))
    #STRUCT_SIZE = struct.calcsize(STRUCT_FMT)

    def __init__(self, hdr, entry):
        begin, end = 0, CPUState.STRUCT_SIZE
        self.cpu_state = CPUState(entry[begin:end])
        begin = end
        end += Instruction.STRUCT_SIZE(hdr)
        self.instr = Instruction(hdr, entry[begin:end])
        begin = end
        end += MemoryAccess.STRUCT_SIZE(hdr)
        self.mem_load = MemoryAccess(hdr, entry[begin:end])
        begin = end
        end += MemoryAccess.STRUCT_SIZE(hdr)
        self.mem_store = MemoryAccess(hdr, entry[begin:end])

# Parameters
output = sys.stdout
show_symbols = False
show_memrefs = False
skip_nopsled = False
roll_loops = False

def main():
    global output, show_symbols, show_memrefs, skip_nopsled, roll_loops

    usage = 'usage: %prog [options] log'
    parser = OptionParser(usage)
    parser.add_option('-o', '--output', dest='output', help='Output file')
    parser.add_option('-m', '--show-memrefs', action='store_true',
            dest='show_memrefs', default=False,
            help='Show the memory accessed by the instructions')
    parser.add_option('-s', '--show-symbols', action='store_true',
            dest='show_symbols', default=False,
            help='Show symbols instead of values')
    parser.add_option('-n', '--skip-nopsled', action='store_true',
            dest='skip_nopsled', default=False,
            help='Skip the nopsled, if present')
    parser.add_option('-l', '--roll-loops', action='store_true',
            dest='roll_loops', default=False,
            help='Compress the execution paths of loops')
    (options, args) = parser.parse_args()

    if len(args) != 1:
        parser.error('Incorrect number of arguments')
        return

    try:
        logfile = open(args[0], 'rb')
        logfile.seek(0, os.SEEK_END)
        file_size = logfile.tell()
        logfile.seek(0, os.SEEK_SET)

        if options.output:
            output = open(options.output, 'w')

        show_memrefs = options.show_memrefs
        show_symbols = options.show_symbols
        skip_nopsled = options.skip_nopsled
        roll_loops = options.roll_loops

        hdr = LogHeader(logfile.read(LogHeader.STRUCT_SIZE))

        if hdr.is_valid():

            entry_cnt = (file_size - LogHeader.STRUCT_SIZE) / \
                LogEntry.STRUCT_SIZE(hdr)

            nop_sled_instr = detect_nopsled_instr(logfile, hdr.net_tracker) if\
                    skip_nopsled else None

            skip_nopsled = True if skip_nopsled and nop_sled_instr != None \
                    else False

            print 'Processing logged instructions.'
            visited_addresses = []
            for i in range(0, entry_cnt):
                print 'Processed: %i%%\r' % (i * 100 / (entry_cnt -1)),
                entry = (LogEntry(hdr, logfile.read(LogEntry.STRUCT_SIZE(hdr))))
                if roll_loops:
                    if entry.cpu_state.registers['EIP'] in visited_addresses:
                        continue
                    else:
                        visited_addresses.append(entry.cpu_state.registers['EIP'])
                if skip_nopsled and entry.instr.instr_bytes == nop_sled_instr:
                    continue

                output_entry(entry)
            print
            print 'Done...'
        else:
            print 'Invalid log file.'

        logfile.close()
    except IOError as e:
        print (e)

def detect_nopsled_instr(logfile, net_tracker):
    if not net_tracker:
        print 'Net-tracker information is not available.'
        print 'Trying to search for nop-sled instruction by sampling first 10 instructions.'
        first_entry_location = logfile.tell()

        entries = {}
        for i in range(0, 10):
            print 'Sampled: %i%%\r' % (i * 100 / 9),
            entry = (LogEntry(logfile.read(LogEntry.STRUCT_SIZE)))
            if entry.instr.instr_bytes in entries:
                entries[entry.instr.instr_bytes] = \
                    entries[entry.instr.instr_bytes] + 1
            else:
                entries[entry.instr.instr_bytes] = 1
        print
        logfile.seek(first_entry_location)


        nop_sled_instr = None
        max_frequency = 0
        for instr in entries.keys():
            if entries[instr] > max_frequency:
                max_frequency = entries[instr]
                nop_sled_instr = instr

        print 'Done...'
        return nop_sled_instr
    else:
        print 'Using net-tracker info to locate nop-sled.'
        return None

def output_entry(entry):
    global output, show_symbols, show_memrefs

    output_string = '%s: ' % (hex(entry.cpu_state.registers['EIP']))
    if not show_symbols or entry.instr.symbol == '':
        output_string += '%s ' % ( str(entry.instr) )
    elif show_symbols and entry.instr.symbol != '' and entry.instr.is_call():
        output_string += 'call %s ' % ( entry.instr.symbol )
    elif show_symbols and entry.instr.symbol != '' and entry.instr.is_jmp():
        output_string += 'jmp %s ' % ( entry.instr.symbol )
    else:
        # For instruction other than call or jmp we do not show the symbols
        output_string += '%s ' % ( str(entry.instr) )

    if show_memrefs and entry.mem_load.access_type != MemoryAccess.MEMORY_NONE:
        output_string += '<- [0x%x] = 0x%x ' % (entry.mem_load.vaddr,
                entry.mem_load.value)
        if is_printable(entry.mem_load.value):
            output_string += '\'%c\'' % chr(entry.mem_load.value)

    if show_memrefs and entry.mem_store.access_type != MemoryAccess.MEMORY_NONE:
        output_string += '-> [0x%x] = 0x%x ' % (entry.mem_store.vaddr,
                entry.mem_store.value)

        if is_printable(entry.mem_store.value):
            output_string += '\'%c\'' % chr(entry.mem_store.value)

    output_string += '\n'
    output.write(output_string)

def is_printable(val):
    if val >= 0 and val <= 255:
        return chr(val) in string.printable
    else:
        return False

def byte_array_to_str(byte_array):
    result = filter( lambda x : x in string.printable,
            ''.join(map(chr, map(ord, byte_array))))
    return result

def print_cpu_state(state):
    registers = ('EAX', 'ECX', 'EDX', 'EBX', 'ESP', 'EBP', 'ESI', 'EDI',
            'EIP', 'EFLAGS')

    for register, value in zip(registers, state):
        print '%s = 0x%x' % (register, value),
    print

if __name__ == '__main__':
    main()
