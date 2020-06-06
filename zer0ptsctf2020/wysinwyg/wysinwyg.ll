source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@xmm0 = internal unnamed_addr global i128 0
@rbp = internal unnamed_addr global i64 0
@global_var_202150.2 = global i64 0
@global_var_202020.6 = global i64 440402232
@global_var_bd4.7 = constant [7 x i8] c"Wrong!\00"
@global_var_bdb.8 = constant [9 x i8] c"Correct!\00"
@global_var_be4.9 = constant [13 x i8] c"Feed me flag\00"
@global_var_201d98.10 = global i64 1872
@global_var_201da8.11 = global i64 1808
@0 = external global i32
@global_var_202158.4 = local_unnamed_addr global i32 0
@global_var_202154.5 = local_unnamed_addr global i32 0

define i64 @function_5d0() local_unnamed_addr {
dec_label_pc_5d0:
  %v0_5d4 = load i64, i64* inttoptr (i64 2105320 to i64*), align 8
  %v1_5db = icmp eq i64 %v0_5d4, 0
  br i1 %v1_5db, label %dec_label_pc_5e2, label %dec_label_pc_5e0

dec_label_pc_5e0:                                 ; preds = %dec_label_pc_5d0
  call void @__gmon_start__()
  br label %dec_label_pc_5e2

dec_label_pc_5e2:                                 ; preds = %dec_label_pc_5e0, %dec_label_pc_5d0
  %v0_5e6 = phi i64 [ ptrtoint (i32* @0 to i64), %dec_label_pc_5e0 ], [ 0, %dec_label_pc_5d0 ]
  ret i64 %v0_5e6
}

define i32 @function_600(i8* %s) local_unnamed_addr {
dec_label_pc_600:
  %v2_600 = call i32 @puts(i8* %s)
  ret i32 %v2_600
}

define void @function_610() local_unnamed_addr {
dec_label_pc_610:
  call void @__stack_chk_fail()
  ret void
}

define i32 @function_620(i32 %sysno, ...) local_unnamed_addr {
dec_label_pc_620:
  %v2_620 = call i32 (i32, ...) @syscall(i32 %sysno)
  ret i32 %v2_620
}

define i32 @function_630(i64 %request, ...) local_unnamed_addr {
dec_label_pc_630:
  %v1_630 = call i32 (i64, ...) @ptrace(i64 %request)
  ret i32 %v1_630
}

define void @function_640(i64* %d) local_unnamed_addr {
dec_label_pc_640:
  call void @__cxa_finalize(i64* %d)
  ret void
}

define i64 @entry_point(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_650:
  %rdx.global-to-local = alloca i64, align 8
  store i64 %arg3, i64* %rdx.global-to-local, align 8
  %stack_var_8 = alloca i64, align 8
  %v0_652 = load i64, i64* %rdx.global-to-local, align 8
  %v4_655 = ptrtoint i64* %stack_var_8 to i64
  %tmp248 = bitcast i64* %stack_var_8 to i8**
  store i64 %v4_655, i64* %rdx.global-to-local, align 8
  %v2_674 = trunc i64 %arg4 to i32
  %v13_674 = inttoptr i64 %v0_652 to void ()*
  %v14_674 = call i32 @__libc_start_main(i64 2821, i32 %v2_674, i8** %tmp248, void ()* inttoptr (i64 2896 to void ()*), void ()* inttoptr (i64 3008 to void ()*), void ()* %v13_674)
  %v0_67a = call i64 @__asm_hlt()
  unreachable
}

define i64 @function_680() local_unnamed_addr {
dec_label_pc_680:
  ret i64 ptrtoint (i64* @global_var_202150.2 to i64)
}

define i64 @function_6c0() local_unnamed_addr {
dec_label_pc_700:
  ret i64 0
}

