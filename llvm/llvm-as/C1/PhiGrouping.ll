


define i32 @test(i32 %i, i32 %j, i1 %c) {
	br i1 %c, label %A, label %B
A:
	br label %C
B:
	br label %C

C:
	%a = phi i32 [%i, %A], [%j, %B]
	%x = add i32 %a, 0                 
	%b = phi i32 [%i, %A], [%j, %B]
	ret i32 %x
}
