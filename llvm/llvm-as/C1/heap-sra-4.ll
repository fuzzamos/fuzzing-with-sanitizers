
target datalayout = "E-p:64:64:64-a0:0:8-f32:32:32-f64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-v64:64:64-v128:128:128"

	%struct.foo = type { i32, i32 }
@X = internal global %struct.foo* null



define void @bar(i64 %Size) nounwind noinline {
entry:
  %mallocsize = shl i64 %Size, 3                  
  %malloccall = tail call i8* @malloc(i64 %mallocsize) 

  %.sub = bitcast i8* %malloccall to %struct.foo* 
	store %struct.foo* %.sub, %struct.foo** @X, align 4
	ret void
}

declare noalias i8* @malloc(i64)

define i32 @baz() nounwind readonly noinline {
bb1.thread:
	%0 = load %struct.foo*, %struct.foo** @X, align 4		
	br label %bb1

bb1:		
	%i.0.reg2mem.0 = phi i32 [ 0, %bb1.thread ], [ %indvar.next, %bb1 ]
	%sum.0.reg2mem.0 = phi i32 [ 0, %bb1.thread ], [ %3, %bb1 ]
	%1 = getelementptr %struct.foo, %struct.foo* %0, i32 %i.0.reg2mem.0, i32 0
	%2 = load i32, i32* %1, align 4
	%3 = add i32 %2, %sum.0.reg2mem.0	
	%indvar.next = add i32 %i.0.reg2mem.0, 1	
	%exitcond = icmp eq i32 %indvar.next, 1200		
	br i1 %exitcond, label %bb2, label %bb1

bb2:		
	ret i32 %3
}