define i64 @function_710() local_unnamed_addr {
dec_label_pc_710:
  %rax.global-to-local = alloca i64, align 8
  %rbp.global-to-local = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %v0_710 = load i8, i8* bitcast (i64* @global_var_202150.2 to i8*), align 8
  %v7_710 = icmp eq i8 %v0_710, 0
  %v1_717 = icmp eq i1 %v7_710, false
  br i1 %v1_717, label %dec_label_pc_748, label %dec_label_pc_719

dec_label_pc_719:                                 ; preds = %dec_label_pc_710
  %v0_719 = load i64, i64* inttoptr (i64 2105336 to i64*), align 8
  %v7_719 = icmp eq i64 %v0_719, 0
  %v0_721 = load i64, i64* %rbp.global-to-local, align 8
  store i64 %v0_721, i64* %stack_var_-8, align 8
  %v4_721 = ptrtoint i64* %stack_var_-8 to i64
  store i64 %v4_721, i64* %rbp.global-to-local, align 8
  br i1 %v7_719, label %dec_label_pc_733, label %dec_label_pc_727

dec_label_pc_727:                                 ; preds = %dec_label_pc_719
  %v0_727 = load i64, i64* inttoptr (i64 2105352 to i64*), align 8
  %v1_72e = inttoptr i64 %v0_727 to i64*
  call void @__cxa_finalize(i64* %v1_72e)
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.global-to-local, align 8
  br label %dec_label_pc_733

dec_label_pc_733:                                 ; preds = %dec_label_pc_727, %dec_label_pc_719
  %v0_733 = call i64 @function_680()
  store i64 %v0_733, i64* %rax.global-to-local, align 8
  store i8 1, i8* bitcast (i64* @global_var_202150.2 to i8*), align 8
  %v2_73f = load i64, i64* %stack_var_-8, align 8
  store i64 %v2_73f, i64* %rbp.global-to-local, align 8
  ret i64 %v0_733

dec_label_pc_748:                                 ; preds = %dec_label_pc_710
  %v0_748 = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_748
}

define i64 @function_750() local_unnamed_addr {
dec_label_pc_750:
  %v0_755 = call i64 @function_6c0()
  ret i64 %v0_755
}

define i64 @function_75a(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_75a:
  %rdi.global-to-local = alloca i64, align 8
  %rdx.global-to-local = alloca i64, align 8
  %rsi.global-to-local = alloca i64, align 8
  store i64 %arg3, i64* %rdx.global-to-local, align 8
  store i64 %arg2, i64* %rsi.global-to-local, align 8
  store i64 %arg1, i64* %rdi.global-to-local, align 8
  %stack_var_-8 = alloca i64, align 8
  %v0_75a = load i64, i64* @rbp, align 8
  store i64 %v0_75a, i64* %stack_var_-8, align 8
  %v4_75a = ptrtoint i64* %stack_var_-8 to i64
  store i64 %v4_75a, i64* @rbp, align 8
  %v0_762 = load i64, i64* %rdi.global-to-local, align 8
  %v0_766 = load i64, i64* %rsi.global-to-local, align 8
  %v0_76a = load i64, i64* %rdx.global-to-local, align 8
  %v10_76e = icmp eq i64 %v0_762, 0
  %v1_773 = icmp eq i1 %v10_76e, false
  br i1 %v1_773, label %dec_label_pc_77c, label %dec_label_pc_775

dec_label_pc_775:                                 ; preds = %dec_label_pc_75a
  br label %dec_label_pc_7df

dec_label_pc_77c:                                 ; preds = %dec_label_pc_75a
  %v10_77c = icmp eq i64 %v0_766, 0
  %v1_781 = icmp eq i1 %v10_77c, false
  br i1 %v1_781, label %dec_label_pc_78a, label %dec_label_pc_783

dec_label_pc_783:                                 ; preds = %dec_label_pc_77c
  br label %dec_label_pc_7df

dec_label_pc_78a:                                 ; preds = %dec_label_pc_77c
  %v1_79c = add i64 %v0_766, -1
  store i64 %v1_79c, i64* %rsi.global-to-local, align 8
  %v3_7ae = call i64 @function_75a(i64 %v0_762, i64 %v1_79c, i64 %v0_76a)
  store i64 0, i64* %rdx.global-to-local, align 8
  %v2_7df.pre = load i64, i64* %stack_var_-8, align 8
  br label %dec_label_pc_7df

dec_label_pc_7df:                                 ; preds = %dec_label_pc_78a, %dec_label_pc_783, %dec_label_pc_775
  %v2_7df = phi i64 [ %v2_7df.pre, %dec_label_pc_78a ], [ %v0_75a, %dec_label_pc_783 ], [ %v0_75a, %dec_label_pc_775 ]
  %v0_7e0 = phi i64 [ 0, %dec_label_pc_78a ], [ 1, %dec_label_pc_783 ], [ 0, %dec_label_pc_775 ]
  store i64 %v2_7df, i64* @rbp, align 8
  ret i64 %v0_7e0
}

