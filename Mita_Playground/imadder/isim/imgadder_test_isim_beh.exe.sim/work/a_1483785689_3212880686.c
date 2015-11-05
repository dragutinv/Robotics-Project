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
static const char *ng0 = "C:/Users/Mita/Documents/VIBOT/Robotic Project/Mita_Playground/imadder.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_1483785689_3212880686_p_0(char *t0)
{
    char t17[16];
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
    char *t15;
    char *t16;
    unsigned int t18;
    unsigned int t19;
    char *t20;

LAB0:    xsi_set_current_line(14, ng0);
    t2 = (t0 + 1152U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3152);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(15, ng0);
    t4 = (t0 + 1032U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)2);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 5144U);
    t5 = (t0 + 1512U);
    t8 = *((char **)t5);
    t5 = (t0 + 5160U);
    t11 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t17, t4, t2, t8, t5);
    t12 = (t17 + 12U);
    t18 = *((unsigned int *)t12);
    t19 = (1U * t18);
    t1 = (8U != t19);
    if (t1 == 1)
        goto LAB11;

LAB12:    t13 = (t0 + 3232);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t11, 8U);
    xsi_driver_first_trans_fast_port(t13);

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)2);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(16, ng0);
    t4 = (t0 + 5218);
    t12 = (t0 + 3232);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB9;

LAB11:    xsi_size_not_matching(8U, t19, 0);
    goto LAB12;

}


extern void work_a_1483785689_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1483785689_3212880686_p_0};
	xsi_register_didat("work_a_1483785689_3212880686", "isim/imgadder_test_isim_beh.exe.sim/work/a_1483785689_3212880686.didat");
	xsi_register_executes(pe);
}
