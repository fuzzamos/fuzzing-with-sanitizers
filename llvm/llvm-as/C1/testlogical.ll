



define i32 @simpleAdd(i32 %i0, i32 %j0) {
        %t1 = xor i32 %i0, %j0          
        %t2 = or i32 %i0, %j0           
        %t3 = and i32 %t1, %t2          
        ret i32 %t3
}

