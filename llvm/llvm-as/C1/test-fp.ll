

define double @test(double* %DP, double %Arg) {
	%D = load double, double* %DP		
	%V = fadd double %D, 1.000000e+00		
	%W = fsub double %V, %V		
	%X = fmul double %W, %W		
	%Y = fdiv double %X, %X		
	%Z = frem double %Y, %Y		
	%Z1 = fdiv double %Z, %W		
	%Q = fadd double %Z, %Arg		
	%R = bitcast double %Q to double		
	store double %R, double* %DP
	ret double %Z
}

define i32 @main() {
	%X = alloca double		
	store double 0.000000e+00, double* %X
	call double @test( double* %X, double 2.000000e+00 )		
	ret i32 0
}

