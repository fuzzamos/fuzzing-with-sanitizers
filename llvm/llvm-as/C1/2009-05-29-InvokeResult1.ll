

declare i32 @v()

define i32 @f() {
e:
	%r = invoke i32 @v()
			to label %c unwind label %u		

c:		
	ret i32 %r

u:		
	ret i32 %r
}
