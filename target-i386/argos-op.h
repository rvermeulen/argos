/* Copyright (c) 2006-2007, Georgios Portokalidis
   All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions
   are met:

    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of the Vrije Universiteit nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
   FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
   COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
   INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
   (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
   SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
   HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
   STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
   ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
   OF THE POSSIBILITY OF SUCH DAMAGE.
*/
#ifndef ARGOS_OP_H
#define ARGOS_OP_H

#include "argos-tag.h"

// dst = dst + src
#define ARGOS_REG_ADD(dst, src)	argos_tag_comb(dst, src)
// dst = dst | src
#define ARGOS_REG_OR(dst, src) 	argos_tag_comb(dst, src)
// dst = dst & src
#define ARGOS_REG_AND(dst, src)	argos_tag_comb(dst, src)
// dst = dst - src
#define ARGOS_REG_SUB(dst, src)	argos_tag_comb(dst, src)
// dst = dst ^ src
#define ARGOS_REG_XOR(dst, src)	argos_tag_comb(dst, src)
// reg = -reg
#define ARGOS_REG_NEG(reg)
// reg++
#define ARGOS_REG_INC(reg)
// reg--
#define ARGOS_REG_DEC(reg)
// reg = ~reg
#define ARGOS_REG_NOT(reg)
// reg = bswap32(reg)
#define ARGOS_REG_BSWAP32(reg)

// dst = dst | (dst * src)
#define ARGOS_REG_MULb(dst, src)	argos_tag_comb(dst, src)
// dst1 = dst1 | (dst1 * src), dst2 = dst2 | (dst1 * src)
#define ARGOS_REG_MULw(dst1, dst2, src)	argos_tag_comb2(dst1, dst2, src)
// dst1 = dst1 * src, dst2 = dst1 * src
#define ARGOS_REG_MULl(dst1, dst2, src)	argos_tag_comb3(dst1, dst2, src)
// dst = dst * src
#define ARGOS_REG_MULwt(dst, src)	argos_tag_comb(dst, src)
// dst = dst * src
#define ARGOS_REG_MULlt(dst, src)	argos_tag_comb(dst, src)

// dst = dst | (dst / src) | (dst % src)
#define ARGOS_REG_DIVb(dst, src)	argos_tag_comb(dst, src)
// dst1 = dst1 | ((dst1 | dst2) / src), dst2 = dst2 | ((dst1 | dst2) % src)
#define ARGOS_REG_DIVw(dst1, dst2, src)	argos_tag_comb4(dst1, dst2, src)

// reg = PARAM
#define ARGOS_REG_MOVIMl(reg)		argos_tag_clear(reg)
// reg = reg + PARAM
#define ARGOS_REG_ADDIM(reg)
// reg = reg & 0xffff
#define ARGOS_REG_ANDffff(reg)
// reg = reg & PARAM
#define ARGOS_REG_ANDIM(reg, im)			\
	do {						\
		if ((im) == 0) argos_tag_clear(reg);	\
	} while (0)
// dst = src
#define ARGOS_REG_MOV(dst, src)		argos_tag_copy(dst, src)
// reg = reg + PARAM
#define ARGOS_REG_ADDIMl(reg)

// reg = env(segment)
#define ARGOS_REG_MOVSEGl(reg)		argos_tag_clear(reg)
// reg = reg + env(segment)
#define ARGOS_REG_ADDSEGl(reg)
// dst = dst + src
#define ARGOS_REG_ADDl(dst, src)	argos_tag_comb(dst, src)

// reg = PARAM
#define ARGOS_REG_MOVIMq(reg)		argos_tag_clear(reg)
// reg = reg + PARAM
#define ARGOS_REG_ADDIMq(reg)
// reg = env(segment)
#define ARGOS_REG_MOVSEG(reg)		argos_tag_clear(reg)
// reg = reg + env(segment)
#define ARGOS_REG_ADDSEG(reg)
// reg = 0
#define ARGOS_REG_MOV0(reg)		argos_tag_clear(reg)

// reg = (8bit)reg
#define ARGOS_REG_CASTb(reg)
// reg = (16bit)reg
#define ARGOS_REG_CASTw(reg)
// reg = (32bit)reg
#define ARGOS_REG_CASTl(reg)
// reg = reg | reg
#define ARGOS_REG_MOVSbw(reg)		// argos_tag_clear(reg) // XXX
// dst = sign(src)
#define ARGOS_REG_MOVSlq(dst, src)	argos_tag_clear(dst)
// dst = dst | sign(src)
#define ARGOS_REG_MOVSwl(dst, src)	// argos_tag_clear(dst) // XXX
// dst = sign(src)
#define ARGOS_REG_MOVSqo(dst, src)	argos_tag_clear(dst)
// dst = dst | (dst + src)
#define ARGOS_REG_ADDw(dst, src)	argos_tag_comb(dst, src)

