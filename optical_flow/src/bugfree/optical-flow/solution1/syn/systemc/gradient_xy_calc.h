// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _gradient_xy_calc_HH_
#define _gradient_xy_calc_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "gradient_xy_calc_cud.h"

namespace ap_rtl {

struct gradient_xy_calc : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<8> > frame3_a_V_dout;
    sc_in< sc_logic > frame3_a_V_empty_n;
    sc_out< sc_logic > frame3_a_V_read;
    sc_out< sc_lv<32> > gradient_x_V_din;
    sc_in< sc_logic > gradient_x_V_full_n;
    sc_out< sc_logic > gradient_x_V_write;
    sc_out< sc_lv<32> > gradient_y_V_din;
    sc_in< sc_logic > gradient_y_V_full_n;
    sc_out< sc_logic > gradient_y_V_write;


    // Module declarations
    gradient_xy_calc(sc_module_name name);
    SC_HAS_PROCESS(gradient_xy_calc);

    ~gradient_xy_calc();

    sc_trace_file* mVcdFile;

    gradient_xy_calc_cud* buf_V_1_1_U;
    gradient_xy_calc_cud* buf_V_1_2_U;
    gradient_xy_calc_cud* buf_V_1_3_U;
    gradient_xy_calc_cud* buf_V_1_4_U;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_lv<4> > buf_V_1_1_address0;
    sc_signal< sc_logic > buf_V_1_1_ce0;
    sc_signal< sc_lv<32> > buf_V_1_1_q0;
    sc_signal< sc_logic > buf_V_1_1_ce1;
    sc_signal< sc_logic > buf_V_1_1_we1;
    sc_signal< sc_lv<4> > buf_V_1_2_address0;
    sc_signal< sc_logic > buf_V_1_2_ce0;
    sc_signal< sc_lv<32> > buf_V_1_2_q0;
    sc_signal< sc_logic > buf_V_1_2_ce1;
    sc_signal< sc_logic > buf_V_1_2_we1;
    sc_signal< sc_lv<4> > buf_V_1_3_address0;
    sc_signal< sc_logic > buf_V_1_3_ce0;
    sc_signal< sc_lv<32> > buf_V_1_3_q0;
    sc_signal< sc_logic > buf_V_1_3_ce1;
    sc_signal< sc_logic > buf_V_1_3_we1;
    sc_signal< sc_lv<4> > buf_V_1_4_address0;
    sc_signal< sc_logic > buf_V_1_4_ce0;
    sc_signal< sc_lv<32> > buf_V_1_4_q0;
    sc_signal< sc_logic > buf_V_1_4_ce1;
    sc_signal< sc_logic > buf_V_1_4_we1;
    sc_signal< sc_logic > frame3_a_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_1218;
    sc_signal< sc_lv<1> > or_cond_reg_1265;
    sc_signal< sc_logic > gradient_x_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_lv<1> > or_cond1_mid2_reg_1227;
    sc_signal< sc_lv<1> > or_cond1_mid2_reg_1227_pp0_iter3_reg;
    sc_signal< sc_lv<1> > tmp_58_reg_1274;
    sc_signal< sc_lv<1> > tmp_58_reg_1274_pp0_iter3_reg;
    sc_signal< sc_lv<1> > or_cond4_reg_1278;
    sc_signal< sc_lv<1> > or_cond4_reg_1278_pp0_iter3_reg;
    sc_signal< sc_logic > gradient_y_V_blk_n;
    sc_signal< sc_lv<7> > indvar_flatten_reg_277;
    sc_signal< sc_lv<3> > r_reg_288;
    sc_signal< sc_lv<4> > c_reg_299;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_334_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_predicate_op104_read_state3;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_predicate_op200_write_state6;
    sc_signal< bool > ap_predicate_op210_write_state6;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_1218_pp0_iter1_reg;
    sc_signal< sc_lv<7> > indvar_flatten_next_fu_340_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > or_cond1_mid2_fu_394_p3;
    sc_signal< sc_lv<1> > or_cond1_mid2_reg_1227_pp0_iter1_reg;
    sc_signal< sc_lv<1> > or_cond1_mid2_reg_1227_pp0_iter2_reg;
    sc_signal< sc_lv<3> > r_mid2_fu_442_p3;
    sc_signal< sc_lv<4> > buf_V_1_1_addr_reg_1236;
    sc_signal< sc_lv<4> > buf_V_1_2_addr_reg_1242;
    sc_signal< sc_lv<4> > buf_V_1_3_addr_reg_1248;
    sc_signal< sc_lv<4> > buf_V_1_4_addr_reg_1254;
    sc_signal< sc_lv<4> > buf_V_1_4_addr_reg_1254_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_8_fu_458_p2;
    sc_signal< sc_lv<1> > tmp_8_reg_1260;
    sc_signal< sc_lv<1> > tmp_8_reg_1260_pp0_iter1_reg;
    sc_signal< sc_lv<1> > or_cond_fu_464_p2;
    sc_signal< sc_lv<1> > or_cond_reg_1265_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_58_fu_566_p2;
    sc_signal< sc_lv<1> > tmp_58_reg_1274_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_58_reg_1274_pp0_iter2_reg;
    sc_signal< sc_lv<1> > or_cond4_fu_588_p2;
    sc_signal< sc_lv<1> > or_cond4_reg_1278_pp0_iter1_reg;
    sc_signal< sc_lv<1> > or_cond4_reg_1278_pp0_iter2_reg;
    sc_signal< sc_lv<4> > c_1_fu_594_p2;
    sc_signal< sc_lv<17> > window_val_2_V_4_reg_1287;
    sc_signal< sc_lv<17> > window_val_3_V_4_reg_1292;
    sc_signal< sc_lv<32> > tmp3_fu_756_p2;
    sc_signal< sc_lv<32> > tmp3_reg_1297;
    sc_signal< sc_lv<32> > p_Val2_30_4_fu_957_p2;
    sc_signal< sc_lv<32> > p_Val2_30_4_reg_1302;
    sc_signal< sc_lv<32> > p_Val2_33_4_fu_991_p2;
    sc_signal< sc_lv<32> > p_Val2_33_4_reg_1307;
    sc_signal< sc_lv<1> > tmp_60_reg_1312;
    sc_signal< sc_lv<1> > tmp_60_reg_1312_pp0_iter3_reg;
    sc_signal< sc_lv<1> > tmp_63_reg_1318;
    sc_signal< sc_lv<1> > tmp_63_reg_1318_pp0_iter3_reg;
    sc_signal< sc_lv<65> > mul3_fu_1015_p2;
    sc_signal< sc_lv<65> > mul3_reg_1324;
    sc_signal< sc_lv<29> > tmp_62_reg_1329;
    sc_signal< sc_lv<65> > mul_fu_1034_p2;
    sc_signal< sc_lv<65> > mul_reg_1334;
    sc_signal< sc_lv<29> > tmp_65_reg_1339;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter2_state4;
    sc_signal< sc_lv<64> > tmp_7_fu_450_p1;
    sc_signal< sc_lv<32> > tmp_12_fu_1085_p3;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<32> > tmp_13_fu_1128_p3;
    sc_signal< sc_lv<17> > window_val_0_V_2_fu_132;
    sc_signal< sc_lv<17> > window_val_0_V_3_fu_136;
    sc_signal< sc_lv<17> > window_val_V_0_4_2_fu_701_p3;
    sc_signal< sc_lv<17> > window_val_1_V_2_fu_140;
    sc_signal< sc_lv<17> > window_val_1_V_3_fu_144;
    sc_signal< sc_lv<17> > window_val_V_1_4_2_fu_694_p3;
    sc_signal< sc_lv<17> > window_val_2_V_0_fu_148;
    sc_signal< sc_lv<17> > window_val_2_V_1_fu_152;
    sc_signal< sc_lv<17> > window_val_2_V_2_fu_156;
    sc_signal< sc_lv<17> > window_val_2_V_3_fu_160;
    sc_signal< sc_lv<17> > window_val_V_2_4_2_fu_833_p3;
    sc_signal< sc_lv<17> > window_val_3_V_2_fu_164;
    sc_signal< sc_lv<17> > window_val_3_V_3_fu_168;
    sc_signal< sc_lv<17> > window_val_V_3_4_2_fu_827_p3;
    sc_signal< sc_lv<17> > window_val_4_V_2_fu_172;
    sc_signal< sc_lv<17> > window_val_4_V_3_fu_176;
    sc_signal< sc_lv<17> > window_val_4_V_4_fu_839_p3;
    sc_signal< sc_lv<32> > smallbuf_V_4_1_fu_180;
    sc_signal< sc_lv<32> > p_smallbuf_V_4_1_fu_625_p3;
    sc_signal< sc_lv<32> > smallbuf_4_V_cast_fu_645_p1;
    sc_signal< sc_lv<1> > tmp_38_fu_320_p3;
    sc_signal< sc_lv<1> > tmp_s_fu_314_p2;
    sc_signal< sc_lv<1> > exitcond_fu_346_p2;
    sc_signal< sc_lv<3> > r_s_fu_360_p2;
    sc_signal< sc_lv<1> > tmp_mid1_fu_366_p2;
    sc_signal< sc_lv<1> > tmp_39_fu_380_p3;
    sc_signal< sc_lv<1> > or_cond1_mid1_fu_388_p2;
    sc_signal< sc_lv<1> > or_cond1_fu_328_p2;
    sc_signal< sc_lv<2> > tmp_40_fu_402_p4;
    sc_signal< sc_lv<2> > tmp_41_fu_418_p4;
    sc_signal< sc_lv<1> > icmp2_fu_412_p2;
    sc_signal< sc_lv<1> > icmp3_fu_428_p2;
    sc_signal< sc_lv<4> > c_mid2_fu_352_p3;
    sc_signal< sc_lv<1> > tmp_mid2_fu_372_p3;
    sc_signal< sc_lv<1> > tmp_43_fu_476_p2;
    sc_signal< sc_lv<1> > tmp_42_fu_470_p2;
    sc_signal< sc_lv<1> > tmp_45_fu_488_p2;
    sc_signal< sc_lv<1> > tmp_44_fu_482_p2;
    sc_signal< sc_lv<1> > tmp_47_fu_500_p2;
    sc_signal< sc_lv<1> > tmp_46_fu_494_p2;
    sc_signal< sc_lv<1> > tmp_49_fu_512_p2;
    sc_signal< sc_lv<1> > tmp_48_fu_506_p2;
    sc_signal< sc_lv<1> > tmp_51_fu_524_p2;
    sc_signal< sc_lv<1> > tmp_50_fu_518_p2;
    sc_signal< sc_lv<1> > tmp_53_fu_536_p2;
    sc_signal< sc_lv<1> > tmp_52_fu_530_p2;
    sc_signal< sc_lv<1> > tmp_55_fu_548_p2;
    sc_signal< sc_lv<1> > tmp_54_fu_542_p2;
    sc_signal< sc_lv<1> > tmp_57_fu_560_p2;
    sc_signal< sc_lv<1> > tmp_56_fu_554_p2;
    sc_signal< sc_lv<3> > tmp_59_fu_572_p4;
    sc_signal< sc_lv<1> > tmp_5_mid2_fu_434_p3;
    sc_signal< sc_lv<1> > icmp_fu_582_p2;
    sc_signal< sc_lv<19> > smallbuf_4_V_fu_637_p3;
    sc_signal< sc_lv<17> > window_val_1_V_4_fu_664_p4;
    sc_signal< sc_lv<17> > window_val_0_V_4_fu_654_p4;
    sc_signal< sc_lv<28> > tmp_24_fu_718_p3;
    sc_signal< sc_lv<20> > p_shl_fu_730_p3;
    sc_signal< sc_lv<21> > p_shl_cast_fu_738_p1;
    sc_signal< sc_lv<21> > p_Val2_3216_1_fu_742_p2;
    sc_signal< sc_lv<32> > tmp_11_fu_726_p1;
    sc_signal< sc_lv<32> > tmp_165_1_fu_748_p3;
    sc_signal< sc_lv<17> > tmp_141_4_fu_817_p4;
    sc_signal< sc_lv<28> > tmp_fu_861_p3;
    sc_signal< sc_lv<20> > p_shl1_fu_873_p3;
    sc_signal< sc_lv<21> > p_shl1_cast_fu_881_p1;
    sc_signal< sc_lv<21> > p_Val2_2918_1_fu_885_p2;
    sc_signal< sc_lv<31> > tmp_25_fu_899_p3;
    sc_signal< sc_lv<31> > tmp_26_fu_911_p3;
    sc_signal< sc_lv<18> > tmp_54_cast_fu_923_p1;
    sc_signal< sc_lv<18> > p_Val2_2918_4_fu_927_p2;
    sc_signal< sc_lv<29> > tmp_27_fu_933_p3;
    sc_signal< sc_lv<32> > tmp_3_fu_869_p1;
    sc_signal< sc_lv<32> > tmp_161_1_fu_891_p3;
    sc_signal< sc_lv<32> > tmp_161_4_fu_941_p1;
    sc_signal< sc_lv<32> > tmp_161_3_fu_907_p1;
    sc_signal< sc_lv<32> > tmp1_fu_945_p2;
    sc_signal< sc_lv<32> > tmp2_fu_951_p2;
    sc_signal< sc_lv<17> > tmp_55_cast_fu_963_p0;
    sc_signal< sc_lv<18> > tmp_55_cast_fu_963_p1;
    sc_signal< sc_lv<18> > p_Val2_3216_4_fu_967_p2;
    sc_signal< sc_lv<29> > tmp_28_fu_973_p3;
    sc_signal< sc_lv<32> > tmp_165_4_fu_981_p1;
    sc_signal< sc_lv<32> > tmp_165_3_fu_919_p1;
    sc_signal< sc_lv<32> > tmp4_fu_985_p2;
    sc_signal< sc_lv<32> > mul3_fu_1015_p0;
    sc_signal< sc_lv<32> > mul_fu_1034_p0;
    sc_signal< sc_lv<65> > neg_mul4_fu_1050_p2;
    sc_signal< sc_lv<29> > tmp_61_fu_1055_p4;
    sc_signal< sc_lv<32> > tmp_29_fu_1065_p1;
    sc_signal< sc_lv<32> > tmp_30_fu_1069_p1;
    sc_signal< sc_lv<32> > tmp_31_fu_1072_p3;
    sc_signal< sc_lv<32> > neg_ti9_fu_1079_p2;
    sc_signal< sc_lv<65> > neg_mul_fu_1093_p2;
    sc_signal< sc_lv<29> > tmp_64_fu_1098_p4;
    sc_signal< sc_lv<32> > tmp_32_fu_1108_p1;
    sc_signal< sc_lv<32> > tmp_33_fu_1112_p1;
    sc_signal< sc_lv<32> > tmp_34_fu_1115_p3;
    sc_signal< sc_lv<32> > neg_ti_fu_1122_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< bool > ap_condition_302;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state7;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<7> ap_const_lv7_54;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<4> ap_const_lv4_C;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<4> ap_const_lv4_E;
    static const sc_lv<4> ap_const_lv4_D;
    static const sc_lv<4> ap_const_lv4_B;
    static const sc_lv<4> ap_const_lv4_3;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<17> ap_const_lv17_0;
    static const sc_lv<21> ap_const_lv21_0;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<18> ap_const_lv18_0;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<65> ap_const_lv65_155555556;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<65> ap_const_lv65_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state7();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_block_state6_pp0_stage0_iter4();
    void thread_ap_condition_302();
    void thread_ap_condition_pp0_exit_iter2_state4();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_predicate_op104_read_state3();
    void thread_ap_predicate_op200_write_state6();
    void thread_ap_predicate_op210_write_state6();
    void thread_ap_ready();
    void thread_buf_V_1_1_address0();
    void thread_buf_V_1_1_ce0();
    void thread_buf_V_1_1_ce1();
    void thread_buf_V_1_1_we1();
    void thread_buf_V_1_2_address0();
    void thread_buf_V_1_2_ce0();
    void thread_buf_V_1_2_ce1();
    void thread_buf_V_1_2_we1();
    void thread_buf_V_1_3_address0();
    void thread_buf_V_1_3_ce0();
    void thread_buf_V_1_3_ce1();
    void thread_buf_V_1_3_we1();
    void thread_buf_V_1_4_address0();
    void thread_buf_V_1_4_ce0();
    void thread_buf_V_1_4_ce1();
    void thread_buf_V_1_4_we1();
    void thread_c_1_fu_594_p2();
    void thread_c_mid2_fu_352_p3();
    void thread_exitcond_flatten_fu_334_p2();
    void thread_exitcond_fu_346_p2();
    void thread_frame3_a_V_blk_n();
    void thread_frame3_a_V_read();
    void thread_gradient_x_V_blk_n();
    void thread_gradient_x_V_din();
    void thread_gradient_x_V_write();
    void thread_gradient_y_V_blk_n();
    void thread_gradient_y_V_din();
    void thread_gradient_y_V_write();
    void thread_icmp2_fu_412_p2();
    void thread_icmp3_fu_428_p2();
    void thread_icmp_fu_582_p2();
    void thread_indvar_flatten_next_fu_340_p2();
    void thread_internal_ap_ready();
    void thread_mul3_fu_1015_p0();
    void thread_mul3_fu_1015_p2();
    void thread_mul_fu_1034_p0();
    void thread_mul_fu_1034_p2();
    void thread_neg_mul4_fu_1050_p2();
    void thread_neg_mul_fu_1093_p2();
    void thread_neg_ti9_fu_1079_p2();
    void thread_neg_ti_fu_1122_p2();
    void thread_or_cond1_fu_328_p2();
    void thread_or_cond1_mid1_fu_388_p2();
    void thread_or_cond1_mid2_fu_394_p3();
    void thread_or_cond4_fu_588_p2();
    void thread_or_cond_fu_464_p2();
    void thread_p_Val2_2918_1_fu_885_p2();
    void thread_p_Val2_2918_4_fu_927_p2();
    void thread_p_Val2_30_4_fu_957_p2();
    void thread_p_Val2_3216_1_fu_742_p2();
    void thread_p_Val2_3216_4_fu_967_p2();
    void thread_p_Val2_33_4_fu_991_p2();
    void thread_p_shl1_cast_fu_881_p1();
    void thread_p_shl1_fu_873_p3();
    void thread_p_shl_cast_fu_738_p1();
    void thread_p_shl_fu_730_p3();
    void thread_p_smallbuf_V_4_1_fu_625_p3();
    void thread_r_mid2_fu_442_p3();
    void thread_r_s_fu_360_p2();
    void thread_real_start();
    void thread_smallbuf_4_V_cast_fu_645_p1();
    void thread_smallbuf_4_V_fu_637_p3();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp1_fu_945_p2();
    void thread_tmp2_fu_951_p2();
    void thread_tmp3_fu_756_p2();
    void thread_tmp4_fu_985_p2();
    void thread_tmp_11_fu_726_p1();
    void thread_tmp_12_fu_1085_p3();
    void thread_tmp_13_fu_1128_p3();
    void thread_tmp_141_4_fu_817_p4();
    void thread_tmp_161_1_fu_891_p3();
    void thread_tmp_161_3_fu_907_p1();
    void thread_tmp_161_4_fu_941_p1();
    void thread_tmp_165_1_fu_748_p3();
    void thread_tmp_165_3_fu_919_p1();
    void thread_tmp_165_4_fu_981_p1();
    void thread_tmp_24_fu_718_p3();
    void thread_tmp_25_fu_899_p3();
    void thread_tmp_26_fu_911_p3();
    void thread_tmp_27_fu_933_p3();
    void thread_tmp_28_fu_973_p3();
    void thread_tmp_29_fu_1065_p1();
    void thread_tmp_30_fu_1069_p1();
    void thread_tmp_31_fu_1072_p3();
    void thread_tmp_32_fu_1108_p1();
    void thread_tmp_33_fu_1112_p1();
    void thread_tmp_34_fu_1115_p3();
    void thread_tmp_38_fu_320_p3();
    void thread_tmp_39_fu_380_p3();
    void thread_tmp_3_fu_869_p1();
    void thread_tmp_40_fu_402_p4();
    void thread_tmp_41_fu_418_p4();
    void thread_tmp_42_fu_470_p2();
    void thread_tmp_43_fu_476_p2();
    void thread_tmp_44_fu_482_p2();
    void thread_tmp_45_fu_488_p2();
    void thread_tmp_46_fu_494_p2();
    void thread_tmp_47_fu_500_p2();
    void thread_tmp_48_fu_506_p2();
    void thread_tmp_49_fu_512_p2();
    void thread_tmp_50_fu_518_p2();
    void thread_tmp_51_fu_524_p2();
    void thread_tmp_52_fu_530_p2();
    void thread_tmp_53_fu_536_p2();
    void thread_tmp_54_cast_fu_923_p1();
    void thread_tmp_54_fu_542_p2();
    void thread_tmp_55_cast_fu_963_p0();
    void thread_tmp_55_cast_fu_963_p1();
    void thread_tmp_55_fu_548_p2();
    void thread_tmp_56_fu_554_p2();
    void thread_tmp_57_fu_560_p2();
    void thread_tmp_58_fu_566_p2();
    void thread_tmp_59_fu_572_p4();
    void thread_tmp_5_mid2_fu_434_p3();
    void thread_tmp_61_fu_1055_p4();
    void thread_tmp_64_fu_1098_p4();
    void thread_tmp_7_fu_450_p1();
    void thread_tmp_8_fu_458_p2();
    void thread_tmp_fu_861_p3();
    void thread_tmp_mid1_fu_366_p2();
    void thread_tmp_mid2_fu_372_p3();
    void thread_tmp_s_fu_314_p2();
    void thread_window_val_0_V_4_fu_654_p4();
    void thread_window_val_1_V_4_fu_664_p4();
    void thread_window_val_4_V_4_fu_839_p3();
    void thread_window_val_V_0_4_2_fu_701_p3();
    void thread_window_val_V_1_4_2_fu_694_p3();
    void thread_window_val_V_2_4_2_fu_833_p3();
    void thread_window_val_V_3_4_2_fu_827_p3();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
