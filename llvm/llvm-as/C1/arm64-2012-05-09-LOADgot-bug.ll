



define hidden void @t(i64* %addr) optsize ssp {
entry:
  store i64 zext (i32 ptrtoint (i64 (i32)* @x to i32) to i64), i64* %addr, align 8




  ret void
}

declare i64 @x(i32) optsize







