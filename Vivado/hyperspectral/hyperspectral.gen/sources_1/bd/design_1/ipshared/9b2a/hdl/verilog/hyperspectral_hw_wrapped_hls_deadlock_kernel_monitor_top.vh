
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [4:0] axis_block_sigs;
wire [4:0] inst_idle_sigs;
wire [0:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~out_stream_TDATA_blk_n;
assign axis_block_sigs[1] = ~grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_100_1_VITIS_LOOP_101_2_VITIS_LOOP_1_fu_239.in_stream_TDATA_blk_n;
assign axis_block_sigs[2] = ~grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_114_5_fu_258.in_stream_TDATA_blk_n;
assign axis_block_sigs[3] = ~grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_129_6_fu_305.out_stream_TDATA_blk_n;
assign axis_block_sigs[4] = ~grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_161_7_fu_325.out_stream_TDATA_blk_n;

assign inst_block_sigs[0] = 1'b0;

assign inst_idle_sigs[0] = 1'b0;
assign inst_idle_sigs[1] = grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_100_1_VITIS_LOOP_101_2_VITIS_LOOP_1_fu_239.ap_idle;
assign inst_idle_sigs[2] = grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_114_5_fu_258.ap_idle;
assign inst_idle_sigs[3] = grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_129_6_fu_305.ap_idle;
assign inst_idle_sigs[4] = grp_hyperspectral_hw_wrapped_Pipeline_VITIS_LOOP_161_7_fu_325.ap_idle;

hyperspectral_hw_wrapped_hls_deadlock_idx0_monitor hyperspectral_hw_wrapped_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
