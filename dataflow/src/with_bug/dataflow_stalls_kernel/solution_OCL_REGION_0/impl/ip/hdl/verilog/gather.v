// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module gather (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        to_V_din,
        to_V_full_n,
        to_V_write,
        from0_V_dout,
        from0_V_empty_n,
        from0_V_read,
        from1_V_dout,
        from1_V_empty_n,
        from1_V_read,
        data_count_dout,
        data_count_empty_n,
        data_count_read,
        data_count_out_din,
        data_count_out_full_n,
        data_count_out_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [63:0] to_V_din;
input   to_V_full_n;
output   to_V_write;
input  [63:0] from0_V_dout;
input   from0_V_empty_n;
output   from0_V_read;
input  [63:0] from1_V_dout;
input   from1_V_empty_n;
output   from1_V_read;
input  [31:0] data_count_dout;
input   data_count_empty_n;
output   data_count_read;
output  [31:0] data_count_out_din;
input   data_count_out_full_n;
output   data_count_out_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg to_V_write;
reg from0_V_read;
reg from1_V_read;
reg data_count_read;
reg data_count_out_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    to_V_blk_n;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_i_reg_170;
reg   [0:0] ap_reg_pp0_iter1_exitcond_i_reg_170;
reg    from0_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
reg    from1_V_blk_n;
reg    data_count_blk_n;
reg    data_count_out_blk_n;
reg   [31:0] i_i_reg_137;
reg   [31:0] data_count_read_reg_165;
reg    ap_block_state1;
wire   [0:0] exitcond_i_fu_148_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
wire   [31:0] i_fu_153_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [63:0] tmp_2_fu_159_p2;
reg   [63:0] tmp_2_reg_179;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_block_pp0_stage0_01001;
wire    ap_CS_fsm_state5;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_continue)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state5)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_subdone == 1'b0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == data_count_empty_n) | (1'b0 == data_count_out_full_n)))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_subdone == 1'b0)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state2 ^ 1'b1);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_subdone == 1'b0)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == data_count_empty_n) | (1'b0 == data_count_out_full_n)))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'd0 == exitcond_i_fu_148_p2))) begin
        i_i_reg_137 <= i_fu_153_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == data_count_empty_n) | (1'b0 == data_count_out_full_n)))) begin
        i_i_reg_137 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0))) begin
        ap_reg_pp0_iter1_exitcond_i_reg_170 <= exitcond_i_reg_170;
        exitcond_i_reg_170 <= exitcond_i_fu_148_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == data_count_empty_n) | (1'b0 == data_count_out_full_n)))) begin
        data_count_read_reg_165 <= data_count_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_i_reg_170 == 1'd0) & (ap_block_pp0_stage0_11001 == 1'b0))) begin
        tmp_2_reg_179 <= tmp_2_fu_159_p2;
    end
end

always @ (*) begin
    if ((exitcond_i_fu_148_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_enable_reg_pp0_iter0) & (1'b0 == ap_enable_reg_pp0_iter1) & (1'b0 == ap_enable_reg_pp0_iter2))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        data_count_blk_n = data_count_empty_n;
    end else begin
        data_count_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        data_count_out_blk_n = data_count_out_full_n;
    end else begin
        data_count_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == data_count_empty_n) | (1'b0 == data_count_out_full_n)))) begin
        data_count_out_write = 1'b1;
    end else begin
        data_count_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == data_count_empty_n) | (1'b0 == data_count_out_full_n)))) begin
        data_count_read = 1'b1;
    end else begin
        data_count_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_i_reg_170 == 1'd0))) begin
        from0_V_blk_n = from0_V_empty_n;
    end else begin
        from0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_i_reg_170 == 1'd0) & (ap_block_pp0_stage0_11001 == 1'b0))) begin
        from0_V_read = 1'b1;
    end else begin
        from0_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_i_reg_170 == 1'd0))) begin
        from1_V_blk_n = from1_V_empty_n;
    end else begin
        from1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_i_reg_170 == 1'd0) & (ap_block_pp0_stage0_11001 == 1'b0))) begin
        from1_V_read = 1'b1;
    end else begin
        from1_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0 == 1'b0) & (ap_reg_pp0_iter1_exitcond_i_reg_170 == 1'd0))) begin
        to_V_blk_n = to_V_full_n;
    end else begin
        to_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_enable_reg_pp0_iter2) & (ap_reg_pp0_iter1_exitcond_i_reg_170 == 1'd0) & (ap_block_pp0_stage0_11001 == 1'b0))) begin
        to_V_write = 1'b1;
    end else begin
        to_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == data_count_empty_n) | (1'b0 == data_count_out_full_n)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0_subdone == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_subdone == 1'b0) & (exitcond_i_fu_148_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0_subdone == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_subdone == 1'b0) & (exitcond_i_fu_148_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((1'b1 == ap_enable_reg_pp0_iter1) & (((exitcond_i_reg_170 == 1'd0) & (1'b0 == from0_V_empty_n)) | ((exitcond_i_reg_170 == 1'd0) & (1'b0 == from1_V_empty_n)))) | ((1'b1 == ap_enable_reg_pp0_iter2) & (ap_reg_pp0_iter1_exitcond_i_reg_170 == 1'd0) & (1'b0 == to_V_full_n)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((1'b1 == ap_enable_reg_pp0_iter1) & (((exitcond_i_reg_170 == 1'd0) & (1'b0 == from0_V_empty_n)) | ((exitcond_i_reg_170 == 1'd0) & (1'b0 == from1_V_empty_n)))) | ((1'b1 == ap_enable_reg_pp0_iter2) & (ap_reg_pp0_iter1_exitcond_i_reg_170 == 1'd0) & (1'b0 == to_V_full_n)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((1'b1 == ap_enable_reg_pp0_iter1) & (((exitcond_i_reg_170 == 1'd0) & (1'b0 == from0_V_empty_n)) | ((exitcond_i_reg_170 == 1'd0) & (1'b0 == from1_V_empty_n)))) | ((1'b1 == ap_enable_reg_pp0_iter2) & (ap_reg_pp0_iter1_exitcond_i_reg_170 == 1'd0) & (1'b0 == to_V_full_n)));
end

always @ (*) begin
    ap_block_state1 = ((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == data_count_empty_n) | (1'b0 == data_count_out_full_n));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = (((exitcond_i_reg_170 == 1'd0) & (1'b0 == from0_V_empty_n)) | ((exitcond_i_reg_170 == 1'd0) & (1'b0 == from1_V_empty_n)));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter2 = ((ap_reg_pp0_iter1_exitcond_i_reg_170 == 1'd0) & (1'b0 == to_V_full_n));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign data_count_out_din = data_count_dout;

assign exitcond_i_fu_148_p2 = ((i_i_reg_137 == data_count_read_reg_165) ? 1'b1 : 1'b0);

assign i_fu_153_p2 = (i_i_reg_137 + 32'd1);

assign tmp_2_fu_159_p2 = (from0_V_dout - from1_V_dout);

assign to_V_din = tmp_2_reg_179;

endmodule //gather