define i64 @function_7e1(i64 %arg1, i64* %arg2) local_unnamed_addr {
dec_label_pc_7e1:
  %rcx.global-to-local = alloca i64, align 8
  %rdi.global-to-local = alloca i64, align 8
  %rsi.global-to-local = alloca i64, align 8
  %tmp16 = ptrtoint i64* %arg2 to i64
  store i64 %tmp16, i64* %rsi.global-to-local, align 8
  store i64 %arg1, i64* %rdi.global-to-local, align 8
  %stack_var_-40 = alloca i64, align 8
  %v0_7e9 = load i64, i64* %rdi.global-to-local, align 8
  %v0_7ec = load i64, i64* %rsi.global-to-local, align 8
  store i64 %v0_7ec, i64* %stack_var_-40, align 8
  %v1_7f4 = add i64 %v0_7ec, 120
  %v2_7f4 = inttoptr i64 %v1_7f4 to i64*
  %v3_7f4 = load i64, i64* %v2_7f4, align 8
  %v10_7f8 = icmp eq i64 %v3_7f4, 5
  br i1 %v10_7f8, label %dec_label_pc_826, label %dec_label_pc_7fe

dec_label_pc_7fe:                                 ; preds = %dec_label_pc_7e1
  %tmp24 = icmp ult i64 %v3_7f4, 6
  br i1 %tmp24, label %dec_label_pc_804, label %dec_label_pc_80f

dec_label_pc_804:                                 ; preds = %dec_label_pc_7fe
  %v10_804 = icmp eq i64 %v3_7f4, 1
  br i1 %v10_804, label %dec_label_pc_846, label %dec_label_pc_90a

dec_label_pc_80f:                                 ; preds = %dec_label_pc_7fe
  switch i64 %v3_7f4, label %dec_label_pc_90a [
    i64 12, label %dec_label_pc_835
    i64 231, label %dec_label_pc_8e5
  ]

dec_label_pc_826:                                 ; preds = %dec_label_pc_7e1
  store i32 0, i32* @global_var_202158.4, align 4
  br label %dec_label_pc_90a

dec_label_pc_835:                                 ; preds = %dec_label_pc_80f
  %v0_835 = load i128, i128* @xmm0, align 8
  %v2_835 = call i128 @__asm_pxor(i128 %v0_835, i128 %v0_835)
  store i128 %v2_835, i128* @xmm0, align 8
  %v1_839 = call i64 @__asm_movss(i128 %v2_835)
  %v2_839 = trunc i64 %v1_839 to i32
  store i32 %v2_839, i32* @global_var_202154.5, align 4
  br label %dec_label_pc_90a

dec_label_pc_846:                                 ; preds = %dec_label_pc_804
  store i64 0, i64* %rcx.global-to-local, align 8
  store i64 %v0_7e9, i64* %rsi.global-to-local, align 8
  store i64 2, i64* %rdi.global-to-local, align 8
  %v1_862 = call i32 (i64, ...) @ptrace(i64 2)
  %v1_867 = zext i32 %v1_862 to i64
  %v3_86a = load i64, i64* %stack_var_-40, align 8
  %v1_86e = add i64 %v3_86a, 96
  %v2_86e = inttoptr i64 %v1_86e to i64*
  store i64 1, i64* %v2_86e, align 8
  %sext = mul i64 %v1_867, 72057594037927936
  %v4_876 = sdiv i64 %sext, 72057594037927936
  store i64 23531, i64* %rsi.global-to-local, align 8
  store i64 %v4_876, i64* %rdi.global-to-local, align 8
  %v3_888 = call i64 @function_75a(i64 %v4_876, i64 23531, i64 2343464867)
  store i64 %v3_888, i64* %rcx.global-to-local, align 8
  %v0_890 = load i32, i32* @global_var_202154.5, align 4
  %v1_890 = call i128 @__asm_movss.1(i32 %v0_890)
  %v1_898 = call i32 @__asm_cvttss2si(i128 %v1_890)
  %v2_898 = sext i32 %v1_898 to i64
  %v1_89e = mul nsw i64 %v2_898, 8
  %v3_8ad = add i64 %v1_89e, ptrtoint (i64* @global_var_202020.6 to i64)
  %v4_8ad = inttoptr i64 %v3_8ad to i64*
  %v5_8ad = load i64, i64* %v4_8ad, align 8
  %v0_8b1 = load i64, i64* %rcx.global-to-local, align 8
  %v2_8b1 = sub i64 %v0_8b1, %v5_8ad
  store i64 %v2_8b1, i64* %rcx.global-to-local, align 8
  %v0_8b9 = load i32, i32* @global_var_202158.4, align 4
  %v3_8bf = trunc i64 %v2_8b1 to i32
  %v4_8bf = or i32 %v0_8b9, %v3_8bf
  store i32 %v4_8bf, i32* @global_var_202158.4, align 4
  %v0_8c7 = load i32, i32* @global_var_202154.5, align 4
  %v1_8c7 = call i128 @__asm_movss.1(i32 %v0_8c7)
  %v0_8cf = load i32, i32* inttoptr (i64 3060 to i32*), align 4
  %v1_8cf = call i128 @__asm_movss.1(i32 %v0_8cf)
  %v2_8d7 = call i128 @__asm_addss(i128 %v1_8cf, i128 %v1_8c7)
  store i128 %v2_8d7, i128* @xmm0, align 8
  %v1_8db = call i64 @__asm_movss(i128 %v2_8d7)
  %v2_8db = trunc i64 %v1_8db to i32
  store i32 %v2_8db, i32* @global_var_202154.5, align 4
  br label %dec_label_pc_90a

dec_label_pc_8e5:                                 ; preds = %dec_label_pc_80f
  %v0_8e5 = load i32, i32* @global_var_202158.4, align 4
  %v5_8eb = icmp eq i32 %v0_8e5, 0
  br i1 %v5_8eb, label %dec_label_pc_8fd, label %dec_label_pc_8ef

dec_label_pc_8ef:                                 ; preds = %dec_label_pc_8e5
  store i64 ptrtoint ([7 x i8]* @global_var_bd4.7 to i64), i64* %rdi.global-to-local, align 8
  %v3_8f6 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_var_bd4.7, i64 0, i64 0))
  br label %dec_label_pc_909

