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
static const char *ng0 = "/home/ise/computer/cpu_design/instruction_decoder_tb.vhd";



static void work_a_4133059610_3212880686_p_0(char *t0)
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
    unsigned char t12;
    unsigned char t13;
    unsigned int t14;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    unsigned char t20;
    unsigned char t21;
    unsigned char t22;
    unsigned char t23;
    unsigned char t24;
    unsigned char t25;

LAB0:    t1 = (t0 + 3304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 5949);
    t4 = (t0 + 3688);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 12U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(46, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 3112);
    xsi_process_wait(t2, t9);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB10;

LAB11:    t10 = (unsigned char)0;

LAB12:    if (t10 == 0)
        goto LAB8;

LAB9:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 5986);
    t4 = (t0 + 3688);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 12U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(52, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 3112);
    xsi_process_wait(t2, t9);

LAB21:    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t8 = (t0 + 5969);
    xsi_report(t8, 17U, (unsigned char)2);
    goto LAB9;

LAB10:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 5961);
    t13 = 1;
    if (8U == 8U)
        goto LAB13;

LAB14:    t13 = 0;

LAB15:    t10 = t13;
    goto LAB12;

LAB13:    t14 = 0;

LAB16:    if (t14 < 8U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t6 = (t4 + t14);
    t7 = (t2 + t14);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB14;

LAB18:    t14 = (t14 + 1);
    goto LAB16;

LAB19:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB25;

LAB26:    t10 = (unsigned char)0;

LAB27:    if (t10 == 0)
        goto LAB23;

LAB24:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 6023);
    t4 = (t0 + 3688);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 12U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(59, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 3112);
    xsi_process_wait(t2, t9);

LAB36:    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

LAB23:    t8 = (t0 + 6006);
    xsi_report(t8, 17U, (unsigned char)2);
    goto LAB24;

LAB25:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 5998);
    t13 = 1;
    if (8U == 8U)
        goto LAB28;

LAB29:    t13 = 0;

LAB30:    t10 = t13;
    goto LAB27;

LAB28:    t14 = 0;

LAB31:    if (t14 < 8U)
        goto LAB32;
    else
        goto LAB30;

LAB32:    t6 = (t4 + t14);
    t7 = (t2 + t14);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB29;

LAB33:    t14 = (t14 + 1);
    goto LAB31;

LAB34:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB38;

LAB39:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 6052);
    t4 = (t0 + 3688);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 12U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(65, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 3112);
    xsi_process_wait(t2, t9);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB35:    goto LAB34;

LAB37:    goto LAB35;

LAB38:    t2 = (t0 + 6035);
    xsi_report(t2, 17U, (unsigned char)2);
    goto LAB39;

LAB40:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB44;

LAB45:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 6081);
    t4 = (t0 + 3688);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 12U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(72, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 3112);
    xsi_process_wait(t2, t9);

LAB48:    *((char **)t1) = &&LAB49;
    goto LAB1;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

LAB44:    t2 = (t0 + 6064);
    xsi_report(t2, 17U, (unsigned char)2);
    goto LAB45;

LAB46:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB52;

LAB53:    t10 = (unsigned char)0;

LAB54:    if (t10 == 0)
        goto LAB50;

LAB51:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 6117);
    t4 = (t0 + 3688);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 12U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(79, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 3112);
    xsi_process_wait(t2, t9);

LAB63:    *((char **)t1) = &&LAB64;
    goto LAB1;

LAB47:    goto LAB46;

LAB49:    goto LAB47;

LAB50:    t8 = (t0 + 6101);
    xsi_report(t8, 16U, (unsigned char)2);
    goto LAB51;

LAB52:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 6093);
    t13 = 1;
    if (8U == 8U)
        goto LAB55;

LAB56:    t13 = 0;

LAB57:    t10 = t13;
    goto LAB54;

LAB55:    t14 = 0;

LAB58:    if (t14 < 8U)
        goto LAB59;
    else
        goto LAB57;

LAB59:    t6 = (t4 + t14);
    t7 = (t2 + t14);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB56;

LAB60:    t14 = (t14 + 1);
    goto LAB58;

LAB61:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t16 = *((unsigned char *)t3);
    t17 = (t16 == (unsigned char)2);
    if (t17 == 1)
        goto LAB76;

LAB77:    t13 = (unsigned char)0;

LAB78:    if (t13 == 1)
        goto LAB73;

LAB74:    t12 = (unsigned char)0;

LAB75:    if (t12 == 1)
        goto LAB70;

LAB71:    t11 = (unsigned char)0;

LAB72:    if (t11 == 1)
        goto LAB67;

LAB68:    t10 = (unsigned char)0;

LAB69:    if (t10 == 0)
        goto LAB65;

LAB66:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 6146);
    xsi_report(t2, 48U, (unsigned char)0);
    xsi_set_current_line(91, ng0);

LAB81:    *((char **)t1) = &&LAB82;
    goto LAB1;

LAB62:    goto LAB61;

LAB64:    goto LAB62;

LAB65:    t2 = (t0 + 6129);
    xsi_report(t2, 17U, (unsigned char)2);
    goto LAB66;

LAB67:    t2 = (t0 + 2152U);
    t7 = *((char **)t2);
    t24 = *((unsigned char *)t7);
    t25 = (t24 == (unsigned char)2);
    t10 = t25;
    goto LAB69;

LAB70:    t2 = (t0 + 1992U);
    t6 = *((char **)t2);
    t22 = *((unsigned char *)t6);
    t23 = (t22 == (unsigned char)2);
    t11 = t23;
    goto LAB72;

LAB73:    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t20 = *((unsigned char *)t5);
    t21 = (t20 == (unsigned char)2);
    t12 = t21;
    goto LAB75;

LAB76:    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t18 = *((unsigned char *)t4);
    t19 = (t18 == (unsigned char)2);
    t13 = t19;
    goto LAB78;

LAB79:    goto LAB2;

LAB80:    goto LAB79;

LAB82:    goto LAB80;

}


extern void work_a_4133059610_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4133059610_3212880686_p_0};
	xsi_register_didat("work_a_4133059610_3212880686", "isim/instruction_decoder_tb_isim_beh.exe.sim/work/a_4133059610_3212880686.didat");
	xsi_register_executes(pe);
}
