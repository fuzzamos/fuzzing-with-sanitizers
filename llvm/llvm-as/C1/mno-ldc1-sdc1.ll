

















































@g0 = common global double 0.000000e+00, align 8




























































define double @test_ldc1() {
entry:
  %0 = load double, double* @g0, align 8
  ret double %0
}




























































define void @test_sdc1(double %a) {
entry:
  store double %a, double* @g0, align 8
  ret void
}































define double @test_ldxc1(double* nocapture readonly %a, i32 %i) {
entry:
  %arrayidx = getelementptr inbounds double, double* %a, i32 %i
  %0 = load double, double* %arrayidx, align 8
  ret double %0
}

























define void @test_sdxc1(double %b, double* nocapture %a, i32 %i) {
entry:
  %arrayidx = getelementptr inbounds double, double* %a, i32 %i
  store double %b, double* %arrayidx, align 8
  ret void
}
