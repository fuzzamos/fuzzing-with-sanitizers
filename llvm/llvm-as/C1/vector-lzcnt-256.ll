


target triple = "x86_64-unknown-unknown"

define <4 x i64> @testv4i64(<4 x i64> %in) nounwind {

























































  %out = call <4 x i64> @llvm.ctlz.v4i64(<4 x i64> %in, i1 0)
  ret <4 x i64> %out
}

define <4 x i64> @testv4i64u(<4 x i64> %in) nounwind {















































  %out = call <4 x i64> @llvm.ctlz.v4i64(<4 x i64> %in, i1 -1)
  ret <4 x i64> %out
}

define <8 x i32> @testv8i32(<8 x i32> %in) nounwind {





























































































  %out = call <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %in, i1 0)
  ret <8 x i32> %out
}

define <8 x i32> @testv8i32u(<8 x i32> %in) nounwind {











































































  %out = call <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %in, i1 -1)
  ret <8 x i32> %out
}

define <16 x i16> @testv16i16(<16 x i16> %in) nounwind {













































































































































































  %out = call <16 x i16> @llvm.ctlz.v16i16(<16 x i16> %in, i1 0)
  ret <16 x i16> %out
}

define <16 x i16> @testv16i16u(<16 x i16> %in) nounwind {











































































































































  %out = call <16 x i16> @llvm.ctlz.v16i16(<16 x i16> %in, i1 -1)
  ret <16 x i16> %out
}

define <32 x i8> @testv32i8(<32 x i8> %in) nounwind {













































































































































































































































































































































  %out = call <32 x i8> @llvm.ctlz.v32i8(<32 x i8> %in, i1 0)
  ret <32 x i8> %out
}

define <32 x i8> @testv32i8u(<32 x i8> %in) nounwind {











































































































































































































































































  %out = call <32 x i8> @llvm.ctlz.v32i8(<32 x i8> %in, i1 -1)
  ret <32 x i8> %out
}

define <4 x i64> @foldv4i64() nounwind {




  %out = call <4 x i64> @llvm.ctlz.v4i64(<4 x i64> <i64 256, i64 -1, i64 0, i64 255>, i1 0)
  ret <4 x i64> %out
}

define <4 x i64> @foldv4i64u() nounwind {




  %out = call <4 x i64> @llvm.ctlz.v4i64(<4 x i64> <i64 256, i64 -1, i64 0, i64 255>, i1 -1)
  ret <4 x i64> %out
}

define <8 x i32> @foldv8i32() nounwind {




  %out = call <8 x i32> @llvm.ctlz.v8i32(<8 x i32> <i32 256, i32 -1, i32 0, i32 255, i32 -65536, i32 7, i32 24, i32 88>, i1 0)
  ret <8 x i32> %out
}

define <8 x i32> @foldv8i32u() nounwind {




  %out = call <8 x i32> @llvm.ctlz.v8i32(<8 x i32> <i32 256, i32 -1, i32 0, i32 255, i32 -65536, i32 7, i32 24, i32 88>, i1 -1)
  ret <8 x i32> %out
}

define <16 x i16> @foldv16i16() nounwind {




  %out = call <16 x i16> @llvm.ctlz.v16i16(<16 x i16> <i16 256, i16 -1, i16 0, i16 255, i16 -65536, i16 7, i16 24, i16 88, i16 -2, i16 254, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32>, i1 0)
  ret <16 x i16> %out
}

define <16 x i16> @foldv16i16u() nounwind {




  %out = call <16 x i16> @llvm.ctlz.v16i16(<16 x i16> <i16 256, i16 -1, i16 0, i16 255, i16 -65536, i16 7, i16 24, i16 88, i16 -2, i16 254, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32>, i1 -1)
  ret <16 x i16> %out
}

define <32 x i8> @foldv32i8() nounwind {




  %out = call <32 x i8> @llvm.ctlz.v32i8(<32 x i8> <i8 256, i8 -1, i8 0, i8 255, i8 -65536, i8 7, i8 24, i8 88, i8 -2, i8 254, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 128, i8 256, i8 -256, i8 -128, i8 -64, i8 -32, i8 -16, i8 -8, i8 -4, i8 -2, i8 -1, i8 3, i8 5, i8 7, i8 127>, i1 0)
  ret <32 x i8> %out
}

define <32 x i8> @foldv32i8u() nounwind {




  %out = call <32 x i8> @llvm.ctlz.v32i8(<32 x i8> <i8 256, i8 -1, i8 0, i8 255, i8 -65536, i8 7, i8 24, i8 88, i8 -2, i8 254, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 128, i8 256, i8 -256, i8 -128, i8 -64, i8 -32, i8 -16, i8 -8, i8 -4, i8 -2, i8 -1, i8 3, i8 5, i8 7, i8 127>, i1 -1)
  ret <32 x i8> %out
}

declare <4 x i64> @llvm.ctlz.v4i64(<4 x i64>, i1)
declare <8 x i32> @llvm.ctlz.v8i32(<8 x i32>, i1)
declare <16 x i16> @llvm.ctlz.v16i16(<16 x i16>, i1)
declare <32 x i8> @llvm.ctlz.v32i8(<32 x i8>, i1)
