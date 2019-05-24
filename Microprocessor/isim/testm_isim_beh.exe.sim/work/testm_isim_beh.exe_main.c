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
    work_m_00977782178996333551_2461264495_init();
    work_m_17365944415854603382_2858095548_init();
    work_m_11727819791255153486_2986644495_init();
    work_m_05014459787811595655_2973510161_init();
    work_m_00179362205188242141_2489260062_init();
    work_m_05279476418575749337_3870144848_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_05279476418575749337_3870144848");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
