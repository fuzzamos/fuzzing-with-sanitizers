




declare void @llvm.eh.return.i64(i64, i8*)
declare void @foo(...)

define void @f1(i64 %offset, i8* %handler) {
entry:
  call void (...) @foo()
  call void @llvm.eh.return.i64(i64 %offset, i8* %handler)
  unreachable




































}

define void @f2(i64 %offset, i8* %handler) {
entry:
  call void @llvm.eh.return.i64(i64 %offset, i8* %handler)
  unreachable





































}
