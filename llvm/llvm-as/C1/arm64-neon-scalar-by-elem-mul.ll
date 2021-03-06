

define float @test_fmul_lane_ss2S(float %a, <2 x float> %v) {
  
  
  %tmp1 = extractelement <2 x float> %v, i32 1
  %tmp2 = fmul float %a, %tmp1
  ret float %tmp2
}

define float @test_fmul_lane_ss2S_swap(float %a, <2 x float> %v) {
  
  
  %tmp1 = extractelement <2 x float> %v, i32 1
  %tmp2 = fmul float %tmp1, %a
  ret float %tmp2
}


define float @test_fmul_lane_ss4S(float %a, <4 x float> %v) {
  
  
  %tmp1 = extractelement <4 x float> %v, i32 3
  %tmp2 = fmul float %a, %tmp1
  ret float %tmp2
}

define float @test_fmul_lane_ss4S_swap(float %a, <4 x float> %v) {
  
  
  %tmp1 = extractelement <4 x float> %v, i32 3
  %tmp2 = fmul float %tmp1, %a
  ret float %tmp2
}


define double @test_fmul_lane_ddD(double %a, <1 x double> %v) {
  
  
  %tmp1 = extractelement <1 x double> %v, i32 0
  %tmp2 = fmul double %a, %tmp1
  ret double %tmp2
}



define double @test_fmul_lane_dd2D(double %a, <2 x double> %v) {
  
  
  %tmp1 = extractelement <2 x double> %v, i32 1
  %tmp2 = fmul double %a, %tmp1
  ret double %tmp2
}


define double @test_fmul_lane_dd2D_swap(double %a, <2 x double> %v) {
  
  
  %tmp1 = extractelement <2 x double> %v, i32 1
  %tmp2 = fmul double %tmp1, %a
  ret double %tmp2
}

declare float @llvm.aarch64.neon.fmulx.f32(float, float)

define float @test_fmulx_lane_f32(float %a, <2 x float> %v) {
  
  
  %tmp1 = extractelement <2 x float> %v, i32 1
  %tmp2 = call float @llvm.aarch64.neon.fmulx.f32(float %a, float %tmp1)
  ret float %tmp2
}

define float @test_fmulx_laneq_f32(float %a, <4 x float> %v) {
  
  
  %tmp1 = extractelement <4 x float> %v, i32 3
  %tmp2 = call float @llvm.aarch64.neon.fmulx.f32(float %a, float %tmp1)
  ret float %tmp2
}

define float @test_fmulx_laneq_f32_swap(float %a, <4 x float> %v) {
  
  
  %tmp1 = extractelement <4 x float> %v, i32 3
  %tmp2 = call float @llvm.aarch64.neon.fmulx.f32(float %tmp1, float %a)
  ret float %tmp2
}

declare double @llvm.aarch64.neon.fmulx.f64(double, double)

define double @test_fmulx_lane_f64(double %a, <1 x double> %v) {
  
  
  %tmp1 = extractelement <1 x double> %v, i32 0
  %tmp2 = call double @llvm.aarch64.neon.fmulx.f64(double %a, double %tmp1)
  ret double %tmp2
}

define double @test_fmulx_laneq_f64_0(double %a, <2 x double> %v) {
  
  
  %tmp1 = extractelement <2 x double> %v, i32 0
  %tmp2 = call double @llvm.aarch64.neon.fmulx.f64(double %a, double %tmp1)
  ret double %tmp2
}


define double @test_fmulx_laneq_f64_1(double %a, <2 x double> %v) {
  
  
  %tmp1 = extractelement <2 x double> %v, i32 1
  %tmp2 = call double @llvm.aarch64.neon.fmulx.f64(double %a, double %tmp1)
  ret double %tmp2
}

define double @test_fmulx_laneq_f64_1_swap(double %a, <2 x double> %v) {
  
  
  %tmp1 = extractelement <2 x double> %v, i32 1
  %tmp2 = call double @llvm.aarch64.neon.fmulx.f64(double %tmp1, double %a)
  ret double %tmp2
}

