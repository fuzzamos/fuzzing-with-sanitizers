

define i8* @ap_php_conv_p2(){
entry:
        %ap.addr = alloca i8*           
        br label %sw.bb301
sw.bb301:
        %0 = va_arg i8** %ap.addr, i64          
        br label %sw.bb301
}
