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

char *UNISIM_P_0947159679;
char *IEEE_P_1242562249;
char *IEEE_P_2592010699;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    work_a_0944194157_2372691052_init();
    work_a_0096771497_2372691052_init();
    work_a_1570154911_3212880686_init();
    work_a_3104296728_2372691052_init();
    work_a_2927418203_2372691052_init();
    work_a_2549213086_2372691052_init();
    work_a_2156590045_2372691052_init();
    work_a_3840646676_2372691052_init();
    work_a_4086336087_2372691052_init();
    work_a_3390944914_2372691052_init();
    work_a_3714491089_2372691052_init();
    work_a_0566878763_2372691052_init();
    work_a_0323891401_2372691052_init();
    work_a_3169445562_3212880686_init();
    work_a_1496256793_3212880686_init();
    work_a_0749568158_2372691052_init();
    work_a_0354466907_2372691052_init();
    work_a_4160725499_3212880686_init();
    work_a_2960901190_3212880686_init();
    work_a_2314664067_3212880686_init();
    work_a_0344455357_2372691052_init();
    work_a_2453520984_3212880686_init();
    work_a_1425996745_3212880686_init();


    xsi_register_tops("work_a_1425996745_3212880686");

    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
