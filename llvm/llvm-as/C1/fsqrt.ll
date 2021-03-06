









define void @fsqrt_f32(float addrspace(1)* %out, float addrspace(1)* %in) {
   %r0 = load float, float addrspace(1)* %in
   %r1 = call float @llvm.sqrt.f32(float %r0)
   store float %r1, float addrspace(1)* %out
   ret void
}




define void @fsqrt_f64(double addrspace(1)* %out, double addrspace(1)* %in) {
   %r0 = load double, double addrspace(1)* %in
   %r1 = call double @llvm.sqrt.f64(double %r0)
   store double %r1, double addrspace(1)* %out
   ret void
}

declare float @llvm.sqrt.f32(float %Val)
declare double @llvm.sqrt.f64(double %Val)
