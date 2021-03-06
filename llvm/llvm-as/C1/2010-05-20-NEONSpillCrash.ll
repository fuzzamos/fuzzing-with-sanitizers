




%struct.__neon_int8x8x3_t = type { <8 x i8>, <8 x i8>, <8 x i8> }

declare %struct.__neon_int8x8x3_t @llvm.arm.neon.vld3.v8i8(i8*, i32) nounwind readonly

declare void @llvm.arm.neon.vst3.v8i8(i8*, <8 x i8>, <8 x i8>, <8 x i8>, i32) nounwind

define <8 x i8> @t3(i8* %A1, i8* %A2, i8* %A3, i8* %A4, i8* %A5, i8* %A6, i8* %A7, i8* %A8, i8* %B) nounwind {
  %tmp1b = call %struct.__neon_int8x8x3_t @llvm.arm.neon.vld3.v8i8(i8* %A2, i32 1) 
  %tmp2b = extractvalue %struct.__neon_int8x8x3_t %tmp1b, 0 
  %tmp4b = extractvalue %struct.__neon_int8x8x3_t %tmp1b, 1 
  %tmp1d = call %struct.__neon_int8x8x3_t @llvm.arm.neon.vld3.v8i8(i8* %A4, i32 1) 
  %tmp2d = extractvalue %struct.__neon_int8x8x3_t %tmp1d, 0 
  %tmp4d = extractvalue %struct.__neon_int8x8x3_t %tmp1d, 1 
  %tmp1e = call %struct.__neon_int8x8x3_t @llvm.arm.neon.vld3.v8i8(i8* %A5, i32 1) 
  %tmp2e = extractvalue %struct.__neon_int8x8x3_t %tmp1e, 0 
  %tmp1f = call %struct.__neon_int8x8x3_t @llvm.arm.neon.vld3.v8i8(i8* %A6, i32 1) 
  %tmp2f = extractvalue %struct.__neon_int8x8x3_t %tmp1f, 0 
  %tmp1g = call %struct.__neon_int8x8x3_t @llvm.arm.neon.vld3.v8i8(i8* %A7, i32 1) 
  %tmp2g = extractvalue %struct.__neon_int8x8x3_t %tmp1g, 0 
  %tmp4g = extractvalue %struct.__neon_int8x8x3_t %tmp1g, 1 
  %tmp1h = call %struct.__neon_int8x8x3_t @llvm.arm.neon.vld3.v8i8(i8* %A8, i32 1) 
  %tmp2h = extractvalue %struct.__neon_int8x8x3_t %tmp1h, 0 
  %tmp3h = extractvalue %struct.__neon_int8x8x3_t %tmp1h, 2 
  %tmp2bd = add <8 x i8> %tmp2b, %tmp2d           
  %tmp4bd = add <8 x i8> %tmp4b, %tmp4d           
  %tmp2abcd = mul <8 x i8> undef, %tmp2bd         
  %tmp4abcd = mul <8 x i8> undef, %tmp4bd         
  call void @llvm.arm.neon.vst3.v8i8(i8* %A1, <8 x i8> %tmp4abcd, <8 x i8> zeroinitializer, <8 x i8> %tmp2abcd, i32 1)
  %tmp2ef = sub <8 x i8> %tmp2e, %tmp2f           
  %tmp2gh = sub <8 x i8> %tmp2g, %tmp2h           
  %tmp3gh = sub <8 x i8> zeroinitializer, %tmp3h  
  %tmp4ef = sub <8 x i8> zeroinitializer, %tmp4g  
  %tmp2efgh = mul <8 x i8> %tmp2ef, %tmp2gh       
  %tmp3efgh = mul <8 x i8> undef, %tmp3gh         
  %tmp4efgh = mul <8 x i8> %tmp4ef, undef         
  call void @llvm.arm.neon.vst3.v8i8(i8* %A2, <8 x i8> %tmp4efgh, <8 x i8> %tmp3efgh, <8 x i8> %tmp2efgh, i32 1)
  %tmp4 = sub <8 x i8> %tmp4efgh, %tmp4abcd       
  tail call void @llvm.arm.neon.vst3.v8i8(i8* %B, <8 x i8> zeroinitializer, <8 x i8> undef, <8 x i8> undef, i32 1)
  ret <8 x i8> %tmp4
}
