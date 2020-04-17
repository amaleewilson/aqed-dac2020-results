// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module workload (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_address0,
        data_ce0,
        data_we0,
        data_d0,
        data_q0
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_pp0_stage0 = 11'd2;
parameter    ap_ST_fsm_state4 = 11'd4;
parameter    ap_ST_fsm_state5 = 11'd8;
parameter    ap_ST_fsm_state6 = 11'd16;
parameter    ap_ST_fsm_state7 = 11'd32;
parameter    ap_ST_fsm_state8 = 11'd64;
parameter    ap_ST_fsm_state9 = 11'd128;
parameter    ap_ST_fsm_state10 = 11'd256;
parameter    ap_ST_fsm_state11 = 11'd512;
parameter    ap_ST_fsm_state12 = 11'd1024;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] data_address0;
output   data_ce0;
output   data_we0;
output  [7:0] data_d0;
input  [7:0] data_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] data_address0;
reg data_ce0;
reg data_we0;

(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [5:0] j_reg_112;
wire   [0:0] exitcond2_fu_390_p2;
reg   [0:0] exitcond2_reg_567;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] j_2_fu_396_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [63:0] tmp_7_fu_402_p1;
reg   [63:0] tmp_7_reg_576;
wire   [1:0] j_4_fu_413_p2;
reg   [1:0] j_4_reg_589;
wire    ap_CS_fsm_state6;
wire   [0:0] tmp_1_fu_419_p1;
reg   [0:0] tmp_1_reg_594;
wire   [0:0] exitcond3_fu_407_p2;
wire   [1:0] tmp_4_fu_423_p2;
reg   [1:0] tmp_4_reg_598;
wire   [1:0] k_2_fu_435_p2;
reg   [1:0] k_2_reg_606;
wire    ap_CS_fsm_state7;
wire   [0:0] exitcond5_fu_429_p2;
wire   [0:0] tmp_9_fu_451_p1;
reg   [0:0] tmp_9_reg_616;
wire   [7:0] buf_1_1_7_fu_455_p3;
wire    ap_CS_fsm_state8;
wire   [7:0] buf_1_1_8_fu_462_p3;
wire   [7:0] buf_1_1_4_fu_469_p3;
wire   [7:0] buf_1_1_6_fu_476_p3;
reg   [7:0] buf_0_0_3_reg_644;
wire    ap_CS_fsm_state10;
wire    grp_aes256_encrypt_ecb_fu_368_ap_idle;
wire    grp_aes256_encrypt_ecb_fu_368_ap_ready;
wire    grp_aes256_encrypt_ecb_fu_368_ap_done;
wire    grp_aes256_encrypt_ecb_fu_379_ap_idle;
wire    grp_aes256_encrypt_ecb_fu_379_ap_ready;
wire    grp_aes256_encrypt_ecb_fu_379_ap_done;
reg    ap_block_state10_on_subcall_done;
reg   [7:0] buf_0_1_3_reg_650;
reg   [7:0] buf_1_0_3_reg_656;
reg   [7:0] buf_1_1_3_reg_662;
wire   [1:0] j_5_fu_505_p2;
reg   [1:0] j_5_reg_671;
wire    ap_CS_fsm_state11;
wire   [0:0] tmp_5_fu_511_p1;
reg   [0:0] tmp_5_reg_676;
wire   [0:0] exitcond6_fu_499_p2;
wire   [1:0] tmp_6_fu_515_p2;
reg   [1:0] tmp_6_reg_681;
wire   [1:0] k_3_fu_527_p2;
wire    ap_CS_fsm_state12;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg   [4:0] local_key_0_address0;
reg    local_key_0_ce0;
wire   [7:0] local_key_0_q0;
reg   [4:0] local_key_1_address0;
reg    local_key_1_ce0;
reg    local_key_1_we0;
wire   [7:0] local_key_1_q0;
wire    grp_aes256_encrypt_ecb_fu_368_ap_start;
wire   [4:0] grp_aes256_encrypt_ecb_fu_368_k_address0;
wire    grp_aes256_encrypt_ecb_fu_368_k_ce0;
wire   [7:0] grp_aes256_encrypt_ecb_fu_368_ap_return_0;
wire   [7:0] grp_aes256_encrypt_ecb_fu_368_ap_return_1;
wire    grp_aes256_encrypt_ecb_fu_379_ap_start;
wire   [4:0] grp_aes256_encrypt_ecb_fu_379_k_address0;
wire    grp_aes256_encrypt_ecb_fu_379_k_ce0;
wire   [7:0] grp_aes256_encrypt_ecb_fu_379_ap_return_0;
wire   [7:0] grp_aes256_encrypt_ecb_fu_379_ap_return_1;
reg   [7:0] buf_1_1_reg_123;
reg   [7:0] buf_1_0_reg_135;
reg   [7:0] buf_0_1_reg_147;
reg   [7:0] buf_0_0_reg_159;
wire   [0:0] ap_phi_mux_i_2_phi_fu_176_p4;
reg   [0:0] i_2_reg_171;
wire    ap_CS_fsm_state4;
reg   [7:0] buf_1_1_1_reg_184;
wire    ap_CS_fsm_state5;
reg   [7:0] buf_1_0_1_reg_195;
reg   [7:0] buf_0_1_1_reg_206;
reg   [7:0] buf_0_0_1_reg_217;
reg   [1:0] j_1_reg_228;
reg   [7:0] buf_1_1_2_reg_239;
wire    ap_CS_fsm_state9;
reg   [7:0] buf_1_0_2_reg_251;
reg   [7:0] buf_0_1_2_reg_263;
reg   [7:0] buf_0_0_2_reg_275;
reg   [1:0] k_reg_287;
reg   [7:0] buf_1_1_2_be_reg_298;
reg   [7:0] buf_1_0_2_be_reg_310;
reg   [7:0] buf_0_1_2_be_reg_322;
reg   [7:0] buf_0_0_2_be_reg_334;
reg   [1:0] j_3_reg_346;
wire   [0:0] exitcond_fu_521_p2;
reg   [1:0] k_1_reg_357;
reg    grp_aes256_encrypt_ecb_fu_368_ap_start_reg;
reg    grp_aes256_encrypt_ecb_fu_379_ap_start_reg;
wire    ap_block_pp0_stage0;
wire   [63:0] sum3_cast_fu_446_p1;
wire   [63:0] sum5_cast_fu_562_p1;
wire   [1:0] tmp7_fu_441_p2;
wire   [0:0] tmp_10_fu_533_p1;
wire   [7:0] buf_1_load_phi_fu_537_p3;
wire   [7:0] buf_0_load_phi_fu_543_p3;
wire   [1:0] tmp8_fu_557_p2;
reg   [10:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 11'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 grp_aes256_encrypt_ecb_fu_368_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_fu_379_ap_start_reg = 1'b0;
end

workload_local_keeOg #(
    .DataWidth( 8 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
local_key_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(local_key_0_address0),
    .ce0(local_key_0_ce0),
    .q0(local_key_0_q0)
);

workload_local_kefYi #(
    .DataWidth( 8 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
local_key_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(local_key_1_address0),
    .ce0(local_key_1_ce0),
    .we0(local_key_1_we0),
    .d0(local_key_0_q0),
    .q0(local_key_1_q0)
);

aes256_encrypt_ecb grp_aes256_encrypt_ecb_fu_368(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_aes256_encrypt_ecb_fu_368_ap_start),
    .ap_done(grp_aes256_encrypt_ecb_fu_368_ap_done),
    .ap_idle(grp_aes256_encrypt_ecb_fu_368_ap_idle),
    .ap_ready(grp_aes256_encrypt_ecb_fu_368_ap_ready),
    .k_address0(grp_aes256_encrypt_ecb_fu_368_k_address0),
    .k_ce0(grp_aes256_encrypt_ecb_fu_368_k_ce0),
    .k_q0(local_key_0_q0),
    .p_read(buf_0_0_1_reg_217),
    .p_read1(buf_0_1_1_reg_206),
    .ap_return_0(grp_aes256_encrypt_ecb_fu_368_ap_return_0),
    .ap_return_1(grp_aes256_encrypt_ecb_fu_368_ap_return_1)
);

