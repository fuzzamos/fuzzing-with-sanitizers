

@var32 = global i32 0
@var64 = global i64 0

define void @test_extendb32(i8 %var) {


  %sxt32 = sext i8 %var to i32
  store volatile i32 %sxt32, i32* @var32





  %uxt32 = zext i8 %var to i32
  store volatile i32 %uxt32, i32* @var32

  ret void
}

define void @test_extendb64(i8 %var) {


  %sxt64 = sext i8 %var to i64
  store volatile i64 %sxt64, i64* @var64





  %uxt64 = zext i8 %var to i64
  store volatile i64 %uxt64, i64* @var64

  ret void
}

define void @test_extendh32(i16 %var) {


  %sxt32 = sext i16 %var to i32
  store volatile i32 %sxt32, i32* @var32





  %uxt32 = zext i16 %var to i32
  store volatile i32 %uxt32, i32* @var32

  ret void
}

define void @test_extendh64(i16 %var) {


  %sxt64 = sext i16 %var to i64
  store volatile i64 %sxt64, i64* @var64





  %uxt64 = zext i16 %var to i64
  store volatile i64 %uxt64, i64* @var64

  ret void
}

define void @test_extendw(i32 %var) {


  %sxt64 = sext i32 %var to i64
  store volatile i64 %sxt64, i64* @var64


  %uxt64 = zext i32 %var to i64
  store volatile i64 %uxt64, i64* @var64

  ret void
}

define void @test_shifts(i32 %val32, i64 %val64) {


  %shift1 = ashr i32 %val32, 31
  store volatile i32 %shift1, i32* @var32


  %shift2 = lshr i32 %val32, 8
  store volatile i32 %shift2, i32* @var32


  %shift3 = shl i32 %val32, 1
  store volatile i32 %shift3, i32* @var32


  %shift4 = ashr i64 %val64, 31
  store volatile i64 %shift4, i64* @var64


  %shift5 = lshr i64 %val64, 8
  store volatile i64 %shift5, i64* @var64


  %shift6 = shl i64 %val64, 63
  store volatile i64 %shift6, i64* @var64


  %shift7 = ashr i64 %val64, 63
  store volatile i64 %shift7, i64* @var64


  %shift8 = lshr i64 %val64, 63
  store volatile i64 %shift8, i64* @var64


  %shift9 = lshr i32 %val32, 31
  store volatile i32 %shift9, i32* @var32


  %shift10 = shl i32 %val32, 31
  store volatile i32 %shift10, i32* @var32


  ret void
}



define void @test_sext_inreg_64(i64 %in) {




  %trunc_i1 = trunc i64 %in to i1
  %sext_i1 = sext i1 %trunc_i1 to i64
  store volatile i64 %sext_i1, i64* @var64


  %trunc_i8 = trunc i64 %in to i8
  %sext_i8 = sext i8 %trunc_i8 to i64
  store volatile i64 %sext_i8, i64* @var64


  %trunc_i16 = trunc i64 %in to i16
  %sext_i16 = sext i16 %trunc_i16 to i64
  store volatile i64 %sext_i16, i64* @var64


  %trunc_i32 = trunc i64 %in to i32
  %sext_i32 = sext i32 %trunc_i32 to i64
  store volatile i64 %sext_i32, i64* @var64

  ret void
}



define void @test_zext_inreg_64(i64 %in) {


  %trunc_i8 = trunc i64 %in to i8
  %zext_i8 = zext i8 %trunc_i8 to i64
  store volatile i64 %zext_i8, i64* @var64


  %trunc_i16 = trunc i64 %in to i16
  %zext_i16 = zext i16 %trunc_i16 to i64
  store volatile i64 %zext_i16, i64* @var64


  %trunc_i32 = trunc i64 %in to i32
  %zext_i32 = zext i32 %trunc_i32 to i64
  store volatile i64 %zext_i32, i64* @var64


  ret void
}

define i64 @test_sext_inreg_from_32(i32 %in) {


  %small = trunc i32 %in to i1
  %ext = sext i1 %small to i64

  
  
  

  ret i64 %ext
}


define i32 @test_ubfx32(i32* %addr) {



   %fields = load i32, i32* %addr
   %shifted = lshr i32 %fields, 23
   %masked = and i32 %shifted, 7
   ret i32 %masked
}

define i64 @test_ubfx64(i64* %addr) {


   %fields = load i64, i64* %addr
   %shifted = lshr i64 %fields, 25
   %masked = and i64 %shifted, 1023
   ret i64 %masked
}

define i32 @test_sbfx32(i32* %addr) {



   %fields = load i32, i32* %addr
   %shifted = shl i32 %fields, 23
   %extended = ashr i32 %shifted, 29
   ret i32 %extended
}

define i64 @test_sbfx64(i64* %addr) {



   %fields = load i64, i64* %addr
   %shifted = shl i64 %fields, 1
   %extended = ashr i64 %shifted, 1
   ret i64 %extended
}
