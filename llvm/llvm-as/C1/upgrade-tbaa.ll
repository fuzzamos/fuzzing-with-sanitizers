



define void @_Z4testPiPf(i32* nocapture %pI, float* nocapture %pF) #0 {
entry:
  store i32 0, i32* %pI, align 4, !tbaa !{!"int", !0}
  
  store float 1.000000e+00, float* %pF, align 4, !tbaa !2
  
  ret void
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = !{!"omnipotent char", !1}
!1 = !{!"Simple C/C++ TBAA"}
!2 = !{!"float", !0}






