


define void @main() nounwind uwtable {
entry:
  %x = alloca i32, align 4
  %0 = load i32, i32* %x, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:
  store i32 10, i32* %x, align 4
  br label %if.end

if.end:
  ret void
}


