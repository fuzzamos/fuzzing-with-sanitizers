
















@state = external global [0 x i32]		
@S = external global [0 x i32]		

define i32 @foo() nounwind {
entry:
	br label %bb

bb:		
	%indvar = phi i32 [ 0, %entry ], [ %indvar.next, %bb ]		
	%t.063.0 = phi i32 [ 0, %entry ], [ %tmp47, %bb ]		
	%j.065.0 = shl i32 %indvar, 2		
	%tmp3 = getelementptr [0 x i32], [0 x i32]* @state, i32 0, i32 %j.065.0		
	%tmp4 = load i32, i32* %tmp3, align 4		
	%tmp6 = getelementptr [0 x i32], [0 x i32]* @S, i32 0, i32 %t.063.0		
	%tmp7 = load i32, i32* %tmp6, align 4		
	%tmp8 = xor i32 %tmp7, %tmp4		
	store i32 %tmp8, i32* %tmp3, align 4
	%tmp1378 = or i32 %j.065.0, 1		
	%tmp16 = getelementptr [0 x i32], [0 x i32]* @state, i32 0, i32 %tmp1378		
	%tmp17 = load i32, i32* %tmp16, align 4		
	%tmp19 = getelementptr [0 x i32], [0 x i32]* @S, i32 0, i32 %tmp8		
	%tmp20 = load i32, i32* %tmp19, align 4		
	%tmp21 = xor i32 %tmp20, %tmp17		
	store i32 %tmp21, i32* %tmp16, align 4
	%tmp2680 = or i32 %j.065.0, 2		
	%tmp29 = getelementptr [0 x i32], [0 x i32]* @state, i32 0, i32 %tmp2680		
	%tmp30 = load i32, i32* %tmp29, align 4		
	%tmp32 = getelementptr [0 x i32], [0 x i32]* @S, i32 0, i32 %tmp21		
	%tmp33 = load i32, i32* %tmp32, align 4		
	%tmp34 = xor i32 %tmp33, %tmp30		
	store i32 %tmp34, i32* %tmp29, align 4
	%tmp3982 = or i32 %j.065.0, 3		
	%tmp42 = getelementptr [0 x i32], [0 x i32]* @state, i32 0, i32 %tmp3982		
	%tmp43 = load i32, i32* %tmp42, align 4		
	%tmp45 = getelementptr [0 x i32], [0 x i32]* @S, i32 0, i32 %tmp34		
	%tmp46 = load i32, i32* %tmp45, align 4		
	%tmp47 = xor i32 %tmp46, %tmp43		
	store i32 %tmp47, i32* %tmp42, align 4
	%indvar.next = add i32 %indvar, 1		
	%exitcond = icmp eq i32 %indvar.next, 4		
	br i1 %exitcond, label %bb57, label %bb

bb57:		
	%tmp59 = and i32 %tmp47, 255		
	ret i32 %tmp59
}
