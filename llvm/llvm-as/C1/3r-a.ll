










@llvm_mips_add_a_b_ARG1 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_add_a_b_ARG2 = global <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, align 16
@llvm_mips_add_a_b_RES  = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, align 16

define void @llvm_mips_add_a_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_add_a_b_ARG1
  %1 = load <16 x i8>, <16 x i8>* @llvm_mips_add_a_b_ARG2
  %2 = tail call <16 x i8> @llvm.mips.add.a.b(<16 x i8> %0, <16 x i8> %1)
  store <16 x i8> %2, <16 x i8>* @llvm_mips_add_a_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.add.a.b(<16 x i8>, <16 x i8>) nounwind











@llvm_mips_add_a_h_ARG1 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_add_a_h_ARG2 = global <8 x i16> <i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, align 16
@llvm_mips_add_a_h_RES  = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, align 16

define void @llvm_mips_add_a_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_add_a_h_ARG1
  %1 = load <8 x i16>, <8 x i16>* @llvm_mips_add_a_h_ARG2
  %2 = tail call <8 x i16> @llvm.mips.add.a.h(<8 x i16> %0, <8 x i16> %1)
  store <8 x i16> %2, <8 x i16>* @llvm_mips_add_a_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.add.a.h(<8 x i16>, <8 x i16>) nounwind











@llvm_mips_add_a_w_ARG1 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_add_a_w_ARG2 = global <4 x i32> <i32 4, i32 5, i32 6, i32 7>, align 16
@llvm_mips_add_a_w_RES  = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>, align 16

define void @llvm_mips_add_a_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_add_a_w_ARG1
  %1 = load <4 x i32>, <4 x i32>* @llvm_mips_add_a_w_ARG2
  %2 = tail call <4 x i32> @llvm.mips.add.a.w(<4 x i32> %0, <4 x i32> %1)
  store <4 x i32> %2, <4 x i32>* @llvm_mips_add_a_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.add.a.w(<4 x i32>, <4 x i32>) nounwind











@llvm_mips_add_a_d_ARG1 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_add_a_d_ARG2 = global <2 x i64> <i64 2, i64 3>, align 16
@llvm_mips_add_a_d_RES  = global <2 x i64> <i64 0, i64 0>, align 16

define void @llvm_mips_add_a_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_add_a_d_ARG1
  %1 = load <2 x i64>, <2 x i64>* @llvm_mips_add_a_d_ARG2
  %2 = tail call <2 x i64> @llvm.mips.add.a.d(<2 x i64> %0, <2 x i64> %1)
  store <2 x i64> %2, <2 x i64>* @llvm_mips_add_a_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.add.a.d(<2 x i64>, <2 x i64>) nounwind











@llvm_mips_adds_a_b_ARG1 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_adds_a_b_ARG2 = global <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, align 16
@llvm_mips_adds_a_b_RES  = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, align 16

define void @llvm_mips_adds_a_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_adds_a_b_ARG1
  %1 = load <16 x i8>, <16 x i8>* @llvm_mips_adds_a_b_ARG2
  %2 = tail call <16 x i8> @llvm.mips.adds.a.b(<16 x i8> %0, <16 x i8> %1)
  store <16 x i8> %2, <16 x i8>* @llvm_mips_adds_a_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.adds.a.b(<16 x i8>, <16 x i8>) nounwind











@llvm_mips_adds_a_h_ARG1 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_adds_a_h_ARG2 = global <8 x i16> <i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, align 16
@llvm_mips_adds_a_h_RES  = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, align 16

define void @llvm_mips_adds_a_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_adds_a_h_ARG1
  %1 = load <8 x i16>, <8 x i16>* @llvm_mips_adds_a_h_ARG2
  %2 = tail call <8 x i16> @llvm.mips.adds.a.h(<8 x i16> %0, <8 x i16> %1)
  store <8 x i16> %2, <8 x i16>* @llvm_mips_adds_a_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.adds.a.h(<8 x i16>, <8 x i16>) nounwind











