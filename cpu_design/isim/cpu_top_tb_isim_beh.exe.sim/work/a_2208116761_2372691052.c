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
static const char *ng0 = "/home/ise/computer/cpu_design/cpu_top_tb.vhd";



static void work_a_2208116761_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 2944U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 3576);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2752);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 3576);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2752);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2208116761_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    unsigned char t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    t1 = (t0 + 3192U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(55, ng0);
    t7 = (1 * 1000LL);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5672);
    t10 = 1;
    if (8U == 8U)
        goto LAB20;

LAB21:    t10 = 0;

LAB22:    if (t10 == 1)
        goto LAB17;

LAB18:    t9 = (unsigned char)0;

LAB19:    if (t9 == 1)
        goto LAB14;

LAB15:    t8 = (unsigned char)0;

LAB16:    if (t8 == 0)
        goto LAB12;

LAB13:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t7);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t22 = (t0 + 5684);
    xsi_report(t22, 17U, (unsigned char)2);
    goto LAB13;

LAB14:    t12 = (t0 + 1672U);
    t16 = *((char **)t12);
    t12 = (t0 + 5680);
    t18 = 1;
    if (4U == 4U)
        goto LAB26;

LAB27:    t18 = 0;

LAB28:    t8 = t18;
    goto LAB16;

LAB17:    t12 = (t0 + 1512U);
    t13 = *((char **)t12);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)3);
    t9 = t15;
    goto LAB19;

LAB20:    t11 = 0;

LAB23:    if (t11 < 8U)
        goto LAB24;
    else
        goto LAB22;

LAB24:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB21;

LAB25:    t11 = (t11 + 1);
    goto LAB23;

LAB26:    t19 = 0;

LAB29:    if (t19 < 4U)
        goto LAB30;
    else
        goto LAB28;

LAB30:    t20 = (t16 + t19);
    t21 = (t12 + t19);
    if (*((unsigned char *)t20) != *((unsigned char *)t21))
        goto LAB27;

LAB31:    t19 = (t19 + 1);
    goto LAB29;

LAB32:    xsi_set_current_line(64, ng0);
    t7 = (1 * 1000LL);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t7);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5701);
    t10 = 1;
    if (8U == 8U)
        goto LAB48;

LAB49:    t10 = 0;

LAB50:    if (t10 == 1)
        goto LAB45;

LAB46:    t9 = (unsigned char)0;

LAB47:    if (t9 == 1)
        goto LAB42;

LAB43:    t8 = (unsigned char)0;

LAB44:    if (t8 == 0)
        goto LAB40;

LAB41:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t7);

LAB62:    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

LAB40:    t22 = (t0 + 5713);
    xsi_report(t22, 12U, (unsigned char)2);
    goto LAB41;

LAB42:    t12 = (t0 + 1672U);
    t16 = *((char **)t12);
    t12 = (t0 + 5709);
    t18 = 1;
    if (4U == 4U)
        goto LAB54;

LAB55:    t18 = 0;

LAB56:    t8 = t18;
    goto LAB44;

LAB45:    t12 = (t0 + 1512U);
    t13 = *((char **)t12);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)2);
    t9 = t15;
    goto LAB47;

LAB48:    t11 = 0;

LAB51:    if (t11 < 8U)
        goto LAB52;
    else
        goto LAB50;

LAB52:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB49;

LAB53:    t11 = (t11 + 1);
    goto LAB51;

LAB54:    t19 = 0;

LAB57:    if (t19 < 4U)
        goto LAB58;
    else
        goto LAB56;

LAB58:    t20 = (t16 + t19);
    t21 = (t12 + t19);
    if (*((unsigned char *)t20) != *((unsigned char *)t21))
        goto LAB55;

LAB59:    t19 = (t19 + 1);
    goto LAB57;

LAB60:    xsi_set_current_line(72, ng0);
    t7 = (1 * 1000LL);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t7);

LAB66:    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB61:    goto LAB60;

LAB63:    goto LAB61;

LAB64:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5725);
    t10 = 1;
    if (8U == 8U)
        goto LAB76;

LAB77:    t10 = 0;

