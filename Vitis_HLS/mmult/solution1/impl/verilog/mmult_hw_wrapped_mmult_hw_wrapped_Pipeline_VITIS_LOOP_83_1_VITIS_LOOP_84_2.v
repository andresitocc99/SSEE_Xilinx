// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module mmult_hw_wrapped_mmult_hw_wrapped_Pipeline_VITIS_LOOP_83_1_VITIS_LOOP_84_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        INPUT_STREAM_TVALID,
        a_address0,
        a_ce0,
        a_we0,
        a_d0,
        INPUT_STREAM_TDATA,
        INPUT_STREAM_TREADY,
        INPUT_STREAM_TKEEP,
        INPUT_STREAM_TSTRB,
        INPUT_STREAM_TUSER,
        INPUT_STREAM_TLAST,
        INPUT_STREAM_TID,
        INPUT_STREAM_TDEST
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   INPUT_STREAM_TVALID;
output  [9:0] a_address0;
output   a_ce0;
output   a_we0;
output  [31:0] a_d0;
input  [31:0] INPUT_STREAM_TDATA;
output   INPUT_STREAM_TREADY;
input  [3:0] INPUT_STREAM_TKEEP;
input  [3:0] INPUT_STREAM_TSTRB;
input  [3:0] INPUT_STREAM_TUSER;
input  [0:0] INPUT_STREAM_TLAST;
input  [4:0] INPUT_STREAM_TID;
input  [4:0] INPUT_STREAM_TDEST;

reg ap_idle;
reg a_ce0;
reg a_we0;
reg INPUT_STREAM_TREADY;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln83_fu_123_p2;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    INPUT_STREAM_TDATA_blk_n;
wire   [63:0] zext_ln91_1_fu_191_p1;
reg   [5:0] j_fu_62;
wire   [5:0] add_ln84_fu_205_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_j_load;
reg   [5:0] i_fu_66;
wire   [5:0] select_ln83_1_fu_161_p3;
reg   [5:0] ap_sig_allocacmp_i_load;
reg   [10:0] indvar_flatten_fu_70;
wire   [10:0] add_ln83_1_fu_129_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [0:0] icmp_ln84_fu_147_p2;
wire   [5:0] add_ln83_fu_141_p2;
wire   [4:0] trunc_ln91_fu_169_p1;
wire   [5:0] select_ln83_fu_153_p3;
wire   [9:0] tmp_fu_173_p3;
wire   [9:0] zext_ln91_fu_181_p1;
wire   [9:0] add_ln91_fu_185_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
reg    ap_condition_187;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end

mmult_hw_wrapped_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((ap_start_int == 1'b0) | ((1'b0 == INPUT_STREAM_TVALID) & (icmp_ln83_fu_123_p2 == 1'd0))) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_187)) begin
        if ((icmp_ln83_fu_123_p2 == 1'd0)) begin
            i_fu_66 <= select_ln83_1_fu_161_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_66 <= 6'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_187)) begin
        if ((icmp_ln83_fu_123_p2 == 1'd0)) begin
            indvar_flatten_fu_70 <= add_ln83_1_fu_129_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_70 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_187)) begin
        if ((icmp_ln83_fu_123_p2 == 1'd0)) begin
            j_fu_62 <= add_ln84_fu_205_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_62 <= 6'd0;
        end
    end
end

always @ (*) begin
    if (((icmp_ln83_fu_123_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        INPUT_STREAM_TDATA_blk_n = INPUT_STREAM_TVALID;
    end else begin
        INPUT_STREAM_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start_int == 1'b0) | ((1'b0 == INPUT_STREAM_TVALID) & (icmp_ln83_fu_123_p2 == 1'd0))) & (icmp_ln83_fu_123_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        INPUT_STREAM_TREADY = 1'b1;
    end else begin
        INPUT_STREAM_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start_int == 1'b0) | ((1'b0 == INPUT_STREAM_TVALID) & (icmp_ln83_fu_123_p2 == 1'd0))) & (1'b1 == ap_CS_fsm_state1))) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start_int == 1'b0) | ((1'b0 == INPUT_STREAM_TVALID) & (icmp_ln83_fu_123_p2 == 1'd0))) & (icmp_ln83_fu_123_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        a_we0 = 1'b1;
    end else begin
        a_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) | ((1'b0 == INPUT_STREAM_TVALID) & (icmp_ln83_fu_123_p2 == 1'd0)))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start_int == 1'b0) | ((1'b0 == INPUT_STREAM_TVALID) & (icmp_ln83_fu_123_p2 == 1'd0))) & (icmp_ln83_fu_123_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start_int == 1'b0) | ((1'b0 == INPUT_STREAM_TVALID) & (icmp_ln83_fu_123_p2 == 1'd0))) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start_int == 1'b0) | ((1'b0 == INPUT_STREAM_TVALID) & (icmp_ln83_fu_123_p2 == 1'd0))) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_66;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_70;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_j_load = 6'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_62;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address0 = zext_ln91_1_fu_191_p1;

assign a_d0 = INPUT_STREAM_TDATA;

assign add_ln83_1_fu_129_p2 = (ap_sig_allocacmp_indvar_flatten_load + 11'd1);

assign add_ln83_fu_141_p2 = (ap_sig_allocacmp_i_load + 6'd1);

assign add_ln84_fu_205_p2 = (select_ln83_fu_153_p3 + 6'd1);

assign add_ln91_fu_185_p2 = (tmp_fu_173_p3 + zext_ln91_fu_181_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start_int == 1'b0) | ((1'b0 == INPUT_STREAM_TVALID) & (icmp_ln83_fu_123_p2 == 1'd0)));
end

always @ (*) begin
    ap_condition_187 = (~((ap_start_int == 1'b0) | ((1'b0 == INPUT_STREAM_TVALID) & (icmp_ln83_fu_123_p2 == 1'd0))) & (1'b1 == ap_CS_fsm_state1));
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln83_fu_123_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 11'd1024) ? 1'b1 : 1'b0);

assign icmp_ln84_fu_147_p2 = ((ap_sig_allocacmp_j_load == 6'd32) ? 1'b1 : 1'b0);

assign select_ln83_1_fu_161_p3 = ((icmp_ln84_fu_147_p2[0:0] == 1'b1) ? add_ln83_fu_141_p2 : ap_sig_allocacmp_i_load);

assign select_ln83_fu_153_p3 = ((icmp_ln84_fu_147_p2[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_j_load);

assign tmp_fu_173_p3 = {{trunc_ln91_fu_169_p1}, {5'd0}};

assign trunc_ln91_fu_169_p1 = select_ln83_1_fu_161_p3[4:0];

assign zext_ln91_1_fu_191_p1 = add_ln91_fu_185_p2;

assign zext_ln91_fu_181_p1 = select_ln83_fu_153_p3;

endmodule //mmult_hw_wrapped_mmult_hw_wrapped_Pipeline_VITIS_LOOP_83_1_VITIS_LOOP_84_2
