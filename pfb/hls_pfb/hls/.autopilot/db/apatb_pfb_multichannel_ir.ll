; ModuleID = '/home/brett/Documents/FX_Correlator/pfb/hls_pfb/hls_pfb/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>" = type { %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 1, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 1, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }
%"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>" = type { %"struct.ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<32, 1, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<32, 1, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_pfb_multichannel_ir(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %din_data_i0, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %din_data_q0, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %din_data_i1, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %din_data_q1, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %din_data_i2, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %din_data_q2, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %din_data_i3, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %din_data_q3, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(4) %dout_data_0, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(4) %dout_data_1, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(4) %dout_data_2, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(4) %dout_data_3, %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4096" "maxi" %coeff) local_unnamed_addr #1 {
entry:
  %din_data_i0_copy = alloca i16, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i16* %din_data_i0_copy, i32 0) ]
  %din_data_q0_copy = alloca i16, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i16* %din_data_q0_copy, i32 0) ]
  %din_data_i1_copy = alloca i16, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i16* %din_data_i1_copy, i32 0) ]
  %din_data_q1_copy = alloca i16, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i16* %din_data_q1_copy, i32 0) ]
  %din_data_i2_copy = alloca i16, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i16* %din_data_i2_copy, i32 0) ]
  %din_data_q2_copy = alloca i16, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i16* %din_data_q2_copy, i32 0) ]
  %din_data_i3_copy = alloca i16, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i16* %din_data_i3_copy, i32 0) ]
  %din_data_q3_copy = alloca i16, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i16* %din_data_q3_copy, i32 0) ]
  %dout_data_0_copy = alloca i32, align 512
  call void @llvm.sideeffect() #10 [ "stream_interface"(i32* %dout_data_0_copy, i32 0) ]
  %dout_data_1_copy = alloca i32, align 512
  call void @llvm.sideeffect() #10 [ "stream_interface"(i32* %dout_data_1_copy, i32 0) ]
  %dout_data_2_copy = alloca i32, align 512
  call void @llvm.sideeffect() #10 [ "stream_interface"(i32* %dout_data_2_copy, i32 0) ]
  %dout_data_3_copy = alloca i32, align 512
  call void @llvm.sideeffect() #10 [ "stream_interface"(i32* %dout_data_3_copy, i32 0) ]
  %malloccall = call i8* @malloc(i64 8192)
  %coeff_copy = bitcast i8* %malloccall to [4096 x i16]*
  %0 = bitcast %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"* %coeff to [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]*
  call fastcc void @copy_in(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %din_data_i0, i16* nonnull align 512 %din_data_i0_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %din_data_q0, i16* nonnull align 512 %din_data_q0_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %din_data_i1, i16* nonnull align 512 %din_data_i1_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %din_data_q1, i16* nonnull align 512 %din_data_q1_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %din_data_i2, i16* nonnull align 512 %din_data_i2_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %din_data_q2, i16* nonnull align 512 %din_data_q2_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %din_data_i3, i16* nonnull align 512 %din_data_i3_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %din_data_q3, i16* nonnull align 512 %din_data_q3_copy, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %dout_data_0, i32* nonnull align 512 %dout_data_0_copy, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %dout_data_1, i32* nonnull align 512 %dout_data_1_copy, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %dout_data_2, i32* nonnull align 512 %dout_data_2_copy, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %dout_data_3, i32* nonnull align 512 %dout_data_3_copy, [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* nonnull %0, [4096 x i16]* %coeff_copy)
  call void @apatb_pfb_multichannel_hw(i16* %din_data_i0_copy, i16* %din_data_q0_copy, i16* %din_data_i1_copy, i16* %din_data_q1_copy, i16* %din_data_i2_copy, i16* %din_data_q2_copy, i16* %din_data_i3_copy, i16* %din_data_q3_copy, i32* %dout_data_0_copy, i32* %dout_data_1_copy, i32* %dout_data_2_copy, i32* %dout_data_3_copy, [4096 x i16]* %coeff_copy)
  call void @copy_back(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %din_data_i0, i16* %din_data_i0_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %din_data_q0, i16* %din_data_q0_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %din_data_i1, i16* %din_data_i1_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %din_data_q1, i16* %din_data_q1_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %din_data_i2, i16* %din_data_i2_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %din_data_q2, i16* %din_data_q2_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %din_data_i3, i16* %din_data_i3_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %din_data_q3, i16* %din_data_q3_copy, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %dout_data_0, i32* %dout_data_0_copy, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %dout_data_1, i32* %dout_data_1_copy, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %dout_data_2, i32* %dout_data_2_copy, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %dout_data_3, i32* %dout_data_3_copy, [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* %0, [4096 x i16]* %coeff_copy)
  call void @free(i8* %malloccall)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="0", i16* noalias nocapture align 512 "unpacked"="1.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="2", i16* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="4", i16* noalias nocapture align 512 "unpacked"="5.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="6", i16* noalias nocapture align 512 "unpacked"="7.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="8", i16* noalias nocapture align 512 "unpacked"="9.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="10", i16* noalias nocapture align 512 "unpacked"="11.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="12", i16* noalias nocapture align 512 "unpacked"="13.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="14", i16* noalias nocapture align 512 "unpacked"="15.0", %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="16", i32* noalias nocapture align 512 "unpacked"="17.0", %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="18", i32* noalias nocapture align 512 "unpacked"="19.0", %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="20", i32* noalias nocapture align 512 "unpacked"="21.0", %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="22", i32* noalias nocapture align 512 "unpacked"="23.0", [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="24", [4096 x i16]* noalias nocapture "unpacked"="25.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(i16* align 512 %1, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(i16* align 512 %3, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(i16* align 512 %5, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(i16* align 512 %7, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(i16* align 512 %9, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(i16* align 512 %11, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(i16* align 512 %13, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %12)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(i16* align 512 %15, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %14)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"(i32* align 512 %17, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %16)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"(i32* align 512 %19, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %18)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"(i32* align 512 %21, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %20)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"(i32* align 512 %23, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %22)
  call fastcc void @"onebyonecpy_hls.p0a4096struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"([4096 x i16]* %25, [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* %24)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a4096struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"([4096 x i16]* noalias nocapture "unpacked"="0.0" %dst, [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a4096struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"([4096 x i16]* %dst, [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 4096)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a4096struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"([4096 x i16]* nocapture "unpacked"="0.0" %dst, [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"], [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [4096 x i16], [4096 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="0", i16* noalias nocapture align 512 "unpacked"="1.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="2", i16* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="4", i16* noalias nocapture align 512 "unpacked"="5.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="6", i16* noalias nocapture align 512 "unpacked"="7.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="8", i16* noalias nocapture align 512 "unpacked"="9.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="10", i16* noalias nocapture align 512 "unpacked"="11.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="12", i16* noalias nocapture align 512 "unpacked"="13.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="14", i16* noalias nocapture align 512 "unpacked"="15.0", %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="16", i32* noalias nocapture align 512 "unpacked"="17.0", %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="18", i32* noalias nocapture align 512 "unpacked"="19.0", %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="20", i32* noalias nocapture align 512 "unpacked"="21.0", %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="22", i32* noalias nocapture align 512 "unpacked"="23.0", [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="24", [4096 x i16]* noalias nocapture readonly "unpacked"="25.0") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.103"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %0, i16* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.103"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %2, i16* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.103"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %4, i16* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.103"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %6, i16* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.103"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %8, i16* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.103"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %10, i16* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.103"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %12, i16* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.103"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %14, i16* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>.74"(%"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %16, i32* align 512 %17)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>.74"(%"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %18, i32* align 512 %19)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>.74"(%"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %20, i32* align 512 %21)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>.74"(%"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %22, i32* align 512 %23)
  call fastcc void @"onebyonecpy_hls.p0a4096struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>.57"([4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* %24, [4096 x i16]* %25)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a4096struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>.57"([4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [4096 x i16]* noalias nocapture readonly "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a4096struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>.60"([4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [4096 x i16]* %src, i64 4096)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a4096struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>.60"([4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [4096 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [4096 x i16], [4096 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"], [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"(i32* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="1" %src) unnamed_addr #6 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>.70"(i32* align 512 %dst, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>.70"(i32* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #7 {
entry:
  %2 = alloca %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %3 = alloca i32
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>", %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>" %8, 0, 0, 0, 0
  store i32 %.evi, i32* %3
  %9 = bitcast i32* %3 to i8*
  %10 = bitcast i32* %0 to i8*
  call void @fpga_fifo_push_4(i8* %9, i8* %10)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>.74"(%"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="0" %dst, i32* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #6 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>.77"(%"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %dst, i32* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>.77"(%"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture "unpacked"="0", i32* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #7 {
entry:
  %2 = alloca i32
  %3 = alloca %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i32* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i32* %2 to i8*
  %7 = bitcast i32* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile i32, i32* %2
  %.ivi = insertvalue %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>" undef, i32 %8, 0, 0, 0, 0
  store %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>" %.ivi, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %3
  %9 = bitcast %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %9, i8* %10)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(i16* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="1" %src) unnamed_addr #6 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.99"(i16* align 512 %dst, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.99"(i16* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #7 {
entry:
  %2 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %3 = alloca i16
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_2(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>" %8, 0, 0, 0, 0
  store i16 %.evi, i16* %3
  %9 = bitcast i16* %3 to i8*
  %10 = bitcast i16* %0 to i8*
  call void @fpga_fifo_push_2(i8* %9, i8* %10)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.103"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="0" %dst, i16* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #6 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.106"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %dst, i16* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.106"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture "unpacked"="0", i16* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #7 {
entry:
  %2 = alloca i16
  %3 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i16* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_2(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i16* %2 to i8*
  %7 = bitcast i16* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %6, i8* %7)
  %8 = load volatile i16, i16* %2
  %.ivi = insertvalue %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>" undef, i16 %8, 0, 0, 0, 0
  store %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>" %.ivi, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %3
  %9 = bitcast %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_2(i8* %9, i8* %10)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_pfb_multichannel_hw(i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i32*, i32*, i32*, i32*, [4096 x i16]*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="0", i16* noalias nocapture align 512 "unpacked"="1.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="2", i16* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="4", i16* noalias nocapture align 512 "unpacked"="5.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="6", i16* noalias nocapture align 512 "unpacked"="7.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="8", i16* noalias nocapture align 512 "unpacked"="9.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="10", i16* noalias nocapture align 512 "unpacked"="11.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="12", i16* noalias nocapture align 512 "unpacked"="13.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="14", i16* noalias nocapture align 512 "unpacked"="15.0", %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="16", i32* noalias nocapture align 512 "unpacked"="17.0", %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="18", i32* noalias nocapture align 512 "unpacked"="19.0", %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="20", i32* noalias nocapture align 512 "unpacked"="21.0", %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="22", i32* noalias nocapture align 512 "unpacked"="23.0", [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="24", [4096 x i16]* noalias nocapture readonly "unpacked"="25.0") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.103"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %0, i16* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.103"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %2, i16* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.103"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %4, i16* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.103"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %6, i16* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.103"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %8, i16* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.103"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %10, i16* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.103"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %12, i16* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.103"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %14, i16* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>.74"(%"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %16, i32* align 512 %17)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>.74"(%"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %18, i32* align 512 %19)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>.74"(%"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %20, i32* align 512 %21)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>.74"(%"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %22, i32* align 512 %23)
  ret void
}

define void @pfb_multichannel_hw_stub_wrapper(i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i32*, i32*, i32*, i32*, [4096 x i16]*) #8 {
entry:
  %13 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %14 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %15 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %16 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %17 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %18 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %19 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %20 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %21 = alloca %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %22 = alloca %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %23 = alloca %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %24 = alloca %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %malloccall = tail call i8* @malloc(i64 8192)
  %25 = bitcast i8* %malloccall to [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]*
  call void @copy_out(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %13, i16* %0, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %14, i16* %1, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %15, i16* %2, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %16, i16* %3, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %17, i16* %4, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %18, i16* %5, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %19, i16* %6, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %20, i16* %7, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %21, i32* %8, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %22, i32* %9, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %23, i32* %10, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %24, i32* %11, [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* %25, [4096 x i16]* %12)
  %26 = bitcast [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* %25 to %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"*
  call void @pfb_multichannel_hw_stub(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %13, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %14, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %15, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %16, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %17, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %18, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %19, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %20, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %21, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %22, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %23, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %24, %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"* %26)
  call void @copy_in(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %13, i16* %0, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %14, i16* %1, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %15, i16* %2, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %16, i16* %3, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %17, i16* %4, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %18, i16* %5, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %19, i16* %6, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %20, i16* %7, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %21, i32* %8, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %22, i32* %9, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %23, i32* %10, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"* %24, i32* %11, [4096 x %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"]* %25, [4096 x i16]* %12)
  ret void
}

declare void @pfb_multichannel_hw_stub(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<32, 1, AP_TRN, AP_WRAP, 0>, 0>"*, %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>"*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #7 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #8 = { "fpga.wrapper.func"="stub" }
attributes #9 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="16" "xlx.source"="user" }
attributes #10 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="32" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
