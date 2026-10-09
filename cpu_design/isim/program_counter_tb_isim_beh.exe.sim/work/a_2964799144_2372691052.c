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
static const char *ng0 = "/home/ise/computer/cpu_design/program_counter_tb.vhd";



static void work_a_2964799144_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 2504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3136);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(32, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2312);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 3136);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(34, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2312);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2964799144_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    unsigned char t8;
    unsigned int t9;
    char *t10;

LAB0:    t1 = (t0 + 2752U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 3200);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(41, ng0);
    t7 = (25 * 1000LL);
    t2 = (t0 + 2560);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5050);
    t8 = 1;
    if (8U == 8U)
        goto LAB10;

LAB11:    t8 = 0;

LAB12:    if (t8 == 0)
        goto LAB8;

LAB9:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 3200);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(48, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2560);
    xsi_process_wait(t2, t7);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t10 = (t0 + 5058);
    xsi_report(t10, 32U, (unsigned char)2);
    goto LAB9;

LAB10:    t9 = 0;

LAB13:    if (t9 < 8U)
        goto LAB14;
    else
        goto LAB12;

LAB14:    t5 = (t3 + t9);
    t6 = (t2 + t9);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB11;

LAB15:    t9 = (t9 + 1);
    goto LAB13;

LAB16:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5090);
    t8 = 1;
    if (8U == 8U)
        goto LAB22;

LAB23:    t8 = 0;

LAB24:    if (t8 == 0)
        goto LAB20;

LAB21:    xsi_set_current_line(53, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2560);
    xsi_process_wait(t2, t7);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    t10 = (t0 + 5098);
    xsi_report(t10, 29U, (unsigned char)2);
    goto LAB21;

LAB22:    t9 = 0;

LAB25:    if (t9 < 8U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t5 = (t3 + t9);
    t6 = (t2 + t9);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB23;

LAB27:    t9 = (t9 + 1);
    goto LAB25;

LAB28:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5127);
    t8 = 1;
    if (8U == 8U)
        goto LAB34;

LAB35:    t8 = 0;

LAB36:    if (t8 == 0)
        goto LAB32;

LAB33:    xsi_set_current_line(59, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2560);
    xsi_process_wait(t2, t7);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    t10 = (t0 + 5135);
    xsi_report(t10, 29U, (unsigned char)2);
    goto LAB33;

LAB34:    t9 = 0;

LAB37:    if (t9 < 8U)
        goto LAB38;
    else
        goto LAB36;

LAB38:    t5 = (t3 + t9);
    t6 = (t2 + t9);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB35;

LAB39:    t9 = (t9 + 1);
    goto LAB37;

LAB40:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5164);
    t8 = 1;
    if (8U == 8U)
        goto LAB46;

LAB47:    t8 = 0;

LAB48:    if (t8 == 0)
        goto LAB44;

LAB45:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3200);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(65, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2560);
    xsi_process_wait(t2, t7);

LAB54:    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

LAB44:    t10 = (t0 + 5172);
    xsi_report(t10, 29U, (unsigned char)2);
    goto LAB45;

LAB46:    t9 = 0;

LAB49:    if (t9 < 8U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t5 = (t3 + t9);
    t6 = (t2 + t9);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB47;

LAB51:    t9 = (t9 + 1);
    goto LAB49;

LAB52:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5201);
    t8 = 1;
    if (8U == 8U)
        goto LAB58;

LAB59:    t8 = 0;

LAB60:    if (t8 == 0)
        goto LAB56;

LAB57:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 5240);
    xsi_report(t2, 32U, (unsigned char)0);
    xsi_set_current_line(73, ng0);

LAB66:    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB53:    goto LAB52;

LAB55:    goto LAB53;

LAB56:    t10 = (t0 + 5209);
    xsi_report(t10, 31U, (unsigned char)2);
    goto LAB57;

LAB58:    t9 = 0;

LAB61:    if (t9 < 8U)
        goto LAB62;
    else
        goto LAB60;

LAB62:    t5 = (t3 + t9);
    t6 = (t2 + t9);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB59;

LAB63:    t9 = (t9 + 1);
    goto LAB61;

LAB64:    goto LAB2;

LAB65:    goto LAB64;

LAB67:    goto LAB65;

}


extern void work_a_2964799144_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2964799144_2372691052_p_0,(void *)work_a_2964799144_2372691052_p_1};
	xsi_register_didat("work_a_2964799144_2372691052", "isim/program_counter_tb_isim_beh.exe.sim/work/a_2964799144_2372691052.didat");
	xsi_register_executes(pe);
}
