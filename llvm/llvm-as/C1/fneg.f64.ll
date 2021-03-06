




define void @fneg_f64(double addrspace(1)* %out, double %in) {
  %fneg = fsub double -0.000000e+00, %in
  store double %fneg, double addrspace(1)* %out
  ret void
}




define void @fneg_v2f64(<2 x double> addrspace(1)* nocapture %out, <2 x double> %in) {
  %fneg = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %in
  store <2 x double> %fneg, <2 x double> addrspace(1)* %out
  ret void
}











define void @fneg_v4f64(<4 x double> addrspace(1)* nocapture %out, <4 x double> %in) {
  %fneg = fsub <4 x double> <double -0.000000e+00, double -0.000000e+00, double -0.000000e+00, double -0.000000e+00>, %in
  store <4 x double> %fneg, <4 x double> addrspace(1)* %out
  ret void
}







define void @fneg_free_f64(double addrspace(1)* %out, i64 %in) {
  %bc = bitcast i64 %in to double
  %fsub = fsub double 0.0, %bc
  store double %fsub, double addrspace(1)* %out
  ret void
}






define void @fneg_fold_f64(double addrspace(1)* %out, double %in) {
  %fsub = fsub double -0.0, %in
  %fmul = fmul double %fsub, %in
  store double %fmul, double addrspace(1)* %out
  ret void
}
