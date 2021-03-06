





define void @main(<4 x float> inreg %reg0, <4 x float> inreg %reg1, <4 x float> inreg %reg2) #0 {
   %w0 = extractelement <4 x float> %reg0, i32 3
   %w1 = extractelement <4 x float> %reg1, i32 3
   %w2 = extractelement <4 x float> %reg2, i32 3
   %sq0 = fmul float %w0, %w0
   %r0 = fadd float %sq0, 2.0
   %sq1 = fmul float %w1, %w1
   %r1 = fadd float %sq1, 2.0
   %sq2 = fmul float %w2, %w2
   %r2 = fadd float %sq2, 2.0
   %v0 = insertelement <4 x float> undef, float %r0, i32 0
   %v1 = insertelement <4 x float> %v0, float %r1, i32 1
   %v2 = insertelement <4 x float> %v1, float %r2, i32 2
   %res = call float @llvm.AMDGPU.dp4(<4 x float> %v2, <4 x float> %v2)
   %vecres = insertelement <4 x float> undef, float %res, i32 0
   call void @llvm.R600.store.swizzle(<4 x float> %vecres, i32 0, i32 2)
   ret void
}


declare float @llvm.AMDGPU.dp4(<4 x float>, <4 x float>) #1

declare void @llvm.R600.store.swizzle(<4 x float>, i32, i32)

attributes #0 = { "ShaderType"="1" }
attributes #1 = { readnone }