

target triple = "nvptx64-unknown-cuda"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"






define float @myaddf(float %a) {
  %ret = fadd float %a, 1.0
  ret float %ret
}



define double @myaddd(double %a) {
  %ret = fadd double %a, 1.0
  ret double %ret
}
