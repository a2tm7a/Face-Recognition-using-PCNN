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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/EMBEDDED PROJECT/Hopefully Final/PCNN/FaceRecoViaPCNN/FaceRecoViaPCNN/ControlUnit.vhd";
extern char *WORK_P_1694163696;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
void work_p_1694163696_sub_3007203430_2961128979(char *, char *, char *, char *, char *);
void work_p_1694163696_sub_3815868005_2961128979(char *, char *, char *, char *, char *, char *);
void work_p_1694163696_sub_398029176_2961128979(char *, char *, char *, char *, char *);


static void work_a_2096391741_3212880686_p_0(char *t0)
{
    char t34[4096];
    char t35[65536];
    char t36[64];
    char t37[9600];
    char t38[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    int t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    int t27;
    int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;

LAB0:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4072);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(63, ng0);
    t4 = (t0 + 2528U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 151972);
    *((int *)t2) = 0;
    t4 = (t0 + 151976);
    *((int *)t4) = 1023;
    t15 = 0;
    t16 = 1023;

LAB11:    if (t15 <= t16)
        goto LAB12;

LAB14:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3560);
    t4 = (t0 + 2648U);
    t5 = *((char **)t4);
    memcpy(t34, t5, 4096U);
    t4 = (t0 + 1928U);
    t8 = *((char **)t4);
    memcpy(t35, t8, 65536U);
    t4 = (t0 + 2168U);
    t11 = *((char **)t4);
    work_p_1694163696_sub_398029176_2961128979(WORK_P_1694163696, t2, t34, t35, t11);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3560);
    t4 = (t0 + 2168U);
    t5 = *((char **)t4);
    memcpy(t36, t5, 64U);
    t4 = (t0 + 2048U);
    t8 = *((char **)t4);
    memcpy(t37, t8, 9600U);
    t4 = (t0 + 2288U);
    t11 = *((char **)t4);
    t4 = (t11 + 0);
    t12 = (t0 + 2408U);
    t13 = *((char **)t12);
    t12 = (t13 + 0);
    work_p_1694163696_sub_3815868005_2961128979(WORK_P_1694163696, t2, t36, t37, t4, t12);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t15 = *((int *)t4);
    t2 = (t0 + 2768U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((int *)t2) = t15;
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2408U);
    t4 = *((char **)t2);
    t15 = *((int *)t4);
    t2 = (t0 + 4152);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((int *)t12) = t15;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2768U);
    t4 = *((char **)t2);
    t15 = *((int *)t4);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t38, t15, 8);
    t5 = (t0 + 4216);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(64, ng0);
    t4 = (t0 + 3560);
    t11 = (t0 + 1808U);
    t12 = *((char **)t11);
    t11 = (t0 + 1928U);
    t13 = *((char **)t11);
    t11 = (t0 + 2048U);
    t14 = *((char **)t11);
    work_p_1694163696_sub_3007203430_2961128979(WORK_P_1694163696, t4, t12, t13, t14);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2528U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    goto LAB9;

LAB12:    xsi_set_current_line(69, ng0);
    t5 = (t0 + 1808U);
    t8 = *((char **)t5);
    t5 = (t0 + 1512U);
    t11 = *((char **)t5);
    t17 = *((int *)t11);
    t18 = (t17 - 0);
    t19 = (t18 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t17);
    t20 = (t19 * 1024U);
    t5 = (t0 + 151972);
    t21 = *((int *)t5);
    t22 = (t21 - 0);
    t23 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, *((int *)t5));
    t24 = (t20 + t23);
    t25 = (4U * t24);
    t26 = (0 + t25);
    t12 = (t8 + t26);
    t27 = *((int *)t12);
    t13 = (t0 + 2648U);
    t14 = *((char **)t13);
    t13 = (t0 + 151972);
    t28 = *((int *)t13);
    t29 = (t28 - 0);
    t30 = (t29 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, *((int *)t13));
    t31 = (4U * t30);
    t32 = (0 + t31);
    t33 = (t14 + t32);
    *((int *)t33) = t27;

LAB13:    t2 = (t0 + 151972);
    t15 = *((int *)t2);
    t4 = (t0 + 151976);
    t16 = *((int *)t4);
    if (t15 == t16)
        goto LAB14;

LAB15:    t17 = (t15 + 1);
    t15 = t17;
    t5 = (t0 + 151972);
    *((int *)t5) = t15;
    goto LAB11;

}


extern void work_a_2096391741_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2096391741_3212880686_p_0};
	xsi_register_didat("work_a_2096391741_3212880686", "isim/tb_ControlUnit3_isim_beh.exe.sim/work/a_2096391741_3212880686.didat");
	xsi_register_executes(pe);
}
