


	%XXOO = type { %"struct.XXC::XXCC", i8*, %"struct.XXC::XXOO::$_71" }
	%XXValue = type opaque
	%"struct.XXC::ArrayStorage" = type { i32, i32, i32, i8*, i8*, [1 x %XXValue*] }
	%"struct.XXC::XXArray" = type { %XXOO, i32, %"struct.XXC::ArrayStorage"* }
	%"struct.XXC::XXCC" = type { i32 (...)**, i8* }
	%"struct.XXC::XXOO::$_71" = type { [2 x %XXValue*] }

define internal fastcc %XXValue* @t(i64* %out, %"struct.XXC::ArrayStorage"* %tmp9) nounwind {
prologue:
	%array = load %XXValue*, %XXValue** inttoptr (i64 11111111 to %XXValue**)		
	%index = load %XXValue*, %XXValue** inttoptr (i64 22222222 to %XXValue**)		
	%tmp = ptrtoint %XXValue* %index to i64		
	store i64 %tmp, i64* %out
	%tmp6 = trunc i64 %tmp to i32		
	br label %bb5

bb5:		
	%tmp10 = zext i32 %tmp6 to i64		
	%tmp11 = getelementptr %"struct.XXC::ArrayStorage", %"struct.XXC::ArrayStorage"* %tmp9, i64 0, i32 5, i64 %tmp10		
	%tmp12 = load %XXValue*, %XXValue** %tmp11, align 8		
	ret %XXValue* %tmp12
}
