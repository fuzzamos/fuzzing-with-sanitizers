

@var32 = global i32 0
@var64 = global i64 0

define void @foo() {


  %val1 = load volatile i32, i32* @var32
  %tst1 = icmp eq i32 %val1, 0
  br i1 %tst1, label %end, label %test2


test2:
  %val2 = load volatile i32, i32* @var32
  %tst2 = icmp ne i32 %val2, 0
  br i1 %tst2, label %end, label %test3


test3:
  %val3 = load volatile i64, i64* @var64
  %tst3 = icmp eq i64 %val3, 0
  br i1 %tst3, label %end, label %test4


test4:
  %val4 = load volatile i64, i64* @var64
  %tst4 = icmp ne i64 %val4, 0
  br i1 %tst4, label %end, label %test5


test5:
  store volatile i64 %val4, i64* @var64
  ret void

end:
  ret void
}