dec_label_pc_8fd:                                 ; preds = %dec_label_pc_8e5
  store i64 ptrtoint ([9 x i8]* @global_var_bdb.8 to i64), i64* %rdi.global-to-local, align 8
  %v3_904 = call i32 @puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_var_bdb.8, i64 0, i64 0))
  br label %dec_label_pc_909

dec_label_pc_909:                                 ; preds = %dec_label_pc_8fd, %dec_label_pc_8ef
  br label %dec_label_pc_90a

dec_label_pc_90a:                                 ; preds = %dec_label_pc_80f, %dec_label_pc_804, %dec_label_pc_909, %dec_label_pc_846, %dec_label_pc_835, %dec_label_pc_826
  store i64 0, i64* %rcx.global-to-local, align 8
  store i64 13, i64* %rsi.global-to-local, align 8
  store i64 101, i64* %rdi.global-to-local, align 8
  %v3_92a = call i32 (i32, ...) @syscall(i32 101)
  %v5_92a = sext i32 %v3_92a to i64
  ret i64 %v5_92a
}

define i64 @function_932() local_unnamed_addr {
dec_label_pc_932:
  %stack_var_-232 = alloca i64, align 8
  %stack_var_-384 = alloca i32, align 4
  %v0_93d = call i64 @__readfsqword(i64 40)
  %v3_956 = call i32 (i32, ...) @syscall(i32 57)
  %v10_961 = icmp eq i32 %v3_956, 0
  %v1_968 = icmp eq i1 %v10_961, false
  br i1 %v1_968, label %dec_label_pc_9cd, label %dec_label_pc_96a

dec_label_pc_96a:                                 ; preds = %dec_label_pc_932
  %v3_989 = call i32 (i32, ...) @syscall(i32 101)
  %v3_998 = call i32 (i32, ...) @syscall(i32 39)
  %v3_9af = call i32 (i32, ...) @syscall(i32 62)
  %v1_9b9 = call i64 @__readfsqword(i64 40)
  %v3_9b9 = icmp eq i64 %v1_9b9, %v0_93d
  br i1 %v3_9b9, label %dec_label_pc_b03, label %dec_label_pc_afe

dec_label_pc_9cd:                                 ; preds = %dec_label_pc_932
  %v4_9db = zext i32 %v3_956 to i64
  %v3_9f5 = call i32 (i32, ...) @syscall(i32 61)
  %v3_a1c = call i32 (i32, ...) @syscall(i32 101)
  br label %dec_label_pc_a21

dec_label_pc_a21:                                 ; preds = %dec_label_pc_ae5, %dec_label_pc_ad4, %dec_label_pc_9cd
  %v3_a43 = call i32 (i32, ...) @syscall(i32 101)
  %v3_a70 = call i32 (i32, ...) @syscall(i32 61)
  %v3_a75 = load i32, i32* %stack_var_-384, align 4
  %v11_a7e = icmp eq i32 %v3_a75, 127
  %v1_a81 = icmp eq i1 %v11_a7e, false
  br i1 %v1_a81, label %dec_label_pc_ad4, label %dec_label_pc_a83

dec_label_pc_a83:                                 ; preds = %dec_label_pc_a21
  %tmp271 = trunc i32 %v3_a75 to i16
  %v5_a8e = icmp sgt i16 %tmp271, -1
  br i1 %v5_a8e, label %dec_label_pc_ad4, label %dec_label_pc_a92

dec_label_pc_a92:                                 ; preds = %dec_label_pc_a83
  %v3_ab8 = call i32 (i32, ...) @syscall(i32 101)
  %v3_acf = call i64 @function_7e1(i64 %v4_9db, i64* nonnull %stack_var_-232)
  %v3_ad4.pre = load i32, i32* %stack_var_-384, align 4
  br label %dec_label_pc_ad4

dec_label_pc_ad4:                                 ; preds = %dec_label_pc_a92, %dec_label_pc_a83, %dec_label_pc_a21
  %v3_ad4 = phi i32 [ %v3_ad4.pre, %dec_label_pc_a92 ], [ %v3_a75, %dec_label_pc_a83 ], [ %v3_a75, %dec_label_pc_a21 ]
  %v2_ada = urem i32 %v3_ad4, 128
  %v3_ada = icmp eq i32 %v2_ada, 0
  %v1_adf = icmp eq i1 %v3_ada, false
  br i1 %v1_adf, label %dec_label_pc_a21, label %dec_label_pc_ae5

dec_label_pc_ae5:                                 ; preds = %dec_label_pc_ad4
  %v3_af4 = call i32 (i32, ...) @syscall(i32 231)
  br label %dec_label_pc_a21

dec_label_pc_afe:                                 ; preds = %dec_label_pc_96a
  call void @__stack_chk_fail()
  br label %dec_label_pc_b03

dec_label_pc_b03:                                 ; preds = %dec_label_pc_afe, %dec_label_pc_96a
  %v0_b04 = phi i64 [ ptrtoint (i32* @0 to i64), %dec_label_pc_afe ], [ 0, %dec_label_pc_96a ]
  ret i64 %v0_b04
}

