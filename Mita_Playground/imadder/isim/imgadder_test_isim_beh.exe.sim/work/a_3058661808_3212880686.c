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
extern char *STD_STANDARD;
extern char *IEEE_P_2592010699;
static const char *ng2 = "C:/Users/Mita/Documents/VIBOT/Robotic Project/Mita_Playground/imgadder_test.vhd";
extern char *STD_TEXTIO;



int work_a_3058661808_3212880686_sub_1862372670_3057020925(char *t1, char *t2)
{
    char t3[248];
    char t4[24];
    char t5[16];
    char t12[8];
    char t15[16];
    char t21[8];
    int t0;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    int t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned char t26;
    char *t27;
    char *t28;
    char *t29;
    int t30;
    int t31;
    int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned char t36;
    int t37;
    int t38;
    int t39;

LAB0:    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 7;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t8 = (0 - 7);
    t9 = (t8 * -1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t7 = (t3 + 4U);
    t10 = ((STD_STANDARD) + 384);
    t11 = (t7 + 88U);
    *((char **)t11) = t10;
    t13 = (t7 + 56U);
    *((char **)t13) = t12;
    *((int *)t12) = 0;
    t14 = (t7 + 80U);
    *((unsigned int *)t14) = 4U;
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 7;
    t17 = (t16 + 4U);
    *((int *)t17) = 0;
    t17 = (t16 + 8U);
    *((int *)t17) = -1;
    t18 = (0 - 7);
    t9 = (t18 * -1);
    t9 = (t9 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t9;
    t17 = (t3 + 124U);
    t19 = ((IEEE_P_2592010699) + 4024);
    t20 = (t17 + 88U);
    *((char **)t20) = t19;
    t22 = (t17 + 56U);
    *((char **)t22) = t21;
    xsi_type_set_default_value(t19, t21, t15);
    t23 = (t17 + 64U);
    *((char **)t23) = t15;
    t24 = (t17 + 80U);
    *((unsigned int *)t24) = 8U;
    t25 = (t4 + 4U);
    t26 = (t2 != 0);
    if (t26 == 1)
        goto LAB3;

LAB2:    t27 = (t4 + 12U);
    *((char **)t27) = t5;
    t28 = (t7 + 56U);
    t29 = *((char **)t28);
    t28 = (t29 + 0);
    *((int *)t28) = 0;
    t6 = (t17 + 56U);
    t10 = *((char **)t6);
    t6 = (t10 + 0);
    t11 = (t5 + 12U);
    t9 = *((unsigned int *)t11);
    t9 = (t9 * 1U);
    memcpy(t6, t2, t9);
    t8 = 0;
    t18 = 7;

LAB4:    if (t8 <= t18)
        goto LAB5;

LAB7:    t6 = (t7 + 56U);
    t10 = *((char **)t6);
    t8 = *((int *)t10);
    t0 = t8;

LAB1:    return t0;
LAB3:    *((char **)t25) = t2;
    goto LAB2;

LAB5:    t6 = (t17 + 56U);
    t10 = *((char **)t6);
    t6 = (t15 + 0U);
    t30 = *((int *)t6);
    t11 = (t15 + 8U);
    t31 = *((int *)t11);
    t32 = (t8 - t30);
    t9 = (t32 * t31);
    t13 = (t15 + 4U);
    t33 = *((int *)t13);
    xsi_vhdl_check_range_of_index(t30, t33, t31, t8);
    t34 = (1U * t9);
    t35 = (0 + t34);
    t14 = (t10 + t35);
    t26 = *((unsigned char *)t14);
    t36 = (t26 == (unsigned char)3);
    if (t36 != 0)
        goto LAB8;

LAB10:    t6 = (t7 + 56U);
    t10 = *((char **)t6);
    t30 = *((int *)t10);
    t31 = (t30 + 0);
    t6 = (t7 + 56U);
    t11 = *((char **)t6);
    t6 = (t11 + 0);
    *((int *)t6) = t31;

LAB9:
LAB6:    if (t8 == t18)
        goto LAB7;

LAB11:    t30 = (t8 + 1);
    t8 = t30;
    goto LAB4;

LAB8:    t16 = (t7 + 56U);
    t19 = *((char **)t16);
    t37 = *((int *)t19);
    t38 = xsi_vhdl_pow(2, t8);
    t39 = (t37 + t38);
    t16 = (t7 + 56U);
    t20 = *((char **)t16);
    t16 = (t20 + 0);
    *((int *)t16) = t39;
    goto LAB9;

LAB12:;
}

char *work_a_3058661808_3212880686_sub_1975682760_3057020925(char *t1, char *t2, int t3, int t4)
{
    char t5[248];
    char t6[16];
    char t9[16];
    char t17[8];
    char t24[8];
    char *t0;
    char *t7;
    char *t8;
    int t10;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    int t31;
    int t32;
    int t33;
    unsigned char t34;
    int t35;
    int t36;
    int t37;
    int t38;
    unsigned int t39;
    unsigned int t40;

LAB0:    t7 = (t1 + 12408);
    t10 = (t4 - 1);
    t11 = (t9 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = t10;
    t12 = (t11 + 4U);
    *((int *)t12) = 0;
    t12 = (t11 + 8U);
    *((int *)t12) = -1;
    t13 = (0 - t10);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = (t5 + 4U);
    t15 = ((IEEE_P_2592010699) + 4024);
    t16 = (t12 + 88U);
    *((char **)t16) = t15;
    t18 = (t12 + 56U);
    *((char **)t18) = t17;
    memcpy(t17, t7, 8U);
    t19 = (t12 + 64U);
    *((char **)t19) = t9;
    t20 = (t12 + 80U);
    *((unsigned int *)t20) = 8U;
    t21 = (t5 + 124U);
    t22 = ((STD_STANDARD) + 384);
    t23 = (t21 + 88U);
    *((char **)t23) = t22;
    t25 = (t21 + 56U);
    *((char **)t25) = t24;
    *((int *)t24) = 0;
    t26 = (t21 + 80U);
    *((unsigned int *)t26) = 4U;
    t27 = (t6 + 4U);
    *((int *)t27) = t3;
    t28 = (t6 + 8U);
    *((int *)t28) = t4;
    t29 = (t21 + 56U);
    t30 = *((char **)t29);
    t29 = (t30 + 0);
    *((int *)t29) = t3;
    t10 = (t4 - 1);
    t13 = 0;
    t31 = t10;

LAB2:    if (t13 <= t31)
        goto LAB3;

LAB5:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t7 = (t9 + 12U);
    t14 = *((unsigned int *)t7);
    t14 = (t14 * 1U);
    t0 = xsi_get_transient_memory(t14);
    memcpy(t0, t8, t14);
    t11 = (t9 + 0U);
    t10 = *((int *)t11);
    t15 = (t9 + 4U);
    t13 = *((int *)t15);
    t16 = (t9 + 8U);
    t31 = *((int *)t16);
    t18 = (t2 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = t10;
    t19 = (t18 + 4U);
    *((int *)t19) = t13;
    t19 = (t18 + 8U);
    *((int *)t19) = t31;
    t32 = (t13 - t10);
    t39 = (t32 * t31);
    t39 = (t39 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t39;

LAB1:    return t0;
LAB3:    t7 = (t21 + 56U);
    t8 = *((char **)t7);
    t32 = *((int *)t8);
    t33 = xsi_vhdl_mod(t32, 2);
    t34 = (t33 == 1);
    if (t34 != 0)
        goto LAB6;

LAB8:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t7 = (t9 + 0U);
    t10 = *((int *)t7);
    t11 = (t9 + 8U);
    t32 = *((int *)t11);
    t33 = (t13 - t10);
    t14 = (t33 * t32);
    t15 = (t9 + 4U);
    t35 = *((int *)t15);
    xsi_vhdl_check_range_of_index(t10, t35, t32, t13);
    t39 = (1U * t14);
    t40 = (0 + t39);
    t16 = (t8 + t40);
    *((unsigned char *)t16) = (unsigned char)2;

LAB7:    t7 = (t21 + 56U);
    t8 = *((char **)t7);
    t10 = *((int *)t8);
    t34 = (t10 > 0);
    if (t34 != 0)
        goto LAB9;

LAB11:    t7 = (t21 + 56U);
    t8 = *((char **)t7);
    t10 = *((int *)t8);
    if (-2147483648 > 2147483647)
        goto LAB14;

LAB15:    if (1 == -1)
        goto LAB19;

LAB20:    t32 = -2147483648;

LAB16:    t34 = (t10 > t32);
    if (t34 != 0)
        goto LAB12;

LAB13:    t7 = (t21 + 56U);
    t8 = *((char **)t7);
    t10 = *((int *)t8);
    t32 = (t10 / 2);
    t7 = (t21 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((int *)t7) = t32;

LAB10:
LAB4:    if (t13 == t31)
        goto LAB5;

LAB21:    t10 = (t13 + 1);
    t13 = t10;
    goto LAB2;

LAB6:    t7 = (t12 + 56U);
    t11 = *((char **)t7);
    t7 = (t9 + 0U);
    t35 = *((int *)t7);
    t15 = (t9 + 8U);
    t36 = *((int *)t15);
    t37 = (t13 - t35);
    t14 = (t37 * t36);
    t16 = (t9 + 4U);
    t38 = *((int *)t16);
    xsi_vhdl_check_range_of_index(t35, t38, t36, t13);
    t39 = (1U * t14);
    t40 = (0 + t39);
    t18 = (t11 + t40);
    *((unsigned char *)t18) = (unsigned char)3;
    goto LAB7;

LAB9:    t7 = (t21 + 56U);
    t11 = *((char **)t7);
    t32 = *((int *)t11);
    t33 = (t32 / 2);
    t7 = (t21 + 56U);
    t15 = *((char **)t7);
    t7 = (t15 + 0);
    *((int *)t7) = t33;
    goto LAB10;

LAB12:    t7 = (t21 + 56U);
    t11 = *((char **)t7);
    t33 = *((int *)t11);
    t35 = (t33 - 1);
    t36 = (t35 / 2);
    t7 = (t21 + 56U);
    t15 = *((char **)t7);
    t7 = (t15 + 0);
    *((int *)t7) = t36;
    goto LAB10;

LAB14:    if (1 == 1)
        goto LAB17;

LAB18:    t32 = 2147483647;
    goto LAB16;

LAB17:    t32 = -2147483648;
    goto LAB16;

LAB19:    t32 = 2147483647;
    goto LAB16;

LAB22:;
}

static void work_a_3058661808_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
    char *t5;
    char *t6;
    char *t7;
    int64 t8;
    double t9;
    int64 t10;
    int64 t11;

LAB0:    t1 = (t0 + 5320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(101, ng2);
    t2 = (t0 + 3448U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 5128);
    xsi_process_wait(t2, t4);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(102, ng2);

LAB8:
LAB9:    xsi_set_current_line(103, ng2);
    t2 = (t0 + 6496);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(104, ng2);
    t2 = (t0 + 3208U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 3208U);
    t5 = *((char **)t2);
    t8 = *((int64 *)t5);
    t2 = (t0 + 3328U);
    t6 = *((char **)t2);
    t9 = *((double *)t6);
    t10 = (t8 * t9);
    t11 = (t4 - t10);
    t2 = (t0 + 5128);
    xsi_process_wait(t2, t11);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB10:;
LAB11:    goto LAB2;

LAB12:    xsi_set_current_line(105, ng2);
    t2 = (t0 + 6496);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(106, ng2);
    t2 = (t0 + 3208U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 3328U);
    t5 = *((char **)t2);
    t9 = *((double *)t5);
    t8 = (t4 * t9);
    t2 = (t0 + 5128);
    xsi_process_wait(t2, t8);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    goto LAB8;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

}

static void work_a_3058661808_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 5568U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(112, ng2);
    t2 = (t0 + 6560);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(113, ng2);
    t7 = (60 * 1000LL);
    t2 = (t0 + 5376);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(114, ng2);
    t2 = (t0 + 6560);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(115, ng2);
    t7 = (1312 * 1000000LL);
    t2 = (t0 + 5376);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3058661808_3212880686_p_2(char *t0)
{
    char t19[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    int t10;
    int t11;
    char *t12;
    char *t13;
    char *t14;
    double t15;
    int t16;
    double t17;
    double t18;
    unsigned int t20;
    char *t21;
    int64 t22;

LAB0:    t1 = (t0 + 5816U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(127, ng2);

LAB6:    t2 = (t0 + 6384);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t9 = (t0 + 6384);
    *((int *)t9) = 0;
    xsi_set_current_line(128, ng2);

LAB11:    t2 = (t0 + 4136U);
    t6 = std_textio_endfile(t2);
    if (t6 == 1)
        goto LAB15;

LAB16:    t4 = (t0 + 4240U);
    t7 = std_textio_endfile(t4);
    t3 = t7;

LAB17:    t8 = (!(t3));
    if (t8 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(155, ng2);
    t2 = (t0 + 4136U);
    std_textio_file_close(t2);
    xsi_set_current_line(156, ng2);
    t2 = (t0 + 4240U);
    std_textio_file_close(t2);
    xsi_set_current_line(157, ng2);

LAB43:    *((char **)t1) = &&LAB44;
    goto LAB1;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    t4 = (t0 + 1152U);
    t8 = xsi_signal_has_event(t4);
    t3 = t8;
    goto LAB10;

LAB12:    xsi_set_current_line(130, ng2);
    t5 = (t0 + 12416);
    *((int *)t5) = 1;
    t9 = (t0 + 12420);
    *((int *)t9) = 65536;
    t10 = 1;
    t11 = 65536;

LAB18:    if (t10 <= t11)
        goto LAB19;

LAB21:    goto LAB11;

LAB13:;
LAB15:    t3 = (unsigned char)1;
    goto LAB17;

LAB19:    xsi_set_current_line(132, ng2);
    t12 = (t0 + 5624);
    t13 = (t0 + 4136U);
    t14 = (t0 + 4520U);
    std_textio_readline(STD_TEXTIO, t12, t13, t14);
    xsi_set_current_line(133, ng2);
    t2 = (t0 + 5624);
    t4 = (t0 + 4520U);
    t5 = (t0 + 3568U);
    t9 = *((char **)t5);
    t5 = (t9 + 0);
    std_textio_read12(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(134, ng2);
    t2 = (t0 + 3568U);
    t4 = *((char **)t2);
    t15 = *((double *)t4);
    t3 = (t15 >= 0);
    if (t3 == 1)
        goto LAB22;

LAB23:    t18 = (t15 - 0.50000000000000000);
    t16 = ((int)(t18));

LAB24:    t2 = (t0 + 6624);
    t5 = (t2 + 56U);
    t9 = *((char **)t5);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = t16;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(135, ng2);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t16 = *((int *)t4);
    t2 = work_a_3058661808_3212880686_sub_1975682760_3057020925(t0, t19, t16, 8);
    t5 = (t19 + 12U);
    t20 = *((unsigned int *)t5);
    t20 = (t20 * 1U);
    t3 = (8U != t20);
    if (t3 == 1)
        goto LAB27;

LAB28:    t9 = (t0 + 6688);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t21 = *((char **)t14);
    memcpy(t21, t2, 8U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(136, ng2);
    t2 = (t0 + 5624);
    t4 = (t0 + 4240U);
    t5 = (t0 + 4592U);
    std_textio_readline(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(137, ng2);
    t2 = (t0 + 5624);
    t4 = (t0 + 4592U);
    t5 = (t0 + 3688U);
    t9 = *((char **)t5);
    t5 = (t9 + 0);
    std_textio_read12(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(138, ng2);
    t2 = (t0 + 3688U);
    t4 = *((char **)t2);
    t15 = *((double *)t4);
    t3 = (t15 >= 0);
    if (t3 == 1)
        goto LAB29;

LAB30:    t18 = (t15 - 0.50000000000000000);
    t16 = ((int)(t18));

LAB31:    t2 = (t0 + 6752);
    t5 = (t2 + 56U);
    t9 = *((char **)t5);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = t16;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(139, ng2);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t16 = *((int *)t4);
    t2 = work_a_3058661808_3212880686_sub_1975682760_3057020925(t0, t19, t16, 8);
    t5 = (t19 + 12U);
    t20 = *((unsigned int *)t5);
    t20 = (t20 * 1U);
    t3 = (8U != t20);
    if (t3 == 1)
        goto LAB34;

LAB35:    t9 = (t0 + 6816);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t21 = *((char **)t14);
    memcpy(t21, t2, 8U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(140, ng2);
    t2 = (t0 + 6880);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(141, ng2);
    t22 = (2 * 1000LL);
    t2 = (t0 + 5624);
    xsi_process_wait(t2, t22);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB20:    t2 = (t0 + 12416);
    t10 = *((int *)t2);
    t4 = (t0 + 12420);
    t11 = *((int *)t4);
    if (t10 == t11)
        goto LAB21;

LAB40:    t16 = (t10 + 1);
    t10 = t16;
    t5 = (t0 + 12416);
    *((int *)t5) = t10;
    goto LAB18;

LAB22:    t6 = (t15 >= 2147483647);
    if (t6 == 1)
        goto LAB25;

LAB26:    t17 = (t15 + 0.50000000000000000);
    t16 = ((int)(t17));
    goto LAB24;

LAB25:    t16 = 2147483647;
    goto LAB24;

LAB27:    xsi_size_not_matching(8U, t20, 0);
    goto LAB28;

LAB29:    t6 = (t15 >= 2147483647);
    if (t6 == 1)
        goto LAB32;

LAB33:    t17 = (t15 + 0.50000000000000000);
    t16 = ((int)(t17));
    goto LAB31;

LAB32:    t16 = 2147483647;
    goto LAB31;

LAB34:    xsi_size_not_matching(8U, t20, 0);
    goto LAB35;

LAB36:    goto LAB20;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

LAB41:    goto LAB2;

LAB42:    goto LAB41;

LAB44:    goto LAB42;

}

static void work_a_3058661808_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;

LAB0:    t1 = (t0 + 6064U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(165, ng2);

LAB6:    t2 = (t0 + 6400);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t9 = (t0 + 6400);
    *((int *)t9) = 0;
    xsi_set_current_line(166, ng2);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)0);
    if (t6 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(175, ng2);

LAB12:    goto LAB2;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)2);
    if (t7 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    t4 = (t0 + 1152U);
    t8 = xsi_signal_has_event(t4);
    t3 = t8;
    goto LAB10;

LAB11:    xsi_set_current_line(167, ng2);
    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t10 = work_a_3058661808_3212880686_sub_1862372670_3057020925(t0, t5);
    t2 = (t0 + 6944);
    t9 = (t2 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = t10;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(168, ng2);
    t2 = (t0 + 2792U);
    t4 = *((char **)t2);
    t10 = *((int *)t4);
    t3 = (t10 > 3);
    if (t3 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(173, ng2);
    t2 = (t0 + 2792U);
    t4 = *((char **)t2);
    t10 = *((int *)t4);
    t14 = (t10 + 1);
    t2 = (t0 + 7072);
    t5 = (t2 + 56U);
    t9 = *((char **)t5);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((int *)t12) = t14;
    xsi_driver_first_trans_fast(t2);
    goto LAB12;

LAB14:    xsi_set_current_line(169, ng2);
    t2 = (t0 + 5872);
    t5 = (t0 + 4664U);
    t9 = (t0 + 2312U);
    t11 = *((char **)t9);
    t14 = *((int *)t11);
    std_textio_write5(STD_TEXTIO, t2, t5, t14, (unsigned char)0, 0);
    xsi_set_current_line(170, ng2);
    t2 = (t0 + 5872);
    t4 = (t0 + 4344U);
    t5 = (t0 + 4664U);
    std_textio_writeline(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(171, ng2);
    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t10 = *((int *)t4);
    t14 = (t10 + 1);
    t2 = (t0 + 7008);
    t5 = (t2 + 56U);
    t9 = *((char **)t5);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((int *)t12) = t14;
    xsi_driver_first_trans_fast(t2);
    goto LAB15;

}


extern void work_a_3058661808_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3058661808_3212880686_p_0,(void *)work_a_3058661808_3212880686_p_1,(void *)work_a_3058661808_3212880686_p_2,(void *)work_a_3058661808_3212880686_p_3};
	static char *se[] = {(void *)work_a_3058661808_3212880686_sub_1862372670_3057020925,(void *)work_a_3058661808_3212880686_sub_1975682760_3057020925};
	xsi_register_didat("work_a_3058661808_3212880686", "isim/imgadder_test_isim_beh.exe.sim/work/a_3058661808_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
