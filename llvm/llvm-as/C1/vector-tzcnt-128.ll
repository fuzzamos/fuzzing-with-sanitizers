






target triple = "x86_64-unknown-unknown"

define <2 x i64> @testv2i64(<2 x i64> %in) nounwind {











































































  %out = call <2 x i64> @llvm.cttz.v2i64(<2 x i64> %in, i1 0)
  ret <2 x i64> %out
}

define <2 x i64> @testv2i64u(<2 x i64> %in) nounwind {




























































  %out = call <2 x i64> @llvm.cttz.v2i64(<2 x i64> %in, i1 -1)
  ret <2 x i64> %out
}

define <4 x i32> @testv4i32(<4 x i32> %in) nounwind {






























































































































  %out = call <4 x i32> @llvm.cttz.v4i32(<4 x i32> %in, i1 0)
  ret <4 x i32> %out
}

define <4 x i32> @testv4i32u(<4 x i32> %in) nounwind {





































































































  %out = call <4 x i32> @llvm.cttz.v4i32(<4 x i32> %in, i1 -1)
  ret <4 x i32> %out
}

define <8 x i16> @testv8i16(<8 x i16> %in) nounwind {














































































































































































































  %out = call <8 x i16> @llvm.cttz.v8i16(<8 x i16> %in, i1 0)
  ret <8 x i16> %out
}

define <8 x i16> @testv8i16u(<8 x i16> %in) nounwind {

































































































































































  %out = call <8 x i16> @llvm.cttz.v8i16(<8 x i16> %in, i1 -1)
  ret <8 x i16> %out
}

define <16 x i8> @testv16i8(<16 x i8> %in) nounwind {
































































































































































































































































































































































































































































































































































































  %out = call <16 x i8> @llvm.cttz.v16i8(<16 x i8> %in, i1 0)
  ret <16 x i8> %out
}

define <16 x i8> @testv16i8u(<16 x i8> %in) nounwind {


























































































































































































































































































































  %out = call <16 x i8> @llvm.cttz.v16i8(<16 x i8> %in, i1 -1)
  ret <16 x i8> %out
}

define <2 x i64> @foldv2i64() nounwind {











  %out = call <2 x i64> @llvm.cttz.v2i64(<2 x i64> <i64 256, i64 -1>, i1 0)
  ret <2 x i64> %out
}

define <2 x i64> @foldv2i64u() nounwind {











  %out = call <2 x i64> @llvm.cttz.v2i64(<2 x i64> <i64 256, i64 -1>, i1 -1)
  ret <2 x i64> %out
}

define <4 x i32> @foldv4i32() nounwind {









  %out = call <4 x i32> @llvm.cttz.v4i32(<4 x i32> <i32 256, i32 -1, i32 0, i32 255>, i1 0)
  ret <4 x i32> %out
}

define <4 x i32> @foldv4i32u() nounwind {









  %out = call <4 x i32> @llvm.cttz.v4i32(<4 x i32> <i32 256, i32 -1, i32 0, i32 255>, i1 -1)
  ret <4 x i32> %out
}

define <8 x i16> @foldv8i16() nounwind {









  %out = call <8 x i16> @llvm.cttz.v8i16(<8 x i16> <i16 256, i16 -1, i16 0, i16 255, i16 -65536, i16 7, i16 24, i16 88>, i1 0)
  ret <8 x i16> %out
}

define <8 x i16> @foldv8i16u() nounwind {









  %out = call <8 x i16> @llvm.cttz.v8i16(<8 x i16> <i16 256, i16 -1, i16 0, i16 255, i16 -65536, i16 7, i16 24, i16 88>, i1 -1)
  ret <8 x i16> %out
}

define <16 x i8> @foldv16i8() nounwind {









  %out = call <16 x i8> @llvm.cttz.v16i8(<16 x i8> <i8 256, i8 -1, i8 0, i8 255, i8 -65536, i8 7, i8 24, i8 88, i8 -2, i8 254, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32>, i1 0)
  ret <16 x i8> %out
}

define <16 x i8> @foldv16i8u() nounwind {









  %out = call <16 x i8> @llvm.cttz.v16i8(<16 x i8> <i8 256, i8 -1, i8 0, i8 255, i8 -65536, i8 7, i8 24, i8 88, i8 -2, i8 254, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32>, i1 -1)
  ret <16 x i8> %out
}

declare <2 x i64> @llvm.cttz.v2i64(<2 x i64>, i1)
declare <4 x i32> @llvm.cttz.v4i32(<4 x i32>, i1)
declare <8 x i16> @llvm.cttz.v8i16(<8 x i16>, i1)
declare <16 x i8> @llvm.cttz.v16i8(<16 x i8>, i1)
