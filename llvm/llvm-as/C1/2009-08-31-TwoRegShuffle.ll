


define <4 x i16> @v2regbug(<4 x i16>* %B) nounwind {


	%tmp1 = load <4 x i16>, <4 x i16>* %B
	%tmp2 = shufflevector <4 x i16> %tmp1, <4 x i16> undef, <4 x i32><i32 0, i32 0, i32 1, i32 1>
	ret <4 x i16> %tmp2
}
