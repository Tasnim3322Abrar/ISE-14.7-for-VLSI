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
static const char *ng0 = "/home/ise/computer/cpu_design/cpu_top.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1701011461141717515_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_207919886985903570_503743352(char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_3488546069778340532_503743352(char *, unsigned char , unsigned char );


static void work_a_1745933882_1181938964_p_0(char *t0)
{
    char t20[16];
    char t25[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t21;
    unsigned int t22;
    unsigned char t23;
    unsigned int t24;
    unsigned int t26;

LAB0:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 7528);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 11652);
    t7 = xsi_mem_cmp(t1, t2, 4U);
    if (t7 == 1)
        goto LAB3;

LAB8:    t4 = (t0 + 11656);
    t8 = xsi_mem_cmp(t4, t2, 4U);
    if (t8 == 1)
        goto LAB4;

LAB9:    t6 = (t0 + 11660);
    t10 = xsi_mem_cmp(t6, t2, 4U);
    if (t10 == 1)
        goto LAB5;

LAB10:    t11 = (t0 + 11664);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB6;

LAB11:
LAB7:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 7528);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t1 = (t0 + 7352);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(83, ng0);
    t14 = (t0 + 2792U);
    t15 = *((char **)t14);
    t14 = (t0 + 7528);
    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t15, 8U);
    xsi_driver_first_trans_fast(t14);
    goto LAB2;

LAB4:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 11504U);
    t3 = (t0 + 2792U);
    t4 = *((char **)t3);
    t3 = (t0 + 11568U);
    t5 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t20, t2, t1, t4, t3);
    t6 = (t0 + 7528);
    t9 = (t6 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t5, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB5:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 11504U);
    t3 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t20, t2, t1);
    t4 = (t20 + 12U);
    t21 = *((unsigned int *)t4);
    t22 = (1U * t21);
    t23 = (8U != t22);
    if (t23 == 1)
        goto LAB13;

LAB14:    t5 = (t0 + 7528);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB2;

LAB6:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t21 = (7 - 6);
    t22 = (t21 * 1U);
    t24 = (0 + t22);
    t1 = (t2 + t24);
    t4 = ((IEEE_P_2592010699) + 4000);
    t5 = (t25 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 6;
    t6 = (t5 + 4U);
    *((int *)t6) = 0;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t7 = (0 - 6);
    t26 = (t7 * -1);
    t26 = (t26 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t26;
    t3 = xsi_base_array_concat(t3, t20, t4, (char)97, t1, t25, (char)99, (unsigned char)2, (char)101);
    t26 = (7U + 1U);
    t23 = (8U != t26);
    if (t23 == 1)
        goto LAB15;

LAB16:    t6 = (t0 + 7528);
    t9 = (t6 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t3, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB12:;
LAB13:    xsi_size_not_matching(8U, t22, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(8U, t26, 0);
    goto LAB16;

}

static void work_a_1745933882_1181938964_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(99, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3112U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 3272U);
    t7 = *((char **)t1);
    t8 = *((unsigned char *)t7);
    t9 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t6, t8);
    t1 = (t0 + 3432U);
    t10 = *((char **)t1);
    t11 = *((unsigned char *)t10);
    t12 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t9, t11);
    t1 = (t0 + 7592);
    t13 = (t1 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t12;
    xsi_driver_first_trans_fast(t1);

LAB2:    t17 = (t0 + 7368);
    *((int *)t17) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1745933882_1181938964_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(116, ng0);
    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7656);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(118, ng0);
    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t8 = (t3 == (unsigned char)3);
    if (t8 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 7384);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 2312U);
    t4 = *((char **)t1);
    t1 = (t0 + 11668);
    t9 = 1;
    if (8U == 8U)
        goto LAB8;

LAB9:    t9 = 0;

LAB10:    if (t9 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(122, ng0);
    t1 = (t0 + 7656);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(120, ng0);
    t11 = (t0 + 7656);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast(t11);
    goto LAB6;

LAB8:    t10 = 0;

LAB11:    if (t10 < 8U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t6 = (t4 + t10);
    t7 = (t1 + t10);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB9;

LAB13:    t10 = (t10 + 1);
    goto LAB11;

}

static void work_a_1745933882_1181938964_p_3(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(139, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 11472U);
    t4 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t1, t3, t2, 1);
    t5 = (t0 + 7720);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(141, ng0);
    t2 = (t0 + 3752U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)3);
    if (t11 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 3912U);
    t3 = *((char **)t2);
    t12 = *((unsigned char *)t3);
    t13 = (t12 == (unsigned char)3);
    if (t13 == 1)
        goto LAB10;

LAB11:    t11 = (unsigned char)0;

LAB12:    if (t11 == 1)
        goto LAB7;

LAB8:    t10 = (unsigned char)0;

LAB9:    if (t10 != 0)
        goto LAB5;

LAB6:
LAB3:    t2 = (t0 + 7400);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(142, ng0);
    t2 = xsi_get_transient_memory(4U);
    memset(t2, 0, 4U);
    t4 = t2;
    memset(t4, (unsigned char)2, 4U);
    t5 = (t0 + 7720);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(145, ng0);
    t2 = (t0 + 2792U);
    t6 = *((char **)t2);
    t18 = (7 - 3);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t2 = (t6 + t20);
    t7 = (t0 + 7720);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t21 = (t9 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t2, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB3;

LAB7:    t2 = (t0 + 4232U);
    t5 = *((char **)t2);
    t16 = *((unsigned char *)t5);
    t17 = (t16 == (unsigned char)3);
    t10 = t17;
    goto LAB9;

LAB10:    t2 = (t0 + 3592U);
    t4 = *((char **)t2);
    t14 = *((unsigned char *)t4);
    t15 = (t14 == (unsigned char)3);
    t11 = t15;
    goto LAB12;

}

static void work_a_1745933882_1181938964_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(160, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 7784);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7416);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1745933882_1181938964_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(161, ng0);

LAB3:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7848);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 7432);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1745933882_1181938964_p_6(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(162, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 7912);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7448);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1745933882_1181938964_init()
{
	static char *pe[] = {(void *)work_a_1745933882_1181938964_p_0,(void *)work_a_1745933882_1181938964_p_1,(void *)work_a_1745933882_1181938964_p_2,(void *)work_a_1745933882_1181938964_p_3,(void *)work_a_1745933882_1181938964_p_4,(void *)work_a_1745933882_1181938964_p_5,(void *)work_a_1745933882_1181938964_p_6};
	xsi_register_didat("work_a_1745933882_1181938964", "isim/cpu_top_tb_isim_beh.exe.sim/work/a_1745933882_1181938964.didat");
	xsi_register_executes(pe);
}
