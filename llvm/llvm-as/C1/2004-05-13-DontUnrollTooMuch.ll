

define i32 @main() {
entry:
	br label %no_exit
no_exit:		
	%indvar = phi i32 [ 0, %entry ], [ %indvar.next, %no_exit ]		
	%indvar.next = add i32 %indvar, 1		
	%exitcond = icmp ne i32 %indvar.next, -2147483648		
	br i1 %exitcond, label %no_exit, label %loopexit
loopexit:		
	ret i32 0
}

