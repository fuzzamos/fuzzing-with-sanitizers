




define void @irreducible(i1 %cond) {
        br i1 %cond, label %X, label %Y

X:              
        br label %Y

Y:              
        br label %X
}


define void @sharedheader(i1 %cond) {
        br label %A

A:              
        br i1 %cond, label %X, label %Y

X:              
        br label %A

Y:              
        br label %A
}



define void @nested(i1 %cond1, i1 %cond2, i1 %cond3) {
        br label %Loop1

Loop1:          
        br label %Loop2

Loop2:          
        br label %Loop3

Loop3:          
        br i1 %cond3, label %Loop3, label %L3Exit

L3Exit:         
        br i1 %cond2, label %Loop2, label %L2Exit

L2Exit:         
        br i1 %cond1, label %Loop1, label %L1Exit

L1Exit:         
        ret void
}

