void OPPROTO glue(glue(op_ldub, MEMSUFFIX), _T0_A0)(void)
{
    //T0 = glue(ldub, MEMSUFFIX)(A0);
    glue(ARGOS_LDub, MEMSUFFIX)(A0, T0, T0TAG);
}

void OPPROTO glue(glue(op_ldsb, MEMSUFFIX), _T0_A0)(void)
{
    //T0 = glue(ldsb, MEMSUFFIX)(A0);
    glue(ARGOS_LDsb, MEMSUFFIX)(A0, T0, T0TAG);
}

void OPPROTO glue(glue(op_lduw, MEMSUFFIX), _T0_A0)(void)
{
    //T0 = glue(lduw, MEMSUFFIX)(A0);
    glue(ARGOS_LDuw, MEMSUFFIX)(A0, T0, T0TAG);
}

void OPPROTO glue(glue(op_ldsw, MEMSUFFIX), _T0_A0)(void)
{
    //T0 = glue(ldsw, MEMSUFFIX)(A0);
    glue(ARGOS_LDsw, MEMSUFFIX)(A0, T0, T0TAG);
}

void OPPROTO glue(glue(op_ldl, MEMSUFFIX), _T0_A0)(void)
{
    //T0 = (uint32_t)glue(ldl, MEMSUFFIX)(A0);
    glue(ARGOS_LDl, MEMSUFFIX)(A0, T0, T0TAG);
}

void OPPROTO glue(glue(op_ldub, MEMSUFFIX), _T1_A0)(void)
{
    //T1 = glue(ldub, MEMSUFFIX)(A0);
    glue(ARGOS_LDub, MEMSUFFIX)(A0, T1, T1TAG);
}

void OPPROTO glue(glue(op_ldsb, MEMSUFFIX), _T1_A0)(void)
{
    //T1 = glue(ldsb, MEMSUFFIX)(A0);
   glue(ARGOS_LDsb, MEMSUFFIX)(A0, T1, T1TAG);
}

void OPPROTO glue(glue(op_lduw, MEMSUFFIX), _T1_A0)(void)
{
    //T1 = glue(lduw, MEMSUFFIX)(A0);
    glue(ARGOS_LDuw, MEMSUFFIX)(A0, T1, T1TAG);
}

void OPPROTO glue(glue(op_ldsw, MEMSUFFIX), _T1_A0)(void)
{
    //T1 = glue(ldsw, MEMSUFFIX)(A0);
    glue(ARGOS_LDsw, MEMSUFFIX)(A0, T1, T1TAG);
}

void OPPROTO glue(glue(op_ldl, MEMSUFFIX), _T1_A0)(void)
{
    //T1 = (uint32_t)glue(ldl, MEMSUFFIX)(A0);
    glue(ARGOS_LDl, MEMSUFFIX)(A0, T1, T1TAG);
}

void OPPROTO glue(glue(op_stb, MEMSUFFIX), _T0_A0)(void)
{
    //glue(stb, MEMSUFFIX)(A0, T0);
    glue(ARGOS_STb, MEMSUFFIX)(A0, T0, T0TAG);
    FORCE_RET();
}

void OPPROTO glue(glue(op_stw, MEMSUFFIX), _T0_A0)(void)
{
    //glue(stw, MEMSUFFIX)(A0, T0);
    glue(ARGOS_STw, MEMSUFFIX)(A0, T0, T0TAG);
    FORCE_RET();
}

void OPPROTO glue(glue(op_stl, MEMSUFFIX), _T0_A0)(void)
{
    //glue(stl, MEMSUFFIX)(A0, T0);
    glue(ARGOS_STl, MEMSUFFIX)(A0, T0, T0TAG);
    FORCE_RET();
}

#if 0
void OPPROTO glue(glue(op_stb, MEMSUFFIX), _T1_A0)(void)
{
    glue(stb, MEMSUFFIX)(A0, T1);
    FORCE_RET();
}
#endif

void OPPROTO glue(glue(op_stw, MEMSUFFIX), _T1_A0)(void)
{
    //glue(stw, MEMSUFFIX)(A0, T1);
    glue(ARGOS_STw, MEMSUFFIX)(A0, T1, T1TAG);
    FORCE_RET();
}

