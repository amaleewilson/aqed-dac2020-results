//
//--------------------------------------------------------------------------------
//          THIS FILE WAS AUTOMATICALLY GENERATED BY THE GENESIS2 ENGINE        
//  FOR MORE INFORMATION: OFER SHACHAM (CHIP GENESIS INC / STANFORD VLSI GROUP)
//    !! THIS VERSION OF GENESIS2 IS NOT FOR ANY COMMERCIAL USE !!
//     FOR COMMERCIAL LICENSE CONTACT SHACHAM@ALUMNI.STANFORD.EDU
//--------------------------------------------------------------------------------
//
//  
//	-----------------------------------------------
//	|            Genesis Release Info             |
//	|  $Change: 11904 $ --- $Date: 2013/08/03 $   |
//	-----------------------------------------------
//	
//
//  Source file: /media/saranyu/Share/SF/garnet-master/memory_core/genesis_new/doublebuffer_control.svp
//  Source template: doublebuffer_control
//
// --------------- Begin Pre-Generation Parameters Status Report ---------------
//
//	From 'generate' statement (priority=5):
// Parameter dwidth 	= 16
// Parameter bbanks 	= 2
// Parameter ddepth 	= 512
// Parameter iterator_support 	= 6
// Parameter wwidth 	= 16
//
//		---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
//
//	From Command Line input (priority=4):
//
//		---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
//
//	From XML input (priority=3):
//
//		---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
//
//	From Config File input (priority=2):
//
// ---------------- End Pre-Generation Pramameters Status Report ----------------

