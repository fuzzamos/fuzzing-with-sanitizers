






define <2 x double> @a(<2 x i32> %x) nounwind {
entry:
  %y = sitofp <2 x i32> %x to <2 x double>
  ret <2 x double> %y
}

define <2 x i32> @b(<2 x double> %x) nounwind {
entry:
  %y = fptosi <2 x double> %x to <2 x i32>
  ret <2 x i32> %y
}



define <2 x double> @a2(x86_mmx %x) nounwind {
entry:
  %y = tail call <2 x double> @llvm.x86.sse.cvtpi2pd(x86_mmx %x)
  ret <2 x double> %y
}

define x86_mmx @b2(<2 x double> %x) nounwind {
entry:
  %y = tail call x86_mmx @llvm.x86.sse.cvttpd2pi (<2 x double> %x)
  ret x86_mmx %y
}

declare <2 x double> @llvm.x86.sse.cvtpi2pd(x86_mmx)
declare x86_mmx @llvm.x86.sse.cvttpd2pi(<2 x double>)
