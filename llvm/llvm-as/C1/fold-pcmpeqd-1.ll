

define <2 x double> @foo() nounwind {
  ret <2 x double> bitcast (<2 x i64><i64 -1, i64 -1> to <2 x double>)




}
define <2 x double> @bar() nounwind {
  ret <2 x double> bitcast (<2 x i64><i64 0, i64 0> to <2 x double>)




}
