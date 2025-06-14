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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *STD_STANDARD;
char *IEEE_P_1242562249;
char *IEEE_P_2592010699;
char *IEEE_P_3564397177;
char *WORK_P_2247078152;
char *STD_TEXTIO;
char *IEEE_P_3620187407;
char *WORK_P_0178913039;
char *WORK_P_0088393646;
char *WORK_P_0508398114;
char *IEEE_P_0774719531;
char *WORK_P_0543947800;
char *IEEE_P_3499444699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_0774719531_init();
    ieee_p_1242562249_init();
    work_p_0178913039_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_p_2247078152_init();
    work_a_1130845995_0831356973_init();
    work_p_0508398114_init();
    work_p_0088393646_init();
    work_a_2066276730_3212880686_init();
    work_a_4106131694_3212880686_init();
    work_a_1208337864_3708392848_init();
    ieee_p_3620187407_init();
    work_p_0543947800_init();
    work_a_1973193242_3212880686_init();
    work_a_1153420228_3212880686_init();
    work_a_2077859724_3212880686_init();
    work_a_2046343074_1692260737_init();
    work_a_2263464102_3212880686_init();
    work_a_0290344353_3212880686_init();
    work_a_2166523021_3212880686_init();
    work_a_2421557259_1692260737_init();
    work_a_2585058704_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_2399776393_3212880686_init();
    work_a_1430113433_3212880686_init();
    work_a_3720894149_0831356973_init();
    work_a_1774854872_3212880686_init();
    work_a_1158209312_2372691052_init();


    xsi_register_tops("work_a_1158209312_2372691052");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    WORK_P_2247078152 = xsi_get_engine_memory("work_p_2247078152");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    WORK_P_0178913039 = xsi_get_engine_memory("work_p_0178913039");
    WORK_P_0088393646 = xsi_get_engine_memory("work_p_0088393646");
    WORK_P_0508398114 = xsi_get_engine_memory("work_p_0508398114");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    WORK_P_0543947800 = xsi_get_engine_memory("work_p_0543947800");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
