







@str = private unnamed_addr constant [12 x i8] c"NSException\00"
define void @f() personality i8* bitcast (void ()* @h to i8*) {
  invoke void @g()
          to label %invoke.cont unwind label %lpad
invoke.cont:
  ret void
lpad:
  %tmp14 = landingpad { i8*, i32 }
           catch i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str, i64 0, i64 0)
  ret void
}
declare void @g()
declare void @h()
