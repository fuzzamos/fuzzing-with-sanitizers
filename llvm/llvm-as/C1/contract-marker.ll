








define void @foo() {
entry:
  %call = tail call i32* @qux()
  %tcall = bitcast i32* %call to i8*
  %0 = tail call i8* @objc_retainAutoreleasedReturnValue(i8* %tcall) nounwind
  tail call void @bar(i8* %0)
  ret void
}

declare i32* @qux()
declare i8* @objc_retainAutoreleasedReturnValue(i8*)
declare void @bar(i8*)

!clang.arc.retainAutoreleasedReturnValueMarker = !{!0}

!0 = !{!"mov\09r7, r7\09\09@ marker for objc_retainAutoreleaseReturnValue"}


