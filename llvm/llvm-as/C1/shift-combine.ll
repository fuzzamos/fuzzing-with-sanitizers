

@array = weak global [4 x i32] zeroinitializer

define i32 @test_lshr_and(i32 %x) {






entry:
  %tmp2 = lshr i32 %x, 2
  %tmp3 = and i32 %tmp2, 3
  %tmp4 = getelementptr [4 x i32], [4 x i32]* @array, i32 0, i32 %tmp3
  %tmp5 = load i32, i32* %tmp4, align 4
  ret i32 %tmp5
}

define i32* @test_exact1(i32 %a, i32 %b, i32* %x)  {



  %sub = sub i32 %b, %a
  %shr = ashr exact i32 %sub, 3
  %gep = getelementptr inbounds i32, i32* %x, i32 %shr
  ret i32* %gep
}

define i32* @test_exact2(i32 %a, i32 %b, i32* %x)  {



  %sub = sub i32 %b, %a
  %shr = ashr exact i32 %sub, 3
  %gep = getelementptr inbounds i32, i32* %x, i32 %shr
  ret i32* %gep
}

define i32* @test_exact3(i32 %a, i32 %b, i32* %x)  {



  %sub = sub i32 %b, %a
  %shr = ashr exact i32 %sub, 2
  %gep = getelementptr inbounds i32, i32* %x, i32 %shr
  ret i32* %gep
}

define i32* @test_exact4(i32 %a, i32 %b, i32* %x)  {



  %sub = sub i32 %b, %a
  %shr = lshr exact i32 %sub, 3
  %gep = getelementptr inbounds i32, i32* %x, i32 %shr
  ret i32* %gep
}

define i32* @test_exact5(i32 %a, i32 %b, i32* %x)  {



  %sub = sub i32 %b, %a
  %shr = lshr exact i32 %sub, 3
  %gep = getelementptr inbounds i32, i32* %x, i32 %shr
  ret i32* %gep
}

define i32* @test_exact6(i32 %a, i32 %b, i32* %x)  {



  %sub = sub i32 %b, %a
  %shr = lshr exact i32 %sub, 2
  %gep = getelementptr inbounds i32, i32* %x, i32 %shr
  ret i32* %gep
}
