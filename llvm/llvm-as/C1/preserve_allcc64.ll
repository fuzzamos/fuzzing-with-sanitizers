


define preserve_allcc void @preserve_allcc1() nounwind {
entry:






























































  call void asm sideeffect "", "~{rax},~{rbx},~{rcx},~{rdx},~{rsi},~{rdi},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15},~{rbp},~{xmm0},~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15}"()
  ret void
}


declare preserve_allcc void @bar(i64, i64, double, double)
define void @preserve_allcc2() nounwind {
entry:




  %a0 = call i64 asm sideeffect "", "={rax}"() nounwind
  %a1 = call i64 asm sideeffect "", "={rcx}"() nounwind
  %a2 = call i64 asm sideeffect "", "={rdx}"() nounwind
  %a3 = call i64 asm sideeffect "", "={r8}"() nounwind
  %a4 = call i64 asm sideeffect "", "={r9}"() nounwind
  %a5 = call i64 asm sideeffect "", "={r10}"() nounwind
  %a6 = call i64 asm sideeffect "", "={r11}"() nounwind
  %a10 = call <2 x double> asm sideeffect "", "={xmm2}"() nounwind
  %a11 = call <2 x double> asm sideeffect "", "={xmm3}"() nounwind
  %a12 = call <2 x double> asm sideeffect "", "={xmm4}"() nounwind
  %a13 = call <2 x double> asm sideeffect "", "={xmm5}"() nounwind
  %a14 = call <2 x double> asm sideeffect "", "={xmm6}"() nounwind
  %a15 = call <2 x double> asm sideeffect "", "={xmm7}"() nounwind
  %a16 = call <2 x double> asm sideeffect "", "={xmm8}"() nounwind
  %a17 = call <2 x double> asm sideeffect "", "={xmm9}"() nounwind
  %a18 = call <2 x double> asm sideeffect "", "={xmm10}"() nounwind
  %a19 = call <2 x double> asm sideeffect "", "={xmm11}"() nounwind
  %a20 = call <2 x double> asm sideeffect "", "={xmm12}"() nounwind
  %a21 = call <2 x double> asm sideeffect "", "={xmm13}"() nounwind
  %a22 = call <2 x double> asm sideeffect "", "={xmm14}"() nounwind
  %a23 = call <2 x double> asm sideeffect "", "={xmm15}"() nounwind
  call preserve_allcc void @bar(i64 1, i64 2, double 3.0, double 4.0)
  call void asm sideeffect "", "{rax},{rcx},{rdx},{r8},{r9},{r10},{r11},{xmm2},{xmm3},{xmm4},{xmm5},{xmm6},{xmm7},{xmm8},{xmm9},{xmm10},{xmm11},{xmm12},{xmm13},{xmm14},{xmm15}"(i64 %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, <2 x double> %a10, <2 x double> %a11, <2 x double> %a12, <2 x double> %a13, <2 x double> %a14, <2 x double> %a15, <2 x double> %a16, <2 x double> %a17, <2 x double> %a18, <2 x double> %a19, <2 x double> %a20, <2 x double> %a21, <2 x double> %a22, <2 x double> %a23)
  ret void
}