@llvm_mips_adds_a_w_ARG1 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_adds_a_w_ARG2 = global <4 x i32> <i32 4, i32 5, i32 6, i32 7>, align 16
@llvm_mips_adds_a_w_RES  = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>, align 16

define void @llvm_mips_adds_a_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_adds_a_w_ARG1
  %1 = load <4 x i32>, <4 x i32>* @llvm_mips_adds_a_w_ARG2
  %2 = tail call <4 x i32> @llvm.mips.adds.a.w(<4 x i32> %0, <4 x i32> %1)
  store <4 x i32> %2, <4 x i32>* @llvm_mips_adds_a_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.adds.a.w(<4 x i32>, <4 x i32>) nounwind











@llvm_mips_adds_a_d_ARG1 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_adds_a_d_ARG2 = global <2 x i64> <i64 2, i64 3>, align 16
@llvm_mips_adds_a_d_RES  = global <2 x i64> <i64 0, i64 0>, align 16

define void @llvm_mips_adds_a_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_adds_a_d_ARG1
  %1 = load <2 x i64>, <2 x i64>* @llvm_mips_adds_a_d_ARG2
  %2 = tail call <2 x i64> @llvm.mips.adds.a.d(<2 x i64> %0, <2 x i64> %1)
  store <2 x i64> %2, <2 x i64>* @llvm_mips_adds_a_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.adds.a.d(<2 x i64>, <2 x i64>) nounwind











@llvm_mips_adds_s_b_ARG1 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_adds_s_b_ARG2 = global <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, align 16
@llvm_mips_adds_s_b_RES  = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, align 16

define void @llvm_mips_adds_s_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_adds_s_b_ARG1
  %1 = load <16 x i8>, <16 x i8>* @llvm_mips_adds_s_b_ARG2
  %2 = tail call <16 x i8> @llvm.mips.adds.s.b(<16 x i8> %0, <16 x i8> %1)
  store <16 x i8> %2, <16 x i8>* @llvm_mips_adds_s_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.adds.s.b(<16 x i8>, <16 x i8>) nounwind











@llvm_mips_adds_s_h_ARG1 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_adds_s_h_ARG2 = global <8 x i16> <i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, align 16
@llvm_mips_adds_s_h_RES  = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, align 16

define void @llvm_mips_adds_s_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_adds_s_h_ARG1
  %1 = load <8 x i16>, <8 x i16>* @llvm_mips_adds_s_h_ARG2
  %2 = tail call <8 x i16> @llvm.mips.adds.s.h(<8 x i16> %0, <8 x i16> %1)
  store <8 x i16> %2, <8 x i16>* @llvm_mips_adds_s_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.adds.s.h(<8 x i16>, <8 x i16>) nounwind











@llvm_mips_adds_s_w_ARG1 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_adds_s_w_ARG2 = global <4 x i32> <i32 4, i32 5, i32 6, i32 7>, align 16
@llvm_mips_adds_s_w_RES  = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>, align 16

define void @llvm_mips_adds_s_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_adds_s_w_ARG1
  %1 = load <4 x i32>, <4 x i32>* @llvm_mips_adds_s_w_ARG2
  %2 = tail call <4 x i32> @llvm.mips.adds.s.w(<4 x i32> %0, <4 x i32> %1)
  store <4 x i32> %2, <4 x i32>* @llvm_mips_adds_s_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.adds.s.w(<4 x i32>, <4 x i32>) nounwind











@llvm_mips_adds_s_d_ARG1 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_adds_s_d_ARG2 = global <2 x i64> <i64 2, i64 3>, align 16
@llvm_mips_adds_s_d_RES  = global <2 x i64> <i64 0, i64 0>, align 16

define void @llvm_mips_adds_s_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_adds_s_d_ARG1
  %1 = load <2 x i64>, <2 x i64>* @llvm_mips_adds_s_d_ARG2
  %2 = tail call <2 x i64> @llvm.mips.adds.s.d(<2 x i64> %0, <2 x i64> %1)
  store <2 x i64> %2, <2 x i64>* @llvm_mips_adds_s_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.adds.s.d(<2 x i64>, <2 x i64>) nounwind











