

	%struct.FooBar = type <{ i8, i8, [2 x i8], i8, i8, i8, i8, i16, i16, [4 x i8], [8 x %struct.Rock] }>
	%struct.Rock = type { i16, i16 }
@some_idx = internal constant [4 x i8] c"\0A\0B\0E\0F"		

define zeroext  i8 @t(%struct.FooBar* %up, i8 zeroext  %intra_flag, i32 %blk_i) nounwind  {
entry:
	%tmp2 = lshr i32 %blk_i, 1		
	%tmp3 = and i32 %tmp2, 2		
	%tmp5 = and i32 %blk_i, 1		
	%tmp6 = or i32 %tmp3, %tmp5		
	%tmp8 = getelementptr %struct.FooBar, %struct.FooBar* %up, i32 0, i32 7		
	%tmp9 = load i16, i16* %tmp8, align 1		
	%tmp910 = zext i16 %tmp9 to i32		
	%tmp12 = getelementptr [4 x i8], [4 x i8]* @some_idx, i32 0, i32 %tmp6		
	%tmp13 = load i8, i8* %tmp12, align 1		
	%tmp1314 = zext i8 %tmp13 to i32		
	%tmp151 = lshr i32 %tmp910, %tmp1314		
	%tmp1516 = trunc i32 %tmp151 to i8		
	%tmp18 = getelementptr %struct.FooBar, %struct.FooBar* %up, i32 0, i32 0		
	%tmp19 = load i8, i8* %tmp18, align 1		
	%tmp22 = and i8 %tmp1516, %tmp19		
	%tmp24 = getelementptr %struct.FooBar, %struct.FooBar* %up, i32 0, i32 0		
	%tmp25 = load i8, i8* %tmp24, align 1		
	%tmp26.mask = and i8 %tmp25, 1		
	%toBool = icmp eq i8 %tmp26.mask, 0		
	%toBool.not = xor i1 %toBool, true		
	%toBool33 = icmp eq i8 %intra_flag, 0		
	%bothcond = or i1 %toBool.not, %toBool33		
	%iftmp.1.0 = select i1 %bothcond, i8 0, i8 1		
	%tmp40 = or i8 %tmp22, %iftmp.1.0		
	%tmp432 = and i8 %tmp40, 1		
	ret i8 %tmp432
}
