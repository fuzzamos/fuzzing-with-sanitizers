













define void @_Z9chk1D_512v() #0 {
entry:
  %a0 = alloca i32, align 4
  %b0 = alloca i32, align 4
  %c0 = alloca i32, align 4
  %d0 = alloca i32, align 4
  %a1 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %d1 = alloca i32, align 4
  %data = alloca i32, align 4
  %0 = load i32, i32* %a0, align 4
  %1 = load i32, i32* %b0, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    
  %2 = load i32, i32* %c0, align 4
  %3 = load i32, i32* %d0, align 4
  %cmp1 = icmp ne i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          
  br label %if.end

if.else:                                          
  store i32 1, i32* %data, align 4
  br label %if.end

if.end:                                           
  %4 = load i32, i32* %a1, align 4
  %5 = load i32, i32* %b1, align 4
  %cmp2 = icmp ne i32 %4, %5
  br i1 %cmp2, label %land.lhs.true3, label %if.else6

land.lhs.true3:                                   
  %6 = load i32, i32* %c1, align 4
  %7 = load i32, i32* %d1, align 4
  %cmp4 = icmp ne i32 %6, %7
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         
  br label %if.end7

if.else6:                                         
  store i32 1, i32* %data, align 4
  br label %if.end7

if.end7:                                          
  ret void
}

