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
static const char *ng0 = "/home/ise/computer/cpu_design/control_unit_tb.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3455515378_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3744U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);

LAB4:    if ((unsigned char)1 != 0)
        goto LAB5;

LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3552);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;

LAB1:    return;
LAB6:;
LAB8:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3552);
    xsi_process_wait(t2, t8);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB4;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}

static void work_a_3455515378_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    int64 t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
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
    unsigned char t26;

LAB0:    t1 = (t0 + 3992U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 4552);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 7064);
    t4 = (t0 + 4616);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 12U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(66, ng0);

LAB6:    t2 = (t0 + 4312);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t4 = (t0 + 4312);
    *((int *)t4) = 0;
    xsi_set_current_line(67, ng0);
    t10 = (1 * 1000LL);
    t2 = (t0 + 3800);
    xsi_process_wait(t2, t10);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    t3 = (t0 + 992U);
    t9 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t9 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t9 = *((unsigned char *)t3);
    t11 = (t9 == (unsigned char)3);
    if (t11 == 0)
        goto LAB12;

LAB13:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 4552);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 7093);
    t4 = (t0 + 4616);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 12U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(76, ng0);

LAB16:    t2 = (t0 + 4328);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t2 = (t0 + 7076);
    xsi_report(t2, 17U, (unsigned char)2);
    goto LAB13;

LAB14:    t4 = (t0 + 4328);
    *((int *)t4) = 0;
    xsi_set_current_line(77, ng0);
    t10 = (1 * 1000LL);
    t2 = (t0 + 3800);
    xsi_process_wait(t2, t10);

LAB20:    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB15:    t3 = (t0 + 992U);
    t9 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t9 == 1)
        goto LAB14;
    else
        goto LAB16;

LAB17:    goto LAB15;

LAB18:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB24;

LAB25:    t9 = (unsigned char)0;

LAB26:    if (t9 == 0)
        goto LAB22;

LAB23:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 7133);
    t4 = (t0 + 4616);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 12U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(85, ng0);

LAB29:    t2 = (t0 + 4344);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB30;
    goto LAB1;

LAB19:    goto LAB18;

LAB21:    goto LAB19;

LAB22:    t2 = (t0 + 7105);
    xsi_report(t2, 28U, (unsigned char)2);
    goto LAB23;

LAB24:    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)2);
    t9 = t14;
    goto LAB26;

LAB27:    t4 = (t0 + 4344);
    *((int *)t4) = 0;
    xsi_set_current_line(86, ng0);
    t10 = (1 * 1000LL);
    t2 = (t0 + 3800);
    xsi_process_wait(t2, t10);

LAB33:    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB28:    t3 = (t0 + 992U);
    t9 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t9 == 1)
        goto LAB27;
    else
        goto LAB29;

LAB30:    goto LAB28;

LAB31:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB37;

LAB38:    t9 = (unsigned char)0;

LAB39:    if (t9 == 0)
        goto LAB35;

LAB36:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 7172);
    t4 = (t0 + 4616);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 12U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(93, ng0);

LAB42:    t2 = (t0 + 4360);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB32:    goto LAB31;

LAB34:    goto LAB32;

LAB35:    t2 = (t0 + 7145);
    xsi_report(t2, 27U, (unsigned char)2);
    goto LAB36;

LAB37:    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)2);
    t9 = t14;
    goto LAB39;

LAB40:    t4 = (t0 + 4360);
    *((int *)t4) = 0;
    xsi_set_current_line(94, ng0);
    t10 = (1 * 1000LL);
    t2 = (t0 + 3800);
    xsi_process_wait(t2, t10);

LAB46:    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB41:    t3 = (t0 + 992U);
    t9 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t9 == 1)
        goto LAB40;
    else
        goto LAB42;

LAB43:    goto LAB41;

LAB44:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t9 = *((unsigned char *)t3);
    t11 = (t9 == (unsigned char)3);
    if (t11 == 0)
        goto LAB48;

LAB49:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 7211);
    t4 = (t0 + 4616);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 12U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(101, ng0);

LAB52:    t2 = (t0 + 4376);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB53;
    goto LAB1;

LAB45:    goto LAB44;

LAB47:    goto LAB45;

LAB48:    t2 = (t0 + 7184);
    xsi_report(t2, 27U, (unsigned char)2);
    goto LAB49;

LAB50:    t4 = (t0 + 4376);
    *((int *)t4) = 0;
    xsi_set_current_line(102, ng0);
    t10 = (1 * 1000LL);
    t2 = (t0 + 3800);
    xsi_process_wait(t2, t10);

LAB56:    *((char **)t1) = &&LAB57;
    goto LAB1;

