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
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2964799144_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 2824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);

LAB4:
LAB5:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(38, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2632);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;

LAB1:    return;
LAB6:;
LAB7:    goto LAB2;

LAB8:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 3568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(40, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2632);
    xsi_process_wait(t2, t7);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB4;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}

static void work_a_2964799144_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    int64 t8;
    unsigned int t9;
    char *t10;
    char *t11;

LAB0:    t1 = (t0 + 3072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 3632);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 3696);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(49, ng0);

LAB6:    t2 = (t0 + 3392);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t4 = (t0 + 3392);
    *((int *)t4) = 0;
    xsi_set_current_line(50, ng0);
    t8 = (1 * 1000LL);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 5811);
    t7 = 1;
    if (4U == 4U)
        goto LAB14;

LAB15:    t7 = 0;

LAB16:    if (t7 == 0)
        goto LAB12;

LAB13:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 3632);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(59, ng0);

LAB22:    t2 = (t0 + 3408);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t10 = (t0 + 5815);
    xsi_report(t10, 32U, (unsigned char)2);
    goto LAB13;

LAB14:    t9 = 0;

LAB17:    if (t9 < 4U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t5 = (t3 + t9);
    t6 = (t2 + t9);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB15;

LAB19:    t9 = (t9 + 1);
    goto LAB17;

LAB20:    t4 = (t0 + 3408);
    *((int *)t4) = 0;
    xsi_set_current_line(60, ng0);
    t8 = (1 * 1000LL);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t8);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB20;
    else
        goto LAB22;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 5847);
    t7 = 1;
    if (4U == 4U)
        goto LAB30;

LAB31:    t7 = 0;

LAB32:    if (t7 == 0)
        goto LAB28;

LAB29:    xsi_set_current_line(66, ng0);

LAB38:    t2 = (t0 + 3424);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    t10 = (t0 + 5851);
    xsi_report(t10, 29U, (unsigned char)2);
    goto LAB29;

LAB30:    t9 = 0;

LAB33:    if (t9 < 4U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t5 = (t3 + t9);
    t6 = (t2 + t9);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB31;

LAB35:    t9 = (t9 + 1);
    goto LAB33;

LAB36:    t4 = (t0 + 3424);
    *((int *)t4) = 0;
    xsi_set_current_line(67, ng0);
    t8 = (1 * 1000LL);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t8);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB37:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB36;
    else
        goto LAB38;

LAB39:    goto LAB37;

LAB40:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 5880);
    t7 = 1;
    if (4U == 4U)
        goto LAB46;

LAB47:    t7 = 0;

LAB48:    if (t7 == 0)
        goto LAB44;

LAB45:    xsi_set_current_line(74, ng0);

LAB54:    t2 = (t0 + 3440);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

LAB44:    t10 = (t0 + 5884);
    xsi_report(t10, 29U, (unsigned char)2);
    goto LAB45;

LAB46:    t9 = 0;

LAB49:    if (t9 < 4U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t5 = (t3 + t9);
    t6 = (t2 + t9);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB47;

LAB51:    t9 = (t9 + 1);
    goto LAB49;

LAB52:    t4 = (t0 + 3440);
    *((int *)t4) = 0;
    xsi_set_current_line(75, ng0);
    t8 = (1 * 1000LL);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t8);

LAB58:    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB53:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB52;
    else
        goto LAB54;

LAB55:    goto LAB53;

LAB56:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 5913);
    t7 = 1;
    if (4U == 4U)
        goto LAB62;

LAB63:    t7 = 0;

LAB64:    if (t7 == 0)
        goto LAB60;

LAB61:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 5946);
    t4 = (t0 + 3760);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 3696);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(84, ng0);

LAB70:    t2 = (t0 + 3456);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB71;
    goto LAB1;

LAB57:    goto LAB56;

LAB59:    goto LAB57;

LAB60:    t10 = (t0 + 5917);
    xsi_report(t10, 29U, (unsigned char)2);
    goto LAB61;

LAB62:    t9 = 0;

LAB65:    if (t9 < 4U)
        goto LAB66;
    else
        goto LAB64;

LAB66:    t5 = (t3 + t9);
    t6 = (t2 + t9);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB63;

