


@g_127 = external global i32		

define i32 @func_56(i32 %p_58, i32 %p_59, i32 %p_61, i16 signext %p_62) nounwind {
entry:
	%call = call i32 (...) @rshift_s_s( i32 %p_61, i32 1 )		
	%conv = sext i32 %call to i64		
	%or = or i64 -1734012817166602727, %conv		
	%rem = srem i64 %or, 1		
	%cmp = icmp eq i64 %rem, 1		
	%cmp.ext = zext i1 %cmp to i32		
	store i32 %cmp.ext, i32* @g_127
	ret i32 undef
}

declare i32 @rshift_s_s(...)
