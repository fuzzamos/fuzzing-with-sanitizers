



target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"

declare i8* @memmove(i8*, i8*, i32)



define i8* @test_simplify1(i8* %mem1, i8* %mem2, i32 %size) {

  %ret = call i8* @memmove(i8* %mem1, i8* %mem2, i32 %size)

  ret i8* %ret

}
