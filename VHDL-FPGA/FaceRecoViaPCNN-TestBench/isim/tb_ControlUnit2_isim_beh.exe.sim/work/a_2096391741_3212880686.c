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
extern char *IEEE_P_1242562249;
extern char *WORK_P_1694163696;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
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
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
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

LAB0:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 7332U);
    t3 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t4 = (t0 + 2768U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    *((int *)t4) = t3;
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 992U);
    t7 = xsi_signal_has_event(t1);
    if (t7 == 1)
        goto LAB5;

LAB6:    t6 = (unsigned char)0;

LAB7:    if (t6 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4192);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2528U);
    t5 = *((char **)t2);
    t10 = *((unsigned char *)t5);
    t11 = (t10 == (unsigned char)3);
    if (t11 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 152216);
    *((int *)t1) = 0;
    t2 = (t0 + 152220);
    *((int *)t2) = 1023;
    t3 = 0;
    t16 = 1023;

LAB11:    if (t3 <= t16)
        goto LAB12;

LAB14:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 3680);
    t2 = (t0 + 2648U);
    t4 = *((char **)t2);
    memcpy(t34, t4, 4096U);
    t2 = (t0 + 1928U);
    t5 = *((char **)t2);
    memcpy(t35, t5, 65536U);
    t2 = (t0 + 2168U);
    t12 = *((char **)t2);
    work_p_1694163696_sub_398029176_2961128979(WORK_P_1694163696, t1, t34, t35, t12);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 3680);
    t2 = (t0 + 2168U);
    t4 = *((char **)t2);
    memcpy(t36, t4, 64U);
    t2 = (t0 + 2048U);
    t5 = *((char **)t2);
    memcpy(t37, t5, 9600U);
    t2 = (t0 + 2288U);
    t12 = *((char **)t2);
    t2 = (t12 + 0);
    t13 = (t0 + 2408U);
    t14 = *((char **)t13);
    t13 = (t14 + 0);
    work_p_1694163696_sub_3815868005_2961128979(WORK_P_1694163696, t1, t36, t37, t2, t13);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = (t0 + 2888U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t3;
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2408U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = (t0 + 4272);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t12 = (t5 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = t3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2888U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t38, t3, 8);
    t4 = (t0 + 4336);
    t5 = (t4 + 56U);
    t12 = *((char **)t5);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB3;

LAB5:    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t8 = *((unsigned char *)t4);
    t9 = (t8 == (unsigned char)3);
    t6 = t9;
    goto LAB7;

LAB8:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3680);
    t12 = (t0 + 1808U);
    t13 = *((char **)t12);
    t12 = (t0 + 1928U);
    t14 = *((char **)t12);
    t12 = (t0 + 2048U);
    t15 = *((char **)t12);
    work_p_1694163696_sub_3007203430_2961128979(WORK_P_1694163696, t2, t13, t14, t15);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB9;

LAB12:    xsi_set_current_line(68, ng0);
    t4 = (t0 + 1808U);
    t5 = *((char **)t4);
    t4 = (t0 + 2768U);
    t12 = *((char **)t4);
    t17 = *((int *)t12);
    t18 = (t17 - 0);
    t19 = (t18 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t17);
    t20 = (t19 * 1024U);
    t4 = (t0 + 152216);
    t21 = *((int *)t4);
    t22 = (t21 - 0);
    t23 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, *((int *)t4));
    t24 = (t20 + t23);
    t25 = (4U * t24);
    t26 = (0 + t25);
    t13 = (t5 + t26);
    t27 = *((int *)t13);
    t14 = (t0 + 2648U);
    t15 = *((char **)t14);
    t14 = (t0 + 152216);
    t28 = *((int *)t14);
    t29 = (t28 - 0);
    t30 = (t29 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, *((int *)t14));
    t31 = (4U * t30);
    t32 = (0 + t31);
    t33 = (t15 + t32);
    *((int *)t33) = t27;

LAB13:    t1 = (t0 + 152216);
    t3 = *((int *)t1);
    t2 = (t0 + 152220);
    t16 = *((int *)t2);
    if (t3 == t16)
        goto LAB14;

LAB15:    t17 = (t3 + 1);
    t3 = t17;
    t4 = (t0 + 152216);
    *((int *)t4) = t3;
    goto LAB11;

}


extern void work_a_2096391741_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2096391741_3212880686_p_0};
	xsi_register_didat("work_a_2096391741_3212880686", "isim/tb_ControlUnit2_isim_beh.exe.sim/work/a_2096391741_3212880686.didat");
	xsi_register_executes(pe);
}