///////////////////////////////////////////////////////////////////
// CGRA memory generator
//////////////////////////////////////////////////////////////////
`define xassert(condition, message) if(condition) begin $display(message); $finish(1); end

// dwidth (_GENESIS2_INHERITANCE_PRIORITY_) = 16
//
// wwidth (_GENESIS2_INHERITANCE_PRIORITY_) = 16
//
// ddepth (_GENESIS2_INHERITANCE_PRIORITY_) = 0x200
//
// bbanks (_GENESIS2_INHERITANCE_PRIORITY_) = 2
//
// iterator_support (_GENESIS2_INHERITANCE_PRIORITY_) = 6
//

module doublebuffer_control_unq1(

  clk,
  clk_en,
  reset,
  flush,
  ren,
  wen,
  data_in,
  data_out,
  addr_in,

  doublebuffer_data_in,
  doublebuffer_cen_mem,
  doublebuffer_wen_mem,
  doublebuffer_addr_mem,
  doublebuffer_data_out,

  depth,
  valid,
  switch,

  chain_en,
  chain_idx,

  arbitrary_addr,
  starting_addr,
  iter_cnt,
  dimensionality,
  stride,
  range,

  rate_matched,
  stencil_width
);

// =============================================
// Depth or Ping Pong In Configuration
// =============================================
input logic        chain_en;
input logic [3:0]  chain_idx;

input logic [15:0] stencil_width;
input logic        rate_matched;
// ==============================================
// I/O
// ==============================================
input logic        clk;
input logic        clk_en;
input logic        reset;
input logic        switch;

input logic        arbitrary_addr;
input logic [15:0] starting_addr; 
input logic [31:0] iter_cnt;
input logic [3:0]  dimensionality;

input logic [15:0] stride [5:0];
input logic [31:0] range [5:0];
logic       [15:0] current_loc [5:0];

input logic                   flush;
input logic                   wen;
input logic                   ren;
input logic  [15:0]  data_in;
output logic [15:0]  data_out;
input logic  [15:0]  addr_in;

output logic [15:0]  doublebuffer_data_in  [1:0];
output logic [1:0]  doublebuffer_cen_mem;
output logic [1:0]  doublebuffer_wen_mem;
output logic [8:0]  doublebuffer_addr_mem [1:0];
input logic  [15:0]  doublebuffer_data_out [1:0];

input logic  [15:0]           depth;
output logic                  valid;
// ==============================================
// Internal
// ==============================================
logic                  init_state;
logic [8:0]  addr;
logic                  ping_npong;
logic [15:0]  read_addr;
logic [15:0]  write_addr;
logic [31:0] dim_counter [5:0]; 
// ==============================================
// Configuration
// ==============================================
logic                  update [5:0];
logic  [15:0] data_out_reg;
logic  [15:0] strt_addr;
logic  [31:0]          read_cnt;
logic  [15:0] firstn [1:0];
logic                  take_the_flop;
logic                  autoswitch;
logic                  read_done;
logic                  write_done;
logic                  write_done_d1;

logic next_valid;
logic write_gate;
logic read_first;
logic next_take_the_flop;
logic valid_from_read;
logic [15:0] vg_ctr;
logic valid_int;
logic in_range;
logic read_mux;
assign read_mux = (rate_matched) ? wen : ren;
assign in_range = 1;

assign autoswitch = ~arbitrary_addr & write_done & (read_done | init_state) & (wen | ~rate_matched);
assign strt_addr = starting_addr[15:0];
assign addr = addr_in[8:0];

assign last_line_gate = (stencil_width == 0) ? 1 : vg_ctr >= (stencil_width - 1);

always @ (posedge clk or posedge reset) begin
  if(reset) begin
    data_out_reg <= 0;
  end
  if(flush) begin
    data_out_reg <= 0;
  end
  else begin
    data_out_reg <= data_out;
  end
end

always @(posedge clk or posedge reset) begin
  if(reset) begin
    vg_ctr <= 0;
  end
  else begin
    if(flush) begin
      vg_ctr <= 0;
    end
    else begin
        if(~init_state) begin
          if(vg_ctr == (depth - 1)) begin
            vg_ctr <= 0;
          end
          else begin
            vg_ctr <= vg_ctr + 1;
          end
        end
    end
  end
end

always @ (posedge clk or posedge reset) begin
    if(reset) begin
        write_done_d1 <= 0;
    end
    else begin
        if(flush) begin
            write_done_d1 <= 0;
        end
        else begin    
            write_done_d1 <= write_done;
        end
    end
end

assign read_done = read_cnt == (iter_cnt - 1) & read_mux;//updated
assign write_done = (write_addr == (depth - 1)) & wen; 

// valid only used in chaining for db? timing is sorta irrelevant
assign write_gate = write_addr[12:9] == chain_idx;
assign next_valid = read_addr[12:9] == chain_idx;

assign valid_from_read = (read_mux) & in_range & ~init_state;
assign valid = last_line_gate & (valid_from_read);

always @ (posedge clk or posedge reset) begin
  if(reset) begin
    valid_int <= 1'b0;
  end
  else begin
    if(flush) begin
      valid_int <= 1'b0;
    end
    else begin
      if(arbitrary_addr) begin
        // In arbitrary mode, valid will go high
        // if you assert an in_range ren
        valid_int <= valid_from_read;
      end
      else begin
	valid_int <= (valid_from_read );
	end
    end
  end
end

always @(*) begin
  // Data to memory is just data in
  doublebuffer_data_in[0] = data_in;
  doublebuffer_data_in[1] = data_in;
  doublebuffer_cen_mem[0] =  wen | switch | autoswitch | (read_mux);
  doublebuffer_cen_mem[1] =  wen | switch | autoswitch | (read_mux);
  doublebuffer_wen_mem[0] = (ping_npong == 0) & (wen | ~write_done_d1) & write_gate;
  doublebuffer_wen_mem[1] = (ping_npong == 1) & (wen | ~write_done_d1) & write_gate;
  doublebuffer_addr_mem[0] = (ping_npong == 0) ? write_addr : read_addr;
  doublebuffer_addr_mem[1] = (ping_npong == 1) ? write_addr : read_addr;
  // select proper data - 
  data_out = take_the_flop ? firstn[~ping_npong] : doublebuffer_data_out[~ping_npong];
  read_addr = arbitrary_addr ? addr :  
   ((5 < dimensionality) ? (current_loc[5]) : 0) +
   ((4 < dimensionality) ? (current_loc[4]) : 0) +
   ((3 < dimensionality) ? (current_loc[3]) : 0) +
   ((2 < dimensionality) ? (current_loc[2]) : 0) +
   ((1 < dimensionality) ? (current_loc[1]) : 0) +
    (current_loc[0]) + strt_addr;
  update[0] = ~init_state;
  // Update iterator when the previous one will update and flow over
  update[1] = ((dim_counter[0]) == (range[0] - 1)) & update[0];
  update[2] = ((dim_counter[1]) == (range[1] - 1)) & update[1];
  update[3] = ((dim_counter[2]) == (range[2] - 1)) & update[2];
  update[4] = ((dim_counter[3]) == (range[3] - 1)) & update[3];
  update[5] = ((dim_counter[4]) == (range[4] - 1)) & update[4];
end

always @(posedge clk or posedge reset) begin
  if(reset) begin
    firstn[0] <= 0;
    firstn[1] <= 0;
  end
  else begin
    if(flush) begin
      firstn[0] <= 0;
      firstn[1] <= 0;
    end
    else begin
      if ((write_addr == strt_addr) & wen) begin
        firstn[0] <= (~ping_npong) ? data_in : firstn[0];
        firstn[1] <= (ping_npong) ? data_in : firstn[1];
      end
    end
  end
end



assign next_take_the_flop = (autoswitch | switch) ? 1 : 
                            (take_the_flop & ~(read_mux)) ? 1 :
                                                    0 ;
//                            (take_the_flop & rw & ~read_first) ? 0 :
 //                                       take_the_flop ;
                                                    
//assign next_take_the_flop = arbitrary_addr | (take_the_flop & rw & ~read_first) ? 0 : autoswitch | switch | take_the_flop;
/*
logic saturated;
always_ff @(posedge clk or posedge reset) begin
    if(reset) begin
        saturated <= 0;
    end
    else begin
        if(flush) begin
            saturated <= 0;
        end
        else begin
            
        end
    end
end */




always_ff @(posedge clk or posedge reset) begin
    if(reset) begin
        read_first <= 1;
    end
    else begin
        if(flush) begin
            read_first <= 1;
        end
        else if(take_the_flop & read_mux) begin
            read_first <= 0;
        end
    end
end


always_ff @(posedge clk or posedge reset) begin
  if(reset) begin
    take_the_flop <= 0;
  end
  else begin
      if(flush) begin
         take_the_flop <= 0;
      end
      else begin
         take_the_flop <= next_take_the_flop; 
      end
  //  if(switch | autoswitch & ~arbitrary_addr) begin
  //      take_the_flop <= 1;
 //   end
  //  else if()
  end
end

always_ff @(posedge clk or posedge reset) begin
  if(reset) begin 
    dim_counter[0] <= 0;
    dim_counter[1] <= 0;
    dim_counter[2] <= 0;
    dim_counter[3] <= 0;
    dim_counter[4] <= 0;
    dim_counter[5] <= 0;
    current_loc[0] <= 0;
    current_loc[1] <= 0;
    current_loc[2] <= 0;
    current_loc[3] <= 0;
    current_loc[4] <= 0;
    current_loc[5] <= 0;
    init_state <= 1'b1;
    ping_npong <= 0;
    write_addr <= 0;
    read_cnt <= 0;
  end
  else begin
    if(flush) begin 
      dim_counter[0] <= 0;
      dim_counter[1] <= 0;
      dim_counter[2] <= 0;
      dim_counter[3] <= 0;
      dim_counter[4] <= 0;
      dim_counter[5] <= 0;
      current_loc[0] <= 0;
      current_loc[1] <= 0;
      current_loc[2] <= 0;
      current_loc[3] <= 0;
      current_loc[4] <= 0;
      current_loc[5] <= 0;
      init_state <= 1'b1;
      ping_npong <= 0;
      write_addr <= 0;
      read_cnt <= 0;
    end
    else begin
      // When we switch for the first time (and all times), the valid becomes 1 because good data is at the output
      // Start over write and read addr, switch buffer (ping or pong)
      if(switch | autoswitch) begin // Or if configged to trigger on depth
        ping_npong <= ~ping_npong;
        read_cnt <= 0;
        write_addr <= 0;
        init_state <= 0;
        dim_counter[1] <= 0;
        current_loc[1] <= 0;
        dim_counter[2] <= 0;
        current_loc[2] <= 0;
        dim_counter[3] <= 0;
        current_loc[3] <= 0;
        dim_counter[4] <= 0;
        current_loc[4] <= 0;
        dim_counter[5] <= 0;
        current_loc[5] <= 0;
        dim_counter[0] <= range[0] > 1; 
        current_loc[0] <= stride[0];
      end
      else begin
        // ===================
        // ADDRS
        // ===================
        // Increment write_addr on wen
        if(wen & ~write_done) begin
          write_addr <= (write_addr + 1); 
        end
        // Once we expect data to start spilling out, we start moving the read_addr - move is based on counters
        if( (~init_state & read_mux & ~read_done & ~take_the_flop) | (~init_state & read_mux & take_the_flop) ) begin 
          read_cnt <= read_cnt + 1;
          if(update[0]) begin
            if(dim_counter[0] == (range[0] - 1)) begin
              dim_counter[0] <= 0;
              current_loc[0] <= 0;
            end
            else begin
              dim_counter[0] <= dim_counter[0] + 1;
              current_loc[0] <= current_loc[0] + stride[0];
            end
          end
          if(update[1]) begin
            if(dim_counter[1] == (range[1] - 1)) begin
              dim_counter[1] <= 0;
              current_loc[1] <= 0;
            end
            else begin
              dim_counter[1] <= dim_counter[1] + 1;
              current_loc[1] <= current_loc[1] + stride[1];
            end
          end
          if(update[2]) begin
            if(dim_counter[2] == (range[2] - 1)) begin
              dim_counter[2] <= 0;
              current_loc[2] <= 0;
            end
            else begin
              dim_counter[2] <= dim_counter[2] + 1;
              current_loc[2] <= current_loc[2] + stride[2];
            end
          end
          if(update[3]) begin
            if(dim_counter[3] == (range[3] - 1)) begin
              dim_counter[3] <= 0;
              current_loc[3] <= 0;
            end
            else begin
              dim_counter[3] <= dim_counter[3] + 1;
              current_loc[3] <= current_loc[3] + stride[3];
            end
          end
          if(update[4]) begin
            if(dim_counter[4] == (range[4] - 1)) begin
              dim_counter[4] <= 0;
              current_loc[4] <= 0;
            end
            else begin
              dim_counter[4] <= dim_counter[4] + 1;
              current_loc[4] <= current_loc[4] + stride[4];
            end
          end
          if(update[5]) begin
            if(dim_counter[5] == (range[5] - 1)) begin
              dim_counter[5] <= 0;
              current_loc[5] <= 0;
            end
            else begin
              dim_counter[5] <= dim_counter[5] + 1;
              current_loc[5] <= current_loc[5] + stride[5];
            end
          end
        end
      end
    end
  end
end

endmodule
