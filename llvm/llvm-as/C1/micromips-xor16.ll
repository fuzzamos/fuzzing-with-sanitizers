


define i32 @main() {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %retval
  %0 = load i32, i32* %b, align 4
  %1 = load i32, i32* %c, align 4
  %xor = xor i32 %0, %1
  store i32 %xor, i32* %a, align 4
  ret i32 0
}


