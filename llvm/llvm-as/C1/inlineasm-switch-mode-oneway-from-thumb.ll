



define hidden i32 @bah(i8* %start) #0 align 2 {
  %1 = ptrtoint i8* %start to i32
  %2 = tail call i32 asm sideeffect "@ Enter ARM Mode  \0A\09adr r3, 1f \0A\09bx  r3 \0A\09.align 2 \0A\09.code 32 \0A1:  push {r7} \0A\09mov r7, $4 \0A\09svc 0x0 \0A\09pop {r7} \0A\09", "={r0},{r0},{r1},{r2},r,~{r3}"(i32 %1, i32 %1, i32 0, i32 983042) #3
  %3 = add i32 %1, 1
  ret i32 %3
}