LAB78:    if (t10 == 1)
        goto LAB73;

LAB74:    t9 = (unsigned char)0;

LAB75:    if (t9 == 1)
        goto LAB70;

LAB71:    t8 = (unsigned char)0;

LAB72:    if (t8 == 0)
        goto LAB68;

LAB69:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t7);

LAB90:    *((char **)t1) = &&LAB91;
    goto LAB1;

LAB65:    goto LAB64;

LAB67:    goto LAB65;

LAB68:    t22 = (t0 + 5737);
    xsi_report(t22, 9U, (unsigned char)2);
    goto LAB69;

LAB70:    t12 = (t0 + 1672U);
    t16 = *((char **)t12);
    t12 = (t0 + 5733);
    t18 = 1;
    if (4U == 4U)
        goto LAB82;

LAB83:    t18 = 0;

LAB84:    t8 = t18;
    goto LAB72;

LAB73:    t12 = (t0 + 1512U);
    t13 = *((char **)t12);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)3);
    t9 = t15;
    goto LAB75;

LAB76:    t11 = 0;

LAB79:    if (t11 < 8U)
        goto LAB80;
    else
        goto LAB78;

LAB80:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB77;

LAB81:    t11 = (t11 + 1);
    goto LAB79;

LAB82:    t19 = 0;

LAB85:    if (t19 < 4U)
        goto LAB86;
    else
        goto LAB84;

LAB86:    t20 = (t16 + t19);
    t21 = (t12 + t19);
    if (*((unsigned char *)t20) != *((unsigned char *)t21))
        goto LAB83;

LAB87:    t19 = (t19 + 1);
    goto LAB85;

LAB88:    xsi_set_current_line(79, ng0);
    t7 = (1 * 1000LL);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t7);

LAB94:    *((char **)t1) = &&LAB95;
    goto LAB1;

LAB89:    goto LAB88;

LAB91:    goto LAB89;

LAB92:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5746);
    t10 = 1;
    if (8U == 8U)
        goto LAB104;

LAB105:    t10 = 0;

LAB106:    if (t10 == 1)
        goto LAB101;

LAB102:    t9 = (unsigned char)0;

LAB103:    if (t9 == 1)
        goto LAB98;

LAB99:    t8 = (unsigned char)0;

LAB100:    if (t8 == 0)
        goto LAB96;

LAB97:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t7);

LAB118:    *((char **)t1) = &&LAB119;
    goto LAB1;

LAB93:    goto LAB92;

LAB95:    goto LAB93;

LAB96:    t22 = (t0 + 5758);
    xsi_report(t22, 11U, (unsigned char)2);
    goto LAB97;

LAB98:    t12 = (t0 + 1672U);
    t16 = *((char **)t12);
    t12 = (t0 + 5754);
    t18 = 1;
    if (4U == 4U)
        goto LAB110;

LAB111:    t18 = 0;

LAB112:    t8 = t18;
    goto LAB100;

LAB101:    t12 = (t0 + 1512U);
    t13 = *((char **)t12);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)3);
    t9 = t15;
    goto LAB103;

LAB104:    t11 = 0;

LAB107:    if (t11 < 8U)
        goto LAB108;
    else
        goto LAB106;

LAB108:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB105;

LAB109:    t11 = (t11 + 1);
    goto LAB107;

LAB110:    t19 = 0;

LAB113:    if (t19 < 4U)
        goto LAB114;
    else
        goto LAB112;

LAB114:    t20 = (t16 + t19);
    t21 = (t12 + t19);
    if (*((unsigned char *)t20) != *((unsigned char *)t21))
        goto LAB111;

LAB115:    t19 = (t19 + 1);
    goto LAB113;

LAB116:    xsi_set_current_line(86, ng0);
    t7 = (1 * 1000LL);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t7);

LAB122:    *((char **)t1) = &&LAB123;
    goto LAB1;

LAB117:    goto LAB116;

LAB119:    goto LAB117;

LAB120:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5769);
    t10 = 1;
    if (8U == 8U)
        goto LAB132;

LAB133:    t10 = 0;

LAB134:    if (t10 == 1)
        goto LAB129;

