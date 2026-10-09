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
static const char *ng0 = "/home/ise/computer/cpu_design/zero_flag_tb.vhd";



static void work_a_0224925286_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;
    unsigned char t10;
    unsigned char t11;

LAB0:    t1 = (t0 + 2344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 4393);
    t4 = (t0 + 2728);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(31, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t9);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB8;

LAB9:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 4433);
    t4 = (t0 + 2728);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(37, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t9);

LAB12:    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t2 = (t0 + 4401);
    xsi_report(t2, 32U, (unsigned char)2);
    goto LAB9;

LAB10:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB14;

LAB15:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 4473);
    t4 = (t0 + 2728);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(44, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t9);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB11:    goto LAB10;

LAB13:    goto LAB11;

LAB14:    t2 = (t0 + 4441);
    xsi_report(t2, 32U, (unsigned char)2);
    goto LAB15;

LAB16:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB20;

LAB21:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 4513);
    t4 = (t0 + 2728);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(50, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t9);

LAB24:    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    t2 = (t0 + 4481);
    xsi_report(t2, 32U, (unsigned char)2);
    goto LAB21;

LAB22:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB26;

LAB27:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 4553);
    t4 = (t0 + 2728);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(57, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t9);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB23:    goto LAB22;

LAB25:    goto LAB23;

LAB26:    t2 = (t0 + 4521);
    xsi_report(t2, 32U, (unsigned char)2);
    goto LAB27;

LAB28:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB32;

LAB33:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 4593);
    xsi_report(t2, 30U, (unsigned char)0);
    xsi_set_current_line(65, ng0);

LAB36:    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    t2 = (t0 + 4561);
    xsi_report(t2, 32U, (unsigned char)2);
    goto LAB33;

LAB34:    goto LAB2;

LAB35:    goto LAB34;

LAB37:    goto LAB35;

}


extern void work_a_0224925286_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0224925286_2372691052_p_0};
	xsi_register_didat("work_a_0224925286_2372691052", "isim/zero_flag_tb_isim_beh.exe.sim/work/a_0224925286_2372691052.didat");
	xsi_register_executes(pe);
}
