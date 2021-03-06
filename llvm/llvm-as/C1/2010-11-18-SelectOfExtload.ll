

@u = external global i8
@s = external global i8
define i32 @foo(i1 %cond) {

  %u_base = load i8, i8* @u
  %u_val = zext i8 %u_base to i32


  %s_base = load i8, i8* @s
  %s_val = sext i8 %s_base to i32
  %val = select i1 %cond, i32 %u_val, i32 %s_val
  ret i32 %val
}
