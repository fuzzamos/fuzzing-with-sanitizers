



declare void @llvm.eh.return.i32(i32, i8*)
declare void @foo(...)

define i8* @f1(i32 %offset, i8* %handler) {
entry:
  call void (...) @foo()
  call void @llvm.eh.return.i32(i32 %offset, i8* %handler)
  unreachable




































}

define i8* @f2(i32 %offset, i8* %handler) {
entry:
  call void @llvm.eh.return.i32(i32 %offset, i8* %handler)
  unreachable


































}
