




define void @func_2() nounwind {
entry:
  unreachable

bb:
  %t = select i1 undef, i32* %t, i32* undef
  %p = select i1 undef, i32* %p, i32* %p
  %q = select i1 undef, i32* undef, i32* %p
  %a = getelementptr i8, i8* %a, i32 0
  unreachable
}
