



@a = external global <2 x i64>		

define <2 x i64> @madd(<2 x i64> %b) nounwind  {
entry:
	%tmp2 = load <2 x i64>, <2 x i64>* @a, align 16		
	%tmp6 = bitcast <2 x i64> %b to <8 x i16>		
	%tmp9 = bitcast <2 x i64> %tmp2 to <8 x i16>		
	%tmp11 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd( <8 x i16> %tmp9, <8 x i16> %tmp6 ) nounwind readnone 		
	%tmp14 = bitcast <4 x i32> %tmp11 to <2 x i64>		
	ret <2 x i64> %tmp14
}

declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) nounwind readnone 