// reg = reg - 1
#define ARGOS_REG_DECl(reg)
// reg = reg | (reg - 1)
#define ARGOS_REG_DECw(reg)

// reg = reg + env(SS)
#define ARGOS_REG_ADDSSl(reg)
// reg = reg - 2
#define ARGOS_REG_SUB2l(reg)
// reg = reg - 4
#define ARGOS_REG_SUB4l(reg)
// reg = reg + 4
#define ARGOS_REG_ADD4l(reg)
// reg = reg + 2
#define ARGOS_REG_ADD2l(reg)
// reg = reg + 4
#define ARGOS_REG_ADD4w(reg)
// reg = reg + 2
#define ARGOS_REG_ADD2w(reg)
// reg = reg + 2
#define ARGOS_REG_ADDIMw(reg)
// reg = reg - 2
#define ARGOS_REG_SUB2q(reg)
// reg = reg - 8
#define ARGOS_REG_SUB8(reg)
// reg = reg + 8
#define ARGOS_REG_ADD8(reg)

#define ARGOS_REG_AAM(reg) 	argos_tag_clear(reg)
#define ARGOS_REG_AAD(reg) 	argos_tag_clear(reg)
#define ARGOS_REG_AAA(reg) 	argos_tag_clear(reg)
#define ARGOS_REG_AAS(reg) 	argos_tag_clear(reg)
#define ARGOS_REG_DAA(reg) 	argos_tag_clear(reg)
#define ARGOS_REG_DAS(reg) 	argos_tag_clear(reg)


#define ARGOS_REG_ARP(reg1, reg2)				\
	do {							\
		argos_tag_clear(reg1);				\
		argos_tag_clear(reg2);				\
	} while (0)

// reg = get_apic
#define ARGOS_REG_MOVCR8t(reg)		argos_tag_clear(reg)
// reg = cr0 | reg
#define ARGOS_REG_LMSw(reg)		argos_tag_clear(reg)
 
// reg = cc | eflags
#define ARGOS_REG_SETCC(reg)		argos_tag_clear(reg)
// reg = reg ^ 1
#define ARGOS_REG_XOR1(reg)
// reg = cc
#define ARGOS_REG_MOVCC(reg)		argos_tag_clear(reg)
// reg = EFLAGS
#define ARGOS_REG_MOVEFLAGS(reg)	argos_tag_clear(reg)
// reg = reg | cc
#define ARGOS_REG_SALC(reg)		argos_tag_clear(reg)
// reg = reg | cc
#define ARGOS_REG_FNSTSw(reg)		argos_tag_clear(reg)

// dst = src
#define ARGOS_REG_MOVl(dst, src)	argos_tag_copy(dst, src)

// dst = dst + (src << 1)
#define ARGOS_REG_ADDS1l(dst, src)	argos_tag_clear(dst)//argos_tag_comb(dst, src) // XXX
// dst = dst + (src << 2)
#define ARGOS_REG_ADDS2l(dst, src)	argos_tag_clear(dst)//argos_tag_comb(dst, src) // XXX
// dst = dst + (src << 3)
#define ARGOS_REG_ADDS3l(dst, src)	argos_tag_clear(dst)//argos_tag_comb(dst, src) // XXX

// dst = dst + (src << 1)
#define ARGOS_REG_ADDS1(dst, src)	argos_tag_clear(dst)//argos_tag_comb(dst, src) // XXX
// dst = dst + (src << 1)
#define ARGOS_REG_ADDS2(dst, src)	argos_tag_clear(dst)//argos_tag_comb(dst, src) // XXX
// dst = dst + (src << 1)
#define ARGOS_REG_ADDS3(dst, src)	argos_tag_clear(dst)//argos_tag_comb(dst, src) // XXX

// dst = src >> 8
#define ARGOS_REG_MOVht(dst, src)	argos_tag_copy(dst, src) // XXX
// dst = dst | src
#define ARGOS_REG_MOVw(dst, src)	argos_tag_comb(dst, src)
// dst = dst | src
#define ARGOS_REG_MOVb(dst, src)	argos_tag_comb(dst, src)
// dst = dst | src
#define ARGOS_REG_MOVh(dst, src)	argos_tag_comb(dst, src) // XXX

// reg = CC...
#define ARGOS_REG_SETSUB(reg)		argos_tag_clear(reg)

// reg = reg << count
#define argos_reg_shift(tag, count, len)		\
	do {						\
		if ((count) >= (len))			\
			argos_tag_clear((tag));		\
	} while (0)

