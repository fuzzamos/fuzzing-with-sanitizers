


define void @t(i8* %a, ...) nounwind {




entry:
  %a.addr = alloca i8, i32 4
  call void @llvm.va_start(i8* %a.addr)
  ret void
}

declare void @llvm.va_start(i8*) nounwind