LAB67:    t9 = (t9 + 1);
    goto LAB65;

LAB68:    t4 = (t0 + 3456);
    *((int *)t4) = 0;
    xsi_set_current_line(85, ng0);
    t8 = (1 * 1000LL);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t8);

LAB74:    *((char **)t1) = &&LAB75;
    goto LAB1;

LAB69:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB68;
    else
        goto LAB70;

LAB71:    goto LAB69;

LAB72:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 5950);
    t7 = 1;
    if (4U == 4U)
        goto LAB78;

LAB79:    t7 = 0;

LAB80:    if (t7 == 0)
        goto LAB76;

LAB77:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 3696);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(94, ng0);

LAB86:    t2 = (t0 + 3472);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB87;
    goto LAB1;

LAB73:    goto LAB72;

LAB75:    goto LAB73;

LAB76:    t10 = (t0 + 5954);
    xsi_report(t10, 39U, (unsigned char)2);
    goto LAB77;

LAB78:    t9 = 0;

LAB81:    if (t9 < 4U)
        goto LAB82;
    else
        goto LAB80;

LAB82:    t5 = (t3 + t9);
    t6 = (t2 + t9);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB79;

LAB83:    t9 = (t9 + 1);
    goto LAB81;

LAB84:    t4 = (t0 + 3472);
    *((int *)t4) = 0;
    xsi_set_current_line(95, ng0);
    t8 = (1 * 1000LL);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t8);

LAB90:    *((char **)t1) = &&LAB91;
    goto LAB1;

LAB85:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB84;
    else
        goto LAB86;

LAB87:    goto LAB85;

LAB88:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 5993);
    t7 = 1;
    if (4U == 4U)
        goto LAB94;

LAB95:    t7 = 0;

LAB96:    if (t7 == 0)
        goto LAB92;

LAB93:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 3632);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(103, ng0);

LAB102:    t2 = (t0 + 3488);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB103;
    goto LAB1;

LAB89:    goto LAB88;

LAB91:    goto LAB89;

LAB92:    t10 = (t0 + 5997);
    xsi_report(t10, 39U, (unsigned char)2);
    goto LAB93;

LAB94:    t9 = 0;

LAB97:    if (t9 < 4U)
        goto LAB98;
    else
        goto LAB96;

LAB98:    t5 = (t3 + t9);
    t6 = (t2 + t9);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB95;

LAB99:    t9 = (t9 + 1);
    goto LAB97;

LAB100:    t4 = (t0 + 3488);
    *((int *)t4) = 0;
    xsi_set_current_line(104, ng0);
    t8 = (1 * 1000LL);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t8);

LAB106:    *((char **)t1) = &&LAB107;
    goto LAB1;

LAB101:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB100;
    else
        goto LAB102;

LAB103:    goto LAB101;

LAB104:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 6036);
    t7 = 1;
    if (4U == 4U)
        goto LAB110;

LAB111:    t7 = 0;

LAB112:    if (t7 == 0)
        goto LAB108;

LAB109:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 6071);
    xsi_report(t2, 36U, (unsigned char)0);
    xsi_set_current_line(112, ng0);

LAB118:    *((char **)t1) = &&LAB119;
    goto LAB1;

LAB105:    goto LAB104;

LAB107:    goto LAB105;

LAB108:    t10 = (t0 + 6040);
    xsi_report(t10, 31U, (unsigned char)2);
    goto LAB109;

LAB110:    t9 = 0;

LAB113:    if (t9 < 4U)
        goto LAB114;
    else
        goto LAB112;

LAB114:    t5 = (t3 + t9);
    t6 = (t2 + t9);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB111;

LAB115:    t9 = (t9 + 1);
    goto LAB113;

LAB116:    goto LAB2;

LAB117:    goto LAB116;

LAB119:    goto LAB117;

}


extern void work_a_2964799144_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2964799144_2372691052_p_0,(void *)work_a_2964799144_2372691052_p_1};
	xsi_register_didat("work_a_2964799144_2372691052", "isim/program_counter_tb_isim_beh.exe.sim/work/a_2964799144_2372691052.didat");
	xsi_register_executes(pe);
}