#define ARGOS_REG_SHLb(reg, count)	argos_reg_shift(reg, count, 8)
#define ARGOS_REG_SHLw(reg, count)	argos_reg_shift(reg, count, 16)
#define ARGOS_REG_SHLl(reg, count)	argos_reg_shift(reg, count, 32)
#define ARGOS_REG_SHLq(reg, count)	argos_reg_shift(reg, count, 64)
#define ARGOS_REG_SHRb(reg, count)	argos_reg_shift(reg, count, 8)
#define ARGOS_REG_SHRw(reg, count)	argos_reg_shift(reg, count, 16)
#define ARGOS_REG_SHRl(reg, count)	argos_reg_shift(reg, count, 32)
#define ARGOS_REG_SHRq(reg, count)	argos_reg_shift(reg, count, 64)
#define ARGOS_REG_SARb(reg, count)	argos_reg_shift(reg, count, 8)
#define ARGOS_REG_SARw(reg, count)	argos_reg_shift(reg, count, 16)
#define ARGOS_REG_SARl(reg, count)	argos_reg_shift(reg, count, 32)
#define ARGOS_REG_SARq(reg, count)	argos_reg_shift(reg, count, 64)

// reg1 = reg1 | (1 << count), reg2 = reg1 >> count
#define ARGOS_REG_BTS(reg1, reg2, count)	argos_tag_clear(reg2) //argos_tag_copy(reg2, reg1) // XXX
// reg1 = reg1 | (1 << count), reg2 = reg1 >> count
#define ARGOS_REG_BTR(reg1, reg2, count)	argos_tag_clear(reg2) //argos_tag_copy(reg2, reg1) // XXX
// reg1 = reg1 | (1 << count), reg2 = reg1 >> count
#define ARGOS_REG_BTC(reg1, reg2, count)	argos_tag_clear(reg2) //argos_tag_copy(reg2, reg1) // XXX
// reg1 = reg1 + ((reg2 >> n)  << n)
#define ARGOS_REG_ADDBIT(reg1, reg2)

// reg = n
#define ARGOS_REG_BSF(reg)		argos_tag_clear(reg)
// reg = n
#define ARGOS_REG_BSR(reg)		argos_tag_clear(reg)
// reg = DF
#define ARGOS_REG_MOVDSHIFT(reg)	argos_tag_clear(reg)


#define ARGOS_REG_ROL(reg)	argos_tag_clear(reg) // XXX
#define ARGOS_REG_ROR(reg)	argos_tag_clear(reg) // XXX
#define ARGOS_REG_RCL(reg)	argos_tag_clear(reg) // XXX
#define ARGOS_REG_RCR(reg)	argos_tag_clear(reg) // XXX

#define argos_reg_dshift(r1, r2, count)		\
	do {					\
		argos_tag_clear(r1);		\
		argos_tag_clear(r2);		\
	} while (0)

#define ARGOS_REG_SHLDb(reg1, reg2, count) argos_reg_dshift(reg1, reg2, count)
#define ARGOS_REG_SHLDw(reg1, reg2, count) argos_reg_dshift(reg1, reg2, count)
#define ARGOS_REG_SHLDl(reg1, reg2, count) argos_reg_dshift(reg1, reg2, count)
#define ARGOS_REG_SHLDq(reg1, reg2, count) argos_reg_dshift(reg1, reg2, count)
#define ARGOS_REG_SHRDb(reg1, reg2, count) argos_reg_dshift(reg1, reg2, count)
#define ARGOS_REG_SHRDw(reg1, reg2, count) argos_reg_dshift(reg1, reg2, count)
#define ARGOS_REG_SHRDl(reg1, reg2, count) argos_reg_dshift(reg1, reg2, count)
#define ARGOS_REG_SHRDq(reg1, reg2, count) argos_reg_dshift(reg1, reg2, count)

// dst = dst + src + cf
#define ARGOS_REG_ADC(dst, src)		argos_tag_comb(dst, src)
// dst = dst - src -cf 
#define ARGOS_REG_SBB(dst, src)		argos_tag_comb(dst, src)



#define ARGOS_REG_DIVl(dst1, dst2, src)		argos_tag_comb4(dst1, dst2, src)
#define ARGOS_REG_MULq(dst1, dst2, src)		argos_tag_comb3(dst1, dst2, src)
#define ARGOS_REG_MULqt(dst, src)		argos_tag_comb(dst, src)
#define ARGOS_REG_DIVq(dst1, dst2, src)		argos_tag_comb4(dst1, dst2, src)

#define ARGOS_REG_BSWAP64(reg)

#endif
