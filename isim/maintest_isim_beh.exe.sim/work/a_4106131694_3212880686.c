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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Malak/Downloads/PHASE2 (1)/PHASE2/alucontrol.vhd";



static void work_a_4106131694_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    int t17;
    int t19;
    char *t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4644);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB6:    t5 = (t0 + 4646);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB7:
LAB5:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4656);
    t4 = xsi_mem_cmp(t1, t2, 6U);
    if (t4 == 1)
        goto LAB10;

LAB17:    t5 = (t0 + 4662);
    t7 = xsi_mem_cmp(t5, t2, 6U);
    if (t7 == 1)
        goto LAB11;

LAB18:    t8 = (t0 + 4668);
    t15 = xsi_mem_cmp(t8, t2, 6U);
    if (t15 == 1)
        goto LAB12;

LAB19:    t10 = (t0 + 4674);
    t16 = xsi_mem_cmp(t10, t2, 6U);
    if (t16 == 1)
        goto LAB13;

LAB20:    t12 = (t0 + 4680);
    t17 = xsi_mem_cmp(t12, t2, 6U);
    if (t17 == 1)
        goto LAB14;

LAB21:    t14 = (t0 + 4686);
    t19 = xsi_mem_cmp(t14, t2, 6U);
    if (t19 == 1)
        goto LAB15;

LAB22:
LAB16:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 4716);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB9:
LAB2:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(19, ng0);
    t8 = (t0 + 4648);
    t10 = (t0 + 2912);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB2;

LAB4:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 4652);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB8:;
LAB10:    xsi_set_current_line(23, ng0);
    t20 = (t0 + 4692);
    t22 = (t0 + 2912);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t20, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB9;

LAB11:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 4696);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB12:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 4700);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB13:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 4704);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB14:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 4708);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB15:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 4712);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB23:;
}


extern void work_a_4106131694_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4106131694_3212880686_p_0};
	xsi_register_didat("work_a_4106131694_3212880686", "isim/maintest_isim_beh.exe.sim/work/a_4106131694_3212880686.didat");
	xsi_register_executes(pe);
}
