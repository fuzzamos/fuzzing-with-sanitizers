






declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32)

define i32 @foo(i32 %a, i32 %b)  {
entry:
  %0 = mul i32 %a, %b
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %0, i32 %b)
  %2 = extractvalue { i32, i1 } %1, 0
  ret i32 %2
}
