







define void @test(<2 x double>* %dst, <4 x double> %src) nounwind {
entry:
        %tmp7.i = shufflevector <4 x double> %src, <4 x double> undef, <2 x i32> < i32 0, i32 2 >
        store <2 x double> %tmp7.i, <2 x double>* %dst
        ret void
}



define void @test2(<4 x i16>* %src, <4 x i32>* %dest) nounwind {
entry:
        %tmp1 = load <4 x i16>, <4 x i16>* %src
        %tmp3 = shufflevector <4 x i16> %tmp1, <4 x i16> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
        %0 = tail call <4 x i32> @llvm.x86.sse41.pmovzxwd(<8 x i16> %tmp3)
        store <4 x i32> %0, <4 x i32>* %dest
        ret void
}

declare <4 x i32> @llvm.x86.sse41.pmovzxwd(<8 x i16>) nounwind readnone
