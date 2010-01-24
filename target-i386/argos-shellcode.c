#include "exec.h"
#include "cpu-defs.h"
#include "libdasm/libdasm.h"
#include "argos-shellcode.h"

int get_current_instr_len(target_ulong eip, unsigned long phys_pc)
{
    INSTRUCTION instr;
    int size = get_instruction(&instr, (BYTE*)phys_pc,
            MODE_32);

    return size;
}
