


	%0 = type { i64 }		
	%struct.S1 = type { i16, i32 }
@g_10 = external global %struct.S1		

declare void @func_28(i64, i64)

define void @int322(i32 %foo) nounwind {
entry:
	%val = load i64, i64* getelementptr (%0, %0* bitcast (%struct.S1* @g_10 to %0*), i32 0, i32 0)		
	%0 = load i32, i32* getelementptr (%struct.S1, %struct.S1* @g_10, i32 0, i32 1), align 4		
	%1 = sext i32 %0 to i64		
	%tmp4.i = lshr i64 %val, 32		
	%tmp5.i = trunc i64 %tmp4.i to i32		
	%2 = sext i32 %tmp5.i to i64		
	tail call void @func_28(i64 %2, i64 %1) nounwind
	ret void
}
