





define i32 @f1(i32 %a, i32 %b) {



  %add = add i32 %b, 1
  ret i32 %add
}


define i32 @f2(i32 %a, i32 %b) {



  %add = add i32 %b, 32767
  ret i32 %add
}


define i32 @f3(i32 %a, i32 %b) {



  %add = add i32 %b, 32768
  ret i32 %add
}


define i32 @f4(i32 %a, i32 %b) {



  %add = add i32 %b, -1
  ret i32 %add
}


define i32 @f5(i32 %a, i32 %b) {



  %add = add i32 %b, -32768
  ret i32 %add
}


define i32 @f6(i32 %a, i32 %b) {



  %add = add i32 %b, -32769
  ret i32 %add
}


define i32 @f7(i32 %a) {



  %add = add i32 %a, 1
  ret i32 %add
}