LAB51:    t3 = (t0 + 992U);
    t9 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t9 == 1)
        goto LAB50;
    else
        goto LAB52;

LAB53:    goto LAB51;

LAB54:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t9 = *((unsigned char *)t3);
    t11 = (t9 == (unsigned char)3);
    if (t11 == 0)
        goto LAB58;

LAB59:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 7250);
    t4 = (t0 + 4616);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 12U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(110, ng0);

LAB62:    t2 = (t0 + 4392);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB55:    goto LAB54;

LAB57:    goto LAB55;

LAB58:    t2 = (t0 + 7223);
    xsi_report(t2, 27U, (unsigned char)2);
    goto LAB59;

LAB60:    t4 = (t0 + 4392);
    *((int *)t4) = 0;
    xsi_set_current_line(111, ng0);
    t10 = (1 * 1000LL);
    t2 = (t0 + 3800);
    xsi_process_wait(t2, t10);

LAB66:    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB61:    t3 = (t0 + 992U);
    t9 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t9 == 1)
        goto LAB60;
    else
        goto LAB62;

LAB63:    goto LAB61;

LAB64:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB70;

LAB71:    t9 = (unsigned char)0;

LAB72:    if (t9 == 0)
        goto LAB68;

LAB69:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 7288);
    t4 = (t0 + 4616);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 12U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(118, ng0);

LAB75:    t2 = (t0 + 4408);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB76;
    goto LAB1;

LAB65:    goto LAB64;

LAB67:    goto LAB65;

LAB68:    t2 = (t0 + 7262);
    xsi_report(t2, 26U, (unsigned char)2);
    goto LAB69;

LAB70:    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)3);
    t9 = t14;
    goto LAB72;

LAB73:    t4 = (t0 + 4408);
    *((int *)t4) = 0;
    xsi_set_current_line(119, ng0);
    t10 = (1 * 1000LL);
    t2 = (t0 + 3800);
    xsi_process_wait(t2, t10);

LAB79:    *((char **)t1) = &&LAB80;
    goto LAB1;

LAB74:    t3 = (t0 + 992U);
    t9 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t9 == 1)
        goto LAB73;
    else
        goto LAB75;

LAB76:    goto LAB74;

LAB77:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t15 = *((unsigned char *)t3);
    t16 = (t15 == (unsigned char)2);
    if (t16 == 1)
        goto LAB95;

LAB96:    t14 = (unsigned char)0;

LAB97:    if (t14 == 1)
        goto LAB92;

LAB93:    t13 = (unsigned char)0;

LAB94:    if (t13 == 1)
        goto LAB89;

LAB90:    t12 = (unsigned char)0;

LAB91:    if (t12 == 1)
        goto LAB86;

LAB87:    t11 = (unsigned char)0;

LAB88:    if (t11 == 1)
        goto LAB83;

LAB84:    t9 = (unsigned char)0;

LAB85:    if (t9 == 0)
        goto LAB81;

LAB82:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 7335);
    xsi_report(t2, 41U, (unsigned char)0);
    xsi_set_current_line(132, ng0);

LAB100:    *((char **)t1) = &&LAB101;
    goto LAB1;

LAB78:    goto LAB77;

LAB80:    goto LAB78;

LAB81:    t2 = (t0 + 7300);
    xsi_report(t2, 35U, (unsigned char)2);
    goto LAB82;

LAB83:    t2 = (t0 + 2472U);
    t8 = *((char **)t2);
    t25 = *((unsigned char *)t8);
    t26 = (t25 == (unsigned char)2);
    t9 = t26;
    goto LAB85;

LAB86:    t2 = (t0 + 2152U);
    t7 = *((char **)t2);
    t23 = *((unsigned char *)t7);
    t24 = (t23 == (unsigned char)2);
    t11 = t24;
    goto LAB88;

LAB89:    t2 = (t0 + 1992U);
    t6 = *((char **)t2);
    t21 = *((unsigned char *)t6);
    t22 = (t21 == (unsigned char)2);
    t12 = t22;
    goto LAB91;

LAB92:    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t19 = *((unsigned char *)t5);
    t20 = (t19 == (unsigned char)2);
    t13 = t20;
    goto LAB94;

LAB95:    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t17 = *((unsigned char *)t4);
    t18 = (t17 == (unsigned char)2);
    t14 = t18;
    goto LAB97;

LAB98:    goto LAB2;

LAB99:    goto LAB98;

LAB101:    goto LAB99;

}


extern void work_a_3455515378_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3455515378_3212880686_p_0,(void *)work_a_3455515378_3212880686_p_1};
	xsi_register_didat("work_a_3455515378_3212880686", "isim/control_unit_tb_isim_beh.exe.sim/work/a_3455515378_3212880686.didat");
	xsi_register_executes(pe);
}
