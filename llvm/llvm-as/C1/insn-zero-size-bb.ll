






declare i32 @foo(...)
declare void @bar()

define void @main() personality i8* bitcast (i32 (...)* @foo to i8*) {
entry:
  invoke void @bar() #0
          to label %unreachable unwind label %return

unreachable:


  unreachable

return:
  %0 = landingpad { i8*, i32 }
          catch i8* null
  ret void
}

attributes #0 = { noreturn }
