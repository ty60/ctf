source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_213a.27 = constant [15 x i8] c"Invalid choice\00"

declare i64 @function_1370() local_unnamed_addr

declare i64 @function_13c1() local_unnamed_addr

declare i64 @function_14bc() local_unnamed_addr

declare i64 @function_15ba() local_unnamed_addr

declare i64 @function_1640() local_unnamed_addr

define i64 @function_16fc() local_unnamed_addr {
dec_label_pc_16fc:
  br label %dec_label_pc_170a

dec_label_pc_170a:                                ; preds = %dec_label_pc_1731, %dec_label_pc_173d, %dec_label_pc_1749, %dec_label_pc_1755, %dec_label_pc_1761, %dec_label_pc_16fc
  %v0_170f = call i64 @function_1370()
  %v1_1714 = trunc i64 %v0_170f to i32
  %v11_1714 = icmp eq i32 %v1_1714, 2
  br i1 %v11_1714, label %dec_label_pc_173d, label %dec_label_pc_1719

dec_label_pc_1719:                                ; preds = %dec_label_pc_170a
  %v10_171c = icmp sgt i32 %v1_1714, 2
  br i1 %v10_171c, label %dec_label_pc_1725, label %dec_label_pc_171e

dec_label_pc_171e:                                ; preds = %dec_label_pc_1719
  %v11_171e = icmp eq i32 %v1_1714, 1
  br i1 %v11_171e, label %dec_label_pc_1731, label %dec_label_pc_1761

dec_label_pc_1725:                                ; preds = %dec_label_pc_1719
  switch i32 %v1_1714, label %dec_label_pc_1761 [
    i32 3, label %dec_label_pc_1749
    i32 4, label %dec_label_pc_1755
  ]

dec_label_pc_1731:                                ; preds = %dec_label_pc_171e
  %v0_1736 = call i64 @function_13c1()
  br label %dec_label_pc_170a

dec_label_pc_173d:                                ; preds = %dec_label_pc_170a
  %v0_1742 = call i64 @function_14bc()
  br label %dec_label_pc_170a

dec_label_pc_1749:                                ; preds = %dec_label_pc_1725
  %v0_174e = call i64 @function_15ba()
  br label %dec_label_pc_170a

dec_label_pc_1755:                                ; preds = %dec_label_pc_1725
  %v0_175a = call i64 @function_1640()
  br label %dec_label_pc_170a

dec_label_pc_1761:                                ; preds = %dec_label_pc_1725, %dec_label_pc_171e
  %v3_1768 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_var_213a.27, i64 0, i64 0))
  br label %dec_label_pc_170a
}

declare i32 @puts(i8*) local_unnamed_addr
