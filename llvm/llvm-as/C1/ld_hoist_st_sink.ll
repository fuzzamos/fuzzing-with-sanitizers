


target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

%struct.node = type { i64, %struct.node*, %struct.node*, %struct.node*, i64, %struct.arc*, i64, i64, i64 }
%struct.arc = type { i64, i64, i64 }

define i64 @foo(%struct.node* nocapture readonly %r) nounwind {
entry:
  %node.0.in16 = getelementptr inbounds %struct.node, %struct.node* %r, i64 0, i32 2
  %node.017 = load %struct.node*, %struct.node** %node.0.in16, align 8
  %tobool18 = icmp eq %struct.node* %node.017, null
  br i1 %tobool18, label %while.end, label %while.body.preheader


while.body.preheader:                             

  br label %while.body

while.body:                                       
  %node.020 = phi %struct.node* [ %node.0, %if.end ], [ %node.017, %while.body.preheader ]
  %sum.019 = phi i64 [ %inc, %if.end ], [ 0, %while.body.preheader ]
  %orientation = getelementptr inbounds %struct.node, %struct.node* %node.020, i64 0, i32 4
  %0 = load i64, i64* %orientation, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  %a = getelementptr inbounds %struct.node, %struct.node* %node.020, i64 0, i32 5

  %1 = load %struct.arc*, %struct.arc** %a, align 8
  %cost = getelementptr inbounds %struct.arc, %struct.arc* %1, i64 0, i32 0

  %2 = load i64, i64* %cost, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %node.020, i64 0, i32 1

  %3 = load %struct.node*, %struct.node** %pred, align 8
  %p = getelementptr inbounds %struct.node, %struct.node* %3, i64 0, i32 6

  %4 = load i64, i64* %p, align 8
  %add = add nsw i64 %4, %2
  %p1 = getelementptr inbounds %struct.node, %struct.node* %node.020, i64 0, i32 6

  store i64 %add, i64* %p1, align 8
  br label %if.end


if.else:                                          
  %pred2 = getelementptr inbounds %struct.node, %struct.node* %node.020, i64 0, i32 1

  %5 = load %struct.node*, %struct.node** %pred2, align 8
  %p3 = getelementptr inbounds %struct.node, %struct.node* %5, i64 0, i32 6

  %6 = load i64, i64* %p3, align 8
  %a4 = getelementptr inbounds %struct.node, %struct.node* %node.020, i64 0, i32 5

  %7 = load %struct.arc*, %struct.arc** %a4, align 8
  %cost5 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 0, i32 0

  %8 = load i64, i64* %cost5, align 8
  %sub = sub nsw i64 %6, %8
  %p6 = getelementptr inbounds %struct.node, %struct.node* %node.020, i64 0, i32 6

  store i64 %sub, i64* %p6, align 8
  br label %if.end


if.end:                                           

  %inc = add nsw i64 %sum.019, 1
  %node.0.in = getelementptr inbounds %struct.node, %struct.node* %node.020, i64 0, i32 2
  %node.0 = load %struct.node*, %struct.node** %node.0.in, align 8
  %tobool = icmp eq %struct.node* %node.0, null
  br i1 %tobool, label %while.end.loopexit, label %while.body

while.end.loopexit:                               
  %inc.lcssa = phi i64 [ %inc, %if.end ]
  br label %while.end

while.end:                                        
  %sum.0.lcssa = phi i64 [ 0, %entry ], [ %inc.lcssa, %while.end.loopexit ]
  ret i64 %sum.0.lcssa
}