@llvm_mips_adds_u_b_ARG1 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_adds_u_b_ARG2 = global <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, align 16
@llvm_mips_adds_u_b_RES  = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, align 16

define void @llvm_mips_adds_u_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_adds_u_b_ARG1
  %1 = load <16 x i8>, <16 x i8>* @llvm_mips_adds_u_b_ARG2
  %2 = tail call <16 x i8> @llvm.mips.adds.u.b(<16 x i8> %0, <16 x i8> %1)
  store <16 x i8> %2, <16 x i8>* @llvm_mips_adds_u_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.adds.u.b(<16 x i8>, <16 x i8>) nounwind











@llvm_mips_adds_u_h_ARG1 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_adds_u_h_ARG2 = global <8 x i16> <i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, align 16
@llvm_mips_adds_u_h_RES  = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, align 16

define void @llvm_mips_adds_u_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_adds_u_h_ARG1
  %1 = load <8 x i16>, <8 x i16>* @llvm_mips_adds_u_h_ARG2
  %2 = tail call <8 x i16> @llvm.mips.adds.u.h(<8 x i16> %0, <8 x i16> %1)
  store <8 x i16> %2, <8 x i16>* @llvm_mips_adds_u_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.adds.u.h(<8 x i16>, <8 x i16>) nounwind











@llvm_mips_adds_u_w_ARG1 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_adds_u_w_ARG2 = global <4 x i32> <i32 4, i32 5, i32 6, i32 7>, align 16
@llvm_mips_adds_u_w_RES  = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>, align 16

define void @llvm_mips_adds_u_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_adds_u_w_ARG1
  %1 = load <4 x i32>, <4 x i32>* @llvm_mips_adds_u_w_ARG2
  %2 = tail call <4 x i32> @llvm.mips.adds.u.w(<4 x i32> %0, <4 x i32> %1)
  store <4 x i32> %2, <4 x i32>* @llvm_mips_adds_u_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.adds.u.w(<4 x i32>, <4 x i32>) nounwind











@llvm_mips_adds_u_d_ARG1 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_adds_u_d_ARG2 = global <2 x i64> <i64 2, i64 3>, align 16
@llvm_mips_adds_u_d_RES  = global <2 x i64> <i64 0, i64 0>, align 16

define void @llvm_mips_adds_u_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_adds_u_d_ARG1
  %1 = load <2 x i64>, <2 x i64>* @llvm_mips_adds_u_d_ARG2
  %2 = tail call <2 x i64> @llvm.mips.adds.u.d(<2 x i64> %0, <2 x i64> %1)
  store <2 x i64> %2, <2 x i64>* @llvm_mips_adds_u_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.adds.u.d(<2 x i64>, <2 x i64>) nounwind











@llvm_mips_addv_b_ARG1 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_addv_b_ARG2 = global <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, align 16
@llvm_mips_addv_b_RES  = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, align 16

define void @llvm_mips_addv_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_addv_b_ARG1
  %1 = load <16 x i8>, <16 x i8>* @llvm_mips_addv_b_ARG2
  %2 = tail call <16 x i8> @llvm.mips.addv.b(<16 x i8> %0, <16 x i8> %1)
  store <16 x i8> %2, <16 x i8>* @llvm_mips_addv_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.addv.b(<16 x i8>, <16 x i8>) nounwind











@llvm_mips_addv_h_ARG1 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_addv_h_ARG2 = global <8 x i16> <i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, align 16
@llvm_mips_addv_h_RES  = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, align 16

define void @llvm_mips_addv_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_addv_h_ARG1
  %1 = load <8 x i16>, <8 x i16>* @llvm_mips_addv_h_ARG2
  %2 = tail call <8 x i16> @llvm.mips.addv.h(<8 x i16> %0, <8 x i16> %1)
  store <8 x i16> %2, <8 x i16>* @llvm_mips_addv_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.addv.h(<8 x i16>, <8 x i16>) nounwind











