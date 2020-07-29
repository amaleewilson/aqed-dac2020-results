-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.1
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity gather is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    to_V_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    to_V_full_n : IN STD_LOGIC;
    to_V_write : OUT STD_LOGIC;
    from0_V_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    from0_V_empty_n : IN STD_LOGIC;
    from0_V_read : OUT STD_LOGIC;
    from1_V_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    from1_V_empty_n : IN STD_LOGIC;
    from1_V_read : OUT STD_LOGIC;
    data_count_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    data_count_empty_n : IN STD_LOGIC;
    data_count_read : OUT STD_LOGIC;
    data_count_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    data_count_out_full_n : IN STD_LOGIC;
    data_count_out_write : OUT STD_LOGIC );
end;


architecture behav of gather is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal to_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tmp_reg_204 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_reg_208 : STD_LOGIC_VECTOR (0 downto 0);
    signal from0_V_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal tmp_i_fu_167_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_nbreadreq_fu_124_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_nbreadreq_fu_132_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal from1_V_blk_n : STD_LOGIC;
    signal data_count_blk_n : STD_LOGIC;
    signal data_count_out_blk_n : STD_LOGIC;
    signal data_count_read_reg_196 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_predicate_op22_read_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_predicate_op30_write_state3 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal tmp_4_fu_172_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_4_reg_212 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal i_1_fu_106 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fu_178_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_continue)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_subdone = ap_const_boolean_0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = data_count_empty_n) or (ap_const_logic_0 = data_count_out_full_n))))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_block_pp0_stage0_subdone = ap_const_boolean_0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state2 xor ap_const_logic_1);
                elsif ((ap_block_pp0_stage0_subdone = ap_const_boolean_0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = data_count_empty_n) or (ap_const_logic_0 = data_count_out_full_n))))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_1_fu_106_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_boolean_1 = ap_predicate_op22_read_state2) and (ap_block_pp0_stage0_11001 = ap_const_boolean_0))) then 
                i_1_fu_106 <= i_fu_178_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = data_count_empty_n) or (ap_const_logic_0 = data_count_out_full_n))))) then 
                i_1_fu_106 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = data_count_empty_n) or (ap_const_logic_0 = data_count_out_full_n))))) then
                data_count_read_reg_196 <= data_count_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_lv1_1 = tmp_i_fu_167_p2) and (ap_const_lv1_1 = tmp_nbreadreq_fu_124_p3) and (ap_block_pp0_stage0_11001 = ap_const_boolean_0))) then
                tmp_1_reg_208 <= (0=>from1_V_empty_n, others=>'-');
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_1 = ap_predicate_op22_read_state2) and (ap_block_pp0_stage0_11001 = ap_const_boolean_0))) then
                tmp_4_reg_212 <= tmp_4_fu_172_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_lv1_1 = tmp_i_fu_167_p2) and (ap_block_pp0_stage0_11001 = ap_const_boolean_0))) then
                tmp_reg_204 <= (0=>from0_V_empty_n, others=>'-');
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, data_count_empty_n, data_count_out_full_n, ap_enable_reg_pp0_iter0, tmp_i_fu_167_p2, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = data_count_empty_n) or (ap_const_logic_0 = data_count_out_full_n))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_subdone = ap_const_boolean_0) and (tmp_i_fu_167_p2 = ap_const_lv1_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_subdone = ap_const_boolean_0) and (tmp_i_fu_167_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state4 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(to_V_full_n, from0_V_empty_n, from1_V_empty_n, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0, ap_predicate_op22_read_state2, ap_predicate_op30_write_state3)
    begin
                ap_block_pp0_stage0_01001 <= (((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (((ap_const_logic_0 = from0_V_empty_n) and (ap_const_boolean_1 = ap_predicate_op22_read_state2)) or ((ap_const_boolean_1 = ap_predicate_op22_read_state2) and (ap_const_logic_0 = from1_V_empty_n)))) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_logic_0 = to_V_full_n) and (ap_const_boolean_1 = ap_predicate_op30_write_state3)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(to_V_full_n, from0_V_empty_n, from1_V_empty_n, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0, ap_predicate_op22_read_state2, ap_predicate_op30_write_state3)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (((ap_const_logic_0 = from0_V_empty_n) and (ap_const_boolean_1 = ap_predicate_op22_read_state2)) or ((ap_const_boolean_1 = ap_predicate_op22_read_state2) and (ap_const_logic_0 = from1_V_empty_n)))) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_logic_0 = to_V_full_n) and (ap_const_boolean_1 = ap_predicate_op30_write_state3)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(to_V_full_n, from0_V_empty_n, from1_V_empty_n, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0, ap_predicate_op22_read_state2, ap_predicate_op30_write_state3)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (((ap_const_logic_0 = from0_V_empty_n) and (ap_const_boolean_1 = ap_predicate_op22_read_state2)) or ((ap_const_boolean_1 = ap_predicate_op22_read_state2) and (ap_const_logic_0 = from1_V_empty_n)))) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_logic_0 = to_V_full_n) and (ap_const_boolean_1 = ap_predicate_op30_write_state3)));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, data_count_empty_n, data_count_out_full_n)
    begin
                ap_block_state1 <= ((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = data_count_empty_n) or (ap_const_logic_0 = data_count_out_full_n));
    end process;


    ap_block_state2_pp0_stage0_iter0_assign_proc : process(from0_V_empty_n, from1_V_empty_n, ap_predicate_op22_read_state2)
    begin
                ap_block_state2_pp0_stage0_iter0 <= (((ap_const_logic_0 = from0_V_empty_n) and (ap_const_boolean_1 = ap_predicate_op22_read_state2)) or ((ap_const_boolean_1 = ap_predicate_op22_read_state2) and (ap_const_logic_0 = from1_V_empty_n)));
    end process;


    ap_block_state3_pp0_stage0_iter1_assign_proc : process(to_V_full_n, ap_predicate_op30_write_state3)
    begin
                ap_block_state3_pp0_stage0_iter1 <= ((ap_const_logic_0 = to_V_full_n) and (ap_const_boolean_1 = ap_predicate_op30_write_state3));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(tmp_i_fu_167_p2)
    begin
        if ((tmp_i_fu_167_p2 = ap_const_lv1_0)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_0 = ap_enable_reg_pp0_iter0) and (ap_const_logic_0 = ap_enable_reg_pp0_iter1))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_predicate_op22_read_state2_assign_proc : process(tmp_i_fu_167_p2, tmp_nbreadreq_fu_124_p3, tmp_1_nbreadreq_fu_132_p3)
    begin
                ap_predicate_op22_read_state2 <= ((ap_const_lv1_1 = tmp_i_fu_167_p2) and (ap_const_lv1_1 = tmp_nbreadreq_fu_124_p3) and (ap_const_lv1_1 = tmp_1_nbreadreq_fu_132_p3));
    end process;


    ap_predicate_op30_write_state3_assign_proc : process(tmp_reg_204, tmp_1_reg_208)
    begin
                ap_predicate_op30_write_state3 <= ((tmp_reg_204 = ap_const_lv1_1) and (ap_const_lv1_1 = tmp_1_reg_208));
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    data_count_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, data_count_empty_n)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
            data_count_blk_n <= data_count_empty_n;
        else 
            data_count_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    data_count_out_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, data_count_out_full_n)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
            data_count_out_blk_n <= data_count_out_full_n;
        else 
            data_count_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    data_count_out_din <= data_count_dout;

    data_count_out_write_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, data_count_empty_n, data_count_out_full_n)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = data_count_empty_n) or (ap_const_logic_0 = data_count_out_full_n))))) then 
            data_count_out_write <= ap_const_logic_1;
        else 
            data_count_out_write <= ap_const_logic_0;
        end if; 
    end process;


    data_count_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, data_count_empty_n, data_count_out_full_n)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = data_count_empty_n) or (ap_const_logic_0 = data_count_out_full_n))))) then 
            data_count_read <= ap_const_logic_1;
        else 
            data_count_read <= ap_const_logic_0;
        end if; 
    end process;


    from0_V_blk_n_assign_proc : process(from0_V_empty_n, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter0, tmp_i_fu_167_p2, tmp_nbreadreq_fu_124_p3, tmp_1_nbreadreq_fu_132_p3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_lv1_1 = tmp_i_fu_167_p2) and (ap_const_lv1_1 = tmp_nbreadreq_fu_124_p3) and (ap_const_lv1_1 = tmp_1_nbreadreq_fu_132_p3))) then 
            from0_V_blk_n <= from0_V_empty_n;
        else 
            from0_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    from0_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_predicate_op22_read_state2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_boolean_1 = ap_predicate_op22_read_state2) and (ap_block_pp0_stage0_11001 = ap_const_boolean_0))) then 
            from0_V_read <= ap_const_logic_1;
        else 
            from0_V_read <= ap_const_logic_0;
        end if; 
    end process;


    from1_V_blk_n_assign_proc : process(from1_V_empty_n, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter0, tmp_i_fu_167_p2, tmp_nbreadreq_fu_124_p3, tmp_1_nbreadreq_fu_132_p3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_lv1_1 = tmp_i_fu_167_p2) and (ap_const_lv1_1 = tmp_nbreadreq_fu_124_p3) and (ap_const_lv1_1 = tmp_1_nbreadreq_fu_132_p3))) then 
            from1_V_blk_n <= from1_V_empty_n;
        else 
            from1_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    from1_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_predicate_op22_read_state2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_boolean_1 = ap_predicate_op22_read_state2) and (ap_block_pp0_stage0_11001 = ap_const_boolean_0))) then 
            from1_V_read <= ap_const_logic_1;
        else 
            from1_V_read <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_178_p2 <= std_logic_vector(unsigned(i_1_fu_106) + unsigned(ap_const_lv32_1));
    tmp_1_nbreadreq_fu_132_p3 <= (0=>from1_V_empty_n, others=>'-');
    tmp_4_fu_172_p2 <= std_logic_vector(unsigned(from0_V_dout) - unsigned(from1_V_dout));
    tmp_i_fu_167_p2 <= "1" when (unsigned(i_1_fu_106) < unsigned(data_count_read_reg_196)) else "0";
    tmp_nbreadreq_fu_124_p3 <= (0=>from0_V_empty_n, others=>'-');

    to_V_blk_n_assign_proc : process(to_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, tmp_reg_204, tmp_1_reg_208)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0 = ap_const_boolean_0) and (tmp_reg_204 = ap_const_lv1_1) and (ap_const_lv1_1 = tmp_1_reg_208))) then 
            to_V_blk_n <= to_V_full_n;
        else 
            to_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    to_V_din <= tmp_4_reg_212;

    to_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_predicate_op30_write_state3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_boolean_1 = ap_predicate_op30_write_state3) and (ap_block_pp0_stage0_11001 = ap_const_boolean_0))) then 
            to_V_write <= ap_const_logic_1;
        else 
            to_V_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
