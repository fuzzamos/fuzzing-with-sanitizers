


target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"

@PL_utf8skip = external constant [0 x i8]


define void @Perl_pp_quotemeta() #0 {
  %len = alloca i64, align 8
  br i1 undef, label %2, label %1


  br label %3


  br label %3


  br i1 undef, label %34, label %4


  br i1 undef, label %5, label %6


  br label %6


  br i1 undef, label %7, label %8


  br label %8


  br i1 undef, label %.preheader, label %9

.preheader:                                       
  br i1 undef, label %.loopexit, label %.lr.ph


  br i1 undef, label %thread-pre-split.preheader, label %.preheader

thread-pre-split.preheader:                       
  br i1 undef, label %thread-pre-split._crit_edge, label %.lr.ph21

.thread-pre-split.loopexit_crit_edge:             
  %scevgep.sum = xor i64 %umax, -1
  %scevgep45 = getelementptr i8, i8* %d.020, i64 %scevgep.sum
  br label %thread-pre-split.loopexit

thread-pre-split.loopexit:                        
  %d.1.lcssa = phi i8* [ %scevgep45, %.thread-pre-split.loopexit_crit_edge ], [ %d.020, %11 ]
  br i1 false, label %thread-pre-split._crit_edge, label %.lr.ph21

.lr.ph21:                                         
  %d.020 = phi i8* [ undef, %26 ], [ %d.1.lcssa, %thread-pre-split.loopexit ], [ undef, %thread-pre-split.preheader ]
  %10 = phi i64 [ %28, %26 ], [ undef, %thread-pre-split.loopexit ], [ undef, %thread-pre-split.preheader ]
  br i1 undef, label %11, label %22


  %12 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i64 0, i64 undef
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i64
  %15 = icmp ugt i64 %14, %10
  %. = select i1 %15, i64 %10, i64 %14
  br i1 undef, label %thread-pre-split.loopexit, label %.lr.ph28

.lr.ph28:                                         
  %16 = xor i64 %10, -1
  %17 = xor i64 %14, -1
  %18 = icmp ugt i64 %16, %17
  %umax = select i1 %18, i64 %16, i64 %17
  br label %19


  %ulen.126 = phi i64 [ %., %.lr.ph28 ], [ %20, %19 ]
  %20 = add i64 %ulen.126, -1
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %.thread-pre-split.loopexit_crit_edge, label %19


  br i1 undef, label %26, label %23


  br i1 undef, label %26, label %24


  br i1 undef, label %26, label %25


  br label %26


  %27 = load i64, i64* %len, align 8
  %28 = add i64 %27, -1
  br i1 undef, label %thread-pre-split._crit_edge, label %.lr.ph21

thread-pre-split._crit_edge:                      
  br label %.loopexit

.lr.ph:                                           
  br i1 undef, label %29, label %thread-pre-split5


  br i1 undef, label %33, label %30


  br i1 undef, label %33, label %31

thread-pre-split5:                                
  br i1 undef, label %33, label %31


  br i1 undef, label %33, label %32


  br label %33


  br i1 undef, label %.loopexit, label %.lr.ph

.loopexit:                                        
  br label %35


  br label %35


  br i1 undef, label %37, label %36


  br label %37


  ret void
}

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.6.0 "}
