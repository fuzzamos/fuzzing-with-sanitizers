



declare double @copysign(double, double) nounwind readnone

declare float @copysignf(float, float) nounwind readnone

define float @func2(float %d, double %f) nounwind readnone {
entry:














  %add = fadd float %d, 1.000000e+00
  %conv = fptrunc double %f to float
  %call = tail call float @copysignf(float %add, float %conv) nounwind readnone
  ret float %call
}

define double @func3(double %d, float %f) nounwind readnone {
entry:
















  %add = fadd double %d, 1.000000e+00
  %conv = fpext float %f to double
  %call = tail call double @copysign(double %add, double %conv) nounwind readnone
  ret double %call
}

