





	%0 = type { i32, i32 }		
@a = weak constant i32 undef		
@b = weak constant i32 5		
@c = weak constant %0 { i32 7, i32 9 }		

define i32 @la() {
	%v = load i32, i32* @a		
	ret i32 %v
}

define i32 @lb() {
	%v = load i32, i32* @b		
	ret i32 %v
}

define i32 @lc() {
	%g = getelementptr %0, %0* @c, i32 0, i32 0		
	%u = load i32, i32* %g		
	%h = getelementptr %0, %0* @c, i32 0, i32 1		
	%v = load i32, i32* %h		
	%r = add i32 %u, %v
	ret i32 %r
}

define i32 @f() {
	%u = call i32 @la()		
	%v = call i32 @lb()		
	%w = call i32 @lc()		
	%r = add i32 %u, %v		
	%s = add i32 %r, %w		
	ret i32 %s
}
