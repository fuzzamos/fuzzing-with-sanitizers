


define i64 @f(i32 %a, i128 %b) {
        %tmp = call i64 @g(i128 %b)
        ret i64 %tmp
}

declare i64 @g(i128)
