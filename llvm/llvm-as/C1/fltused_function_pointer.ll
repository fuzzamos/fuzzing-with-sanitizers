








@.str = private constant [4 x i8] c"%f\0A\00"

define i32 @foo(i32 (i8*, ...)* %f) nounwind {
entry:
  %call = tail call i32 (i8*, ...) %f(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double 1.000000e+000) nounwind
  ret i32 0
}



