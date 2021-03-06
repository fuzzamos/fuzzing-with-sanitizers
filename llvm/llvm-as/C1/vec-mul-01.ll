




define <16 x i8> @f1(<16 x i8> %dummy, <16 x i8> %val1, <16 x i8> %val2) {



  %ret = mul <16 x i8> %val1, %val2
  ret <16 x i8> %ret
}


define <8 x i16> @f2(<8 x i16> %dummy, <8 x i16> %val1, <8 x i16> %val2) {



  %ret = mul <8 x i16> %val1, %val2
  ret <8 x i16> %ret
}


define <4 x i32> @f3(<4 x i32> %dummy, <4 x i32> %val1, <4 x i32> %val2) {



  %ret = mul <4 x i32> %val1, %val2
  ret <4 x i32> %ret
}


define <2 x i64> @f4(<2 x i64> %dummy, <2 x i64> %val1, <2 x i64> %val2) {



  %ret = mul <2 x i64> %val1, %val2
  ret <2 x i64> %ret
}


define <2 x double> @f5(<2 x double> %dummy, <2 x double> %val1,
                        <2 x double> %val2) {



  %ret = fmul <2 x double> %val1, %val2
  ret <2 x double> %ret
}


define double @f6(<2 x double> %val1, <2 x double> %val2) {



  %scalar1 = extractelement <2 x double> %val1, i32 0
  %scalar2 = extractelement <2 x double> %val2, i32 0
  %ret = fmul double %scalar1, %scalar2
  ret double %ret
}
