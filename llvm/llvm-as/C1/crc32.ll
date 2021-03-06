

define i32 @test_crc32b(i32 %cur, i8 %next) {


  %bits = zext i8 %next to i32
  %val = call i32 @llvm.arm.crc32b(i32 %cur, i32 %bits)
  ret i32 %val
}

define i32 @test_crc32h(i32 %cur, i16 %next) {


  %bits = zext i16 %next to i32
  %val = call i32 @llvm.arm.crc32h(i32 %cur, i32 %bits)
  ret i32 %val
}

define i32 @test_crc32w(i32 %cur, i32 %next) {


  %val = call i32 @llvm.arm.crc32w(i32 %cur, i32 %next)
  ret i32 %val
}

define i32 @test_crc32cb(i32 %cur, i8 %next) {


  %bits = zext i8 %next to i32
  %val = call i32 @llvm.arm.crc32cb(i32 %cur, i32 %bits)
  ret i32 %val
}

define i32 @test_crc32ch(i32 %cur, i16 %next) {


  %bits = zext i16 %next to i32
  %val = call i32 @llvm.arm.crc32ch(i32 %cur, i32 %bits)
  ret i32 %val
}

define i32 @test_crc32cw(i32 %cur, i32 %next) {


  %val = call i32 @llvm.arm.crc32cw(i32 %cur, i32 %next)
  ret i32 %val
}


declare i32 @llvm.arm.crc32b(i32, i32)
declare i32 @llvm.arm.crc32h(i32, i32)
declare i32 @llvm.arm.crc32w(i32, i32)
declare i32 @llvm.arm.crc32x(i32, i64)

declare i32 @llvm.arm.crc32cb(i32, i32)
declare i32 @llvm.arm.crc32ch(i32, i32)
declare i32 @llvm.arm.crc32cw(i32, i32)
declare i32 @llvm.arm.crc32cx(i32, i64)
