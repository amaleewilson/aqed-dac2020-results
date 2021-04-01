module aqed_mod_test(
  input  [15:0] data_in, data_out_in,
  input         signal_accvalid, signal_accready, signal_hostvalid,
  input         clk_en_signal, clk, reset, exec_dup,
  output [15:0] data_out,
  output        qed_done, qed_check);

  reg  [15:0] orig_in_reg;	// output331:3:20
  reg  [15:0] orig_out_reg;	// output331:4:21
  reg  [15:0] dup_out_reg;	// output331:5:20
  reg  [31:0] orig_val_reg;	// output331:6:21
  reg  [31:0] dup_val_reg;	// output331:7:20
  reg  [31:0] in_count_reg;	// output331:8:21
  reg  [31:0] out_count_reg;	// output331:9:22
  reg         match_reg;	// output331:10:18
  reg         orig_issued_reg;	// output331:11:24
  reg         dup_issued_reg;	// output331:12:23
  reg  [15:0] the_data_output;	// output331:13:24
  reg  [15:0] base;	// output331:14:13
  reg  [15:0] io;	// output331:15:11
  reg  [15:0] io_0;	// output331:16:13
  reg         dup_done_reg;	// output331:17:21
  wire        issue_orig_wire;	// output331:18:24
  wire        issue_dup_wire;	// output331:19:23
  wire        issue_other_wire;	// output331:20:25

  wire [31:0] _T = orig_val_reg;	// output331:27:10
  wire [31:0] _T_1 = dup_val_reg;	// output331:28:10
  wire [31:0] _T_2 = in_count_reg;	// output331:29:10
  wire [31:0] _T_3 = out_count_reg;	// output331:30:10
  wire _T_4 = orig_issued_reg;	// output331:32:11
  wire _T_5 = issue_orig_wire;	// output331:36:11
  wire _T_6 = issue_dup_wire;	// output331:37:11
  wire _T_7 = issue_other_wire;	// output331:38:11
  wire _T_8 = 1'h1;	// output331:39:13
  wire _T_9 = 1'h0;	// output331:40:14
  wire [15:0] _T_10 = 16'h0;	// output331:42:15
  wire [31:0] _T_11 = 32'h0;	// output331:44:15
  wire [31:0] _T_12 = 32'h1;	// output331:45:15
  wire _T_13 =  ~reset & signal_hostvalid;	// output331:46:11, :48:11, :49:11
  wire _T_14 = _T_13 & ~_T_4 & exec_dup;	// output331:47:11, :50:11, :51:11
  assign issue_orig_wire = _T_14;	// output331:52:5
  assign issue_other_wire = _T_13 & ~_T_6 & ~_T_14;	// output331:53:11, :54:11, :55:11, :56:5
  always @(posedge clk) begin	// output331:57:5
    automatic logic _T_15;	// output331:58:13
    automatic logic _T_16;	// output331:59:13

    _T_15 = clk_en_signal & _T_5;	// output331:58:13
    _T_16 = clk_en_signal & _T_6;	// output331:59:13
    if (reset) begin	// output331:60:7
      orig_issued_reg <= _T_9;	// output331:61:9
      dup_issued_reg <= _T_9;	// output331:62:9
    end
    else begin	// output331:60:7
      if (_T_15)	// output331:64:9
        orig_issued_reg <= _T_8;	// output331:65:11
      else begin	// output331:64:9
        if (_T_16)	// output331:67:11
          dup_issued_reg <= _T_8;	// output331:68:13
      end
    end
  end // always @(posedge)
  assign issue_orig_wire = _T_14;	// output331:75:5
  assign issue_dup_wire = _T_13 & ~dup_issued_reg & _T_4 & exec_dup;	// output331:33:11, :73:11, :74:11, :76:11, :77:5
  always @(posedge clk) begin	// output331:78:5
    automatic logic _T_17;	// output331:79:13
    automatic logic _T_18;	// output331:80:13
    automatic logic _T_19;	// output331:81:13

    _T_17 = clk_en_signal & _T_5;	// output331:79:13
    _T_18 = clk_en_signal & _T_6;	// output331:80:13
    _T_19 = clk_en_signal & _T_7;	// output331:81:13
    if (reset) begin	// output331:82:7
      orig_in_reg <= _T_10;	// output331:83:9
      orig_val_reg <= _T_11;	// output331:84:9
      dup_val_reg <= _T_11;	// output331:85:9
      in_count_reg <= _T_11;	// output331:86:9
    end
    else begin	// output331:82:7
      if (_T_17) begin	// output331:88:9
        orig_in_reg <= data_in;	// output331:89:11
        orig_val_reg <= _T_2;	// output331:90:11
        in_count_reg <= _T_2 + _T_12;	// output331:91:17, :92:11
      end
      else begin	// output331:88:9
        if (_T_18) begin	// output331:94:11
          dup_val_reg <= _T_2;	// output331:95:13
          in_count_reg <= _T_2 + _T_12;	// output331:96:19, :97:13
        end
        else begin	// output331:94:11
          if (_T_19)	// output331:99:13
            in_count_reg <= _T_2 + _T_12;	// output331:100:21, :101:15
          dup_issued_reg <= _T_8;	// output331:103:13
        end
      end
    end
  end // always @(posedge)
  assign the_data_output = _T_6 ? orig_in_reg : data_in;	// output331:24:10, :108:11, :109:5
  always @(posedge clk) begin	// output331:110:5
    if (reset) begin	// output331:116:7
      out_count_reg <= _T_11;	// output331:117:9
      orig_out_reg <= _T_10;	// output331:118:9
      dup_out_reg <= _T_10;	// output331:119:9
      dup_done_reg <= _T_9;	// output331:120:9
    end
    if (clk_en_signal & signal_accvalid &  _T_3 == _T) begin	// output331:111:13, :113:13, :122:7
      orig_out_reg <= data_out_in;	// output331:123:9
      out_count_reg <= _T_3 + _T_12;	// output331:124:15, :125:9
    end
    if (clk_en_signal & signal_accvalid &  _T_3 == _T_1) begin	// output331:112:13, :114:13, :127:7
      dup_out_reg <= data_out_in;	// output331:128:9
      out_count_reg <= _T_3 + _T_12;	// output331:129:15, :130:9
      dup_done_reg <= _T_8;	// output331:131:9
    end
    if (clk_en_signal & _T_7)	// output331:115:13, :133:7
      out_count_reg <= _T_3 + _T_12;	// output331:134:15, :135:9
  end // always @(posedge)
  assign data_out = the_data_output;	// output331:35:11, :141:5
  assign qed_done = dup_done_reg;	// output331:34:11, :141:5
  assign qed_check = &(~(orig_out_reg ^ dup_out_reg));	// output331:25:10, :26:10, :138:11, :139:11, :140:11, :141:5
endmodule

