




target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"

@hello_world = constant [13 x i8] c"hello world\0A\00"
@h = constant [2 x i8] c"h\00"
@percent = constant [2 x i8] c"%\00"
@percent_c = constant [3 x i8] c"%c\00"
@percent_d = constant [3 x i8] c"%d\00"
@percent_f = constant [3 x i8] c"%f\00"
@percent_s = constant [4 x i8] c"%s\0A\00"
@empty = constant [1 x i8] c"\00"


declare i32 @printf(i8*, ...)



define void @test_simplify1() {

  %fmt = getelementptr [1 x i8], [1 x i8]* @empty, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* %fmt)
  ret void

}



define void @test_simplify2() {

  %fmt = getelementptr [2 x i8], [2 x i8]* @h, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* %fmt)

  ret void

}

define void @test_simplify3() {

  %fmt = getelementptr [2 x i8], [2 x i8]* @percent, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* %fmt)

  ret void

}



define void @test_simplify4() {

  %fmt = getelementptr [13 x i8], [13 x i8]* @hello_world, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* %fmt)

  ret void

}



define void @test_simplify5() {

  %fmt = getelementptr [3 x i8], [3 x i8]* @percent_c, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* %fmt, i8 104)

  ret void

}



define void @test_simplify6() {

  %fmt = getelementptr [4 x i8], [4 x i8]* @percent_s, i32 0, i32 0
  %str = getelementptr [13 x i8], [13 x i8]* @hello_world, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* %fmt, i8* %str)

  ret void

}



define void @test_simplify7() {

  %fmt = getelementptr [3 x i8], [3 x i8]* @percent_d, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* %fmt, i32 187)

  ret void

}

define void @test_no_simplify1() {

  %fmt = getelementptr [3 x i8], [3 x i8]* @percent_f, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* %fmt, double 1.87)

  ret void

}

define void @test_no_simplify2(i8* %fmt, double %d) {

  call i32 (i8*, ...) @printf(i8* %fmt, double %d)

  ret void

}

define i32 @test_no_simplify3() {

  %fmt = getelementptr [2 x i8], [2 x i8]* @h, i32 0, i32 0
  %ret = call i32 (i8*, ...) @printf(i8* %fmt)

  ret i32 %ret

}
