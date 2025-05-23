-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity hyperspectral_hw_wrapped_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_52_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in_stream_TVALID : IN STD_LOGIC;
    in_stream_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    in_stream_TREADY : OUT STD_LOGIC;
    in_stream_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
    in_stream_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
    in_stream_TUSER : IN STD_LOGIC_VECTOR (3 downto 0);
    in_stream_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    in_stream_TID : IN STD_LOGIC_VECTOR (4 downto 0);
    in_stream_TDEST : IN STD_LOGIC_VECTOR (4 downto 0);
    ref_pixel_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ref_pixel_ce0 : OUT STD_LOGIC;
    ref_pixel_we0 : OUT STD_LOGIC;
    ref_pixel_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    ref_pixel_address1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ref_pixel_ce1 : OUT STD_LOGIC;
    ref_pixel_we1 : OUT STD_LOGIC;
    ref_pixel_d1 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of hyperspectral_hw_wrapped_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_52_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_B4 : STD_LOGIC_VECTOR (7 downto 0) := "10110100";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv8_2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal icmp_ln52_fu_113_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal in_stream_TDATA_blk_n : STD_LOGIC;
    signal zext_ln52_fu_119_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln56_fu_150_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_58 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln52_fu_155_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln56_fu_144_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_141 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component hyperspectral_hw_wrapped_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component hyperspectral_hw_wrapped_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





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
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((not(((ap_start_int = ap_const_logic_0) or ((icmp_ln52_fu_113_p2 = ap_const_lv1_1) and (in_stream_TVALID = ap_const_logic_0)))) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    i_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_141)) then
                if ((icmp_ln52_fu_113_p2 = ap_const_lv1_1)) then 
                    i_fu_58 <= add_ln52_fu_155_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_58 <= ap_const_lv8_0;
                end if;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, in_stream_TVALID, icmp_ln52_fu_113_p2, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln52_fu_155_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_2) + unsigned(ap_const_lv8_2));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(in_stream_TVALID, icmp_ln52_fu_113_p2, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) or ((icmp_ln52_fu_113_p2 = ap_const_lv1_1) and (in_stream_TVALID = ap_const_logic_0)))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(in_stream_TVALID, icmp_ln52_fu_113_p2, ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start_int = ap_const_logic_0) or ((icmp_ln52_fu_113_p2 = ap_const_lv1_1) and (in_stream_TVALID = ap_const_logic_0)));
    end process;


    ap_condition_141_assign_proc : process(ap_CS_fsm_state1, in_stream_TVALID, icmp_ln52_fu_113_p2, ap_start_int)
    begin
                ap_condition_141 <= (not(((ap_start_int = ap_const_logic_0) or ((icmp_ln52_fu_113_p2 = ap_const_lv1_1) and (in_stream_TVALID = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state1));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, in_stream_TVALID, icmp_ln52_fu_113_p2, ap_start_int)
    begin
        if ((not(((ap_start_int = ap_const_logic_0) or ((icmp_ln52_fu_113_p2 = ap_const_lv1_1) and (in_stream_TVALID = ap_const_logic_0)))) and (icmp_ln52_fu_113_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_state1, in_stream_TVALID, icmp_ln52_fu_113_p2, ap_loop_exit_ready, ap_done_reg, ap_start_int)
    begin
        if ((not(((ap_start_int = ap_const_logic_0) or ((icmp_ln52_fu_113_p2 = ap_const_lv1_1) and (in_stream_TVALID = ap_const_logic_0)))) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_state1, in_stream_TVALID, icmp_ln52_fu_113_p2, ap_start_int)
    begin
        if ((not(((ap_start_int = ap_const_logic_0) or ((icmp_ln52_fu_113_p2 = ap_const_lv1_1) and (in_stream_TVALID = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_2_assign_proc : process(ap_CS_fsm_state1, i_fu_58, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_i_2 <= ap_const_lv8_0;
        else 
            ap_sig_allocacmp_i_2 <= i_fu_58;
        end if; 
    end process;

    icmp_ln52_fu_113_p2 <= "1" when (unsigned(ap_sig_allocacmp_i_2) < unsigned(ap_const_lv8_B4)) else "0";

    in_stream_TDATA_blk_n_assign_proc : process(ap_CS_fsm_state1, in_stream_TVALID, icmp_ln52_fu_113_p2, ap_start_int)
    begin
        if (((icmp_ln52_fu_113_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            in_stream_TDATA_blk_n <= in_stream_TVALID;
        else 
            in_stream_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    in_stream_TREADY_assign_proc : process(ap_CS_fsm_state1, in_stream_TVALID, icmp_ln52_fu_113_p2, ap_start_int)
    begin
        if ((not(((ap_start_int = ap_const_logic_0) or ((icmp_ln52_fu_113_p2 = ap_const_lv1_1) and (in_stream_TVALID = ap_const_logic_0)))) and (icmp_ln52_fu_113_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            in_stream_TREADY <= ap_const_logic_1;
        else 
            in_stream_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    or_ln56_fu_144_p2 <= (ap_sig_allocacmp_i_2 or ap_const_lv8_1);
    ref_pixel_address0 <= zext_ln56_fu_150_p1(8 - 1 downto 0);
    ref_pixel_address1 <= zext_ln52_fu_119_p1(8 - 1 downto 0);

    ref_pixel_ce0_assign_proc : process(ap_CS_fsm_state1, in_stream_TVALID, icmp_ln52_fu_113_p2, ap_start_int)
    begin
        if ((not(((ap_start_int = ap_const_logic_0) or ((icmp_ln52_fu_113_p2 = ap_const_lv1_1) and (in_stream_TVALID = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ref_pixel_ce0 <= ap_const_logic_1;
        else 
            ref_pixel_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    ref_pixel_ce1_assign_proc : process(ap_CS_fsm_state1, in_stream_TVALID, icmp_ln52_fu_113_p2, ap_start_int)
    begin
        if ((not(((ap_start_int = ap_const_logic_0) or ((icmp_ln52_fu_113_p2 = ap_const_lv1_1) and (in_stream_TVALID = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ref_pixel_ce1 <= ap_const_logic_1;
        else 
            ref_pixel_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    ref_pixel_d0 <= in_stream_TDATA(31 downto 16);
    ref_pixel_d1 <= in_stream_TDATA(16 - 1 downto 0);

    ref_pixel_we0_assign_proc : process(ap_CS_fsm_state1, in_stream_TVALID, icmp_ln52_fu_113_p2, ap_start_int)
    begin
        if ((not(((ap_start_int = ap_const_logic_0) or ((icmp_ln52_fu_113_p2 = ap_const_lv1_1) and (in_stream_TVALID = ap_const_logic_0)))) and (icmp_ln52_fu_113_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ref_pixel_we0 <= ap_const_logic_1;
        else 
            ref_pixel_we0 <= ap_const_logic_0;
        end if; 
    end process;


    ref_pixel_we1_assign_proc : process(ap_CS_fsm_state1, in_stream_TVALID, icmp_ln52_fu_113_p2, ap_start_int)
    begin
        if ((not(((ap_start_int = ap_const_logic_0) or ((icmp_ln52_fu_113_p2 = ap_const_lv1_1) and (in_stream_TVALID = ap_const_logic_0)))) and (icmp_ln52_fu_113_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ref_pixel_we1 <= ap_const_logic_1;
        else 
            ref_pixel_we1 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln52_fu_119_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_2),64));
    zext_ln56_fu_150_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln56_fu_144_p2),64));
end behav;
