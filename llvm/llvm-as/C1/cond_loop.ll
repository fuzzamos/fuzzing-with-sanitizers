





define void @normal_condition() nounwind {
5:
        br label %"0"

0:
	br label %"1"
1:
	br i1 1, label %"2", label %"3"
2:
	ret void
3:
	br i1 1, label %"1", label %"4"
4:
        br label %"0"
}