aes256_encrypt_ecb grp_aes256_encrypt_ecb_fu_379(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_aes256_encrypt_ecb_fu_379_ap_start),
    .ap_done(grp_aes256_encrypt_ecb_fu_379_ap_done),
    .ap_idle(grp_aes256_encrypt_ecb_fu_379_ap_idle),
    .ap_ready(grp_aes256_encrypt_ecb_fu_379_ap_ready),
    .k_address0(grp_aes256_encrypt_ecb_fu_379_k_address0),
    .k_ce0(grp_aes256_encrypt_ecb_fu_379_k_ce0),
    .k_q0(local_key_1_q0),
    .p_read(buf_1_0_1_reg_195),
    .p_read1(buf_1_1_1_reg_184),
    .ap_return_0(grp_aes256_encrypt_ecb_fu_379_ap_return_0),
    .ap_return_1(grp_aes256_encrypt_ecb_fu_379_ap_return_1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_fu_368_ap_start_reg <= 1'b0;
    end else begin
        if (((exitcond3_fu_407_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
            grp_aes256_encrypt_ecb_fu_368_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_fu_368_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_fu_368_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_fu_379_ap_start_reg <= 1'b0;
    end else begin
        if (((exitcond3_fu_407_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
            grp_aes256_encrypt_ecb_fu_379_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_fu_379_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_fu_379_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_429_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        buf_0_0_1_reg_217 <= buf_0_0_2_reg_275;
    end else if (((ap_phi_mux_i_2_phi_fu_176_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        buf_0_0_1_reg_217 <= buf_0_0_reg_159;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        if ((tmp_1_reg_594 == 1'd0)) begin
            buf_0_0_2_be_reg_334 <= buf_1_1_8_fu_462_p3;
        end else if ((tmp_1_reg_594 == 1'd1)) begin
            buf_0_0_2_be_reg_334 <= buf_0_0_2_reg_275;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buf_0_0_2_reg_275 <= buf_0_0_2_be_reg_334;
    end else if (((exitcond3_fu_407_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        buf_0_0_2_reg_275 <= buf_0_0_1_reg_217;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_429_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        buf_0_1_1_reg_206 <= buf_0_1_2_reg_263;
    end else if (((ap_phi_mux_i_2_phi_fu_176_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        buf_0_1_1_reg_206 <= buf_0_1_reg_147;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        if ((tmp_1_reg_594 == 1'd0)) begin
            buf_0_1_2_be_reg_322 <= buf_1_1_7_fu_455_p3;
        end else if ((tmp_1_reg_594 == 1'd1)) begin
            buf_0_1_2_be_reg_322 <= buf_0_1_2_reg_263;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buf_0_1_2_reg_263 <= buf_0_1_2_be_reg_322;
    end else if (((exitcond3_fu_407_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        buf_0_1_2_reg_263 <= buf_0_1_1_reg_206;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_429_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        buf_1_0_1_reg_195 <= buf_1_0_2_reg_251;
    end else if (((ap_phi_mux_i_2_phi_fu_176_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        buf_1_0_1_reg_195 <= buf_1_0_reg_135;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        if ((tmp_1_reg_594 == 1'd0)) begin
            buf_1_0_2_be_reg_310 <= buf_1_0_2_reg_251;
        end else if ((tmp_1_reg_594 == 1'd1)) begin
            buf_1_0_2_be_reg_310 <= buf_1_1_6_fu_476_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buf_1_0_2_reg_251 <= buf_1_0_2_be_reg_310;
    end else if (((exitcond3_fu_407_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        buf_1_0_2_reg_251 <= buf_1_0_1_reg_195;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_429_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        buf_1_1_1_reg_184 <= buf_1_1_2_reg_239;
    end else if (((ap_phi_mux_i_2_phi_fu_176_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        buf_1_1_1_reg_184 <= buf_1_1_reg_123;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        if ((tmp_1_reg_594 == 1'd0)) begin
            buf_1_1_2_be_reg_298 <= buf_1_1_2_reg_239;
        end else if ((tmp_1_reg_594 == 1'd1)) begin
            buf_1_1_2_be_reg_298 <= buf_1_1_4_fu_469_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buf_1_1_2_reg_239 <= buf_1_1_2_be_reg_298;
    end else if (((exitcond3_fu_407_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        buf_1_1_2_reg_239 <= buf_1_1_1_reg_184;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_2_reg_171 <= 1'd0;
    end else if (((1'b1 == ap_CS_fsm_state11) & (exitcond6_fu_499_p2 == 1'd1))) begin
        i_2_reg_171 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_429_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        j_1_reg_228 <= j_4_reg_589;
    end else if (((ap_phi_mux_i_2_phi_fu_176_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        j_1_reg_228 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (1'b0 == ap_block_state10_on_subcall_done))) begin
        j_3_reg_346 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state12) & (exitcond_fu_521_p2 == 1'd1))) begin
        j_3_reg_346 <= j_5_reg_671;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        j_reg_112 <= 6'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond2_fu_390_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_reg_112 <= j_2_fu_396_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_521_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        k_1_reg_357 <= k_3_fu_527_p2;
    end else if (((exitcond6_fu_499_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        k_1_reg_357 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        k_reg_287 <= k_2_reg_606;
    end else if (((exitcond3_fu_407_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        k_reg_287 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (1'b0 == ap_block_state10_on_subcall_done))) begin
        buf_0_0_3_reg_644 <= grp_aes256_encrypt_ecb_fu_368_ap_return_0;
        buf_0_1_3_reg_650 <= grp_aes256_encrypt_ecb_fu_368_ap_return_1;
        buf_1_0_3_reg_656 <= grp_aes256_encrypt_ecb_fu_379_ap_return_0;
        buf_1_1_3_reg_662 <= grp_aes256_encrypt_ecb_fu_379_ap_return_1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state11) & (exitcond6_fu_499_p2 == 1'd1))) begin
        buf_0_0_reg_159 <= buf_0_0_3_reg_644;
        buf_0_1_reg_147 <= buf_0_1_3_reg_650;
        buf_1_0_reg_135 <= buf_1_0_3_reg_656;
        buf_1_1_reg_123 <= buf_1_1_3_reg_662;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond2_reg_567 <= exitcond2_fu_390_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        j_4_reg_589 <= j_4_fu_413_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        j_5_reg_671 <= j_5_fu_505_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        k_2_reg_606 <= k_2_fu_435_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_407_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        tmp_1_reg_594 <= tmp_1_fu_419_p1;
        tmp_4_reg_598[1] <= tmp_4_fu_423_p2[1];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond6_fu_499_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        tmp_5_reg_676 <= tmp_5_fu_511_p1;
        tmp_6_reg_681[1] <= tmp_6_fu_515_p2[1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond2_fu_390_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_7_reg_576[5 : 0] <= tmp_7_fu_402_p1[5 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_429_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        tmp_9_reg_616 <= tmp_9_fu_451_p1;
    end
end

always @ (*) begin
    if ((exitcond2_fu_390_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (ap_phi_mux_i_2_phi_fu_176_p4 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (ap_phi_mux_i_2_phi_fu_176_p4 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        data_address0 = sum5_cast_fu_562_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        data_address0 = sum3_cast_fu_446_p1;
    end else begin
        data_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12))) begin
        data_ce0 = 1'b1;
    end else begin
        data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_521_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        data_we0 = 1'b1;
    end else begin
        data_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_key_0_address0 = tmp_7_fu_402_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        local_key_0_address0 = grp_aes256_encrypt_ecb_fu_368_k_address0;
    end else begin
        local_key_0_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_key_0_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        local_key_0_ce0 = grp_aes256_encrypt_ecb_fu_368_k_ce0;
    end else begin
        local_key_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        local_key_1_address0 = tmp_7_reg_576;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        local_key_1_address0 = grp_aes256_encrypt_ecb_fu_379_k_address0;
    end else begin
        local_key_1_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        local_key_1_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        local_key_1_ce0 = grp_aes256_encrypt_ecb_fu_379_k_ce0;
    end else begin
        local_key_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond2_reg_567 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        local_key_1_we0 = 1'b1;
    end else begin
        local_key_1_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((exitcond2_fu_390_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((exitcond2_fu_390_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (ap_phi_mux_i_2_phi_fu_176_p4 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((exitcond3_fu_407_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((exitcond5_fu_429_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (1'b0 == ap_block_state10_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (exitcond6_fu_499_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (exitcond_fu_521_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd7];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state10_on_subcall_done = ((grp_aes256_encrypt_ecb_fu_379_ap_done == 1'b0) | (grp_aes256_encrypt_ecb_fu_368_ap_done == 1'b0));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_mux_i_2_phi_fu_176_p4 = i_2_reg_171;

assign buf_0_load_phi_fu_543_p3 = ((tmp_10_fu_533_p1[0:0] === 1'b1) ? buf_0_1_3_reg_650 : buf_0_0_3_reg_644);

assign buf_1_1_4_fu_469_p3 = ((tmp_9_reg_616[0:0] === 1'b1) ? data_q0 : buf_1_1_2_reg_239);

assign buf_1_1_6_fu_476_p3 = ((tmp_9_reg_616[0:0] === 1'b1) ? buf_1_0_2_reg_251 : data_q0);

assign buf_1_1_7_fu_455_p3 = ((tmp_9_reg_616[0:0] === 1'b1) ? data_q0 : buf_0_1_2_reg_263);

assign buf_1_1_8_fu_462_p3 = ((tmp_9_reg_616[0:0] === 1'b1) ? buf_0_0_2_reg_275 : data_q0);

assign buf_1_load_phi_fu_537_p3 = ((tmp_10_fu_533_p1[0:0] === 1'b1) ? buf_1_1_3_reg_662 : buf_1_0_3_reg_656);

assign data_d0 = ((tmp_5_reg_676[0:0] === 1'b1) ? buf_1_load_phi_fu_537_p3 : buf_0_load_phi_fu_543_p3);

assign exitcond2_fu_390_p2 = ((j_reg_112 == 6'd32) ? 1'b1 : 1'b0);

assign exitcond3_fu_407_p2 = ((j_1_reg_228 == 2'd2) ? 1'b1 : 1'b0);

assign exitcond5_fu_429_p2 = ((k_reg_287 == 2'd2) ? 1'b1 : 1'b0);

assign exitcond6_fu_499_p2 = ((j_3_reg_346 == 2'd2) ? 1'b1 : 1'b0);

assign exitcond_fu_521_p2 = ((k_1_reg_357 == 2'd2) ? 1'b1 : 1'b0);

assign grp_aes256_encrypt_ecb_fu_368_ap_start = grp_aes256_encrypt_ecb_fu_368_ap_start_reg;

assign grp_aes256_encrypt_ecb_fu_379_ap_start = grp_aes256_encrypt_ecb_fu_379_ap_start_reg;

assign j_2_fu_396_p2 = (j_reg_112 + 6'd1);

assign j_4_fu_413_p2 = (j_1_reg_228 + 2'd1);

assign j_5_fu_505_p2 = (j_3_reg_346 + 2'd1);

assign k_2_fu_435_p2 = (k_reg_287 + 2'd1);

assign k_3_fu_527_p2 = (k_1_reg_357 + 2'd1);

assign sum3_cast_fu_446_p1 = tmp7_fu_441_p2;

assign sum5_cast_fu_562_p1 = tmp8_fu_557_p2;

assign tmp7_fu_441_p2 = (k_reg_287 + tmp_4_reg_598);

assign tmp8_fu_557_p2 = (k_1_reg_357 + tmp_6_reg_681);

assign tmp_10_fu_533_p1 = k_1_reg_357[0:0];

assign tmp_1_fu_419_p1 = j_1_reg_228[0:0];

assign tmp_4_fu_423_p2 = j_1_reg_228 << 2'd1;

assign tmp_5_fu_511_p1 = j_3_reg_346[0:0];

assign tmp_6_fu_515_p2 = j_3_reg_346 << 2'd1;

assign tmp_7_fu_402_p1 = j_reg_112;

assign tmp_9_fu_451_p1 = k_reg_287[0:0];

always @ (posedge ap_clk) begin
    tmp_7_reg_576[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    tmp_4_reg_598[0] <= 1'b0;
    tmp_6_reg_681[0] <= 1'b0;
end

endmodule //workload