LAB130:    t9 = (unsigned char)0;

LAB131:    if (t9 == 1)
        goto LAB126;

LAB127:    t8 = (unsigned char)0;

LAB128:    if (t8 == 0)
        goto LAB124;

LAB125:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t7);

LAB146:    *((char **)t1) = &&LAB147;
    goto LAB1;

LAB121:    goto LAB120;

LAB123:    goto LAB121;

LAB124:    t22 = (t0 + 5781);
    xsi_report(t22, 12U, (unsigned char)2);
    goto LAB125;

LAB126:    t12 = (t0 + 1672U);
    t16 = *((char **)t12);
    t12 = (t0 + 5777);
    t18 = 1;
    if (4U == 4U)
        goto LAB138;

LAB139:    t18 = 0;

LAB140:    t8 = t18;
    goto LAB128;

LAB129:    t12 = (t0 + 1512U);
    t13 = *((char **)t12);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)2);
    t9 = t15;
    goto LAB131;

LAB132:    t11 = 0;

LAB135:    if (t11 < 8U)
        goto LAB136;
    else
        goto LAB134;

LAB136:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB133;

LAB137:    t11 = (t11 + 1);
    goto LAB135;

LAB138:    t19 = 0;

LAB141:    if (t19 < 4U)
        goto LAB142;
    else
        goto LAB140;

LAB142:    t20 = (t16 + t19);
    t21 = (t12 + t19);
    if (*((unsigned char *)t20) != *((unsigned char *)t21))
        goto LAB139;

LAB143:    t19 = (t19 + 1);
    goto LAB141;

LAB144:    xsi_set_current_line(94, ng0);
    t7 = (1 * 1000LL);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t7);

LAB150:    *((char **)t1) = &&LAB151;
    goto LAB1;

LAB145:    goto LAB144;

LAB147:    goto LAB145;

LAB148:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5793);
    t10 = 1;
    if (8U == 8U)
        goto LAB160;

LAB161:    t10 = 0;

LAB162:    if (t10 == 1)
        goto LAB157;

LAB158:    t9 = (unsigned char)0;

LAB159:    if (t9 == 1)
        goto LAB154;

LAB155:    t8 = (unsigned char)0;

LAB156:    if (t8 == 0)
        goto LAB152;

LAB153:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t7);

LAB174:    *((char **)t1) = &&LAB175;
    goto LAB1;

LAB149:    goto LAB148;

LAB151:    goto LAB149;

LAB152:    t22 = (t0 + 5805);
    xsi_report(t22, 22U, (unsigned char)2);
    goto LAB153;

LAB154:    t12 = (t0 + 1672U);
    t16 = *((char **)t12);
    t12 = (t0 + 5801);
    t18 = 1;
    if (4U == 4U)
        goto LAB166;

LAB167:    t18 = 0;

LAB168:    t8 = t18;
    goto LAB156;

LAB157:    t12 = (t0 + 1512U);
    t13 = *((char **)t12);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)2);
    t9 = t15;
    goto LAB159;

LAB160:    t11 = 0;

LAB163:    if (t11 < 8U)
        goto LAB164;
    else
        goto LAB162;

LAB164:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB161;

LAB165:    t11 = (t11 + 1);
    goto LAB163;

LAB166:    t19 = 0;

LAB169:    if (t19 < 4U)
        goto LAB170;
    else
        goto LAB168;

LAB170:    t20 = (t16 + t19);
    t21 = (t12 + t19);
    if (*((unsigned char *)t20) != *((unsigned char *)t21))
        goto LAB167;

LAB171:    t19 = (t19 + 1);
    goto LAB169;

LAB172:    xsi_set_current_line(101, ng0);
    t7 = (1 * 1000LL);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t7);

LAB178:    *((char **)t1) = &&LAB179;
    goto LAB1;

LAB173:    goto LAB172;

LAB175:    goto LAB173;

LAB176:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5827);
    t10 = 1;
    if (8U == 8U)
        goto LAB188;

LAB189:    t10 = 0;

LAB190:    if (t10 == 1)
        goto LAB185;

LAB186:    t9 = (unsigned char)0;

