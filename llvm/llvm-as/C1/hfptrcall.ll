

@ptrsv = global float ()* @sv, align 4
@ptrdv = global double ()* @dv, align 4
@ptrscv = global { float, float } ()* @scv, align 4
@ptrdcv = global { double, double } ()* @dcv, align 4
@x = common global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@xd = common global double 0.000000e+00, align 8
@xy = common global { float, float } zeroinitializer, align 4
@.str1 = private unnamed_addr constant [10 x i8] c"%f + %fi\0A\00", align 1
@xyd = common global { double, double } zeroinitializer, align 8


define float @sv() #0 {
entry:
  ret float 1.000000e+01
}





define double @dv() #0 {
entry:
  ret double 1.500000e+01
}






define { float, float } @scv() #0 {
entry:
  %retval = alloca { float, float }, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %retval, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %retval, i32 0, i32 1
  store float 5.000000e+00, float* %real
  store float 9.900000e+01, float* %imag
  %0 = load { float, float }, { float, float }* %retval
  ret { float, float } %0
}






define { double, double } @dcv() #0 {
entry:
  %retval = alloca { double, double }, align 8
  %real = getelementptr inbounds { double, double }, { double, double }* %retval, i32 0, i32 0
  %imag = getelementptr inbounds { double, double }, { double, double }* %retval, i32 0, i32 1
  store double 0x416BC8B0A0000000, double* %real
  store double 0x41CDCCB763800000, double* %imag
  %0 = load { double, double }, { double, double }* %retval
  ret { double, double } %0
}






define i32 @main() #0 {
entry:
  %0 = load float ()*, float ()** @ptrsv, align 4
  %call = call float %0()
  store float %call, float* @x, align 4
  %1 = load float, float* @x, align 4
  %conv = fpext float %1 to double
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double %conv)
  %2 = load double ()*, double ()** @ptrdv, align 4
  %call2 = call double %2()
  store double %call2, double* @xd, align 8
  %3 = load double, double* @xd, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double %3)
  %4 = load { float, float } ()*, { float, float } ()** @ptrscv, align 4
  %call4 = call { float, float } %4()
  %5 = extractvalue { float, float } %call4, 0
  %6 = extractvalue { float, float } %call4, 1
  store float %5, float* getelementptr inbounds ({ float, float }, { float, float }* @xy, i32 0, i32 0)
  store float %6, float* getelementptr inbounds ({ float, float }, { float, float }* @xy, i32 0, i32 1)
  %xy.real = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @xy, i32 0, i32 0)
  %xy.imag = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @xy, i32 0, i32 1)
  %conv5 = fpext float %xy.real to double
  %conv6 = fpext float %xy.imag to double
  %xy.real7 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @xy, i32 0, i32 0)
  %xy.imag8 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @xy, i32 0, i32 1)
  %conv9 = fpext float %xy.real7 to double
  %conv10 = fpext float %xy.imag8 to double
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str1, i32 0, i32 0), double %conv5, double %conv10)
  %7 = load { double, double } ()*, { double, double } ()** @ptrdcv, align 4
  %call12 = call { double, double } %7()
  %8 = extractvalue { double, double } %call12, 0
  %9 = extractvalue { double, double } %call12, 1
  store double %8, double* getelementptr inbounds ({ double, double }, { double, double }* @xyd, i32 0, i32 0)
  store double %9, double* getelementptr inbounds ({ double, double }, { double, double }* @xyd, i32 0, i32 1)
  %xyd.real = load double, double* getelementptr inbounds ({ double, double }, { double, double }* @xyd, i32 0, i32 0)
  %xyd.imag = load double, double* getelementptr inbounds ({ double, double }, { double, double }* @xyd, i32 0, i32 1)
  %xyd.real13 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* @xyd, i32 0, i32 0)
  %xyd.imag14 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* @xyd, i32 0, i32 1)
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str1, i32 0, i32 0), double %xyd.real, double %xyd.imag14)
  ret i32 0
}












declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }



