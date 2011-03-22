/*
 *  i386 micro operations (templates for various register related
 *  operations)
 *
 *  Copyright (c) 2003 Fabrice Bellard
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

void OPPROTO glue(op_argos_clean,REGNAME)(void)
{
    argos_tag_clear(REGTAG);
}

void OPPROTO glue(op_movl_A0,REGNAME)(void)
{
    A0 = (uint32_t)REG;
    ARGOS_REG_MOVl(A0TAG, REGTAG);
}

void OPPROTO glue(op_addl_A0,REGNAME)(void)
{
    A0 = (uint32_t)(A0 + REG);
    ARGOS_REG_ADDl(A0TAG, REGTAG);
}

void OPPROTO glue(glue(op_addl_A0,REGNAME),_s1)(void)
{
    A0 = (uint32_t)(A0 + (REG << 1));
    ARGOS_REG_ADDS1l(A0TAG, REGTAG);
}

void OPPROTO glue(glue(op_addl_A0,REGNAME),_s2)(void)
{
    A0 = (uint32_t)(A0 + (REG << 2));
    ARGOS_REG_ADDS2l(A0TAG, REGTAG);
}

void OPPROTO glue(glue(op_addl_A0,REGNAME),_s3)(void)
{
    A0 = (uint32_t)(A0 + (REG << 3));
    ARGOS_REG_ADDS3l(A0TAG, REGTAG);
}

#ifdef TARGET_X86_64
void OPPROTO glue(op_movq_A0,REGNAME)(void)
{
    A0 = REG;
    ARGOS_REG_MOV(A0TAG, REGTAG);
}

void OPPROTO glue(op_addq_A0,REGNAME)(void)
{
    A0 = (A0 + REG);
    ARGOS_REG_ADD(A0TAG, REGTAG);
}

void OPPROTO glue(glue(op_addq_A0,REGNAME),_s1)(void)
{
    A0 = (A0 + (REG << 1));
    ARGOS_REG_ADDS1(A0TAG, REGTAG);
}

void OPPROTO glue(glue(op_addq_A0,REGNAME),_s2)(void)
{
    A0 = (A0 + (REG << 2));
    ARGOS_REG_ADDS2(A0TAG, REGTAG);
}

void OPPROTO glue(glue(op_addq_A0,REGNAME),_s3)(void)
{
    A0 = (A0 + (REG << 3));
    ARGOS_REG_ADDS3(A0TAG, REGTAG);
}
#endif

void OPPROTO glue(op_movl_T0,REGNAME)(void)
{
    T0 = REG;
    ARGOS_REG_MOV(T0TAG, REGTAG);
}

void OPPROTO glue(op_movl_T1,REGNAME)(void)
{
    T1 = REG;
    ARGOS_REG_MOV(T1TAG, REGTAG);
}

void OPPROTO glue(op_movh_T0,REGNAME)(void)
{
    T0 = REG >> 8;
    ARGOS_REG_MOVht(T0TAG, REGTAG);
}

void OPPROTO glue(op_movh_T1,REGNAME)(void)
{
    T1 = REG >> 8;
    ARGOS_REG_MOVht(T1TAG, REGTAG);
}

void OPPROTO glue(glue(op_movl,REGNAME),_T0)(void)
{
    REG = (uint32_t)T0;
    ARGOS_REG_MOVl(REGTAG, T0TAG);
}

void OPPROTO glue(glue(op_movl,REGNAME),_T1)(void)
{
    REG = (uint32_t)T1;
    ARGOS_REG_MOVl(REGTAG, T1TAG);
}

void OPPROTO glue(glue(op_movl,REGNAME),_A0)(void)
{
    REG = (uint32_t)A0;
    ARGOS_REG_MOVl(REGTAG, A0TAG);
}

#ifdef TARGET_X86_64
void OPPROTO glue(glue(op_movq,REGNAME),_T0)(void)
{
    REG = T0;
    ARGOS_REG_MOV(REGTAG, T0TAG);
}

void OPPROTO glue(glue(op_movq,REGNAME),_T1)(void)
{
    REG = T1;
    ARGOS_REG_MOV(REGTAG, T1TAG);
}

void OPPROTO glue(glue(op_movq,REGNAME),_A0)(void)
{
    REG = A0;
    ARGOS_REG_MOV(REGTAG, A0TAG);
}
#endif

/* mov T1 to REG if T0 is true */
void OPPROTO glue(glue(op_cmovw,REGNAME),_T1_T0)(void)
{
    if (T0) {
        REG = (REG & ~0xffff) | (T1 & 0xffff);
	ARGOS_REG_MOVw(REGTAG, T1TAG);
    }
    FORCE_RET();
}

void OPPROTO glue(glue(op_cmovl,REGNAME),_T1_T0)(void)
{
    if (T0) {
        REG = (uint32_t)T1;
	ARGOS_REG_MOVl(REGTAG, T1TAG);
    }
    FORCE_RET();
}

#ifdef TARGET_X86_64
void OPPROTO glue(glue(op_cmovq,REGNAME),_T1_T0)(void)
{
    if (T0) {
        REG = T1;
	ARGOS_REG_MOV(REGTAG, T1TAG);
    }
    FORCE_RET();
}
#endif

/* NOTE: T0 high order bits are ignored */
void OPPROTO glue(glue(op_movw,REGNAME),_T0)(void)
{
    REG = (REG & ~0xffff) | (T0 & 0xffff);
    ARGOS_REG_MOVw(REGTAG, T0TAG);
}

/* NOTE: T0 high order bits are ignored */
void OPPROTO glue(glue(op_movw,REGNAME),_T1)(void)
{
    REG = (REG & ~0xffff) | (T1 & 0xffff);
    ARGOS_REG_MOVw(REGTAG, T1TAG);
}

/* NOTE: A0 high order bits are ignored */
void OPPROTO glue(glue(op_movw,REGNAME),_A0)(void)
{
    REG = (REG & ~0xffff) | (A0 & 0xffff);
    ARGOS_REG_MOVw(REGTAG, A0TAG);
}

/* NOTE: T0 high order bits are ignored */
void OPPROTO glue(glue(op_movb,REGNAME),_T0)(void)
{
    REG = (REG & ~0xff) | (T0 & 0xff);
    ARGOS_REG_MOVb(REGTAG, T0TAG);
}

/* NOTE: T0 high order bits are ignored */
void OPPROTO glue(glue(op_movh,REGNAME),_T0)(void)
{
    REG = (REG & ~0xff00) | ((T0 & 0xff) << 8);
    ARGOS_REG_MOVh(REGTAG, T0TAG);
}

/* NOTE: T1 high order bits are ignored */
void OPPROTO glue(glue(op_movb,REGNAME),_T1)(void)
{
    REG = (REG & ~0xff) | (T1 & 0xff);
    ARGOS_REG_MOVb(REGTAG, T1TAG);
}

/* NOTE: T1 high order bits are ignored */
void OPPROTO glue(glue(op_movh,REGNAME),_T1)(void)
{
    REG = (REG & ~0xff00) | ((T1 & 0xff) << 8);
    ARGOS_REG_MOVh(REGTAG, T1TAG);
}

