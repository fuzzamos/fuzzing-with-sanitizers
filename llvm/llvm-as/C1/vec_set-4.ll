

define <2 x i64> @test(i16 %a) nounwind {
entry:
	%tmp10 = insertelement <8 x i16> zeroinitializer, i16 %a, i32 3		
	%tmp12 = insertelement <8 x i16> %tmp10, i16 0, i32 4		
	%tmp14 = insertelement <8 x i16> %tmp12, i16 0, i32 5		
	%tmp16 = insertelement <8 x i16> %tmp14, i16 0, i32 6		
	%tmp18 = insertelement <8 x i16> %tmp16, i16 0, i32 7		
	%tmp19 = bitcast <8 x i16> %tmp18 to <2 x i64>		
	ret <2 x i64> %tmp19
}

define <2 x i64> @test2(i8 %a) nounwind {
entry:
	%tmp24 = insertelement <16 x i8> zeroinitializer, i8 %a, i32 10		
	%tmp26 = insertelement <16 x i8> %tmp24, i8 0, i32 11		
	%tmp28 = insertelement <16 x i8> %tmp26, i8 0, i32 12		
	%tmp30 = insertelement <16 x i8> %tmp28, i8 0, i32 13		
	%tmp32 = insertelement <16 x i8> %tmp30, i8 0, i32 14		
	%tmp34 = insertelement <16 x i8> %tmp32, i8 0, i32 15		
	%tmp35 = bitcast <16 x i8> %tmp34 to <2 x i64>		
	ret <2 x i64> %tmp35
}