define i64 @function_b05(i64 %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_b05:
  %rsi.global-to-local = alloca i64, align 8
  store i64 %arg2, i64* %rsi.global-to-local, align 8
  %v4_b14 = trunc i64 %arg1 to i32
  %v14_b14 = icmp eq i32 %v4_b14, 2
  %v1_b18 = icmp eq i1 %v14_b14, false
  br i1 %v1_b18, label %dec_label_pc_b2f, label %dec_label_pc_b1a

dec_label_pc_b1a:                                 ; preds = %dec_label_pc_b05
  %v0_b10 = load i64, i64* %rsi.global-to-local, align 8
  %v1_b1e = add i64 %v0_b10, 8
  %v1_b22 = inttoptr i64 %v1_b1e to i64*
  %v2_b22 = load i64, i64* %v1_b22, align 8
  %v1_b25 = inttoptr i64 %v2_b22 to i8*
  %v3_b28 = call i32 @puts(i8* %v1_b25)
  br label %dec_label_pc_b3b

dec_label_pc_b2f:                                 ; preds = %dec_label_pc_b05
  %v3_b36 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_var_be4.9, i64 0, i64 0))
  br label %dec_label_pc_b3b

dec_label_pc_b3b:                                 ; preds = %dec_label_pc_b2f, %dec_label_pc_b1a
  ret i64 0
}

define i64 @function_b50(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_b50:
  %r12.global-to-local = alloca i64, align 8
  %r13.global-to-local = alloca i64, align 8
  %r14.global-to-local = alloca i64, align 8
  %r15.global-to-local = alloca i64, align 8
  %rbp.global-to-local = alloca i64, align 8
  %rbx.global-to-local = alloca i64, align 8
  %rdi.global-to-local = alloca i64, align 8
  %rdx.global-to-local = alloca i64, align 8
  %rsi.global-to-local = alloca i64, align 8
  store i64 %arg3, i64* %rdx.global-to-local, align 8
  store i64 %arg2, i64* %rsi.global-to-local, align 8
  store i64 %arg1, i64* %rdi.global-to-local, align 8
  %v0_b50 = load i64, i64* %r15.global-to-local, align 8
  %v0_b52 = load i64, i64* %r14.global-to-local, align 8
  %v0_b54 = load i64, i64* %rdx.global-to-local, align 8
  store i64 %v0_b54, i64* %r15.global-to-local, align 8
  %v0_b57 = load i64, i64* %r13.global-to-local, align 8
  %v0_b59 = load i64, i64* %r12.global-to-local, align 8
  store i64 ptrtoint (i64* @global_var_201d98.10 to i64), i64* %r12.global-to-local, align 8
  %v0_b62 = load i64, i64* %rbp.global-to-local, align 8
  %v0_b6a = load i64, i64* %rbx.global-to-local, align 8
  %v0_b6b = load i64, i64* %rdi.global-to-local, align 8
  store i64 %v0_b6b, i64* %r13.global-to-local, align 8
  %v0_b6e = load i64, i64* %rsi.global-to-local, align 8
  store i64 %v0_b6e, i64* %r14.global-to-local, align 8
  store i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_201da8.11 to i64), i64 ptrtoint (i64* @global_var_201d98.10 to i64)), i64 3), i64* %rbp.global-to-local, align 8
  %v0_b7c = call i64 @function_5d0()
  br i1 icmp eq (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_201da8.11 to i64), i64 ptrtoint (i64* @global_var_201d98.10 to i64)), i64 3), i64 0), label %dec_label_pc_ba6, label %dec_label_pc_b86

dec_label_pc_b86:                                 ; preds = %dec_label_pc_b50
  store i64 0, i64* %rbx.global-to-local, align 8
  %v0_b90 = load i64, i64* %r15.global-to-local, align 8
  %v0_b93 = load i64, i64* %r14.global-to-local, align 8
  %v0_b96 = load i64, i64* %r13.global-to-local, align 8
  br label %dec_label_pc_b90

dec_label_pc_b90:                                 ; preds = %dec_label_pc_b90, %dec_label_pc_b86
  %v1_b9d2 = phi i64 [ %v1_b9d, %dec_label_pc_b90 ], [ 0, %dec_label_pc_b86 ]
  %v1_b9d = add i64 %v1_b9d2, 1
  %v12_ba1 = icmp eq i64 %v1_b9d2, sub (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_201da8.11 to i64), i64 ptrtoint (i64* @global_var_201d98.10 to i64)), i64 3), i64 1)
  %v1_ba4 = icmp eq i1 %v12_ba1, false
  br i1 %v1_ba4, label %dec_label_pc_b90, label %dec_label_pc_ba6.loopexit

dec_label_pc_ba6.loopexit:                        ; preds = %dec_label_pc_b90
  store i64 %v0_b90, i64* %rdx.global-to-local, align 8
  store i64 %v0_b93, i64* %rsi.global-to-local, align 8
  store i64 %v0_b96, i64* %rdi.global-to-local, align 8
  store i64 %v1_b9d, i64* %rbx.global-to-local, align 8
  br label %dec_label_pc_ba6

dec_label_pc_ba6:                                 ; preds = %dec_label_pc_ba6.loopexit, %dec_label_pc_b50
  store i64 %v0_b6a, i64* %rbx.global-to-local, align 8
  store i64 %v0_b62, i64* %rbp.global-to-local, align 8
  store i64 %v0_b59, i64* %r12.global-to-local, align 8
  store i64 %v0_b57, i64* %r13.global-to-local, align 8
  store i64 %v0_b52, i64* %r14.global-to-local, align 8
  store i64 %v0_b50, i64* %r15.global-to-local, align 8
  ret i64 %v0_b7c
}

define i64 @function_bc0() local_unnamed_addr {
dec_label_pc_bc0:
  %rax.global-to-local = alloca i64, align 8
  %v0_bc0 = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_bc0
}

define i64 @function_bc4() local_unnamed_addr {
dec_label_pc_bc4:
  %rax.global-to-local = alloca i64, align 8
  %v0_bcc = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_bcc
}

declare i32 @puts(i8*) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @syscall(i32, ...) local_unnamed_addr

declare i32 @ptrace(i64, ...) local_unnamed_addr

declare i32 @__libc_start_main(i64, i32, i8**, void ()*, void ()*, void ()*) local_unnamed_addr

declare void @__gmon_start__() local_unnamed_addr

declare void @__cxa_finalize(i64*) local_unnamed_addr

declare i64 @__asm_hlt() local_unnamed_addr

declare i128 @__asm_pxor(i128, i128) local_unnamed_addr

declare i64 @__asm_movss(i128) local_unnamed_addr

declare i128 @__asm_movss.1(i32) local_unnamed_addr

declare i32 @__asm_cvttss2si(i128) local_unnamed_addr

declare i128 @__asm_addss(i128, i128) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr
