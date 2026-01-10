// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

extern "C" void AESL_WRAP_pfb_multichannel (
hls::stream<int > din_data_i0,
hls::stream<int > din_data_q0,
hls::stream<int > din_data_i1,
hls::stream<int > din_data_q1,
hls::stream<int > din_data_i2,
hls::stream<int > din_data_q2,
hls::stream<int > din_data_i3,
hls::stream<int > din_data_q3,
hls::stream<int > dout_data_0,
hls::stream<int > dout_data_1,
hls::stream<int > dout_data_2,
hls::stream<int > dout_data_3,
volatile void* coeff);
