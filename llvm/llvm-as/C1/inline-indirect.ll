


declare void @llvm.assume(i1)

define void @foo() {
  ret void
}

define void @bar(void ()*) {
  call void @llvm.assume(i1 true)
  call void %0()
  ret void
}

define void @baz() {
  call void @bar(void ()* @foo)
  ret void
}
