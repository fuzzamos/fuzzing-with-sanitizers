



target datalayout = "E-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64"
target triple = "powerpc-apple-darwin8"
@ld = external global ppc_fp128		
@d = global double 4.050000e+00, align 8		
@f = global float 0x4010333340000000		

define i32 @foo() {
entry:
	%retval = alloca i32, align 4		
	%"alloca point" = bitcast i32 0 to i32		
	%tmp = load float, float* @f		
	%tmp1 = fpext float %tmp to double		
	%tmp2 = load double, double* @d		
	%tmp3 = fmul double %tmp1, %tmp2		
	%tmp4 = fpext double %tmp3 to ppc_fp128		
	store ppc_fp128 %tmp4, ppc_fp128* @ld
	br label %return

return:		
	%retval4 = load i32, i32* %retval		
	ret i32 %retval4
}
