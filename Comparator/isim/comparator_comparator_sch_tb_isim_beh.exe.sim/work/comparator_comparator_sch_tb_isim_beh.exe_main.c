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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    unisims_ver_m_16631666276591928709_2161410271_init();
    unisims_ver_m_15469197826776211918_2316096324_init();
    unisims_ver_m_03367362533346577578_2449448540_init();
    unisims_ver_m_02553951401163808816_4245414866_init();
    unisims_ver_m_03261540892355984254_1323117156_init();
    work_m_11361521211666654819_3306708044_init();
    work_m_15168005156565914640_0199914820_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_15168005156565914640_0199914820");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