void OPPROTO glue(glue(op_stl, MEMSUFFIX), _T1_A0)(void)
{
    //glue(stl, MEMSUFFIX)(A0, T1);
    glue(ARGOS_STl, MEMSUFFIX)(A0, T1, T1TAG);
    FORCE_RET();
}

/* SSE/MMX support */
void OPPROTO glue(glue(op_ldq, MEMSUFFIX), _env_A0)(void)
{
    uint64_t *p;
    p = (uint64_t *)((char *)env + PARAM1);
    //*p = glue(ldq, MEMSUFFIX)(A0);
    glue(ARGOS_MMX_LDq, MEMSUFFIX)(A0, p);
}

void OPPROTO glue(glue(op_stq, MEMSUFFIX), _env_A0)(void)
{
    uint64_t *p;
    p = (uint64_t *)((char *)env + PARAM1);
    //glue(stq, MEMSUFFIX)(A0, *p);
    glue(ARGOS_MMX_STq, MEMSUFFIX)(A0, p);
    FORCE_RET();
}

void OPPROTO glue(glue(op_ldo, MEMSUFFIX), _env_A0)(void)
{
    XMMReg *p;
    p = (XMMReg *)((char *)env + PARAM1);
    //p->XMM_Q(0) = glue(ldq, MEMSUFFIX)(A0);
    glue(ARGOS_MMX_LDq, MEMSUFFIX)(A0, &(p->XMM_Q(0)));
    //p->XMM_Q(1) = glue(ldq, MEMSUFFIX)(A0 + 8);
    glue(ARGOS_MMX_LDq, MEMSUFFIX)(A0 + 8, &(p->XMM_Q(1)));
}

void OPPROTO glue(glue(op_sto, MEMSUFFIX), _env_A0)(void)
{
    XMMReg *p;
    p = (XMMReg *)((char *)env + PARAM1);
    //glue(stq, MEMSUFFIX)(A0, p->XMM_Q(0));
    glue(ARGOS_MMX_STq, MEMSUFFIX)(A0, &(p->XMM_Q(0)));
    //glue(stq, MEMSUFFIX)(A0 + 8, p->XMM_Q(1));
    glue(ARGOS_MMX_STq, MEMSUFFIX)(A0 + 8, &(p->XMM_Q(1)));
    FORCE_RET();
}

#ifdef TARGET_X86_64
void OPPROTO glue(glue(op_ldsl, MEMSUFFIX), _T0_A0)(void)
{
    //T0 = (int32_t)glue(ldl, MEMSUFFIX)(A0);
    glue(ARGOS_LDsl, MEMSUFFIX)(A0, T0, T0TAG);
}

void OPPROTO glue(glue(op_ldsl, MEMSUFFIX), _T1_A0)(void)
{
    //T1 = (int32_t)glue(ldl, MEMSUFFIX)(A0);
    glue(ARGOS_LDsl, MEMSUFFIX)(A0, T1, T1TAG);
}

void OPPROTO glue(glue(op_ldq, MEMSUFFIX), _T0_A0)(void)
{
    //T0 = glue(ldq, MEMSUFFIX)(A0);
    glue(ARGOS_LDq, MEMSUFFIX)(A0, T0, T0TAG);
}

void OPPROTO glue(glue(op_ldq, MEMSUFFIX), _T1_A0)(void)
{
    //T1 = glue(ldq, MEMSUFFIX)(A0);
    glue(ARGOS_LDq, MEMSUFFIX)(A0, T1, T1TAG);
}

void OPPROTO glue(glue(op_stq, MEMSUFFIX), _T0_A0)(void)
{
    //glue(stq, MEMSUFFIX)(A0, T0);
    glue(ARGOS_STq, MEMSUFFIX)(A0, T0, T0TAG);
    FORCE_RET();
}

void OPPROTO glue(glue(op_stq, MEMSUFFIX), _T1_A0)(void)
{
    //glue(stq, MEMSUFFIX)(A0, T1);
    glue(ARGOS_STq, MEMSUFFIX)(A0, T1, T1TAG);
    FORCE_RET();
}
#endif

#undef MEMSUFFIX
