


define <4 x float> @merge_2_floats(float* nocapture %p) nounwind readonly {
  %tmp1 = load float, float* %p
  %vecins = insertelement <4 x float> undef, float %tmp1, i32 0
  %add.ptr = getelementptr float, float* %p, i32 1
  %tmp5 = load float, float* %add.ptr
  %vecins7 = insertelement <4 x float> %vecins, float %tmp5, i32 1
  ret <4 x float> %vecins7




}



define <4 x i64> @merge_2_floats_into_4() {
  %1 = load i64*, i64** undef, align 8
  %2 = getelementptr inbounds i64, i64* %1, i64 0
  %3 = load i64, i64* %2
  %4 = insertelement <4 x i64> undef, i64 %3, i32 0
  %5 = load i64*, i64** undef, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 1
  %7 = load i64, i64* %6
  %8 = insertelement <4 x i64> %4, i64 %7, i32 1
  %9 = shufflevector <4 x i64> %8, <4 x i64> undef, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  ret <4 x i64> %9
  



}

define <4 x float> @merge_4_floats(float* %ptr) {
  %a = load float, float* %ptr, align 8
  %vec = insertelement <4 x float> undef, float %a, i32 0
  %idx1 = getelementptr inbounds float, float* %ptr, i64 1
  %b = load float, float* %idx1, align 8
  %vec2 = insertelement <4 x float> %vec, float %b, i32 1
  %idx3 = getelementptr inbounds float, float* %ptr, i64 2
  %c = load float, float* %idx3, align 8
  %vec4 = insertelement <4 x float> %vec2, float %c, i32 2
  %idx5 = getelementptr inbounds float, float* %ptr, i64 3
  %d = load float, float* %idx5, align 8
  %vec6 = insertelement <4 x float> %vec4, float %d, i32 3
  ret <4 x float> %vec6




}






define <8 x float> @merge_8_floats(float* %ptr) {
  %a = load float, float* %ptr, align 4
  %vec = insertelement <8 x float> undef, float %a, i32 0
  %idx1 = getelementptr inbounds float, float* %ptr, i64 1
  %b = load float, float* %idx1, align 4
  %vec2 = insertelement <8 x float> %vec, float %b, i32 1
  %idx3 = getelementptr inbounds float, float* %ptr, i64 2
  %c = load float, float* %idx3, align 4
  %vec4 = insertelement <8 x float> %vec2, float %c, i32 2
  %idx5 = getelementptr inbounds float, float* %ptr, i64 3
  %d = load float, float* %idx5, align 4
  %vec6 = insertelement <8 x float> %vec4, float %d, i32 3
  %idx7 = getelementptr inbounds float, float* %ptr, i64 4
  %e = load float, float* %idx7, align 4
  %vec8 = insertelement <8 x float> %vec6, float %e, i32 4
  %idx9 = getelementptr inbounds float, float* %ptr, i64 5
  %f = load float, float* %idx9, align 4
  %vec10 = insertelement <8 x float> %vec8, float %f, i32 5
  %idx11 = getelementptr inbounds float, float* %ptr, i64 6
  %g = load float, float* %idx11, align 4
  %vec12 = insertelement <8 x float> %vec10, float %g, i32 6
  %idx13 = getelementptr inbounds float, float* %ptr, i64 7
  %h = load float, float* %idx13, align 4
  %vec14 = insertelement <8 x float> %vec12, float %h, i32 7
  ret <8 x float> %vec14









}

define <4 x double> @merge_4_doubles(double* %ptr) {
  %a = load double, double* %ptr, align 8
  %vec = insertelement <4 x double> undef, double %a, i32 0
  %idx1 = getelementptr inbounds double, double* %ptr, i64 1
  %b = load double, double* %idx1, align 8
  %vec2 = insertelement <4 x double> %vec, double %b, i32 1
  %idx3 = getelementptr inbounds double, double* %ptr, i64 2
  %c = load double, double* %idx3, align 8
  %vec4 = insertelement <4 x double> %vec2, double %c, i32 2
  %idx5 = getelementptr inbounds double, double* %ptr, i64 3
  %d = load double, double* %idx5, align 8
  %vec6 = insertelement <4 x double> %vec4, double %d, i32 3
  ret <4 x double> %vec6








}




define <4 x double> @merge_4_doubles_offset(double* %ptr) {
  %arrayidx4 = getelementptr inbounds double, double* %ptr, i64 4
  %arrayidx5 = getelementptr inbounds double, double* %ptr, i64 5
  %arrayidx6 = getelementptr inbounds double, double* %ptr, i64 6
  %arrayidx7 = getelementptr inbounds double, double* %ptr, i64 7
  %e = load double, double* %arrayidx4, align 8
  %f = load double, double* %arrayidx5, align 8
  %g = load double, double* %arrayidx6, align 8
  %h = load double, double* %arrayidx7, align 8
  %vecinit4 = insertelement <4 x double> undef, double %e, i32 0
  %vecinit5 = insertelement <4 x double> %vecinit4, double %f, i32 1
  %vecinit6 = insertelement <4 x double> %vecinit5, double %g, i32 2
  %vecinit7 = insertelement <4 x double> %vecinit6, double %h, i32 3
  ret <4 x double> %vecinit7








}

