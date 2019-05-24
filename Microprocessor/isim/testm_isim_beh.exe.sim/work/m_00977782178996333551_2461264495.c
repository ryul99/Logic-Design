/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/csehome/cmchoi9901/Logic Design/Microprocessor/DataMemory.v";
static int ng1[] = {0, 0};
static int ng2[] = {32, 0};
static int ng3[] = {16, 0};
static int ng4[] = {1, 0};



static void Always_33_0(char *t0)
{
    char t13[8];
    char t17[8];
    char t19[8];
    char t20[8];
    char t45[8];
    char t76[8];
    char t86[8];
    char t88[8];
    char t90[8];
    char t91[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    int t32;
    char *t33;
    unsigned int t34;
    int t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    int t39;
    int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    char *t87;
    char *t89;
    char *t92;
    char *t93;
    char *t94;
    char *t95;
    char *t96;
    char *t97;
    char *t98;
    char *t99;
    char *t100;
    char *t101;
    unsigned int t102;
    char *t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    int t107;
    int t108;

LAB0:    t1 = (t0 + 3320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 3888);
    *((int *)t2) = 1;
    t3 = (t0 + 3352);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB36;

LAB37:
LAB38:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(34, ng0);

LAB9:    xsi_set_current_line(35, ng0);
    xsi_set_current_line(35, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2408);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 32);

LAB10:    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_signed_less(t13, 32, t4, 32, t5, 32);
    t11 = (t13 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB11;

LAB12:    goto LAB8;

LAB11:    xsi_set_current_line(35, ng0);

LAB13:    xsi_set_current_line(36, ng0);
    t12 = (t0 + 2408);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = ((char*)((ng3)));
    memset(t17, 0, 8);
    xsi_vlog_signed_mod(t17, 32, t15, 32, t16, 32);
    t18 = (t0 + 2088);
    t21 = (t0 + 2088);
    t22 = (t21 + 72U);
    t23 = *((char **)t22);
    t24 = (t0 + 2088);
    t25 = (t24 + 64U);
    t26 = *((char **)t25);
    t27 = (t0 + 2408);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    xsi_vlog_generic_convert_array_indices(t19, t20, t23, t26, 2, 1, t29, 32, 1);
    t30 = (t19 + 4);
    t31 = *((unsigned int *)t30);
    t32 = (!(t31));
    t33 = (t20 + 4);
    t34 = *((unsigned int *)t33);
    t35 = (!(t34));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB14;

LAB15:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_signed_greater(t13, 32, t4, 32, t5, 32);
    memset(t17, 0, 8);
    t11 = (t13 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t11) != 0)
        goto LAB18;

LAB19:    t14 = (t17 + 4);
    t31 = *((unsigned int *)t17);
    t34 = *((unsigned int *)t14);
    t37 = (t31 || t34);
    if (t37 > 0)
        goto LAB20;

LAB21:    memcpy(t45, t17, 8);

LAB22:    t29 = (t45 + 4);
    t70 = *((unsigned int *)t29);
    t71 = (~(t70));
    t72 = *((unsigned int *)t45);
    t73 = (t72 & t71);
    t74 = (t73 != 0);
    if (t74 > 0)
        goto LAB30;

LAB31:
LAB32:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t13, 0, 8);
    xsi_vlog_signed_add(t13, 32, t4, 32, t5, 32);
    t11 = (t0 + 2408);
    xsi_vlogvar_assign_value(t11, t13, 0, 0, 32);
    goto LAB10;

LAB14:    t37 = *((unsigned int *)t19);
    t38 = *((unsigned int *)t20);
    t39 = (t37 - t38);
    t40 = (t39 + 1);
    xsi_vlogvar_assign_value(t18, t17, 0, *((unsigned int *)t20), t40);
    goto LAB15;

LAB16:    *((unsigned int *)t17) = 1;
    goto LAB19;

LAB18:    t12 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB19;

LAB20:    t15 = (t0 + 2408);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    t21 = ((char*)((ng2)));
    memset(t19, 0, 8);
    xsi_vlog_signed_less(t19, 32, t18, 32, t21, 32);
    memset(t20, 0, 8);
    t22 = (t19 + 4);
    t38 = *((unsigned int *)t22);
    t41 = (~(t38));
    t42 = *((unsigned int *)t19);
    t43 = (t42 & t41);
    t44 = (t43 & 1U);
    if (t44 != 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t22) != 0)
        goto LAB25;

LAB26:    t46 = *((unsigned int *)t17);
    t47 = *((unsigned int *)t20);
    t48 = (t46 & t47);
    *((unsigned int *)t45) = t48;
    t24 = (t17 + 4);
    t25 = (t20 + 4);
    t26 = (t45 + 4);
    t49 = *((unsigned int *)t24);
    t50 = *((unsigned int *)t25);
    t51 = (t49 | t50);
    *((unsigned int *)t26) = t51;
    t52 = *((unsigned int *)t26);
    t53 = (t52 != 0);
    if (t53 == 1)
        goto LAB27;

LAB28:
LAB29:    goto LAB22;

LAB23:    *((unsigned int *)t20) = 1;
    goto LAB26;

LAB25:    t23 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB26;

