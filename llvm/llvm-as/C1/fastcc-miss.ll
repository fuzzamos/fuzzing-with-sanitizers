





define internal i32 @bar(i32 signext %a, i32 signext %b) {
  %s = and i32 %a, %b
  ret i32 %s
}

define i32 @foo(i32 signext %a, i32 signext %b) {
  %call = call fastcc i32 @foo(i32 signext %a, i32 signext %b)
  ret i32 %call
}
