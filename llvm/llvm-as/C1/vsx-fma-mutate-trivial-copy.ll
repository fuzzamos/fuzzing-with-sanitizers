
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define void @LSH_recall_init(float %d_min, float %W) #0 {
entry:
  br i1 undef, label %for.body.lr.ph, label %for.end




for.body.lr.ph:                                   
  %conv3 = fpext float %W to double
  br label %for.body

for.body:                                         
  %div = fdiv fast float 0.000000e+00, 0.000000e+00
  %add = fadd fast float %div, %d_min
  %conv2 = fpext float %add to double
  %0 = tail call double @llvm.sqrt.f64(double %conv2)
  %div4 = fdiv fast double %conv3, %0
  %call = tail call signext i32 bitcast (i32 (...)* @p_col_helper to i32 (double)*)(double %div4) #2
  br label %for.body

for.end:                                          
  ret void
}


declare double @llvm.sqrt.f64(double) #1

declare signext i32 @p_col_helper(...) #2

attributes #0 = { nounwind "no-infs-fp-math"="true" "no-nans-fp-math"="true" "target-cpu"="pwr7" "unsafe-fp-math"="true" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

