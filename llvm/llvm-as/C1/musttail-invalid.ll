



declare x86_stdcallcc void @cc_mismatch_callee()
define void @cc_mismatch() {

  musttail call x86_stdcallcc void @cc_mismatch_callee()
  ret void
}

declare void @more_parms_callee(i32)
define void @more_parms() {

  musttail call void @more_parms_callee(i32 0)
  ret void
}

declare void @mismatched_intty_callee(i8)
define void @mismatched_intty(i32) {

  musttail call void @mismatched_intty_callee(i8 0)
  ret void
}

declare void @mismatched_vararg_callee(i8*, ...)
define void @mismatched_vararg(i8*) {

  musttail call void (i8*, ...) @mismatched_vararg_callee(i8* null)
  ret void
}



declare { i32, i32, i32 } @mismatched_retty_callee(i32)
define void @mismatched_retty(i32) {

  musttail call { i32, i32, i32 } @mismatched_retty_callee(i32 0)
  ret void
}

declare void @mismatched_byval_callee({ i32 }*)
define void @mismatched_byval({ i32 }* byval %a) {

  musttail call void @mismatched_byval_callee({ i32 }* %a)
  ret void
}

declare void @mismatched_inreg_callee(i32 inreg)
define void @mismatched_inreg(i32 %a) {

  musttail call void @mismatched_inreg_callee(i32 inreg %a)
  ret void
}

declare void @mismatched_sret_callee(i32* sret)
define void @mismatched_sret(i32* %a) {

  musttail call void @mismatched_sret_callee(i32* sret %a)
  ret void
}

declare void @mismatched_alignment_callee(i32* byval align 8)
define void @mismatched_alignment(i32* byval align 4 %a) {

  musttail call void @mismatched_alignment_callee(i32* byval align 8 %a)
  ret void
}

declare i32 @not_tail_pos_callee()
define i32 @not_tail_pos() {

  %v = musttail call i32 @not_tail_pos_callee()
  %w = add i32 %v, 1
  ret i32 %w
}

define void @inline_asm() {

  musttail call void asm "ret", ""()
  ret void
}
