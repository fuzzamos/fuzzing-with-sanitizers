

define void @test(i8* %P) {
	%W = load i8, i8* %P
	%X = shl i8 %W, 1
	%Y = add i8 %X, 2
	%Z = and i8 %Y, 254        
	store i8 %Z, i8* %P
	ret void
}

define zeroext i16 @test2(i16 zeroext %crc)  { 
        
        %tmp.1 = lshr i16 %crc, 1
        %tmp.7 = xor i16 %tmp.1, 40961
        ret i16 %tmp.7
}

