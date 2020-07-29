// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Loop_FRAMES_CP_OUTER_HH_
#define _Loop_FRAMES_CP_OUTER_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "optical_flow_urembkb.h"

namespace ap_rtl {

struct Loop_FRAMES_CP_OUTER : public sc_module {
    // Port declarations 76
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
    sc_out< sc_logic > m_axi_frames_V_AWVALID;
    sc_in< sc_logic > m_axi_frames_V_AWREADY;
    sc_out< sc_lv<32> > m_axi_frames_V_AWADDR;
    sc_out< sc_lv<1> > m_axi_frames_V_AWID;
    sc_out< sc_lv<32> > m_axi_frames_V_AWLEN;
    sc_out< sc_lv<3> > m_axi_frames_V_AWSIZE;
    sc_out< sc_lv<2> > m_axi_frames_V_AWBURST;
    sc_out< sc_lv<2> > m_axi_frames_V_AWLOCK;
    sc_out< sc_lv<4> > m_axi_frames_V_AWCACHE;
    sc_out< sc_lv<3> > m_axi_frames_V_AWPROT;
    sc_out< sc_lv<4> > m_axi_frames_V_AWQOS;
    sc_out< sc_lv<4> > m_axi_frames_V_AWREGION;
    sc_out< sc_lv<1> > m_axi_frames_V_AWUSER;
    sc_out< sc_logic > m_axi_frames_V_WVALID;
    sc_in< sc_logic > m_axi_frames_V_WREADY;
    sc_out< sc_lv<64> > m_axi_frames_V_WDATA;
    sc_out< sc_lv<8> > m_axi_frames_V_WSTRB;
    sc_out< sc_logic > m_axi_frames_V_WLAST;
    sc_out< sc_lv<1> > m_axi_frames_V_WID;
    sc_out< sc_lv<1> > m_axi_frames_V_WUSER;
    sc_out< sc_logic > m_axi_frames_V_ARVALID;
    sc_in< sc_logic > m_axi_frames_V_ARREADY;
    sc_out< sc_lv<32> > m_axi_frames_V_ARADDR;
    sc_out< sc_lv<1> > m_axi_frames_V_ARID;
    sc_out< sc_lv<32> > m_axi_frames_V_ARLEN;
    sc_out< sc_lv<3> > m_axi_frames_V_ARSIZE;
    sc_out< sc_lv<2> > m_axi_frames_V_ARBURST;
    sc_out< sc_lv<2> > m_axi_frames_V_ARLOCK;
    sc_out< sc_lv<4> > m_axi_frames_V_ARCACHE;
    sc_out< sc_lv<3> > m_axi_frames_V_ARPROT;
    sc_out< sc_lv<4> > m_axi_frames_V_ARQOS;
    sc_out< sc_lv<4> > m_axi_frames_V_ARREGION;
    sc_out< sc_lv<1> > m_axi_frames_V_ARUSER;
    sc_in< sc_logic > m_axi_frames_V_RVALID;
    sc_out< sc_logic > m_axi_frames_V_RREADY;
    sc_in< sc_lv<64> > m_axi_frames_V_RDATA;
    sc_in< sc_logic > m_axi_frames_V_RLAST;
    sc_in< sc_lv<1> > m_axi_frames_V_RID;
    sc_in< sc_lv<1> > m_axi_frames_V_RUSER;
    sc_in< sc_lv<2> > m_axi_frames_V_RRESP;
    sc_in< sc_logic > m_axi_frames_V_BVALID;
    sc_out< sc_logic > m_axi_frames_V_BREADY;
    sc_in< sc_lv<2> > m_axi_frames_V_BRESP;
    sc_in< sc_lv<1> > m_axi_frames_V_BID;
    sc_in< sc_lv<1> > m_axi_frames_V_BUSER;
    sc_in< sc_lv<32> > frames_V_offset_dout;
    sc_in< sc_logic > frames_V_offset_empty_n;
    sc_out< sc_logic > frames_V_offset_read;
    sc_out< sc_lv<8> > frame1_a_V_din;
    sc_in< sc_logic > frame1_a_V_full_n;
    sc_out< sc_logic > frame1_a_V_write;
    sc_out< sc_lv<8> > frame2_a_V_din;
    sc_in< sc_logic > frame2_a_V_full_n;
    sc_out< sc_logic > frame2_a_V_write;
    sc_out< sc_lv<8> > frame3_a_V_din;
    sc_in< sc_logic > frame3_a_V_full_n;
    sc_out< sc_logic > frame3_a_V_write;
    sc_out< sc_lv<8> > frame3_b_V_din;
    sc_in< sc_logic > frame3_b_V_full_n;
    sc_out< sc_logic > frame3_b_V_write;
    sc_out< sc_lv<8> > frame4_a_V_din;
    sc_in< sc_logic > frame4_a_V_full_n;
    sc_out< sc_logic > frame4_a_V_write;
    sc_out< sc_lv<8> > frame5_a_V_din;
    sc_in< sc_logic > frame5_a_V_full_n;
    sc_out< sc_logic > frame5_a_V_write;