LAB187:    if (t9 == 1)
        goto LAB182;

LAB183:    t8 = (unsigned char)0;

LAB184:    if (t8 == 0)
        goto LAB180;

LAB181:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t7);

LAB202:    *((char **)t1) = &&LAB203;
    goto LAB1;

LAB177:    goto LAB176;

LAB179:    goto LAB177;

LAB180:    t22 = (t0 + 5839);
    xsi_report(t22, 21U, (unsigned char)2);
    goto LAB181;

LAB182:    t12 = (t0 + 1672U);
    t16 = *((char **)t12);
    t12 = (t0 + 5835);
    t18 = 1;
    if (4U == 4U)
        goto LAB194;

LAB195:    t18 = 0;

LAB196:    t8 = t18;
    goto LAB184;

LAB185:    t12 = (t0 + 1512U);
    t13 = *((char **)t12);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)2);
    t9 = t15;
    goto LAB187;

LAB188:    t11 = 0;

LAB191:    if (t11 < 8U)
        goto LAB192;
    else
        goto LAB190;

LAB192:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB189;

LAB193:    t11 = (t11 + 1);
    goto LAB191;

LAB194:    t19 = 0;

LAB197:    if (t19 < 4U)
        goto LAB198;
    else
        goto LAB196;

LAB198:    t20 = (t16 + t19);
    t21 = (t12 + t19);
    if (*((unsigned char *)t20) != *((unsigned char *)t21))
        goto LAB195;

LAB199:    t19 = (t19 + 1);
    goto LAB197;

LAB200:    xsi_set_current_line(108, ng0);
    t7 = (1 * 1000LL);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t7);

LAB206:    *((char **)t1) = &&LAB207;
    goto LAB1;

LAB201:    goto LAB200;

LAB203:    goto LAB201;

LAB204:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5860);
    t10 = 1;
    if (8U == 8U)
        goto LAB216;

LAB217:    t10 = 0;

LAB218:    if (t10 == 1)
        goto LAB213;

LAB214:    t9 = (unsigned char)0;

LAB215:    if (t9 == 1)
        goto LAB210;

LAB211:    t8 = (unsigned char)0;

LAB212:    if (t8 == 0)
        goto LAB208;

LAB209:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 5894);
    xsi_report(t2, 30U, (unsigned char)0);
    xsi_set_current_line(117, ng0);

LAB230:    *((char **)t1) = &&LAB231;
    goto LAB1;

LAB205:    goto LAB204;

LAB207:    goto LAB205;

LAB208:    t22 = (t0 + 5872);
    xsi_report(t22, 22U, (unsigned char)2);
    goto LAB209;

LAB210:    t12 = (t0 + 1672U);
    t16 = *((char **)t12);
    t12 = (t0 + 5868);
    t18 = 1;
    if (4U == 4U)
        goto LAB222;

LAB223:    t18 = 0;

LAB224:    t8 = t18;
    goto LAB212;

LAB213:    t12 = (t0 + 1512U);
    t13 = *((char **)t12);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)2);
    t9 = t15;
    goto LAB215;

LAB216:    t11 = 0;

LAB219:    if (t11 < 8U)
        goto LAB220;
    else
        goto LAB218;

LAB220:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB217;

LAB221:    t11 = (t11 + 1);
    goto LAB219;

LAB222:    t19 = 0;

LAB225:    if (t19 < 4U)
        goto LAB226;
    else
        goto LAB224;

LAB226:    t20 = (t16 + t19);
    t21 = (t12 + t19);
    if (*((unsigned char *)t20) != *((unsigned char *)t21))
        goto LAB223;

LAB227:    t19 = (t19 + 1);
    goto LAB225;

LAB228:    goto LAB2;

LAB229:    goto LAB228;

LAB231:    goto LAB229;

}


extern void work_a_2208116761_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2208116761_2372691052_p_0,(void *)work_a_2208116761_2372691052_p_1};
	xsi_register_didat("work_a_2208116761_2372691052", "isim/cpu_top_tb_isim_beh.exe.sim/work/a_2208116761_2372691052.didat");
	xsi_register_executes(pe);
}
