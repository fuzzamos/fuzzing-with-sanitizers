



%bar = type { i32 }

define i32 @foo()  {
  %tmp = extractvalue %bar { i32 3 }, 0
  ret i32 %tmp

}
