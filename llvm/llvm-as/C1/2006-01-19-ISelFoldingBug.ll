





@A = external global i32                

define i32 @test5(i32 %B, i8 %C) {
        %tmp.1 = load i32, i32* @A           
        %shift.upgrd.1 = zext i8 %C to i32              
        %tmp.2 = shl i32 %tmp.1, %shift.upgrd.1         
        %tmp.3 = sub i8 32, %C          
        %shift.upgrd.2 = zext i8 %tmp.3 to i32          
        %tmp.4 = lshr i32 %B, %shift.upgrd.2            
        %tmp.5 = or i32 %tmp.4, %tmp.2          
        store i32 %tmp.5, i32* @A
        ret i32 %tmp.5
}

