

define void @foo(i1 %c, i8* %p) {



if:
  br i1 %c, label %then, label %else
then:
  %t = load i8, i8* %p, !range !0
  br label %out
else:
  %e = load i8, i8* %p, !range !1
  br label %out
out:
  ret void
}

!0 = !{ i8 0, i8 1 }
!1 = !{ i8 3, i8 5 }
