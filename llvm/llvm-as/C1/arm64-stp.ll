





define void @stp_int(i32 %a, i32 %b, i32* nocapture %p) nounwind {
  store i32 %a, i32* %p, align 4
  %add.ptr = getelementptr inbounds i32, i32* %p, i64 1
  store i32 %b, i32* %add.ptr, align 4
  ret void
}



define void @stp_long(i64 %a, i64 %b, i64* nocapture %p) nounwind {
  store i64 %a, i64* %p, align 8
  %add.ptr = getelementptr inbounds i64, i64* %p, i64 1
  store i64 %b, i64* %add.ptr, align 8
  ret void
}



define void @stp_float(float %a, float %b, float* nocapture %p) nounwind {
  store float %a, float* %p, align 4
  %add.ptr = getelementptr inbounds float, float* %p, i64 1
  store float %b, float* %add.ptr, align 4
  ret void
}



define void @stp_double(double %a, double %b, double* nocapture %p) nounwind {
  store double %a, double* %p, align 8
  %add.ptr = getelementptr inbounds double, double* %p, i64 1
  store double %b, double* %add.ptr, align 8
  ret void
}


define void @stur_int(i32 %a, i32 %b, i32* nocapture %p) nounwind {



  %p1 = getelementptr inbounds i32, i32* %p, i32 -1
  store i32 %a, i32* %p1, align 2
  %p2 = getelementptr inbounds i32, i32* %p, i32 -2
  store i32 %b, i32* %p2, align 2
  ret void
}

define void @stur_long(i64 %a, i64 %b, i64* nocapture %p) nounwind {



  %p1 = getelementptr inbounds i64, i64* %p, i32 -1
  store i64 %a, i64* %p1, align 2
  %p2 = getelementptr inbounds i64, i64* %p, i32 -2
  store i64 %b, i64* %p2, align 2
  ret void
}

define void @stur_float(float %a, float %b, float* nocapture %p) nounwind {



  %p1 = getelementptr inbounds float, float* %p, i32 -1
  store float %a, float* %p1, align 2
  %p2 = getelementptr inbounds float, float* %p, i32 -2
  store float %b, float* %p2, align 2
  ret void
}

define void @stur_double(double %a, double %b, double* nocapture %p) nounwind {



  %p1 = getelementptr inbounds double, double* %p, i32 -1
  store double %a, double* %p1, align 2
  %p2 = getelementptr inbounds double, double* %p, i32 -2
  store double %b, double* %p2, align 2
  ret void
}

define void @splat_v4i32(i32 %v, i32 *%p) {
entry:






  %p17 = insertelement <4 x i32> undef, i32 %v, i32 0
  %p18 = insertelement <4 x i32> %p17, i32 %v, i32 1
  %p19 = insertelement <4 x i32> %p18, i32 %v, i32 2
  %p20 = insertelement <4 x i32> %p19, i32 %v, i32 3
  %p21 = bitcast i32* %p to <4 x i32>*
  store <4 x i32> %p20, <4 x i32>* %p21, align 4
  ret void
}







define i32 @stp_int_rar_hazard(i32 %a, i32 %b, i32* nocapture %p) nounwind {
  store i32 %a, i32* %p, align 4
  %ld.ptr = getelementptr inbounds i32, i32* %p, i64 2
  %tmp = load i32, i32* %ld.ptr, align 4
  %tmp2 = add i32 %tmp, %b
  %add.ptr = getelementptr inbounds i32, i32* %p, i64 1
  store i32 %b, i32* %add.ptr, align 4
  ret i32 %tmp2
}







define i32 @stp_int_rar_hazard_after(i32 %w0, i32 %a, i32 %b, i32* nocapture %p) nounwind {
  store i32 %a, i32* %p, align 4
  %ld.ptr = getelementptr inbounds i32, i32* %p, i64 1
  %tmp = load i32, i32* %ld.ptr, align 4
  %tmp2 = add i32 %tmp, %b
  %add.ptr = getelementptr inbounds i32, i32* %p, i64 1
  store i32 %b, i32* %add.ptr, align 4
  ret i32 %tmp2
}
