


%struct.s0 = type { x86_fp80, x86_fp80 }


define i8* @args_fail(%struct.s0* byval nocapture readonly align 16 %y) {
  %1 = bitcast %struct.s0* %y to i8*
  ret i8* %1
}