@llvm_mips_addv_w_ARG1 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_addv_w_ARG2 = global <4 x i32> <i32 4, i32 5, i32 6, i32 7>, align 16
@llvm_mips_addv_w_RES  = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>, align 16

define void @llvm_mips_addv_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_addv_w_ARG1
  %1 = load <4 x i32>, <4 x i32>* @llvm_mips_addv_w_ARG2
  %2 = tail call <4 x i32> @llvm.mips.addv.w(<4 x i32> %0, <4 x i32> %1)
  store <4 x i32> %2, <4 x i32>* @llvm_mips_addv_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.addv.w(<4 x i32>, <4 x i32>) nounwind











@llvm_mips_addv_d_ARG1 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_addv_d_ARG2 = global <2 x i64> <i64 2, i64 3>, align 16
@llvm_mips_addv_d_RES  = global <2 x i64> <i64 0, i64 0>, align 16

define void @llvm_mips_addv_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_addv_d_ARG1
  %1 = load <2 x i64>, <2 x i64>* @llvm_mips_addv_d_ARG2
  %2 = tail call <2 x i64> @llvm.mips.addv.d(<2 x i64> %0, <2 x i64> %1)
  store <2 x i64> %2, <2 x i64>* @llvm_mips_addv_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.addv.d(<2 x i64>, <2 x i64>) nounwind












define void @addv_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_addv_b_ARG1
  %1 = load <16 x i8>, <16 x i8>* @llvm_mips_addv_b_ARG2
  %2 = add <16 x i8> %0, %1
  store <16 x i8> %2, <16 x i8>* @llvm_mips_addv_b_RES
  ret void
}












define void @addv_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_addv_h_ARG1
  %1 = load <8 x i16>, <8 x i16>* @llvm_mips_addv_h_ARG2
  %2 = add <8 x i16> %0, %1
  store <8 x i16> %2, <8 x i16>* @llvm_mips_addv_h_RES
  ret void
}












define void @addv_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_addv_w_ARG1
  %1 = load <4 x i32>, <4 x i32>* @llvm_mips_addv_w_ARG2
  %2 = add <4 x i32> %0, %1
  store <4 x i32> %2, <4 x i32>* @llvm_mips_addv_w_RES
  ret void
}












define void @addv_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_addv_d_ARG1
  %1 = load <2 x i64>, <2 x i64>* @llvm_mips_addv_d_ARG2
  %2 = add <2 x i64> %0, %1
  store <2 x i64> %2, <2 x i64>* @llvm_mips_addv_d_RES
  ret void
}











@llvm_mips_asub_s_b_ARG1 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_asub_s_b_ARG2 = global <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, align 16
@llvm_mips_asub_s_b_RES  = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, align 16

define void @llvm_mips_asub_s_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_asub_s_b_ARG1
  %1 = load <16 x i8>, <16 x i8>* @llvm_mips_asub_s_b_ARG2
  %2 = tail call <16 x i8> @llvm.mips.asub.s.b(<16 x i8> %0, <16 x i8> %1)
  store <16 x i8> %2, <16 x i8>* @llvm_mips_asub_s_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.asub.s.b(<16 x i8>, <16 x i8>) nounwind











@llvm_mips_asub_s_h_ARG1 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_asub_s_h_ARG2 = global <8 x i16> <i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, align 16
@llvm_mips_asub_s_h_RES  = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, align 16

define void @llvm_mips_asub_s_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_asub_s_h_ARG1
  %1 = load <8 x i16>, <8 x i16>* @llvm_mips_asub_s_h_ARG2
  %2 = tail call <8 x i16> @llvm.mips.asub.s.h(<8 x i16> %0, <8 x i16> %1)
  store <8 x i16> %2, <8 x i16>* @llvm_mips_asub_s_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.asub.s.h(<8 x i16>, <8 x i16>) nounwind











