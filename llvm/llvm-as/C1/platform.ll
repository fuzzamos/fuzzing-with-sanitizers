




@__llvm_profile_name_foo = hidden constant [3 x i8] c"foo"








define void @foo() {
  call void @llvm.instrprof.increment(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @__llvm_profile_name_foo, i32 0, i32 0), i64 0, i32 1, i32 0)
  ret void
}

declare void @llvm.instrprof.increment(i8*, i64, i32, i32)









