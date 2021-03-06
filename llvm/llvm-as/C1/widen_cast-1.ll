















define void @convert(<2 x i32>* %dst, <4 x i16>* %src) nounwind {
entry:
	%dst.addr = alloca <2 x i32>*		
	%src.addr = alloca <4 x i16>*		
	%i = alloca i32, align 4		
	store <2 x i32>* %dst, <2 x i32>** %dst.addr
	store <4 x i16>* %src, <4 x i16>** %src.addr
	store i32 0, i32* %i
	br label %forcond

forcond:		
	%tmp = load i32, i32* %i		
	%cmp = icmp slt i32 %tmp, 4		
	br i1 %cmp, label %forbody, label %afterfor

forbody:		
	%tmp1 = load i32, i32* %i		
	%tmp2 = load <2 x i32>*, <2 x i32>** %dst.addr		
	%arrayidx = getelementptr <2 x i32>, <2 x i32>* %tmp2, i32 %tmp1		
	%tmp3 = load i32, i32* %i		
	%tmp4 = load <4 x i16>*, <4 x i16>** %src.addr		
	%arrayidx5 = getelementptr <4 x i16>, <4 x i16>* %tmp4, i32 %tmp3		
	%tmp6 = load <4 x i16>, <4 x i16>* %arrayidx5		
	%add = add <4 x i16> %tmp6, < i16 1, i16 1, i16 1, i16 1 >		
	%conv = bitcast <4 x i16> %add to <2 x i32>		
	store <2 x i32> %conv, <2 x i32>* %arrayidx
	br label %forinc

forinc:		
	%tmp7 = load i32, i32* %i		
	%inc = add i32 %tmp7, 1		
	store i32 %inc, i32* %i
	br label %forcond

afterfor:		
	ret void
}
