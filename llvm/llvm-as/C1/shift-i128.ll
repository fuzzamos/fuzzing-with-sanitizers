


define void @t(i128 %x, i128 %a, i128* nocapture %r) nounwind {
entry:
	%0 = lshr i128 %x, %a
	store i128 %0, i128* %r, align 16
	ret void
}
