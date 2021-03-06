



declare <16 x i8> @llvm.ctlz.v16i8(<16 x i8>) nounwind readnone
declare <8 x i16> @llvm.ctlz.v8i16(<8 x i16>) nounwind readnone
declare <4 x i32> @llvm.ctlz.v4i32(<4 x i32>) nounwind readnone
declare <2 x i64> @llvm.ctlz.v2i64(<2 x i64>) nounwind readnone

define <16 x i8> @test_v16i8(<16 x i8> %x) nounwind readnone {
       %vcnt = tail call <16 x i8> @llvm.ctlz.v16i8(<16 x i8> %x)
       ret <16 x i8> %vcnt



}

define <8 x i16> @test_v8i16(<8 x i16> %x) nounwind readnone {
       %vcnt = tail call <8 x i16> @llvm.ctlz.v8i16(<8 x i16> %x)
       ret <8 x i16> %vcnt



}

define <4 x i32> @test_v4i32(<4 x i32> %x) nounwind readnone {
       %vcnt = tail call <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %x)
       ret <4 x i32> %vcnt



}

define <2 x i64> @test_v2i64(<2 x i64> %x) nounwind readnone {
       %vcnt = tail call <2 x i64> @llvm.ctlz.v2i64(<2 x i64> %x)
       ret <2 x i64> %vcnt



}
