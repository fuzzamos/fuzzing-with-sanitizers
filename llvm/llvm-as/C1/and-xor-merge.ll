


define i32 @test1(i32 %x, i32 %y, i32 %z) {




        %tmp3 = and i32 %z, %x
        %tmp6 = and i32 %z, %y
        %tmp7 = xor i32 %tmp3, %tmp6
        ret i32 %tmp7
}


define i32 @test2(i32 %x, i32 %y, i32 %z) {



        %tmp3 = and i32 %y, %x
        %tmp6 = or i32 %y, %x
        %tmp7 = xor i32 %tmp3, %tmp6
        ret i32 %tmp7
}
