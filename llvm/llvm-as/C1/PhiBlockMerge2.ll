






declare i1 @foo()

define i32 @test(i1 %a, i1 %b) {
        %c = call i1 @foo()
	br i1 %c, label %N, label %P
P:
        %d = call i1 @foo()
	br i1 %d, label %N, label %Q
Q:
	br label %N
N:
	%W = phi i32 [0, %0], [1, %Q], [2, %P]
	
	br label %M

M:
	%R = add i32 %W, 1
	ret i32 %R
}

