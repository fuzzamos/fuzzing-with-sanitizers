




define i32 @select_cmp_cmov_i32(i32 %a, i32 %b) {



  %1 = icmp ult i32 %a, %b
  br i1 %1, label %continue, label %exit

continue:
  %2 = select i1 %1, i32 %a, i32 %b
  ret i32 %2

exit:
  ret i32 -1
}

define float @select_fcmp_oeq_f32(float %a, float %b, float %c, float %d) {



  %1 = fcmp oeq float %a, %b
  br i1 %1, label %continue, label %exit

continue:
  %2 = select i1 %1, float %c, float %d
  ret float %2

exit:
  ret float -1.0
}

define float @select_fcmp_one_f32(float %a, float %b, float %c, float %d) {



  %1 = fcmp one float %a, %b
  br i1 %1, label %continue, label %exit

continue:
  %2 = select i1 %1, float %c, float %d
  ret float %2

exit:
  ret float -1.0
}

