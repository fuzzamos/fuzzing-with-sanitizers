

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"




define void @mov_no_attr(i64* %dst, i64* %src) {
  tail call void asm sideeffect "movq ($1), %rax  \0A\09movq %rax, ($0)  \0A\09", "r,r,~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64* %dst, i64* %src)
  ret void
}




define void @mov_sanitize(i64* %dst, i64* %src) sanitize_address {
  tail call void asm sideeffect "movq ($1), %rax  \0A\09movq %rax, ($0)  \0A\09", "r,r,~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64* %dst, i64* %src)
  ret void
}
