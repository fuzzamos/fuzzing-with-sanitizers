






define float @f1(float %x) nounwind noinline {
entry:
	%"alloca point" = bitcast i32 0 to i32		
	%0 = call float @llvm.exp.f32(float %x)		
	ret float %0
}

declare float @llvm.exp.f32(float) nounwind readonly

define float @f2(float %x) nounwind noinline {
entry:
	%"alloca point" = bitcast i32 0 to i32		
	%0 = call float @llvm.exp2.f32(float %x)		
	ret float %0
}

declare float @llvm.exp2.f32(float) nounwind readonly

define float @f3(float %x) nounwind noinline {
entry:
	%"alloca point" = bitcast i32 0 to i32		
	%0 = call float @llvm.pow.f32(float 1.000000e+01, float %x)		
	ret float %0
}

declare float @llvm.pow.f32(float, float) nounwind readonly

define float @f4(float %x) nounwind noinline {
entry:
	%"alloca point" = bitcast i32 0 to i32		
	%0 = call float @llvm.log.f32(float %x)		
	ret float %0
}

declare float @llvm.log.f32(float) nounwind readonly

define float @f5(float %x) nounwind noinline {
entry:
	%"alloca point" = bitcast i32 0 to i32		
	%0 = call float @llvm.log2.f32(float %x)		
	ret float %0
}

declare float @llvm.log2.f32(float) nounwind readonly

define float @f6(float %x) nounwind noinline {
entry:
	%"alloca point" = bitcast i32 0 to i32		
	%0 = call float @llvm.log10.f32(float %x)		
	ret float %0
}

declare float @llvm.log10.f32(float) nounwind readonly