    // Module declarations
    Loop_FRAMES_CP_OUTER(sc_module_name name);
    SC_HAS_PROCESS(Loop_FRAMES_CP_OUTER);

    ~Loop_FRAMES_CP_OUTER();

    sc_trace_file* mVcdFile;

    optical_flow_urembkb<1,10,6,5,6>* optical_flow_urembkb_U5;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > frames_V_blk_n_AR;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter10;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > tmp_124_reg_438;
    sc_signal< sc_logic > frames_V_blk_n_R;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter17;
    sc_signal< sc_lv<1> > exitcond_flatten_i_reg_403;
    sc_signal< sc_lv<1> > exitcond_flatten_i_reg_403_pp0_iter16_reg;
    sc_signal< sc_logic > frames_V_offset_blk_n;
    sc_signal< sc_logic > frame1_a_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter18;
    sc_signal< sc_lv<1> > exitcond_flatten_i_reg_403_pp0_iter17_reg;
    sc_signal< sc_logic > frame2_a_V_blk_n;
    sc_signal< sc_logic > frame3_a_V_blk_n;
    sc_signal< sc_logic > frame3_b_V_blk_n;
    sc_signal< sc_logic > frame4_a_V_blk_n;
    sc_signal< sc_logic > frame5_a_V_blk_n;
    sc_signal< sc_lv<6> > indvar_flatten_i_reg_168;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter6;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter7;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter8;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter9;
    sc_signal< bool > ap_block_state12_pp0_stage0_iter10;
    sc_signal< sc_logic > ap_sig_ioackin_m_axi_frames_V_ARREADY;
    sc_signal< bool > ap_block_state12_io;
    sc_signal< bool > ap_block_state13_pp0_stage0_iter11;
    sc_signal< bool > ap_block_state14_pp0_stage0_iter12;
    sc_signal< bool > ap_block_state15_pp0_stage0_iter13;
    sc_signal< bool > ap_block_state16_pp0_stage0_iter14;
    sc_signal< bool > ap_block_state17_pp0_stage0_iter15;
    sc_signal< bool > ap_block_state18_pp0_stage0_iter16;
    sc_signal< bool > ap_block_state19_pp0_stage0_iter17;
    sc_signal< bool > ap_block_state20_pp0_stage0_iter18;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<3> > r_i_i_reg_180;
    sc_signal< sc_lv<4> > c_i_i_reg_191;
    sc_signal< sc_lv<30> > sext_cast_i_fu_212_p1;
    sc_signal< sc_lv<30> > sext_cast_i_reg_393;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<6> > tmp_29_i_fu_236_p2;
    sc_signal< sc_lv<6> > tmp_29_i_reg_398;
    sc_signal< sc_lv<6> > tmp_29_i_reg_398_pp0_iter1_reg;
    sc_signal< sc_lv<6> > tmp_29_i_reg_398_pp0_iter2_reg;
    sc_signal< sc_lv<6> > tmp_29_i_reg_398_pp0_iter3_reg;
    sc_signal< sc_lv<6> > tmp_29_i_reg_398_pp0_iter4_reg;
    sc_signal< sc_lv<6> > tmp_29_i_reg_398_pp0_iter5_reg;
    sc_signal< sc_lv<6> > tmp_29_i_reg_398_pp0_iter6_reg;
    sc_signal< sc_lv<6> > tmp_29_i_reg_398_pp0_iter7_reg;
    sc_signal< sc_lv<6> > tmp_29_i_reg_398_pp0_iter8_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_i_fu_242_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_i_reg_403_pp0_iter1_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_i_reg_403_pp0_iter2_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_i_reg_403_pp0_iter3_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_i_reg_403_pp0_iter4_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_i_reg_403_pp0_iter5_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_i_reg_403_pp0_iter6_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_i_reg_403_pp0_iter7_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_i_reg_403_pp0_iter8_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_i_reg_403_pp0_iter9_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_i_reg_403_pp0_iter10_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_i_reg_403_pp0_iter11_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_i_reg_403_pp0_iter12_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_i_reg_403_pp0_iter13_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_i_reg_403_pp0_iter14_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_i_reg_403_pp0_iter15_reg;
    sc_signal< sc_lv<6> > indvar_flatten_next_s_fu_248_p2;
    sc_signal< sc_lv<6> > indvar_flatten_next_s_reg_407;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > exitcond_i14_i_fu_254_p2;
    sc_signal< sc_lv<1> > exitcond_i14_i_reg_412;
    sc_signal< sc_lv<1> > exitcond_i14_i_reg_412_pp0_iter1_reg;
    sc_signal< sc_lv<1> > exitcond_i14_i_reg_412_pp0_iter2_reg;
    sc_signal< sc_lv<1> > exitcond_i14_i_reg_412_pp0_iter3_reg;
    sc_signal< sc_lv<1> > exitcond_i14_i_reg_412_pp0_iter4_reg;
    sc_signal< sc_lv<1> > exitcond_i14_i_reg_412_pp0_iter5_reg;
    sc_signal< sc_lv<1> > exitcond_i14_i_reg_412_pp0_iter6_reg;
    sc_signal< sc_lv<1> > exitcond_i14_i_reg_412_pp0_iter7_reg;
    sc_signal< sc_lv<1> > exitcond_i14_i_reg_412_pp0_iter8_reg;
    sc_signal< sc_lv<3> > r7_i_fu_260_p2;
    sc_signal< sc_lv<3> > r7_i_reg_417;
    sc_signal< sc_lv<3> > r7_i_reg_417_pp0_iter1_reg;
    sc_signal< sc_lv<3> > r7_i_reg_417_pp0_iter2_reg;
    sc_signal< sc_lv<3> > r7_i_reg_417_pp0_iter3_reg;
    sc_signal< sc_lv<3> > r7_i_reg_417_pp0_iter4_reg;
    sc_signal< sc_lv<3> > r7_i_reg_417_pp0_iter5_reg;
    sc_signal< sc_lv<3> > r7_i_reg_417_pp0_iter6_reg;
    sc_signal< sc_lv<3> > r7_i_reg_417_pp0_iter7_reg;
    sc_signal< sc_lv<3> > r7_i_reg_417_pp0_iter8_reg;
    sc_signal< sc_lv<3> > r_i_mid2_i_fu_266_p3;
    sc_signal< sc_lv<4> > c_fu_286_p3;
    sc_signal< sc_lv<30> > sum3_i_fu_328_p2;
    sc_signal< sc_lv<30> > sum3_i_reg_433;
    sc_signal< sc_lv<1> > tmp_124_fu_333_p2;
    sc_signal< sc_lv<8> > tmp_125_fu_349_p1;
    sc_signal< sc_lv<8> > tmp_125_reg_448;
    sc_signal< sc_lv<8> > p_Result_1_i_i_reg_453;
    sc_signal< sc_lv<8> > p_Result_2_i_i_reg_458;
    sc_signal< sc_lv<8> > p_Result_3_i_i_reg_464;
    sc_signal< sc_lv<8> > p_Result_4_i_i_reg_469;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter6;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter7;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter8;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter9;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter11;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter12;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter13;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter14;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter15;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter16;
    sc_signal< sc_lv<6> > ap_phi_mux_indvar_flatten_i_phi_fu_172_p4;
    sc_signal< sc_lv<64> > sum3_cast_i_fu_339_p1;
    sc_signal< sc_logic > ap_reg_ioackin_m_axi_frames_V_ARREADY;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<29> > tmp_fu_202_p4;
    sc_signal< sc_lv<4> > p_shl8_i_i_fu_224_p3;
    sc_signal< sc_lv<6> > p_shl_i_i_fu_216_p3;
    sc_signal< sc_lv<6> > tmp_i_fu_232_p1;
    sc_signal< sc_lv<5> > grp_fu_274_p1;
    sc_signal< sc_lv<4> > c_i_i_op_fu_280_p2;
    sc_signal< sc_lv<4> > p_shl8_i_mid1_i_fu_301_p3;
    sc_signal< sc_lv<6> > tmp_56_mid1_i_fu_308_p1;
    sc_signal< sc_lv<6> > p_shl_i_mid1_i_fu_294_p3;
    sc_signal< sc_lv<6> > tmp_57_mid1_i_fu_312_p2;
    sc_signal< sc_lv<6> > tmp_122_fu_318_p3;
    sc_signal< sc_lv<30> > tmp_58_mid2_cast_i_fu_324_p1;
    sc_signal< sc_lv<6> > grp_fu_274_p2;
    sc_signal< sc_logic > grp_fu_274_ce;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state21;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<6> ap_const_lv6_32;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<6> ap_const_lv6_A;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state21();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state10_pp0_stage0_iter8();
    void thread_ap_block_state11_pp0_stage0_iter9();
    void thread_ap_block_state12_io();
    void thread_ap_block_state12_pp0_stage0_iter10();
    void thread_ap_block_state13_pp0_stage0_iter11();
    void thread_ap_block_state14_pp0_stage0_iter12();
    void thread_ap_block_state15_pp0_stage0_iter13();
    void thread_ap_block_state16_pp0_stage0_iter14();
    void thread_ap_block_state17_pp0_stage0_iter15();
    void thread_ap_block_state18_pp0_stage0_iter16();
    void thread_ap_block_state19_pp0_stage0_iter17();
    void thread_ap_block_state20_pp0_stage0_iter18();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_block_state6_pp0_stage0_iter4();
    void thread_ap_block_state7_pp0_stage0_iter5();
    void thread_ap_block_state8_pp0_stage0_iter6();
    void thread_ap_block_state9_pp0_stage0_iter7();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_indvar_flatten_i_phi_fu_172_p4();
    void thread_ap_ready();
    void thread_ap_sig_ioackin_m_axi_frames_V_ARREADY();
    void thread_c_fu_286_p3();
    void thread_c_i_i_op_fu_280_p2();
    void thread_exitcond_flatten_i_fu_242_p2();
    void thread_exitcond_i14_i_fu_254_p2();
    void thread_frame1_a_V_blk_n();
    void thread_frame1_a_V_din();
    void thread_frame1_a_V_write();
    void thread_frame2_a_V_blk_n();
    void thread_frame2_a_V_din();
    void thread_frame2_a_V_write();
    void thread_frame3_a_V_blk_n();
    void thread_frame3_a_V_din();
    void thread_frame3_a_V_write();
    void thread_frame3_b_V_blk_n();
    void thread_frame3_b_V_din();
    void thread_frame3_b_V_write();
    void thread_frame4_a_V_blk_n();
    void thread_frame4_a_V_din();
    void thread_frame4_a_V_write();
    void thread_frame5_a_V_blk_n();
    void thread_frame5_a_V_din();
    void thread_frame5_a_V_write();
    void thread_frames_V_blk_n_AR();
    void thread_frames_V_blk_n_R();
    void thread_frames_V_offset_blk_n();
    void thread_frames_V_offset_read();
    void thread_grp_fu_274_ce();
    void thread_grp_fu_274_p1();
    void thread_indvar_flatten_next_s_fu_248_p2();
    void thread_internal_ap_ready();
    void thread_m_axi_frames_V_ARADDR();
    void thread_m_axi_frames_V_ARBURST();
    void thread_m_axi_frames_V_ARCACHE();
    void thread_m_axi_frames_V_ARID();
    void thread_m_axi_frames_V_ARLEN();
    void thread_m_axi_frames_V_ARLOCK();
    void thread_m_axi_frames_V_ARPROT();
    void thread_m_axi_frames_V_ARQOS();
    void thread_m_axi_frames_V_ARREGION();
    void thread_m_axi_frames_V_ARSIZE();
    void thread_m_axi_frames_V_ARUSER();
    void thread_m_axi_frames_V_ARVALID();
    void thread_m_axi_frames_V_AWADDR();
    void thread_m_axi_frames_V_AWBURST();
    void thread_m_axi_frames_V_AWCACHE();
    void thread_m_axi_frames_V_AWID();
    void thread_m_axi_frames_V_AWLEN();
    void thread_m_axi_frames_V_AWLOCK();
    void thread_m_axi_frames_V_AWPROT();
    void thread_m_axi_frames_V_AWQOS();
    void thread_m_axi_frames_V_AWREGION();
    void thread_m_axi_frames_V_AWSIZE();
    void thread_m_axi_frames_V_AWUSER();
    void thread_m_axi_frames_V_AWVALID();
    void thread_m_axi_frames_V_BREADY();
    void thread_m_axi_frames_V_RREADY();
    void thread_m_axi_frames_V_WDATA();
    void thread_m_axi_frames_V_WID();
    void thread_m_axi_frames_V_WLAST();
    void thread_m_axi_frames_V_WSTRB();
    void thread_m_axi_frames_V_WUSER();
    void thread_m_axi_frames_V_WVALID();
    void thread_p_shl8_i_i_fu_224_p3();
    void thread_p_shl8_i_mid1_i_fu_301_p3();
    void thread_p_shl_i_i_fu_216_p3();
    void thread_p_shl_i_mid1_i_fu_294_p3();
    void thread_r7_i_fu_260_p2();
    void thread_r_i_mid2_i_fu_266_p3();
    void thread_real_start();
    void thread_sext_cast_i_fu_212_p1();
    void thread_start_out();
    void thread_start_write();
    void thread_sum3_cast_i_fu_339_p1();
    void thread_sum3_i_fu_328_p2();
    void thread_tmp_122_fu_318_p3();
    void thread_tmp_124_fu_333_p2();
    void thread_tmp_125_fu_349_p1();
    void thread_tmp_29_i_fu_236_p2();
    void thread_tmp_56_mid1_i_fu_308_p1();
    void thread_tmp_57_mid1_i_fu_312_p2();
    void thread_tmp_58_mid2_cast_i_fu_324_p1();
    void thread_tmp_fu_202_p4();
    void thread_tmp_i_fu_232_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif