

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i686-apple-darwin8"

define <1 x i64> @a(<2 x i64> %__A) {
entry:
	%__A_addr = alloca <2 x i64>		
	%retval = alloca <1 x i64>, align 8		
	%"alloca point" = bitcast i32 0 to i32		
	store <2 x i64> %__A, <2 x i64>* %__A_addr
	%tmp = load <2 x i64>, <2 x i64>* %__A_addr, align 16		
	%tmp1 = bitcast <2 x i64> %tmp to <2 x i64>		
	%tmp2 = extractelement <2 x i64> %tmp1, i32 0		
	%tmp3 = bitcast i64 %tmp2 to <1 x i64>		
	store <1 x i64> %tmp3, <1 x i64>* %retval, align 8
	%tmp4 = load <1 x i64>, <1 x i64>* %retval, align 8		
	br label %return

return:		
	%retval5 = load <1 x i64>, <1 x i64>* %retval		
	ret <1 x i64> %retval5
}

define <1 x i64> @b(<2 x i64> %__A) {
entry:
	%__A_addr = alloca <2 x i64>		
	%retval = alloca <1 x i64>, align 8		
	%"alloca point" = bitcast i32 0 to i32		
	store <2 x i64> %__A, <2 x i64>* %__A_addr
	%tmp = load <2 x i64>, <2 x i64>* %__A_addr, align 16		
	%tmp1 = bitcast <2 x i64> %tmp to <2 x i64>		
	%tmp2 = extractelement <2 x i64> %tmp1, i32 1		
	%tmp3 = bitcast i64 %tmp2 to <1 x i64>		
	store <1 x i64> %tmp3, <1 x i64>* %retval, align 8
	%tmp4 = load <1 x i64>, <1 x i64>* %retval, align 8		
	br label %return

return:		
	%retval5 = load <1 x i64>, <1 x i64>* %retval		
	ret <1 x i64> %retval5
}

define i64 @c(<2 x i64> %__A) {
entry:
	%__A_addr = alloca <2 x i64>		
	%retval = alloca i64, align 8		
	%tmp = alloca i64, align 8		
	%"alloca point" = bitcast i32 0 to i32		
	store <2 x i64> %__A, <2 x i64>* %__A_addr
	%tmp1 = load <2 x i64>, <2 x i64>* %__A_addr, align 16		
	%tmp2 = bitcast <2 x i64> %tmp1 to <2 x i64>		
	%tmp3 = extractelement <2 x i64> %tmp2, i32 0		
	store i64 %tmp3, i64* %tmp, align 8
	%tmp4 = load i64, i64* %tmp, align 8		
	store i64 %tmp4, i64* %retval, align 8
	br label %return

return:		
	%retval5 = load i64, i64* %retval		
	ret i64 %retval5
}

define i64 @d(<2 x i64> %__A) {
entry:
	%__A_addr = alloca <2 x i64>		
	%retval = alloca i64, align 8		
	%tmp = alloca i64, align 8		
	%"alloca point" = bitcast i32 0 to i32		
	store <2 x i64> %__A, <2 x i64>* %__A_addr
	%tmp1 = load <2 x i64>, <2 x i64>* %__A_addr, align 16		
	%tmp2 = bitcast <2 x i64> %tmp1 to <2 x i64>		
	%tmp3 = extractelement <2 x i64> %tmp2, i32 1		
	store i64 %tmp3, i64* %tmp, align 8
	%tmp4 = load i64, i64* %tmp, align 8		
	store i64 %tmp4, i64* %retval, align 8
	br label %return

return:		
	%retval5 = load i64, i64* %retval		
	ret i64 %retval5
}
