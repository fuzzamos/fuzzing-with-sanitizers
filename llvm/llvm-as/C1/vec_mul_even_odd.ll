




declare <2 x i64> @llvm.ppc.altivec.vmuleuw(<4 x i32>, <4 x i32>) nounwind readnone
declare <2 x i64> @llvm.ppc.altivec.vmulesw(<4 x i32>, <4 x i32>) nounwind readnone
declare <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32>, <4 x i32>) nounwind readnone
declare <2 x i64> @llvm.ppc.altivec.vmulosw(<4 x i32>, <4 x i32>) nounwind readnone
declare <4 x i32> @llvm.ppc.altivec.vmuluwm(<4 x i32>, <4 x i32>) nounwind readnone

define <2 x i64> @test_vmuleuw(<4 x i32> %x, <4 x i32> %y) nounwind readnone {
       %tmp = tail call <2 x i64> @llvm.ppc.altivec.vmuleuw(<4 x i32> %x, <4 x i32> %y)
       ret <2 x i64> %tmp

}

define <2 x i64> @test_vmulesw(<4 x i32> %x, <4 x i32> %y) nounwind readnone {
       %tmp = tail call <2 x i64> @llvm.ppc.altivec.vmulesw(<4 x i32> %x, <4 x i32> %y)
       ret <2 x i64> %tmp

}

define <2 x i64> @test_vmulouw(<4 x i32> %x, <4 x i32> %y) nounwind readnone {
       %tmp = tail call <2 x i64> @llvm.ppc.altivec.vmulouw(<4 x i32> %x, <4 x i32> %y)
       ret <2 x i64> %tmp

}

define <2 x i64> @test_vmulosw(<4 x i32> %x, <4 x i32> %y) nounwind readnone {
       %tmp = tail call <2 x i64> @llvm.ppc.altivec.vmulosw(<4 x i32> %x, <4 x i32> %y)
       ret <2 x i64> %tmp

}

define <4 x i32> @test_vmuluwm(<4 x i32> %x, <4 x i32> %y) nounwind readnone {
	%tmp = mul <4 x i32> %x, %y
	ret <4 x i32> %tmp


}

