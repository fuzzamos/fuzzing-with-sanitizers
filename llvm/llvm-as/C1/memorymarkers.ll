

%"struct.std::pair<int,int>" = type { i32, i32 }

declare void @_Z3barRKi(i32*)

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) nounwind
declare {}* @llvm.invariant.start(i64, i8* nocapture) readonly nounwind
declare void @llvm.invariant.end({}*, i64, i8* nocapture) nounwind

define i32 @_Z4foo2v() nounwind {
entry:
  %x = alloca %"struct.std::pair<int,int>"
  %y = bitcast %"struct.std::pair<int,int>"* %x to i8*

  
  
  call void @llvm.lifetime.start(i64 8, i8* %y)

  %0 = getelementptr %"struct.std::pair<int,int>", %"struct.std::pair<int,int>"* %x, i32 0, i32 0
  store i32 4, i32* %0, align 8
  %1 = getelementptr %"struct.std::pair<int,int>", %"struct.std::pair<int,int>"* %x, i32 0, i32 1
  store i32 5, i32* %1, align 4

  
  %inv = call {}* @llvm.invariant.start(i64 8, i8* %y)
  call void @_Z3barRKi(i32* %0) nounwind
  %2 = load i32, i32* %0, align 8

  
  call void @llvm.invariant.end({}* %inv, i64 8, i8* %y)
  
  call void @llvm.lifetime.end(i64 8, i8* %y)
  ret i32 %2
}
