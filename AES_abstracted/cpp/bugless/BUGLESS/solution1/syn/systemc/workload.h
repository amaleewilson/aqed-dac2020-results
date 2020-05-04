// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _workload_HH_
#define _workload_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "aes256_encrypt_ecb.h"
#include "workload_local_key_0.h"

namespace ap_rtl {

struct workload : public sc_module {
    // Port declarations 12
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<4> > data_address0;
    sc_out< sc_logic > data_ce0;
    sc_out< sc_logic > data_we0;
    sc_out< sc_lv<8> > data_d0;
    sc_in< sc_lv<8> > data_q0;
    sc_in< sc_lv<4> > data_offset;


    // Module declarations
    workload(sc_module_name name);
    SC_HAS_PROCESS(workload);

    ~workload();

    sc_trace_file* mVcdFile;

    workload_local_key_0* local_key_0_U;
    workload_local_key_0* local_key_1_U;
    aes256_encrypt_ecb* grp_aes256_encrypt_ecb_fu_349;
    aes256_encrypt_ecb* grp_aes256_encrypt_ecb_fu_361;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > local_key_0_q0;
    sc_signal< sc_lv<8> > local_key_1_q0;
    sc_signal< sc_lv<6> > j_2_fu_379_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<2> > j_4_fu_391_p2;
    sc_signal< sc_lv<2> > j_4_reg_580;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > tmp_1_fu_397_p1;
    sc_signal< sc_lv<1> > tmp_1_reg_585;
    sc_signal< sc_lv<1> > exitcond3_fu_385_p2;
    sc_signal< sc_lv<2> > tmp_4_fu_401_p2;
    sc_signal< sc_lv<2> > tmp_4_reg_589;
    sc_signal< sc_lv<2> > k_2_fu_413_p2;
    sc_signal< sc_lv<2> > k_2_reg_597;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > exitcond5_fu_407_p2;
    sc_signal< sc_lv<1> > tmp_7_fu_438_p1;
    sc_signal< sc_lv<1> > tmp_7_reg_607;
    sc_signal< sc_lv<8> > buf_1_1_7_fu_442_p3;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > buf_1_1_8_fu_449_p3;
    sc_signal< sc_lv<8> > buf_1_1_4_fu_456_p3;
    sc_signal< sc_lv<8> > buf_1_1_6_fu_463_p3;
    sc_signal< sc_lv<8> > buf_0_0_3_reg_635;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_349_ap_ready;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_349_ap_done;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_361_ap_ready;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_361_ap_done;
    sc_signal< bool > ap_block_state9_on_subcall_done;
    sc_signal< sc_lv<8> > buf_0_1_3_reg_641;
    sc_signal< sc_lv<8> > buf_1_0_3_reg_647;
    sc_signal< sc_lv<8> > buf_1_1_3_reg_653;
    sc_signal< sc_lv<2> > j_5_fu_492_p2;
    sc_signal< sc_lv<2> > j_5_reg_662;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > tmp_5_fu_498_p1;
    sc_signal< sc_lv<1> > tmp_5_reg_667;
    sc_signal< sc_lv<1> > exitcond6_fu_486_p2;
    sc_signal< sc_lv<2> > tmp_6_fu_502_p2;
    sc_signal< sc_lv<2> > tmp_6_reg_672;
    sc_signal< sc_lv<2> > k_3_fu_514_p2;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_349_ap_start;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_349_ap_idle;
    sc_signal< sc_lv<5> > grp_aes256_encrypt_ecb_fu_349_k_address0;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_349_k_ce0;
    sc_signal< sc_lv<8> > grp_aes256_encrypt_ecb_fu_349_ap_return_0;
    sc_signal< sc_lv<8> > grp_aes256_encrypt_ecb_fu_349_ap_return_1;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_361_ap_start;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_361_ap_idle;
    sc_signal< sc_lv<5> > grp_aes256_encrypt_ecb_fu_361_k_address0;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_361_k_ce0;
    sc_signal< sc_lv<8> > grp_aes256_encrypt_ecb_fu_361_ap_return_0;
    sc_signal< sc_lv<8> > grp_aes256_encrypt_ecb_fu_361_ap_return_1;
    sc_signal< sc_lv<6> > j_reg_93;
    sc_signal< sc_lv<1> > exitcond2_fu_373_p2;
    sc_signal< sc_lv<8> > buf_1_1_reg_104;
    sc_signal< sc_lv<8> > buf_1_0_reg_116;
    sc_signal< sc_lv<8> > buf_0_1_reg_128;
    sc_signal< sc_lv<8> > buf_0_0_reg_140;
    sc_signal< sc_lv<1> > ap_phi_mux_i_2_phi_fu_157_p4;
    sc_signal< sc_lv<1> > i_2_reg_152;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<8> > buf_1_1_1_reg_165;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > buf_1_0_1_reg_176;
    sc_signal< sc_lv<8> > buf_0_1_1_reg_187;
    sc_signal< sc_lv<8> > buf_0_0_1_reg_198;
    sc_signal< sc_lv<2> > j_1_reg_209;
    sc_signal< sc_lv<8> > buf_1_1_2_reg_220;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<8> > buf_1_0_2_reg_232;
    sc_signal< sc_lv<8> > buf_0_1_2_reg_244;
    sc_signal< sc_lv<8> > buf_0_0_2_reg_256;
    sc_signal< sc_lv<2> > k_reg_268;
    sc_signal< sc_lv<8> > buf_1_1_2_be_reg_279;
    sc_signal< sc_lv<8> > buf_1_0_2_be_reg_291;
    sc_signal< sc_lv<8> > buf_0_1_2_be_reg_303;
    sc_signal< sc_lv<8> > buf_0_0_2_be_reg_315;
    sc_signal< sc_lv<2> > j_3_reg_327;
    sc_signal< sc_lv<1> > exitcond_fu_508_p2;
    sc_signal< sc_lv<2> > k_1_reg_338;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_349_ap_start_reg;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_361_ap_start_reg;
    sc_signal< sc_lv<64> > sum_cast_fu_433_p1;
    sc_signal< sc_lv<64> > sum2_cast_fu_558_p1;
    sc_signal< sc_lv<2> > tmp8_fu_419_p2;
    sc_signal< sc_lv<4> > tmp8_cast_fu_424_p1;
    sc_signal< sc_lv<4> > sum_fu_428_p2;
    sc_signal< sc_lv<1> > tmp_9_fu_520_p1;
    sc_signal< sc_lv<8> > buf_1_load_phi_fu_524_p3;
    sc_signal< sc_lv<8> > buf_0_load_phi_fu_530_p3;
    sc_signal< sc_lv<2> > tmp1_fu_544_p2;
    sc_signal< sc_lv<4> > tmp10_cast_fu_549_p1;
    sc_signal< sc_lv<4> > sum2_fu_553_p2;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_fsm_state1;
    static const sc_lv<11> ap_ST_fsm_state2;
    static const sc_lv<11> ap_ST_fsm_state3;
    static const sc_lv<11> ap_ST_fsm_state4;
    static const sc_lv<11> ap_ST_fsm_state5;
    static const sc_lv<11> ap_ST_fsm_state6;
    static const sc_lv<11> ap_ST_fsm_state7;
    static const sc_lv<11> ap_ST_fsm_state8;
    static const sc_lv<11> ap_ST_fsm_state9;
    static const sc_lv<11> ap_ST_fsm_state10;
    static const sc_lv<11> ap_ST_fsm_state11;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state9_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_i_2_phi_fu_157_p4();
    void thread_ap_ready();
    void thread_buf_0_load_phi_fu_530_p3();
    void thread_buf_1_1_4_fu_456_p3();
    void thread_buf_1_1_6_fu_463_p3();
    void thread_buf_1_1_7_fu_442_p3();
    void thread_buf_1_1_8_fu_449_p3();
    void thread_buf_1_load_phi_fu_524_p3();
    void thread_data_address0();
    void thread_data_ce0();
    void thread_data_d0();
    void thread_data_we0();
    void thread_exitcond2_fu_373_p2();
    void thread_exitcond3_fu_385_p2();
    void thread_exitcond5_fu_407_p2();
    void thread_exitcond6_fu_486_p2();
    void thread_exitcond_fu_508_p2();
    void thread_grp_aes256_encrypt_ecb_fu_349_ap_start();
    void thread_grp_aes256_encrypt_ecb_fu_361_ap_start();
    void thread_j_2_fu_379_p2();
    void thread_j_4_fu_391_p2();
    void thread_j_5_fu_492_p2();
    void thread_k_2_fu_413_p2();
    void thread_k_3_fu_514_p2();
    void thread_sum2_cast_fu_558_p1();
    void thread_sum2_fu_553_p2();
    void thread_sum_cast_fu_433_p1();
    void thread_sum_fu_428_p2();
    void thread_tmp10_cast_fu_549_p1();
    void thread_tmp1_fu_544_p2();
    void thread_tmp8_cast_fu_424_p1();
    void thread_tmp8_fu_419_p2();
    void thread_tmp_1_fu_397_p1();
    void thread_tmp_4_fu_401_p2();
    void thread_tmp_5_fu_498_p1();
    void thread_tmp_6_fu_502_p2();
    void thread_tmp_7_fu_438_p1();
    void thread_tmp_9_fu_520_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif