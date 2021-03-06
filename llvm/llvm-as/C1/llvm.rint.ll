







define void @rint_f32(float addrspace(1)* %out, float %in) {
entry:
  %0 = call float @llvm.rint.f32(float %in) #0
  store float %0, float addrspace(1)* %out
  ret void
}







define void @rint_v2f32(<2 x float> addrspace(1)* %out, <2 x float> %in) {
entry:
  %0 = call <2 x float> @llvm.rint.v2f32(<2 x float> %in) #0
  store <2 x float> %0, <2 x float> addrspace(1)* %out
  ret void
}











define void @rint_v4f32(<4 x float> addrspace(1)* %out, <4 x float> %in) {
entry:
  %0 = call <4 x float> @llvm.rint.v4f32(<4 x float> %in) #0
  store <4 x float> %0, <4 x float> addrspace(1)* %out
  ret void
}





define void @legacy_amdil_round_nearest_f32(float addrspace(1)* %out, float %in) {
entry:
  %0 = call float @llvm.AMDIL.round.nearest.f32(float %in) #0
  store float %0, float addrspace(1)* %out
  ret void
}

declare float @llvm.AMDIL.round.nearest.f32(float) #0
declare float @llvm.rint.f32(float) #0
declare <2 x float> @llvm.rint.v2f32(<2 x float>) #0
declare <4 x float> @llvm.rint.v4f32(<4 x float>) #0

attributes #0 = { nounwind readnone }
