



define void @f(i64* %dst, i64* %src) nounwind {
entry:



	%0 = load i64, i64* %src, align 1
	store i64 %0, i64* %dst, align 1
	ret void
}
