





@llvm_mips_maxi_s_b_ARG1 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_maxi_s_b_RES  = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, align 16

define void @llvm_mips_maxi_s_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_maxi_s_b_ARG1
  %1 = tail call <16 x i8> @llvm.mips.maxi.s.b(<16 x i8> %0, i32 14)
  store <16 x i8> %1, <16 x i8>* @llvm_mips_maxi_s_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.maxi.s.b(<16 x i8>, i32) nounwind







@llvm_mips_maxi_s_h_ARG1 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_maxi_s_h_RES  = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, align 16

define void @llvm_mips_maxi_s_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_maxi_s_h_ARG1
  %1 = tail call <8 x i16> @llvm.mips.maxi.s.h(<8 x i16> %0, i32 14)
  store <8 x i16> %1, <8 x i16>* @llvm_mips_maxi_s_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.maxi.s.h(<8 x i16>, i32) nounwind







@llvm_mips_maxi_s_w_ARG1 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_maxi_s_w_RES  = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>, align 16

define void @llvm_mips_maxi_s_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_maxi_s_w_ARG1
  %1 = tail call <4 x i32> @llvm.mips.maxi.s.w(<4 x i32> %0, i32 14)
  store <4 x i32> %1, <4 x i32>* @llvm_mips_maxi_s_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.maxi.s.w(<4 x i32>, i32) nounwind







@llvm_mips_maxi_s_d_ARG1 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_maxi_s_d_RES  = global <2 x i64> <i64 0, i64 0>, align 16

define void @llvm_mips_maxi_s_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_maxi_s_d_ARG1
  %1 = tail call <2 x i64> @llvm.mips.maxi.s.d(<2 x i64> %0, i32 14)
  store <2 x i64> %1, <2 x i64>* @llvm_mips_maxi_s_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.maxi.s.d(<2 x i64>, i32) nounwind







@llvm_mips_maxi_u_b_ARG1 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_maxi_u_b_RES  = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, align 16

define void @llvm_mips_maxi_u_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_maxi_u_b_ARG1
  %1 = tail call <16 x i8> @llvm.mips.maxi.u.b(<16 x i8> %0, i32 14)
  store <16 x i8> %1, <16 x i8>* @llvm_mips_maxi_u_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.maxi.u.b(<16 x i8>, i32) nounwind







@llvm_mips_maxi_u_h_ARG1 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_maxi_u_h_RES  = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, align 16

define void @llvm_mips_maxi_u_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_maxi_u_h_ARG1
  %1 = tail call <8 x i16> @llvm.mips.maxi.u.h(<8 x i16> %0, i32 14)
  store <8 x i16> %1, <8 x i16>* @llvm_mips_maxi_u_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.maxi.u.h(<8 x i16>, i32) nounwind







@llvm_mips_maxi_u_w_ARG1 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_maxi_u_w_RES  = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>, align 16

define void @llvm_mips_maxi_u_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_maxi_u_w_ARG1
  %1 = tail call <4 x i32> @llvm.mips.maxi.u.w(<4 x i32> %0, i32 14)
  store <4 x i32> %1, <4 x i32>* @llvm_mips_maxi_u_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.maxi.u.w(<4 x i32>, i32) nounwind







@llvm_mips_maxi_u_d_ARG1 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_maxi_u_d_RES  = global <2 x i64> <i64 0, i64 0>, align 16

define void @llvm_mips_maxi_u_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_maxi_u_d_ARG1
  %1 = tail call <2 x i64> @llvm.mips.maxi.u.d(<2 x i64> %0, i32 14)
  store <2 x i64> %1, <2 x i64>* @llvm_mips_maxi_u_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.maxi.u.d(<2 x i64>, i32) nounwind







@llvm_mips_mini_s_b_ARG1 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_mini_s_b_RES  = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, align 16

define void @llvm_mips_mini_s_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_mini_s_b_ARG1
  %1 = tail call <16 x i8> @llvm.mips.mini.s.b(<16 x i8> %0, i32 14)
  store <16 x i8> %1, <16 x i8>* @llvm_mips_mini_s_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.mini.s.b(<16 x i8>, i32) nounwind







@llvm_mips_mini_s_h_ARG1 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_mini_s_h_RES  = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, align 16

define void @llvm_mips_mini_s_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_mini_s_h_ARG1
  %1 = tail call <8 x i16> @llvm.mips.mini.s.h(<8 x i16> %0, i32 14)
  store <8 x i16> %1, <8 x i16>* @llvm_mips_mini_s_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.mini.s.h(<8 x i16>, i32) nounwind







@llvm_mips_mini_s_w_ARG1 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_mini_s_w_RES  = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>, align 16

define void @llvm_mips_mini_s_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_mini_s_w_ARG1
  %1 = tail call <4 x i32> @llvm.mips.mini.s.w(<4 x i32> %0, i32 14)
  store <4 x i32> %1, <4 x i32>* @llvm_mips_mini_s_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.mini.s.w(<4 x i32>, i32) nounwind







@llvm_mips_mini_s_d_ARG1 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_mini_s_d_RES  = global <2 x i64> <i64 0, i64 0>, align 16

define void @llvm_mips_mini_s_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_mini_s_d_ARG1
  %1 = tail call <2 x i64> @llvm.mips.mini.s.d(<2 x i64> %0, i32 14)
  store <2 x i64> %1, <2 x i64>* @llvm_mips_mini_s_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.mini.s.d(<2 x i64>, i32) nounwind







@llvm_mips_mini_u_b_ARG1 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_mini_u_b_RES  = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, align 16

define void @llvm_mips_mini_u_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_mini_u_b_ARG1
  %1 = tail call <16 x i8> @llvm.mips.mini.u.b(<16 x i8> %0, i32 14)
  store <16 x i8> %1, <16 x i8>* @llvm_mips_mini_u_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.mini.u.b(<16 x i8>, i32) nounwind







@llvm_mips_mini_u_h_ARG1 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_mini_u_h_RES  = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, align 16

define void @llvm_mips_mini_u_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_mini_u_h_ARG1
  %1 = tail call <8 x i16> @llvm.mips.mini.u.h(<8 x i16> %0, i32 14)
  store <8 x i16> %1, <8 x i16>* @llvm_mips_mini_u_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.mini.u.h(<8 x i16>, i32) nounwind







@llvm_mips_mini_u_w_ARG1 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_mini_u_w_RES  = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>, align 16

define void @llvm_mips_mini_u_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_mini_u_w_ARG1
  %1 = tail call <4 x i32> @llvm.mips.mini.u.w(<4 x i32> %0, i32 14)
  store <4 x i32> %1, <4 x i32>* @llvm_mips_mini_u_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.mini.u.w(<4 x i32>, i32) nounwind







@llvm_mips_mini_u_d_ARG1 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_mini_u_d_RES  = global <2 x i64> <i64 0, i64 0>, align 16

define void @llvm_mips_mini_u_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_mini_u_d_ARG1
  %1 = tail call <2 x i64> @llvm.mips.mini.u.d(<2 x i64> %0, i32 14)
  store <2 x i64> %1, <2 x i64>* @llvm_mips_mini_u_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.mini.u.d(<2 x i64>, i32) nounwind







