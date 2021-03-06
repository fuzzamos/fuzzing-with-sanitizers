













define void @udiv24_i8(i8 addrspace(1)* %out, i8 addrspace(1)* %in) {
  %den_ptr = getelementptr i8, i8 addrspace(1)* %in, i8 1
  %num = load i8, i8 addrspace(1) * %in
  %den = load i8, i8 addrspace(1) * %den_ptr
  %result = udiv i8 %num, %den
  store i8 %result, i8 addrspace(1)* %out
  ret void
}











define void @udiv24_i16(i16 addrspace(1)* %out, i16 addrspace(1)* %in) {
  %den_ptr = getelementptr i16, i16 addrspace(1)* %in, i16 1
  %num = load i16, i16 addrspace(1) * %in, align 2
  %den = load i16, i16 addrspace(1) * %den_ptr, align 2
  %result = udiv i16 %num, %den
  store i16 %result, i16 addrspace(1)* %out, align 2
  ret void
}











define void @udiv24_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
  %den_ptr = getelementptr i32, i32 addrspace(1)* %in, i32 1
  %num = load i32, i32 addrspace(1) * %in, align 4
  %den = load i32, i32 addrspace(1) * %den_ptr, align 4
  %num.i24.0 = shl i32 %num, 8
  %den.i24.0 = shl i32 %den, 8
  %num.i24 = lshr i32 %num.i24.0, 8
  %den.i24 = lshr i32 %den.i24.0, 8
  %result = udiv i32 %num.i24, %den.i24
  store i32 %result, i32 addrspace(1)* %out, align 4
  ret void
}








define void @udiv25_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
  %den_ptr = getelementptr i32, i32 addrspace(1)* %in, i32 1
  %num = load i32, i32 addrspace(1) * %in, align 4
  %den = load i32, i32 addrspace(1) * %den_ptr, align 4
  %num.i24.0 = shl i32 %num, 7
  %den.i24.0 = shl i32 %den, 7
  %num.i24 = lshr i32 %num.i24.0, 7
  %den.i24 = lshr i32 %den.i24.0, 7
  %result = udiv i32 %num.i24, %den.i24
  store i32 %result, i32 addrspace(1)* %out, align 4
  ret void
}








define void @test_no_udiv24_i32_1(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
  %den_ptr = getelementptr i32, i32 addrspace(1)* %in, i32 1
  %num = load i32, i32 addrspace(1) * %in, align 4
  %den = load i32, i32 addrspace(1) * %den_ptr, align 4
  %num.i24.0 = shl i32 %num, 8
  %den.i24.0 = shl i32 %den, 7
  %num.i24 = lshr i32 %num.i24.0, 8
  %den.i24 = lshr i32 %den.i24.0, 7
  %result = udiv i32 %num.i24, %den.i24
  store i32 %result, i32 addrspace(1)* %out, align 4
  ret void
}








define void @test_no_udiv24_i32_2(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
  %den_ptr = getelementptr i32, i32 addrspace(1)* %in, i32 1
  %num = load i32, i32 addrspace(1) * %in, align 4
  %den = load i32, i32 addrspace(1) * %den_ptr, align 4
  %num.i24.0 = shl i32 %num, 7
  %den.i24.0 = shl i32 %den, 8
  %num.i24 = lshr i32 %num.i24.0, 7
  %den.i24 = lshr i32 %den.i24.0, 8
  %result = udiv i32 %num.i24, %den.i24
  store i32 %result, i32 addrspace(1)* %out, align 4
  ret void
}











define void @urem24_i8(i8 addrspace(1)* %out, i8 addrspace(1)* %in) {
  %den_ptr = getelementptr i8, i8 addrspace(1)* %in, i8 1
  %num = load i8, i8 addrspace(1) * %in
  %den = load i8, i8 addrspace(1) * %den_ptr
  %result = urem i8 %num, %den
  store i8 %result, i8 addrspace(1)* %out
  ret void
}











define void @urem24_i16(i16 addrspace(1)* %out, i16 addrspace(1)* %in) {
  %den_ptr = getelementptr i16, i16 addrspace(1)* %in, i16 1
  %num = load i16, i16 addrspace(1) * %in, align 2
  %den = load i16, i16 addrspace(1) * %den_ptr, align 2
  %result = urem i16 %num, %den
  store i16 %result, i16 addrspace(1)* %out, align 2
  ret void
}











define void @urem24_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
  %den_ptr = getelementptr i32, i32 addrspace(1)* %in, i32 1
  %num = load i32, i32 addrspace(1) * %in, align 4
  %den = load i32, i32 addrspace(1) * %den_ptr, align 4
  %num.i24.0 = shl i32 %num, 8
  %den.i24.0 = shl i32 %den, 8
  %num.i24 = lshr i32 %num.i24.0, 8
  %den.i24 = lshr i32 %den.i24.0, 8
  %result = urem i32 %num.i24, %den.i24
  store i32 %result, i32 addrspace(1)* %out, align 4
  ret void
}








define void @urem25_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
  %den_ptr = getelementptr i32, i32 addrspace(1)* %in, i32 1
  %num = load i32, i32 addrspace(1) * %in, align 4
  %den = load i32, i32 addrspace(1) * %den_ptr, align 4
  %num.i24.0 = shl i32 %num, 7
  %den.i24.0 = shl i32 %den, 7
  %num.i24 = lshr i32 %num.i24.0, 7
  %den.i24 = lshr i32 %den.i24.0, 7
  %result = urem i32 %num.i24, %den.i24
  store i32 %result, i32 addrspace(1)* %out, align 4
  ret void
}








define void @test_no_urem24_i32_1(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
  %den_ptr = getelementptr i32, i32 addrspace(1)* %in, i32 1
  %num = load i32, i32 addrspace(1) * %in, align 4
  %den = load i32, i32 addrspace(1) * %den_ptr, align 4
  %num.i24.0 = shl i32 %num, 8
  %den.i24.0 = shl i32 %den, 7
  %num.i24 = lshr i32 %num.i24.0, 8
  %den.i24 = lshr i32 %den.i24.0, 7
  %result = urem i32 %num.i24, %den.i24
  store i32 %result, i32 addrspace(1)* %out, align 4
  ret void
}








define void @test_no_urem24_i32_2(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
  %den_ptr = getelementptr i32, i32 addrspace(1)* %in, i32 1
  %num = load i32, i32 addrspace(1) * %in, align 4
  %den = load i32, i32 addrspace(1) * %den_ptr, align 4
  %num.i24.0 = shl i32 %num, 7
  %den.i24.0 = shl i32 %den, 8
  %num.i24 = lshr i32 %num.i24.0, 7
  %den.i24 = lshr i32 %den.i24.0, 8
  %result = urem i32 %num.i24, %den.i24
  store i32 %result, i32 addrspace(1)* %out, align 4
  ret void
}