@llvm_mips_asub_s_w_ARG1 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_asub_s_w_ARG2 = global <4 x i32> <i32 4, i32 5, i32 6, i32 7>, align 16
@llvm_mips_asub_s_w_RES  = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>, align 16

define void @llvm_mips_asub_s_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_asub_s_w_ARG1
  %1 = load <4 x i32>, <4 x i32>* @llvm_mips_asub_s_w_ARG2
  %2 = tail call <4 x i32> @llvm.mips.asub.s.w(<4 x i32> %0, <4 x i32> %1)
  store <4 x i32> %2, <4 x i32>* @llvm_mips_asub_s_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.asub.s.w(<4 x i32>, <4 x i32>) nounwind











@llvm_mips_asub_s_d_ARG1 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_asub_s_d_ARG2 = global <2 x i64> <i64 2, i64 3>, align 16
@llvm_mips_asub_s_d_RES  = global <2 x i64> <i64 0, i64 0>, align 16

define void @llvm_mips_asub_s_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_asub_s_d_ARG1
  %1 = load <2 x i64>, <2 x i64>* @llvm_mips_asub_s_d_ARG2
  %2 = tail call <2 x i64> @llvm.mips.asub.s.d(<2 x i64> %0, <2 x i64> %1)
  store <2 x i64> %2, <2 x i64>* @llvm_mips_asub_s_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.asub.s.d(<2 x i64>, <2 x i64>) nounwind











@llvm_mips_asub_u_b_ARG1 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_asub_u_b_ARG2 = global <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, align 16
@llvm_mips_asub_u_b_RES  = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, align 16

define void @llvm_mips_asub_u_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_asub_u_b_ARG1
  %1 = load <16 x i8>, <16 x i8>* @llvm_mips_asub_u_b_ARG2
  %2 = tail call <16 x i8> @llvm.mips.asub.u.b(<16 x i8> %0, <16 x i8> %1)
  store <16 x i8> %2, <16 x i8>* @llvm_mips_asub_u_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.asub.u.b(<16 x i8>, <16 x i8>) nounwind











@llvm_mips_asub_u_h_ARG1 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_asub_u_h_ARG2 = global <8 x i16> <i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, align 16
@llvm_mips_asub_u_h_RES  = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, align 16

define void @llvm_mips_asub_u_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_asub_u_h_ARG1
  %1 = load <8 x i16>, <8 x i16>* @llvm_mips_asub_u_h_ARG2
  %2 = tail call <8 x i16> @llvm.mips.asub.u.h(<8 x i16> %0, <8 x i16> %1)
  store <8 x i16> %2, <8 x i16>* @llvm_mips_asub_u_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.asub.u.h(<8 x i16>, <8 x i16>) nounwind











@llvm_mips_asub_u_w_ARG1 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_asub_u_w_ARG2 = global <4 x i32> <i32 4, i32 5, i32 6, i32 7>, align 16
@llvm_mips_asub_u_w_RES  = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>, align 16

define void @llvm_mips_asub_u_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_asub_u_w_ARG1
  %1 = load <4 x i32>, <4 x i32>* @llvm_mips_asub_u_w_ARG2
  %2 = tail call <4 x i32> @llvm.mips.asub.u.w(<4 x i32> %0, <4 x i32> %1)
  store <4 x i32> %2, <4 x i32>* @llvm_mips_asub_u_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.asub.u.w(<4 x i32>, <4 x i32>) nounwind











@llvm_mips_asub_u_d_ARG1 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_asub_u_d_ARG2 = global <2 x i64> <i64 2, i64 3>, align 16
@llvm_mips_asub_u_d_RES  = global <2 x i64> <i64 0, i64 0>, align 16

define void @llvm_mips_asub_u_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_asub_u_d_ARG1
  %1 = load <2 x i64>, <2 x i64>* @llvm_mips_asub_u_d_ARG2
  %2 = tail call <2 x i64> @llvm.mips.asub.u.d(<2 x i64> %0, <2 x i64> %1)
  store <2 x i64> %2, <2 x i64>* @llvm_mips_asub_u_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.asub.u.d(<2 x i64>, <2 x i64>) nounwind











