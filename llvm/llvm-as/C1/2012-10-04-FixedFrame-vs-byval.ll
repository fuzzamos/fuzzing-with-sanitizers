

@.str = private unnamed_addr constant [12 x i8] c"val.a = %f\0A\00"
%struct_t = type { double, double, double }
@static_val = constant %struct_t { double 1.0, double 2.0, double 3.0 }

declare i32 @printf(i8*, ...)





define void @test_byval_usage_scheduling(i32 %n1, i32 %n2, %struct_t* byval %val) nounwind {
entry:
  %a = getelementptr inbounds %struct_t, %struct_t* %val, i32 0, i32 0
  %0 = load double, double* %a
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), double %0)
  ret void
}
