

define void @foo() {
  
  call void asm sideeffect "and w0, w0, $0", "K"(i32 13)
  ret void
}
