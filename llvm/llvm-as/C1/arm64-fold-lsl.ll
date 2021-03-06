



%struct.a = type [256 x i16]
%struct.b = type [256 x i32]
%struct.c = type [256 x i64]

define i16 @load_halfword(%struct.a* %ctx, i32 %xor72) nounwind {



  %shr81 = lshr i32 %xor72, 9
  %conv82 = zext i32 %shr81 to i64
  %idxprom83 = and i64 %conv82, 255
  %arrayidx86 = getelementptr inbounds %struct.a, %struct.a* %ctx, i64 0, i64 %idxprom83
  %result = load i16, i16* %arrayidx86, align 2
  ret i16 %result
}

define i32 @load_word(%struct.b* %ctx, i32 %xor72) nounwind {



  %shr81 = lshr i32 %xor72, 9
  %conv82 = zext i32 %shr81 to i64
  %idxprom83 = and i64 %conv82, 255
  %arrayidx86 = getelementptr inbounds %struct.b, %struct.b* %ctx, i64 0, i64 %idxprom83
  %result = load i32, i32* %arrayidx86, align 4
  ret i32 %result
}

define i64 @load_doubleword(%struct.c* %ctx, i32 %xor72) nounwind {



  %shr81 = lshr i32 %xor72, 9
  %conv82 = zext i32 %shr81 to i64
  %idxprom83 = and i64 %conv82, 255
  %arrayidx86 = getelementptr inbounds %struct.c, %struct.c* %ctx, i64 0, i64 %idxprom83
  %result = load i64, i64* %arrayidx86, align 8
  ret i64 %result
}

define void @store_halfword(%struct.a* %ctx, i32 %xor72, i16 %val) nounwind {



  %shr81 = lshr i32 %xor72, 9
  %conv82 = zext i32 %shr81 to i64
  %idxprom83 = and i64 %conv82, 255
  %arrayidx86 = getelementptr inbounds %struct.a, %struct.a* %ctx, i64 0, i64 %idxprom83
  store i16 %val, i16* %arrayidx86, align 8
  ret void
}

define void @store_word(%struct.b* %ctx, i32 %xor72, i32 %val) nounwind {



  %shr81 = lshr i32 %xor72, 9
  %conv82 = zext i32 %shr81 to i64
  %idxprom83 = and i64 %conv82, 255
  %arrayidx86 = getelementptr inbounds %struct.b, %struct.b* %ctx, i64 0, i64 %idxprom83
  store i32 %val, i32* %arrayidx86, align 8
  ret void
}

define void @store_doubleword(%struct.c* %ctx, i32 %xor72, i64 %val) nounwind {



  %shr81 = lshr i32 %xor72, 9
  %conv82 = zext i32 %shr81 to i64
  %idxprom83 = and i64 %conv82, 255
  %arrayidx86 = getelementptr inbounds %struct.c, %struct.c* %ctx, i64 0, i64 %idxprom83
  store i64 %val, i64* %arrayidx86, align 8
  ret void
}
