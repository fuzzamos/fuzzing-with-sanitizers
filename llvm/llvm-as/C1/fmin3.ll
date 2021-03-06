



declare float @llvm.minnum.f32(float, float) nounwind readnone








define void @test_fmin3_olt_0(float addrspace(1)* %out, float addrspace(1)* %aptr, float addrspace(1)* %bptr, float addrspace(1)* %cptr) nounwind {
  %a = load float, float addrspace(1)* %aptr, align 4
  %b = load float, float addrspace(1)* %bptr, align 4
  %c = load float, float addrspace(1)* %cptr, align 4
  %f0 = call float @llvm.minnum.f32(float %a, float %b) nounwind readnone
  %f1 = call float @llvm.minnum.f32(float %f0, float %c) nounwind readnone
  store float %f1, float addrspace(1)* %out, align 4
  ret void
}









define void @test_fmin3_olt_1(float addrspace(1)* %out, float addrspace(1)* %aptr, float addrspace(1)* %bptr, float addrspace(1)* %cptr) nounwind {
  %a = load float, float addrspace(1)* %aptr, align 4
  %b = load float, float addrspace(1)* %bptr, align 4
  %c = load float, float addrspace(1)* %cptr, align 4
  %f0 = call float @llvm.minnum.f32(float %a, float %b) nounwind readnone
  %f1 = call float @llvm.minnum.f32(float %c, float %f0) nounwind readnone
  store float %f1, float addrspace(1)* %out, align 4
  ret void
}
