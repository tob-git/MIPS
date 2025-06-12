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
static const char *ng0 = "C:/Users/Malak/Downloads/PHASE2 (1)/PHASE2/maintest.vhd";
extern char *IEEE_P_0774719531;

int ieee_p_0774719531_sub_378705076_2162500114(char *, char *, char *);


static void work_a_1158209312_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2760);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 3848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2760);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1158209312_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 3200U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(62, ng0);
    t7 = (22 * 1000LL);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(64, ng0);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1158209312_2372691052_p_2(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    int t18;
    unsigned char t19;
    char *t20;

LAB0:    xsi_set_current_line(70, ng0);
    t3 = (t0 + 992U);
    t4 = xsi_signal_has_event(t3);
    if (t4 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t3 = (t0 + 3768);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(71, ng0);
    t5 = (t0 + 1512U);
    t13 = *((char **)t5);
    t5 = (t0 + 6120U);
    t14 = ieee_p_0774719531_sub_378705076_2162500114(IEEE_P_0774719531, t13, t5);
    t15 = (t14 == 84);
    if (t15 == 1)
        goto LAB14;

LAB15:    t12 = (unsigned char)0;

LAB16:    if (t12 != 0)
        goto LAB11;

LAB13:    t3 = (t0 + 1512U);
    t5 = *((char **)t3);
    t3 = (t0 + 6120U);
    t14 = ieee_p_0774719531_sub_378705076_2162500114(IEEE_P_0774719531, t5, t3);
    t1 = (t14 == 84);
    if (t1 != 0)
        goto LAB17;

LAB18:
LAB12:    goto LAB3;

LAB5:    t5 = (t0 + 1672U);
    t9 = *((char **)t5);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t1 = t11;
    goto LAB7;

LAB8:    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t2 = t8;
    goto LAB10;

LAB11:    xsi_set_current_line(72, ng0);
    t20 = (t0 + 6224);
    xsi_report(t20, 31U, (unsigned char)3);
    goto LAB12;

LAB14:    t16 = (t0 + 1352U);
    t17 = *((char **)t16);
    t16 = (t0 + 6104U);
    t18 = ieee_p_0774719531_sub_378705076_2162500114(IEEE_P_0774719531, t17, t16);
    t19 = (t18 == 7);
    t12 = t19;
    goto LAB16;

LAB17:    xsi_set_current_line(74, ng0);
    t6 = (t0 + 6255);
    xsi_report(t6, 17U, (unsigned char)3);
    goto LAB12;

}


extern void work_a_1158209312_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1158209312_2372691052_p_0,(void *)work_a_1158209312_2372691052_p_1,(void *)work_a_1158209312_2372691052_p_2};
	xsi_register_didat("work_a_1158209312_2372691052", "isim/maintest_isim_beh.exe.sim/work/a_1158209312_2372691052.didat");
	xsi_register_executes(pe);
}