@llvm_mips_ave_s_b_ARG1 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_ave_s_b_ARG2 = global <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, align 16
@llvm_mips_ave_s_b_RES  = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, align 16

define void @llvm_mips_ave_s_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_ave_s_b_ARG1
  %1 = load <16 x i8>, <16 x i8>* @llvm_mips_ave_s_b_ARG2
  %2 = tail call <16 x i8> @llvm.mips.ave.s.b(<16 x i8> %0, <16 x i8> %1)
  store <16 x i8> %2, <16 x i8>* @llvm_mips_ave_s_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.ave.s.b(<16 x i8>, <16 x i8>) nounwind











@llvm_mips_ave_s_h_ARG1 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_ave_s_h_ARG2 = global <8 x i16> <i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, align 16
@llvm_mips_ave_s_h_RES  = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, align 16

define void @llvm_mips_ave_s_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_ave_s_h_ARG1
  %1 = load <8 x i16>, <8 x i16>* @llvm_mips_ave_s_h_ARG2
  %2 = tail call <8 x i16> @llvm.mips.ave.s.h(<8 x i16> %0, <8 x i16> %1)
  store <8 x i16> %2, <8 x i16>* @llvm_mips_ave_s_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.ave.s.h(<8 x i16>, <8 x i16>) nounwind











@llvm_mips_ave_s_w_ARG1 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_ave_s_w_ARG2 = global <4 x i32> <i32 4, i32 5, i32 6, i32 7>, align 16
@llvm_mips_ave_s_w_RES  = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>, align 16

define void @llvm_mips_ave_s_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_ave_s_w_ARG1
  %1 = load <4 x i32>, <4 x i32>* @llvm_mips_ave_s_w_ARG2
  %2 = tail call <4 x i32> @llvm.mips.ave.s.w(<4 x i32> %0, <4 x i32> %1)
  store <4 x i32> %2, <4 x i32>* @llvm_mips_ave_s_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.ave.s.w(<4 x i32>, <4 x i32>) nounwind











@llvm_mips_ave_s_d_ARG1 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_ave_s_d_ARG2 = global <2 x i64> <i64 2, i64 3>, align 16
@llvm_mips_ave_s_d_RES  = global <2 x i64> <i64 0, i64 0>, align 16

define void @llvm_mips_ave_s_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_ave_s_d_ARG1
  %1 = load <2 x i64>, <2 x i64>* @llvm_mips_ave_s_d_ARG2
  %2 = tail call <2 x i64> @llvm.mips.ave.s.d(<2 x i64> %0, <2 x i64> %1)
  store <2 x i64> %2, <2 x i64>* @llvm_mips_ave_s_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.ave.s.d(<2 x i64>, <2 x i64>) nounwind











@llvm_mips_ave_u_b_ARG1 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_ave_u_b_ARG2 = global <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, align 16
@llvm_mips_ave_u_b_RES  = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, align 16

define void @llvm_mips_ave_u_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_ave_u_b_ARG1
  %1 = load <16 x i8>, <16 x i8>* @llvm_mips_ave_u_b_ARG2
  %2 = tail call <16 x i8> @llvm.mips.ave.u.b(<16 x i8> %0, <16 x i8> %1)
  store <16 x i8> %2, <16 x i8>* @llvm_mips_ave_u_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.ave.u.b(<16 x i8>, <16 x i8>) nounwind











@llvm_mips_ave_u_h_ARG1 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_ave_u_h_ARG2 = global <8 x i16> <i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, align 16
@llvm_mips_ave_u_h_RES  = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, align 16

define void @llvm_mips_ave_u_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_ave_u_h_ARG1
  %1 = load <8 x i16>, <8 x i16>* @llvm_mips_ave_u_h_ARG2
  %2 = tail call <8 x i16> @llvm.mips.ave.u.h(<8 x i16> %0, <8 x i16> %1)
  store <8 x i16> %2, <8 x i16>* @llvm_mips_ave_u_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.ave.u.h(<8 x i16>, <8 x i16>) nounwind











