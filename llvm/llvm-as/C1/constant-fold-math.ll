

declare float @llvm.fma.f32(float, float, float) #0
declare float @llvm.fmuladd.f32(float, float, float) #0
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #0

declare double @llvm.fma.f64(double, double, double) #0
declare double @llvm.fmuladd.f64(double, double, double) #0

declare double @llvm.sqrt.f64(double) #0




define float @constant_fold_fma_f32() #0 {
  %x = call float @llvm.fma.f32(float 1.0, float 2.0, float 4.0) #0
  ret float %x
}



define <4 x float> @constant_fold_fma_v4f32() #0 {
  %x = call <4 x float> @llvm.fma.v4f32(<4 x float> <float 1.0, float 2.0, float 3.0, float 4.0>, <4 x float> <float 2.0, float 2.0, float 2.0, float 2.0>, <4 x float> <float 10.0, float 10.0, float 10.0, float 10.0>)
  ret <4 x float> %x
}



define float @constant_fold_fmuladd_f32() #0 {
  %x = call float @llvm.fmuladd.f32(float 1.0, float 2.0, float 4.0) #0
  ret float %x
}



define double @constant_fold_fma_f64() #0 {
  %x = call double @llvm.fma.f64(double 1.0, double 2.0, double 4.0) #0
  ret double %x
}



define double @constant_fold_fmuladd_f64() #0 {
  %x = call double @llvm.fmuladd.f64(double 1.0, double 2.0, double 4.0) #0
  ret double %x
}




define double @bad_sqrt() {
  %x = call double @llvm.sqrt.f64(double -2.000000e+00)
  ret double %x
}

attributes #0 = { nounwind readnone }
