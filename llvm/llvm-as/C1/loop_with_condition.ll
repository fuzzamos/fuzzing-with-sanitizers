






define void @normal_condition() nounwind {
0:
        br label %"1"
1:
	br i1 1, label %"6", label %"2"
2:
	br i1 1, label %"3", label %"4"
3:
	br label %"5"
4:
	br label %"5"
5:
        br label %"8"
8:
        br i1 1, label %"7", label %"9"
9:
        br label %"2"
7:
        br label %"6"
6:
	ret void
}


















