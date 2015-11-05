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
static const char *ng0 = "C:/Users/Mita/Documents/VIBOT/Robotic Project/Mita_Playground/ISE_ADDER_TB2.vhd";
extern char *STD_TEXTIO;



static void work_a_1059130364_2602894548_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 5072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 5704);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4880);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 5704);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4880);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1059130364_2602894548_p_1(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    unsigned char t11;
    int t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    int t20;
    int64 t21;

LAB0:    t1 = (t0 + 5320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 3776U);
    t3 = (t0 + 10302);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 1;
    t7 = (t6 + 4U);
    *((int *)t7) = 72;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (72 - 1);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    std_textio_file_open1(t2, t3, t5, (unsigned char)0);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 3880U);
    t3 = (t0 + 10374);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 1;
    t7 = (t6 + 4U);
    *((int *)t7) = 72;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (72 - 1);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    std_textio_file_open1(t2, t3, t5, (unsigned char)0);
    xsi_set_current_line(89, ng0);

LAB4:    t2 = (t0 + 3776U);
    t10 = std_textio_endfile(t2);
    t11 = (!(t10));
    if (t11 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 3776U);
    std_textio_file_close(t2);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 3880U);
    std_textio_file_close(t2);
    goto LAB2;

LAB5:    xsi_set_current_line(92, ng0);
    t3 = (t0 + 5128);
    t4 = (t0 + 3776U);
    t6 = (t0 + 4056U);
    std_textio_readline(STD_TEXTIO, t3, t4, t6);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 5128);
    t3 = (t0 + 3880U);
    t4 = (t0 + 4128U);
    std_textio_readline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 5128);
    t3 = (t0 + 4056U);
    t4 = (t0 + 4344U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t0 + 10056U);
    std_textio_read14(STD_TEXTIO, t2, t3, t7, t6);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 5128);
    t3 = (t0 + 4128U);
    t4 = (t0 + 4488U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t0 + 10056U);
    std_textio_read14(STD_TEXTIO, t2, t3, t7, t6);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 10446);
    *((int *)t2) = 1;
    t3 = (t0 + 10450);
    *((int *)t3) = 8;
    t8 = 1;
    t12 = 8;

LAB8:    if (t8 <= t12)
        goto LAB9;

LAB11:    xsi_set_current_line(111, ng0);
    t21 = (1 * 1000LL);
    t2 = (t0 + 5128);
    xsi_process_wait(t2, t21);

LAB21:    *((char **)t1) = &&LAB22;

LAB1:    return;
LAB6:;
LAB9:    xsi_set_current_line(98, ng0);
    t4 = (t0 + 4344U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t0 + 10446);
    t13 = *((int *)t6);
    t14 = (t13 - 1);
    t9 = (t14 * 1);
    xsi_vhdl_check_range_of_index(1, 8, 1, *((int *)t6));
    t15 = (1U * t9);
    t16 = (0 + t15);
    t17 = (t7 + t16);
    t10 = *((unsigned char *)t17);
    t18 = (t0 + 3328U);
    t19 = *((char **)t18);
    t18 = (t19 + 0);
    *((unsigned char *)t18) = t10;
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 4488U);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t3 = (t0 + 10446);
    t13 = *((int *)t3);
    t14 = (t13 - 1);
    t9 = (t14 * 1);
    xsi_vhdl_check_range_of_index(1, 8, 1, *((int *)t3));
    t15 = (1U * t9);
    t16 = (0 + t15);
    t6 = (t4 + t16);
    t10 = *((unsigned char *)t6);
    t7 = (t0 + 3448U);
    t17 = *((char **)t7);
    t7 = (t17 + 0);
    *((unsigned char *)t7) = t10;
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 3328U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)48);
    if (t11 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 10446);
    t13 = *((int *)t2);
    t14 = (8 - t13);
    t20 = (t14 - 7);
    t9 = (t20 * -1);
    t15 = (1 * t9);
    t16 = (0U + t15);
    t3 = (t0 + 5768);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t17 = *((char **)t7);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_first_trans_delta(t3, t16, 1, 0LL);

LAB13:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 3448U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)48);
    if (t11 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 10446);
    t13 = *((int *)t2);
    t14 = (8 - t13);
    t20 = (t14 - 7);
    t9 = (t20 * -1);
    t15 = (1 * t9);
    t16 = (0U + t15);
    t3 = (t0 + 5832);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t17 = *((char **)t7);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_first_trans_delta(t3, t16, 1, 0LL);

LAB16:
LAB10:    t2 = (t0 + 10446);
    t8 = *((int *)t2);
    t3 = (t0 + 10450);
    t12 = *((int *)t3);
    if (t8 == t12)
        goto LAB11;

LAB18:    t13 = (t8 + 1);
    t8 = t13;
    t4 = (t0 + 10446);
    *((int *)t4) = t8;
    goto LAB8;

LAB12:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 10446);
    t13 = *((int *)t2);
    t14 = (8 - t13);
    t20 = (t14 - 7);
    t9 = (t20 * -1);
    t15 = (1 * t9);
    t16 = (0U + t15);
    t4 = (t0 + 5768);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t17 = (t7 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)2;
    xsi_driver_first_trans_delta(t4, t16, 1, 0LL);
    goto LAB13;

LAB15:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 10446);
    t13 = *((int *)t2);
    t14 = (8 - t13);
    t20 = (t14 - 7);
    t9 = (t20 * -1);
    t15 = (1 * t9);
    t16 = (0U + t15);
    t4 = (t0 + 5832);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t17 = (t7 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)2;
    xsi_driver_first_trans_delta(t4, t16, 1, 0LL);
    goto LAB16;

LAB19:    goto LAB4;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

}


extern void work_a_1059130364_2602894548_init()
{
	static char *pe[] = {(void *)work_a_1059130364_2602894548_p_0,(void *)work_a_1059130364_2602894548_p_1};
	xsi_register_didat("work_a_1059130364_2602894548", "isim/Add_array_tb_isim_beh.exe.sim/work/a_1059130364_2602894548.didat");
	xsi_register_executes(pe);
}