@llvm_mips_ave_u_w_ARG1 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_ave_u_w_ARG2 = global <4 x i32> <i32 4, i32 5, i32 6, i32 7>, align 16
@llvm_mips_ave_u_w_RES  = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>, align 16

define void @llvm_mips_ave_u_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_ave_u_w_ARG1
  %1 = load <4 x i32>, <4 x i32>* @llvm_mips_ave_u_w_ARG2
  %2 = tail call <4 x i32> @llvm.mips.ave.u.w(<4 x i32> %0, <4 x i32> %1)
  store <4 x i32> %2, <4 x i32>* @llvm_mips_ave_u_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.ave.u.w(<4 x i32>, <4 x i32>) nounwind











@llvm_mips_ave_u_d_ARG1 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_ave_u_d_ARG2 = global <2 x i64> <i64 2, i64 3>, align 16
@llvm_mips_ave_u_d_RES  = global <2 x i64> <i64 0, i64 0>, align 16

define void @llvm_mips_ave_u_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_ave_u_d_ARG1
  %1 = load <2 x i64>, <2 x i64>* @llvm_mips_ave_u_d_ARG2
  %2 = tail call <2 x i64> @llvm.mips.ave.u.d(<2 x i64> %0, <2 x i64> %1)
  store <2 x i64> %2, <2 x i64>* @llvm_mips_ave_u_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.ave.u.d(<2 x i64>, <2 x i64>) nounwind











@llvm_mips_aver_s_b_ARG1 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_aver_s_b_ARG2 = global <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, align 16
@llvm_mips_aver_s_b_RES  = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, align 16

define void @llvm_mips_aver_s_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_aver_s_b_ARG1
  %1 = load <16 x i8>, <16 x i8>* @llvm_mips_aver_s_b_ARG2
  %2 = tail call <16 x i8> @llvm.mips.aver.s.b(<16 x i8> %0, <16 x i8> %1)
  store <16 x i8> %2, <16 x i8>* @llvm_mips_aver_s_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.aver.s.b(<16 x i8>, <16 x i8>) nounwind











@llvm_mips_aver_s_h_ARG1 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_aver_s_h_ARG2 = global <8 x i16> <i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, align 16
@llvm_mips_aver_s_h_RES  = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, align 16

define void @llvm_mips_aver_s_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_aver_s_h_ARG1
  %1 = load <8 x i16>, <8 x i16>* @llvm_mips_aver_s_h_ARG2
  %2 = tail call <8 x i16> @llvm.mips.aver.s.h(<8 x i16> %0, <8 x i16> %1)
  store <8 x i16> %2, <8 x i16>* @llvm_mips_aver_s_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.aver.s.h(<8 x i16>, <8 x i16>) nounwind











@llvm_mips_aver_s_w_ARG1 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_aver_s_w_ARG2 = global <4 x i32> <i32 4, i32 5, i32 6, i32 7>, align 16
@llvm_mips_aver_s_w_RES  = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>, align 16

define void @llvm_mips_aver_s_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_aver_s_w_ARG1
  %1 = load <4 x i32>, <4 x i32>* @llvm_mips_aver_s_w_ARG2
  %2 = tail call <4 x i32> @llvm.mips.aver.s.w(<4 x i32> %0, <4 x i32> %1)
  store <4 x i32> %2, <4 x i32>* @llvm_mips_aver_s_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.aver.s.w(<4 x i32>, <4 x i32>) nounwind











@llvm_mips_aver_s_d_ARG1 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_aver_s_d_ARG2 = global <2 x i64> <i64 2, i64 3>, align 16
@llvm_mips_aver_s_d_RES  = global <2 x i64> <i64 0, i64 0>, align 16

