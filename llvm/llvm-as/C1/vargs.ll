



@str = internal constant [4 x i8] c"%d\0A\00"           

define void @f(i32 %a, ...) {
entry:




        %va = alloca i8*, align 4               
        %va.upgrd.1 = bitcast i8** %va to i8*           
        call void @llvm.va_start( i8* %va.upgrd.1 )
        br label %bb

bb:             
        %a_addr.0 = phi i32 [ %a, %entry ], [ %tmp5, %bb ]              
        %tmp = load volatile i8*, i8** %va           
        %tmp2 = getelementptr i8, i8* %tmp, i32 4           
        store volatile i8* %tmp2, i8** %va
        %tmp5 = add i32 %a_addr.0, -1           
        %tmp.upgrd.2 = icmp eq i32 %a_addr.0, 1         
        br i1 %tmp.upgrd.2, label %bb7, label %bb

bb7:            
        %tmp3 = bitcast i8* %tmp to i32*                
        %tmp.upgrd.3 = load i32, i32* %tmp3          
        %tmp10 = call i32 (i8*, ...) @printf( i8* getelementptr ([4 x i8], [4 x i8]* @str, i32 0, i64 0), i32 %tmp.upgrd.3 )                
        %va.upgrd.4 = bitcast i8** %va to i8*           
        call void @llvm.va_end( i8* %va.upgrd.4 )
        ret void







}

declare void @llvm.va_start(i8*)

declare i32 @printf(i8*, ...)

declare void @llvm.va_end(i8*)
