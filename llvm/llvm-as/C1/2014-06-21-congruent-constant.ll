







@c = external global i32**, align 8

define void @test1() {
entry:
  br i1 undef, label %for.end12, label %for.cond.preheader

for.cond.preheader:                               
  %0 = load i32**, i32*** @c, align 8
  %1 = load i32*, i32** %0, align 8
  %2 = load i32, i32* %1, align 4
  br label %for.body

for.body:                                         
  %3 = phi i32* [ %1, %for.cond.preheader ], [ %3, %for.cond.backedge ], [ %6, %for.body9.us ]
  %4 = phi i32 [ %2, %for.cond.preheader ], [ undef, %for.cond.backedge ], [ %7, %for.body9.us ]
  %i.024 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.backedge ], [ 0, %for.body9.us ]
  %tobool1 = icmp eq i32 %4, 0
  br i1 %tobool1, label %if.end, label %for.cond.backedge

if.end:                                           
  %5 = load i32, i32* %3, align 4
  %tobool4 = icmp eq i32 %5, 0
  br i1 %tobool4, label %for.cond3, label %for.body9.preheader

for.body9.preheader:                              
  %tobool8 = icmp eq i32 %i.024, 1
  br i1 %tobool8, label %for.body9.us, label %for.body9

for.body9.us:                                     
  %6 = load i32*, i32** undef, align 8
  %7 = load i32, i32* %6, align 4
  br label %for.body

for.cond3:                                        
  br label %for.cond3

for.body9:                                        
  br label %for.body9

for.cond.backedge:                                
  %inc = add nsw i32 %i.024, 1
  br i1 false, label %for.body, label %for.end12

for.end12:                                        
  ret void



}
