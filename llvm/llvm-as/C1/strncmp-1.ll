


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"

@hello = constant [6 x i8] c"hello\00"
@hell = constant [5 x i8] c"hell\00"
@bell = constant [5 x i8] c"bell\00"
@null = constant [1 x i8] zeroinitializer

declare i32 @strncmp(i8*, i8*, i32)


define i32 @test1(i8* %str2) {






  %str1 = getelementptr inbounds [1 x i8], [1 x i8]* @null, i32 0, i32 0
  %temp1 = call i32 @strncmp(i8* %str1, i8* %str2, i32 10)
  ret i32 %temp1
}


define i32 @test2(i8* %str1) {





  %str2 = getelementptr inbounds [1 x i8], [1 x i8]* @null, i32 0, i32 0
  %temp1 = call i32 @strncmp(i8* %str1, i8* %str2, i32 10)
  ret i32 %temp1
}


define i32 @test3() {



  %str1 = getelementptr inbounds [5 x i8], [5 x i8]* @hell, i32 0, i32 0
  %str2 = getelementptr inbounds [6 x i8], [6 x i8]* @hello, i32 0, i32 0
  %temp1 = call i32 @strncmp(i8* %str1, i8* %str2, i32 10)
  ret i32 %temp1
}

define i32 @test4() {



  %str1 = getelementptr inbounds [5 x i8], [5 x i8]* @hell, i32 0, i32 0
  %str2 = getelementptr inbounds [1 x i8], [1 x i8]* @null, i32 0, i32 0
  %temp1 = call i32 @strncmp(i8* %str1, i8* %str2, i32 10)
  ret i32 %temp1
}

define i32 @test5() {



  %str1 = getelementptr inbounds [5 x i8], [5 x i8]* @hell, i32 0, i32 0
  %str2 = getelementptr inbounds [6 x i8], [6 x i8]* @hello, i32 0, i32 0
  %temp1 = call i32 @strncmp(i8* %str1, i8* %str2, i32 4)
  ret i32 %temp1
}


define i32 @test6(i8* %str1, i8* %str2) {








  %temp1 = call i32 @strncmp(i8* %str1, i8* %str2, i32 1)
  ret i32 %temp1
}


define i32 @test7(i8* %str1, i8* %str2) {



  %temp1 = call i32 @strncmp(i8* %str1, i8* %str2, i32 0)
  ret i32 %temp1
}


define i32 @test8(i8* %str, i32 %n) {



  %temp1 = call i32 @strncmp(i8* %str, i8* %str, i32 %n)
  ret i32 %temp1
}
