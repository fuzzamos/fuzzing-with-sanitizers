
target datalayout = "E-m:o-p:32:32-f64:32:64-n32"
target triple = "powerpc-apple-macosx10.5.0"
 
%struct.sm = type { i8, i8 }
 

define void @foo(%struct.sm* byval %s) #0 {
entry:
  %a = getelementptr inbounds %struct.sm, %struct.sm* %s, i32 0, i32 0
  %0 = load i8, i8* %a, align 1
  %conv2 = zext i8 %0 to i32
  %add = add nuw nsw i32 %conv2, 3
  %conv1 = trunc i32 %add to i8
  store i8 %conv1, i8* %a, align 1
  call void @bar(%struct.sm* byval %s, %struct.sm* byval %s) #1
  ret void
}






 
declare void @bar(%struct.sm* byval, %struct.sm* byval)
 
attributes #0 = { nounwind ssp }
attributes #1 = { nounwind }
 
