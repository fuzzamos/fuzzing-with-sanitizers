


%struct.pair = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1





define i32 @foo() uwtable safestack personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  
  %c = alloca %struct.pair, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %a = getelementptr inbounds %struct.pair, %struct.pair* %c, i32 0, i32 0
  store i32 0, i32* %a, align 4
  %a1 = getelementptr inbounds %struct.pair, %struct.pair* %c, i32 0, i32 0
  invoke void @_Z3exceptPi(i32* %a1)
          to label %invoke.cont unwind label %lpad

invoke.cont:
  ret i32 0

lpad:
  %0 = landingpad { i8*, i32 }
          catch i8* null
  ret i32 0
}

declare void @_Z3exceptPi(i32*)
declare i32 @__gxx_personality_v0(...)