LAB27:    t54 = *((unsigned int *)t45);
    t55 = *((unsigned int *)t26);
    *((unsigned int *)t45) = (t54 | t55);
    t27 = (t17 + 4);
    t28 = (t20 + 4);
    t56 = *((unsigned int *)t17);
    t57 = (~(t56));
    t58 = *((unsigned int *)t27);
    t59 = (~(t58));
    t60 = *((unsigned int *)t20);
    t61 = (~(t60));
    t62 = *((unsigned int *)t28);
    t63 = (~(t62));
    t32 = (t57 & t59);
    t35 = (t61 & t63);
    t64 = (~(t32));
    t65 = (~(t35));
    t66 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t66 & t64);
    t67 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t67 & t65);
    t68 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t68 & t64);
    t69 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t69 & t65);
    goto LAB29;

LAB30:    xsi_set_current_line(37, ng0);

LAB33:    xsi_set_current_line(38, ng0);
    t30 = (t0 + 2088);
    t33 = (t30 + 56U);
    t75 = *((char **)t33);
    t77 = (t0 + 2088);
    t78 = (t77 + 72U);
    t79 = *((char **)t78);
    t80 = (t0 + 2088);
    t81 = (t80 + 64U);
    t82 = *((char **)t81);
    t83 = (t0 + 2408);
    t84 = (t83 + 56U);
    t85 = *((char **)t84);
    xsi_vlog_generic_get_array_select_value(t76, 32, t75, t79, t82, 2, 1, t85, 32, 1);
    t87 = ((char*)((ng4)));
    memset(t86, 0, 8);
    xsi_vlog_unsigned_unary_minus(t86, 32, t87, 32);
    memset(t88, 0, 8);
    xsi_vlog_unsigned_multiply(t88, 32, t76, 32, t86, 32);
    t89 = (t0 + 2088);
    t92 = (t0 + 2088);
    t93 = (t92 + 72U);
    t94 = *((char **)t93);
    t95 = (t0 + 2088);
    t96 = (t95 + 64U);
    t97 = *((char **)t96);
    t98 = (t0 + 2408);
    t99 = (t98 + 56U);
    t100 = *((char **)t99);
    xsi_vlog_generic_convert_array_indices(t90, t91, t94, t97, 2, 1, t100, 32, 1);
    t101 = (t90 + 4);
    t102 = *((unsigned int *)t101);
    t36 = (!(t102));
    t103 = (t91 + 4);
    t104 = *((unsigned int *)t103);
    t39 = (!(t104));
    t40 = (t36 && t39);
    if (t40 == 1)
        goto LAB34;

LAB35:    goto LAB32;

LAB34:    t105 = *((unsigned int *)t90);
    t106 = *((unsigned int *)t91);
    t107 = (t105 - t106);
    t108 = (t107 + 1);
    xsi_vlogvar_assign_value(t89, t88, 0, *((unsigned int *)t91), t108);
    goto LAB35;

LAB36:    xsi_set_current_line(42, ng0);

LAB39:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 2088);
    t11 = (t0 + 2088);
    t12 = (t11 + 72U);
    t14 = *((char **)t12);
    t15 = (t0 + 2088);
    t16 = (t15 + 64U);
    t18 = *((char **)t16);
    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    xsi_vlog_generic_convert_array_indices(t13, t17, t14, t18, 2, 1, t22, 8, 2);
    t21 = (t13 + 4);
    t31 = *((unsigned int *)t21);
    t32 = (!(t31));
    t23 = (t17 + 4);
    t34 = *((unsigned int *)t23);
    t35 = (!(t34));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB40;

LAB41:    goto LAB38;

LAB40:    t37 = *((unsigned int *)t13);
    t38 = *((unsigned int *)t17);
    t39 = (t37 - t38);
    t40 = (t39 + 1);
    xsi_vlogvar_assign_value(t4, t5, 0, *((unsigned int *)t17), t40);
    goto LAB41;

}

static void Cont_46_1(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;

LAB0:    t1 = (t0 + 3568U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2088);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 2088);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = (t0 + 1048U);
    t13 = *((char **)t12);
    xsi_vlog_generic_get_array_select_value(t5, 8, t4, t8, t11, 2, 1, t13, 8, 2);
    t12 = (t0 + 3984);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memset(t17, 0, 8);
    t18 = 255U;
    t19 = t18;
    t20 = (t5 + 4);
    t21 = *((unsigned int *)t5);
    t18 = (t18 & t21);
    t22 = *((unsigned int *)t20);
    t19 = (t19 & t22);
    t23 = (t17 + 4);
    t24 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t24 | t18);
    t25 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t25 | t19);
    xsi_driver_vfirst_trans(t12, 0, 7);
    t26 = (t0 + 3904);
    *((int *)t26) = 1;

LAB1:    return;
}


extern void work_m_00977782178996333551_2461264495_init()
{
	static char *pe[] = {(void *)Always_33_0,(void *)Cont_46_1};
	xsi_register_didat("work_m_00977782178996333551_2461264495", "isim/testm_isim_beh.exe.sim/work/m_00977782178996333551_2461264495.didat");
	xsi_register_executes(pe);
}
