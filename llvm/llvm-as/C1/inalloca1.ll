

declare void @a(i64* byval inalloca %p)


declare void @b(i64* inreg inalloca %p)


declare void @c(i64* sret inalloca %p)


declare void @d(i64* nest inalloca %p)


declare void @e(i64* readonly inalloca %p)


declare void @f(void ()* inalloca %p)


declare void @g(i32* inalloca %p, i32 %p2)

