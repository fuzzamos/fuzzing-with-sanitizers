




define i32 @f1(i32 %a) {
    %l8 = shl i32 %a, 10
    %r8 = lshr i32 %a, 22
    %tmp = or i32 %l8, %r8
    ret i32 %tmp
}






define i32 @f2(i32 %v, i32 %nbits) {
entry:
  %and = and i32 %nbits, 31
  %shr = lshr i32 %v, %and
  %sub = sub i32 32, %and
  %shl = shl i32 %v, %sub
  %or = or i32 %shl, %shr
  ret i32 %or
}