define void @llvm_mips_aver_s_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_aver_s_d_ARG1
  %1 = load <2 x i64>, <2 x i64>* @llvm_mips_aver_s_d_ARG2
  %2 = tail call <2 x i64> @llvm.mips.aver.s.d(<2 x i64> %0, <2 x i64> %1)
  store <2 x i64> %2, <2 x i64>* @llvm_mips_aver_s_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.aver.s.d(<2 x i64>, <2 x i64>) nounwind











@llvm_mips_aver_u_b_ARG1 = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, align 16
@llvm_mips_aver_u_b_ARG2 = global <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, align 16
@llvm_mips_aver_u_b_RES  = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, align 16

define void @llvm_mips_aver_u_b_test() nounwind {
entry:
  %0 = load <16 x i8>, <16 x i8>* @llvm_mips_aver_u_b_ARG1
  %1 = load <16 x i8>, <16 x i8>* @llvm_mips_aver_u_b_ARG2
  %2 = tail call <16 x i8> @llvm.mips.aver.u.b(<16 x i8> %0, <16 x i8> %1)
  store <16 x i8> %2, <16 x i8>* @llvm_mips_aver_u_b_RES
  ret void
}

declare <16 x i8> @llvm.mips.aver.u.b(<16 x i8>, <16 x i8>) nounwind











@llvm_mips_aver_u_h_ARG1 = global <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, align 16
@llvm_mips_aver_u_h_ARG2 = global <8 x i16> <i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, align 16
@llvm_mips_aver_u_h_RES  = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, align 16

define void @llvm_mips_aver_u_h_test() nounwind {
entry:
  %0 = load <8 x i16>, <8 x i16>* @llvm_mips_aver_u_h_ARG1
  %1 = load <8 x i16>, <8 x i16>* @llvm_mips_aver_u_h_ARG2
  %2 = tail call <8 x i16> @llvm.mips.aver.u.h(<8 x i16> %0, <8 x i16> %1)
  store <8 x i16> %2, <8 x i16>* @llvm_mips_aver_u_h_RES
  ret void
}

declare <8 x i16> @llvm.mips.aver.u.h(<8 x i16>, <8 x i16>) nounwind











@llvm_mips_aver_u_w_ARG1 = global <4 x i32> <i32 0, i32 1, i32 2, i32 3>, align 16
@llvm_mips_aver_u_w_ARG2 = global <4 x i32> <i32 4, i32 5, i32 6, i32 7>, align 16
@llvm_mips_aver_u_w_RES  = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>, align 16

define void @llvm_mips_aver_u_w_test() nounwind {
entry:
  %0 = load <4 x i32>, <4 x i32>* @llvm_mips_aver_u_w_ARG1
  %1 = load <4 x i32>, <4 x i32>* @llvm_mips_aver_u_w_ARG2
  %2 = tail call <4 x i32> @llvm.mips.aver.u.w(<4 x i32> %0, <4 x i32> %1)
  store <4 x i32> %2, <4 x i32>* @llvm_mips_aver_u_w_RES
  ret void
}

declare <4 x i32> @llvm.mips.aver.u.w(<4 x i32>, <4 x i32>) nounwind











@llvm_mips_aver_u_d_ARG1 = global <2 x i64> <i64 0, i64 1>, align 16
@llvm_mips_aver_u_d_ARG2 = global <2 x i64> <i64 2, i64 3>, align 16
@llvm_mips_aver_u_d_RES  = global <2 x i64> <i64 0, i64 0>, align 16

define void @llvm_mips_aver_u_d_test() nounwind {
entry:
  %0 = load <2 x i64>, <2 x i64>* @llvm_mips_aver_u_d_ARG1
  %1 = load <2 x i64>, <2 x i64>* @llvm_mips_aver_u_d_ARG2
  %2 = tail call <2 x i64> @llvm.mips.aver.u.d(<2 x i64> %0, <2 x i64> %1)
  store <2 x i64> %2, <2 x i64>* @llvm_mips_aver_u_d_RES
  ret void
}

declare <2 x i64> @llvm.mips.aver.u.d(<2 x i64>, <2 x i64>) nounwind











