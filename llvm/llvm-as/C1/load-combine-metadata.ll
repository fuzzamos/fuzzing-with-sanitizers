

target datalayout = "e-m:e-p:64:64:64-i64:64-f80:128-n8:16:32:64-S128"








define void @test_load_load_combine_metadata(i32*, i32*, i32*) {
  %a = load i32, i32* %0, !tbaa !8, !range !0, !alias.scope !5, !noalias !6
  %b = load i32, i32* %0, !tbaa !8, !range !1
  store i32 %a, i32* %1
  store i32 %b, i32* %2
  ret void
}


!0 = !{ i32 0, i32 1 }
!1 = !{ i32 8, i32 9 }
!2 = !{!2}
!3 = !{!3, !2}
!4 = !{!4, !2}
!5 = !{!3}
!6 = !{!4}
!7 = !{ !"tbaa root" }
!8 = !{ !7, !7, i64 0 }
