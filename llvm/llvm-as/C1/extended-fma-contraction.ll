



define <3 x float> @fmafunc(<3 x float> %a, <3 x float> %b, <3 x float> %c) {












  %ret = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %a, <3 x float> %b, <3 x float> %c)
  ret <3 x float> %ret
}

declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) nounwind readnone
