

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-n32:64-S128"
target triple = "arm64-apple-ios3.0.0"


define i32 @anyZero64(<4 x i16> %a) #0 {






entry:
  %0 = bitcast <4 x i16> %a to <8 x i8>
  %vminv.i = tail call i32 @llvm.aarch64.neon.uminv.i32.v8i8(<8 x i8> %0) #3
  %1 = trunc i32 %vminv.i to i8
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %if.then, label %return

if.then:                                          
  %call1 = tail call i32 bitcast (i32 (...)* @bar to i32 ()*)() #4
  br label %return

return:                                           
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @bar(...) #1

define i32 @anyZero128(<8 x i16> %a) #0 {







entry:
  %0 = bitcast <8 x i16> %a to <16 x i8>
  %vminv.i = tail call i32 @llvm.aarch64.neon.uminv.i32.v16i8(<16 x i8> %0) #3
  %1 = trunc i32 %vminv.i to i8
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %if.then, label %return

if.then:                                          
  %call1 = tail call i32 bitcast (i32 (...)* @bar to i32 ()*)() #4
  br label %return

return:                                           
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

define i32 @anyNonZero64(<4 x i16> %a) #0 {







entry:
  %0 = bitcast <4 x i16> %a to <8 x i8>
  %vmaxv.i = tail call i32 @llvm.aarch64.neon.umaxv.i32.v8i8(<8 x i8> %0) #3
  %1 = trunc i32 %vmaxv.i to i8
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %return, label %if.then

if.then:                                          
  %call1 = tail call i32 bitcast (i32 (...)* @bar to i32 ()*)() #4
  br label %return

return:                                           
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

define i32 @anyNonZero128(<8 x i16> %a) #0 {






entry:
  %0 = bitcast <8 x i16> %a to <16 x i8>
  %vmaxv.i = tail call i32 @llvm.aarch64.neon.umaxv.i32.v16i8(<16 x i8> %0) #3
  %1 = trunc i32 %vmaxv.i to i8
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %return, label %if.then

if.then:                                          
  %call1 = tail call i32 bitcast (i32 (...)* @bar to i32 ()*)() #4
  br label %return

return:                                           
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

define i32 @allZero64(<4 x i16> %a) #0 {






entry:
  %0 = bitcast <4 x i16> %a to <8 x i8>
  %vmaxv.i = tail call i32 @llvm.aarch64.neon.umaxv.i32.v8i8(<8 x i8> %0) #3
  %1 = trunc i32 %vmaxv.i to i8
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %if.then, label %return

if.then:                                          
  %call1 = tail call i32 bitcast (i32 (...)* @bar to i32 ()*)() #4
  br label %return

return:                                           
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

define i32 @allZero128(<8 x i16> %a) #0 {






entry:
  %0 = bitcast <8 x i16> %a to <16 x i8>
  %vmaxv.i = tail call i32 @llvm.aarch64.neon.umaxv.i32.v16i8(<16 x i8> %0) #3
  %1 = trunc i32 %vmaxv.i to i8
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %if.then, label %return

if.then:                                          
  %call1 = tail call i32 bitcast (i32 (...)* @bar to i32 ()*)() #4
  br label %return

return:                                           
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

define i32 @allNonZero64(<4 x i16> %a) #0 {






entry:
  %0 = bitcast <4 x i16> %a to <8 x i8>
  %vminv.i = tail call i32 @llvm.aarch64.neon.uminv.i32.v8i8(<8 x i8> %0) #3
  %1 = trunc i32 %vminv.i to i8
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %return, label %if.then

if.then:                                          
  %call1 = tail call i32 bitcast (i32 (...)* @bar to i32 ()*)() #4
  br label %return

return:                                           
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

define i32 @allNonZero128(<8 x i16> %a) #0 {






entry:
  %0 = bitcast <8 x i16> %a to <16 x i8>
  %vminv.i = tail call i32 @llvm.aarch64.neon.uminv.i32.v16i8(<16 x i8> %0) #3
  %1 = trunc i32 %vminv.i to i8
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %return, label %if.then

if.then:                                          
  %call1 = tail call i32 bitcast (i32 (...)* @bar to i32 ()*)() #4
  br label %return

return:                                           
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @llvm.aarch64.neon.umaxv.i32.v16i8(<16 x i8>) #2

declare i32 @llvm.aarch64.neon.umaxv.i32.v8i8(<8 x i8>) #2

declare i32 @llvm.aarch64.neon.uminv.i32.v16i8(<16 x i8>) #2

declare i32 @llvm.aarch64.neon.uminv.i32.v8i8(<8 x i8>) #2

attributes #0 = { nounwind ssp "target-cpu"="cyclone" }
attributes #1 = { "target-cpu"="cyclone" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind }
