
target datalayout = "e-p:16:8:8-i8:8:8-i16:8:8-i32:8:8"
target triple = "msp430-generic-generic"
@foo = common global i8 0, align 1

define void @mov(i8 %a) nounwind {


	store i8 %a, i8* @foo
	ret void
}

define void @and(i8 %a) nounwind {


	%1 = load i8, i8* @foo
	%2 = and i8 %a, %1
	store i8 %2, i8* @foo
	ret void
}

define void @add(i8 %a) nounwind {


	%1 = load i8, i8* @foo
	%2 = add i8 %a, %1
	store i8 %2, i8* @foo
	ret void
}

define void @bis(i8 %a) nounwind {


	%1 = load i8, i8* @foo
	%2 = or i8 %a, %1
	store i8 %2, i8* @foo
	ret void
}

define void @bic(i8 zeroext %m) nounwind {


        %1 = xor i8 %m, -1
        %2 = load i8, i8* @foo
        %3 = and i8 %2, %1
        store i8 %3, i8* @foo
        ret void
}

define void @xor(i8 %a) nounwind {


	%1 = load i8, i8* @foo
	%2 = xor i8 %a, %1
	store i8 %2, i8* @foo
	ret void
}

