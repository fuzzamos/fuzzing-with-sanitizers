

define double @t(double %x, double %y) nounwind optsize {
entry:
	%0 = tail call double @llvm.pow.f64( double %x, double %y )		
	ret double %0
}

declare double @llvm.pow.f64(double, double) nounwind readonly
