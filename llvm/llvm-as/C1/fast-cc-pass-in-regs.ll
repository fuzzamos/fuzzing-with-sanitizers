


declare x86_fastcallcc i64 @callee(i64 inreg)

define i64 @caller() {
        %X = call x86_fastcallcc  i64 @callee( i64 4294967299 )          

        ret i64 %X
}

define x86_fastcallcc i64 @caller2(i64 inreg %X) {
        ret i64 %X

}

declare x86_thiscallcc i64 @callee2(i32)

define i64 @caller3() {
        %X = call x86_thiscallcc i64 @callee2( i32 3 )

        ret i64 %X
}

define x86_thiscallcc i32 @caller4(i32 %X) {
        ret i32 %X

}

