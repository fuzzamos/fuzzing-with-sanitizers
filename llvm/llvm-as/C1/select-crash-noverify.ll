



define i32 @test3(i1 %bool, i32 %a) {
entry:
  %cond = or i1 %bool, true
  br i1 %cond, label %return, label %xpto


xpto:
  %select = select i1 %bool, i32 %a, i32 %select
  %select2 = select i1 %bool, i32 %select2, i32 %a
  %sum = add i32 %select, %select2
  ret i32 %sum

return:
  ret i32 7
}
