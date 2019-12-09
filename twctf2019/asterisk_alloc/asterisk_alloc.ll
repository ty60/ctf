source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

%_IO_FILE = type { i32 }

@rbp = internal unnamed_addr global i64 0
@global_var_e98.5 = constant [34 x i8] c"=================================\00"
@global_var_eba.6 = constant [10 x i8] c"1. malloc\00"
@global_var_ec4.7 = constant [10 x i8] c"2. calloc\00"
@global_var_ece.8 = constant [11 x i8] c"3. realloc\00"
@global_var_ed9.9 = constant [8 x i8] c"4. free\00"
@global_var_ee1.10 = constant [8 x i8] c"5. exit\00"
@global_var_202038.11 = local_unnamed_addr global i64 0
@global_var_ee9.12 = constant [7 x i8] c"Size: \00"
@global_var_ef0.13 = constant [4 x i8] c"%ld\00"
@global_var_ef4.14 = constant [7 x i8] c"Data: \00"
@global_var_202040.15 = local_unnamed_addr global i64 0
@global_var_202030.16 = local_unnamed_addr global i64 0
@global_var_efb.17 = constant [8 x i8] c"Which: \00"
@global_var_f03.18 = constant [3 x i8] c"%c\00"
@global_var_f06.19 = constant [15 x i8] c"Invalid choice\00"
@global_var_f15.20 = constant [14 x i8] c"Your choice: \00"
@global_var_f23.21 = constant [3 x i8] c"%d\00"
@global_var_f28.22 = constant i64 -1473173782834
@global_var_201d60.23 = global i64 2576
@global_var_201d68.24 = global i64 2512
@0 = external global i32
@global_var_202010.1 = global %_IO_FILE* null
@global_var_202028.3 = local_unnamed_addr global i8 0
@global_var_202020.4 = local_unnamed_addr global %_IO_FILE* null

define i64 @_init() local_unnamed_addr {
dec_label_pc_818:
  %v0_81c = load i64, i64* inttoptr (i64 2105320 to i64*), align 8
  %v1_823 = icmp eq i64 %v0_81c, 0
  br i1 %v1_823, label %dec_label_pc_82a, label %dec_label_pc_828

dec_label_pc_828:                                 ; preds = %dec_label_pc_818
  call void @__gmon_start__()
  br label %dec_label_pc_82a

dec_label_pc_82a:                                 ; preds = %dec_label_pc_828, %dec_label_pc_818
  %v0_82e = phi i64 [ ptrtoint (i32* @0 to i64), %dec_label_pc_828 ], [ 0, %dec_label_pc_818 ]
  ret i64 %v0_82e
}

define void @function_840(i64* %ptr) local_unnamed_addr {
dec_label_pc_840:
  call void @free(i64* %ptr)
  ret void
}

define void @function_850(i32 %status) local_unnamed_addr {
dec_label_pc_850:
  call void @_exit(i32 %status)
  ret void
}

define i32 @function_860(i8* %s) local_unnamed_addr {
dec_label_pc_860:
  %v2_860 = call i32 @puts(i8* %s)
  ret i32 %v2_860
}

define void @function_870() local_unnamed_addr {
dec_label_pc_870:
  call void @__stack_chk_fail()
  ret void
}

define void @function_880(%_IO_FILE* %stream, i8* %buf) local_unnamed_addr {
dec_label_pc_880:
  call void @setbuf(%_IO_FILE* %stream, i8* %buf)
  ret void
}

define i32 @function_890(i8* %format, ...) local_unnamed_addr {
dec_label_pc_890:
  %v2_890 = call i32 (i8*, ...) @printf(i8* %format)
  ret i32 %v2_890
}

define i32 @function_8a0(i32 %fd, i64* %buf, i32 %nbytes) local_unnamed_addr {
dec_label_pc_8a0:
  %v6_8a0 = call i32 @read(i32 %fd, i64* %buf, i32 %nbytes)
  ret i32 %v6_8a0
}

define i64* @function_8b0(i32 %nmemb, i32 %size) local_unnamed_addr {
dec_label_pc_8b0:
  %v4_8b0 = call i64* @calloc(i32 %nmemb, i32 %size)
  ret i64* %v4_8b0
}

define i32 @function_8c0() local_unnamed_addr {
dec_label_pc_8c0:
  %v0_8c0 = call i32 @getchar()
  ret i32 %v0_8c0
}

define i64* @function_8d0(i32 %size) local_unnamed_addr {
dec_label_pc_8d0:
  %v2_8d0 = call i64* @malloc(i32 %size)
  ret i64* %v2_8d0
}

define i64* @function_8e0(i64* %ptr, i32 %size) local_unnamed_addr {
dec_label_pc_8e0:
  %v4_8e0 = call i64* @realloc(i64* %ptr, i32 %size)
  ret i64* %v4_8e0
}

define i32 @function_8f0(i8* %format, ...) local_unnamed_addr {
dec_label_pc_8f0:
  %v2_8f0 = call i32 (i8*, ...) @scanf(i8* %format)
  ret i32 %v2_8f0
}

define void @function_900(i64* %d) local_unnamed_addr {
dec_label_pc_900:
  call void @__cxa_finalize(i64* %d)
  ret void
}

define i64 @_start(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_910:
  %rdx.global-to-local = alloca i64, align 8
  store i64 %arg3, i64* %rdx.global-to-local, align 8
  %stack_var_8 = alloca i64, align 8
  %v0_912 = load i64, i64* %rdx.global-to-local, align 8
  %v4_915 = ptrtoint i64* %stack_var_8 to i64
  %tmp248 = bitcast i64* %stack_var_8 to i8**
  store i64 %v4_915, i64* %rdx.global-to-local, align 8
  %v2_934 = trunc i64 %arg4 to i32
  %v13_934 = inttoptr i64 %v0_912 to void ()*
  %v14_934 = call i32 @__libc_start_main(i64 3414, i32 %v2_934, i8** %tmp248, void ()* inttoptr (i64 3600 to void ()*), void ()* inttoptr (i64 3712 to void ()*), void ()* %v13_934)
  %v0_93a = call i64 @__asm_hlt()
  unreachable
}

define i64 @deregister_tm_clones() local_unnamed_addr {
dec_label_pc_940:
  ret i64 ptrtoint (%_IO_FILE** @global_var_202010.1 to i64)
}

define i64 @register_tm_clones() local_unnamed_addr {
dec_label_pc_9c0:
  ret i64 0
}

define i64 @__do_global_dtors_aux() local_unnamed_addr {
dec_label_pc_9d0:
  %rax.global-to-local = alloca i64, align 8
  %rbp.global-to-local = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %v0_9d0 = load i8, i8* @global_var_202028.3, align 1
  %v7_9d0 = icmp eq i8 %v0_9d0, 0
  %v1_9d7 = icmp eq i1 %v7_9d0, false
  br i1 %v1_9d7, label %dec_label_pc_a08, label %dec_label_pc_9d9

dec_label_pc_9d9:                                 ; preds = %dec_label_pc_9d0
  %v0_9d9 = load i64, i64* inttoptr (i64 2105336 to i64*), align 8
  %v7_9d9 = icmp eq i64 %v0_9d9, 0
  %v0_9e1 = load i64, i64* %rbp.global-to-local, align 8
  store i64 %v0_9e1, i64* %stack_var_-8, align 8
  %v4_9e1 = ptrtoint i64* %stack_var_-8 to i64
  store i64 %v4_9e1, i64* %rbp.global-to-local, align 8
  br i1 %v7_9d9, label %dec_label_pc_9f3, label %dec_label_pc_9e7

dec_label_pc_9e7:                                 ; preds = %dec_label_pc_9d9
  %v0_9e7 = load i64, i64* inttoptr (i64 2105352 to i64*), align 8
  %v1_9ee = inttoptr i64 %v0_9e7 to i64*
  call void @__cxa_finalize(i64* %v1_9ee)
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.global-to-local, align 8
  br label %dec_label_pc_9f3

dec_label_pc_9f3:                                 ; preds = %dec_label_pc_9e7, %dec_label_pc_9d9
  %v0_9f3 = call i64 @deregister_tm_clones()
  store i64 %v0_9f3, i64* %rax.global-to-local, align 8
  store i8 1, i8* @global_var_202028.3, align 1
  %v2_9ff = load i64, i64* %stack_var_-8, align 8
  store i64 %v2_9ff, i64* %rbp.global-to-local, align 8
  ret i64 %v0_9f3

dec_label_pc_a08:                                 ; preds = %dec_label_pc_9d0
  %v0_a08 = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_a08
}

define i64 @frame_dummy() local_unnamed_addr {
dec_label_pc_a10:
  %v0_a15 = call i64 @register_tm_clones()
  ret i64 %v0_a15
}

define i64 @initialize() local_unnamed_addr {
dec_label_pc_a1a:
  %v0_a1e = load %_IO_FILE*, %_IO_FILE** @global_var_202020.4, align 8
  call void @setbuf(%_IO_FILE* %v0_a1e, i8* null)
  %v0_a32 = load %_IO_FILE*, %_IO_FILE** @global_var_202010.1, align 8
  call void @setbuf(%_IO_FILE* %v0_a32, i8* null)
  ret i64 ptrtoint (i32* @0 to i64)
}

define i64 @print_menu() local_unnamed_addr {
dec_label_pc_a49:
  %v3_a54 = call i32 @puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_var_e98.5, i64 0, i64 0))
  %v3_a60 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_var_eba.6, i64 0, i64 0))
  %v3_a6c = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_var_ec4.7, i64 0, i64 0))
  %v3_a78 = call i32 @puts(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_var_ece.8, i64 0, i64 0))
  %v3_a84 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_var_ed9.9, i64 0, i64 0))
  %v3_a90 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_var_ee1.10, i64 0, i64 0))
  %v3_a9c = call i32 @puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_var_e98.5, i64 0, i64 0))
  %v5_a9c = sext i32 %v3_a9c to i64
  ret i64 %v5_a9c
}

define i64 @call_malloc() local_unnamed_addr {
dec_label_pc_aa4:
  %stack_var_-24 = alloca i64, align 8
  %v0_aac = call i64 @__readfsqword(i64 40)
  %v0_abb = load i64, i64* @global_var_202038.11, align 8
  %v1_ac2 = icmp eq i64 %v0_abb, 0
  %v1_ac5 = icmp eq i1 %v1_ac2, false
  br i1 %v1_ac5, label %dec_label_pc_b37, label %dec_label_pc_ac7

dec_label_pc_ac7:                                 ; preds = %dec_label_pc_aa4
  %v3_ad3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_var_ee9.12, i64 0, i64 0))
  %v6_aeb = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_ef0.13, i64 0, i64 0), i64* nonnull %stack_var_-24)
  %v0_af0 = call i32 @getchar()
  %v3_b01 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_var_ef4.14, i64 0, i64 0))
  %v3_b06 = load i64, i64* %stack_var_-24, align 8
  %v1_b0a = trunc i64 %v3_b06 to i32
  %v3_b0d = call i64* @malloc(i32 %v1_b0a)
  %v5_b0d = ptrtoint i64* %v3_b0d to i64
  store i64 %v5_b0d, i64* @global_var_202038.11, align 8
  %v3_b19 = load i64, i64* %stack_var_-24, align 8
  %v1_b1d = trunc i64 %v3_b19 to i32
  %v8_b2f = call i32 @read(i32 0, i64* %v3_b0d, i32 %v1_b1d)
  br label %dec_label_pc_b37

dec_label_pc_b37:                                 ; preds = %dec_label_pc_aa4, %dec_label_pc_ac7
  %v1_b3b = call i64 @__readfsqword(i64 40)
  %v3_b3b = icmp eq i64 %v1_b3b, %v0_aac
  br i1 %v3_b3b, label %dec_label_pc_b4b, label %dec_label_pc_b46

dec_label_pc_b46:                                 ; preds = %dec_label_pc_b37
  call void @__stack_chk_fail()
  br label %dec_label_pc_b4b

dec_label_pc_b4b:                                 ; preds = %dec_label_pc_b46, %dec_label_pc_b37
  %v0_b4c = phi i64 [ ptrtoint (i32* @0 to i64), %dec_label_pc_b46 ], [ 0, %dec_label_pc_b37 ]
  ret i64 %v0_b4c
}

define i64 @call_calloc() local_unnamed_addr {
dec_label_pc_b4d:
  %stack_var_-24 = alloca i64, align 8
  %v0_b55 = call i64 @__readfsqword(i64 40)
  %v0_b64 = load i64, i64* @global_var_202040.15, align 8
  %v1_b6b = icmp eq i64 %v0_b64, 0
  %v1_b6e = icmp eq i1 %v1_b6b, false
  br i1 %v1_b6e, label %dec_label_pc_be5, label %dec_label_pc_b70

dec_label_pc_b70:                                 ; preds = %dec_label_pc_b4d
  %v3_b7c = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_var_ee9.12, i64 0, i64 0))
  %v6_b94 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_ef0.13, i64 0, i64 0), i64* nonnull %stack_var_-24)
  %v0_b99 = call i32 @getchar()
  %v3_b9e = load i64, i64* %stack_var_-24, align 8
  %v1_ba2 = trunc i64 %v3_b9e to i32
  %v6_baa = call i64* @calloc(i32 1, i32 %v1_ba2)
  %v8_baa = ptrtoint i64* %v6_baa to i64
  store i64 %v8_baa, i64* @global_var_202040.15, align 8
  %v3_bc2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_var_ef4.14, i64 0, i64 0))
  %v3_bc7 = load i64, i64* %stack_var_-24, align 8
  %v1_bcb = trunc i64 %v3_bc7 to i32
  %v0_bce = load i64, i64* @global_var_202040.15, align 8
  %v4_bdd = inttoptr i64 %v0_bce to i64*
  %v8_bdd = call i32 @read(i32 0, i64* %v4_bdd, i32 %v1_bcb)
  br label %dec_label_pc_be5

dec_label_pc_be5:                                 ; preds = %dec_label_pc_b4d, %dec_label_pc_b70
  %v1_be9 = call i64 @__readfsqword(i64 40)
  %v3_be9 = icmp eq i64 %v1_be9, %v0_b55
  br i1 %v3_be9, label %dec_label_pc_bf9, label %dec_label_pc_bf4

dec_label_pc_bf4:                                 ; preds = %dec_label_pc_be5
  call void @__stack_chk_fail()
  br label %dec_label_pc_bf9

dec_label_pc_bf9:                                 ; preds = %dec_label_pc_bf4, %dec_label_pc_be5
  %v0_bfa = phi i64 [ ptrtoint (i32* @0 to i64), %dec_label_pc_bf4 ], [ 0, %dec_label_pc_be5 ]
  ret i64 %v0_bfa
}

define i64 @call_realloc() local_unnamed_addr {
dec_label_pc_bfb:
  %stack_var_-24 = alloca i64, align 8
  %v0_c03 = call i64 @__readfsqword(i64 40)
  %v3_c1e = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_var_ee9.12, i64 0, i64 0))
  %v6_c36 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_ef0.13, i64 0, i64 0), i64* nonnull %stack_var_-24)
  %v0_c3b = call i32 @getchar()
  %v3_c40 = load i64, i64* %stack_var_-24, align 8
  %v0_c47 = load i64, i64* @global_var_202030.16, align 8
  %v1_c4e = trunc i64 %v3_c40 to i32
  %v1_c54 = inttoptr i64 %v0_c47 to i64*
  %v5_c54 = call i64* @realloc(i64* %v1_c54, i32 %v1_c4e)
  %v7_c54 = ptrtoint i64* %v5_c54 to i64
  store i64 %v7_c54, i64* @global_var_202030.16, align 8
  %v3_c6c = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_var_ef4.14, i64 0, i64 0))
  %v3_c71 = load i64, i64* %stack_var_-24, align 8
  %v1_c75 = trunc i64 %v3_c71 to i32
  %v0_c78 = load i64, i64* @global_var_202030.16, align 8
  %v4_c87 = inttoptr i64 %v0_c78 to i64*
  %v8_c87 = call i32 @read(i32 0, i64* %v4_c87, i32 %v1_c75)
  %v1_c91 = call i64 @__readfsqword(i64 40)
  %v3_c91 = icmp eq i64 %v1_c91, %v0_c03
  br i1 %v3_c91, label %dec_label_pc_ca1, label %dec_label_pc_c9c

dec_label_pc_c9c:                                 ; preds = %dec_label_pc_bfb
  call void @__stack_chk_fail()
  br label %dec_label_pc_ca1

dec_label_pc_ca1:                                 ; preds = %dec_label_pc_c9c, %dec_label_pc_bfb
  %v0_ca2 = phi i64 [ ptrtoint (i32* @0 to i64), %dec_label_pc_c9c ], [ 0, %dec_label_pc_bfb ]
  ret i64 %v0_ca2
}

define i64 @call_free() local_unnamed_addr {
dec_label_pc_ca3:
  %stack_var_-17 = alloca i8, align 1
  %v0_cab = call i64 @__readfsqword(i64 40)
  %v3_cc6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_var_efb.17, i64 0, i64 0))
  %v6_cde = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_f03.18, i64 0, i64 0), i8* nonnull %stack_var_-17)
  %v0_ce3 = call i32 @getchar()
  %v3_ce8 = load i8, i8* %stack_var_-17, align 1
  %v11_cec = icmp eq i8 %v3_ce8, 109
  %v1_cee = icmp eq i1 %v11_cec, false
  br i1 %v1_cee, label %dec_label_pc_d01, label %dec_label_pc_cf0

dec_label_pc_cf0:                                 ; preds = %dec_label_pc_ca3
  %v0_cf0 = load i64, i64* @global_var_202038.11, align 8
  %v1_cfa = inttoptr i64 %v0_cf0 to i64*
  call void @free(i64* %v1_cfa)
  br label %dec_label_pc_d3f

dec_label_pc_d01:                                 ; preds = %dec_label_pc_ca3
  %v11_d05 = icmp eq i8 %v3_ce8, 99
  %v1_d07 = icmp eq i1 %v11_d05, false
  br i1 %v1_d07, label %dec_label_pc_d1a, label %dec_label_pc_d09

dec_label_pc_d09:                                 ; preds = %dec_label_pc_d01
  %v0_d09 = load i64, i64* @global_var_202040.15, align 8
  %v1_d13 = inttoptr i64 %v0_d09 to i64*
  call void @free(i64* %v1_d13)
  br label %dec_label_pc_d3f

dec_label_pc_d1a:                                 ; preds = %dec_label_pc_d01
  %v11_d1e = icmp eq i8 %v3_ce8, 114
  %v1_d20 = icmp eq i1 %v11_d1e, false
  br i1 %v1_d20, label %dec_label_pc_d33, label %dec_label_pc_d22

dec_label_pc_d22:                                 ; preds = %dec_label_pc_d1a
  %v0_d22 = load i64, i64* @global_var_202030.16, align 8
  %v1_d2c = inttoptr i64 %v0_d22 to i64*
  call void @free(i64* %v1_d2c)
  br label %dec_label_pc_d3f

dec_label_pc_d33:                                 ; preds = %dec_label_pc_d1a
  %v3_d3a = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_var_f06.19, i64 0, i64 0))
  br label %dec_label_pc_d3f

dec_label_pc_d3f:                                 ; preds = %dec_label_pc_d33, %dec_label_pc_d22, %dec_label_pc_d09, %dec_label_pc_cf0
  %v1_d44 = call i64 @__readfsqword(i64 40)
  %v3_d44 = icmp eq i64 %v1_d44, %v0_cab
  br i1 %v3_d44, label %dec_label_pc_d54, label %dec_label_pc_d4f

dec_label_pc_d4f:                                 ; preds = %dec_label_pc_d3f
  call void @__stack_chk_fail()
  br label %dec_label_pc_d54

dec_label_pc_d54:                                 ; preds = %dec_label_pc_d4f, %dec_label_pc_d3f
  %v0_d55 = phi i64 [ ptrtoint (i32* @0 to i64), %dec_label_pc_d4f ], [ 0, %dec_label_pc_d3f ]
  ret i64 %v0_d55
}

define i64 @main(i64 %argc, i8** %argv) local_unnamed_addr {
dec_label_pc_d56:
  %stack_var_-20 = alloca i32, align 4
  %v0_d5e = call i64 @__readfsqword(i64 40)
  %v0_d6d = call i64 @initialize()
  br label %dec_label_pc_d72

dec_label_pc_d72:                                 ; preds = %dec_label_pc_df6, %dec_label_pc_d56
  %v0_d72 = call i64 @print_menu()
  %v3_d83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_var_f15.20, i64 0, i64 0))
  %v5_d9b = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_f23.21, i64 0, i64 0), i32* nonnull %stack_var_-20)
  %v0_da0 = call i32 @getchar()
  %v3_da5 = load i32, i32* %stack_var_-20, align 4
  %tmp253 = icmp ult i32 %v3_da5, 6
  br i1 %tmp253, label %dec_label_pc_dad, label %dec_label_pc_df6

dec_label_pc_dad:                                 ; preds = %dec_label_pc_d72
  %v4_da5 = sext i32 %v3_da5 to i64
  %v1_daf = mul nsw i64 %v4_da5, 4
  %v3_dbe = add i64 %v1_daf, ptrtoint (i64* @global_var_f28.22 to i64)
  %v4_dbe = inttoptr i64 %v3_dbe to i32*
  %v5_dbe = load i32, i32* %v4_dbe, align 4
  %v6_dbe = zext i32 %v5_dbe to i64
  %v2_dcb = add i64 %v6_dbe, ptrtoint (i64* @global_var_f28.22 to i64)
  ret i64 %v2_dcb

dec_label_pc_df6:                                 ; preds = %dec_label_pc_d72
  %v3_dfd = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_var_f06.19, i64 0, i64 0))
  br label %dec_label_pc_d72
}

define i64 @__libc_csu_init(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_e10:
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
  %v0_e10 = load i64, i64* %r15.global-to-local, align 8
  %v0_e12 = load i64, i64* %r14.global-to-local, align 8
  %v0_e14 = load i64, i64* %rdx.global-to-local, align 8
  store i64 %v0_e14, i64* %r15.global-to-local, align 8
  %v0_e17 = load i64, i64* %r13.global-to-local, align 8
  %v0_e19 = load i64, i64* %r12.global-to-local, align 8
  store i64 ptrtoint (i64* @global_var_201d60.23 to i64), i64* %r12.global-to-local, align 8
  %v0_e22 = load i64, i64* %rbp.global-to-local, align 8
  %v0_e2a = load i64, i64* %rbx.global-to-local, align 8
  %v0_e2b = load i64, i64* %rdi.global-to-local, align 8
  store i64 %v0_e2b, i64* %r13.global-to-local, align 8
  %v0_e2e = load i64, i64* %rsi.global-to-local, align 8
  store i64 %v0_e2e, i64* %r14.global-to-local, align 8
  store i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_201d68.24 to i64), i64 ptrtoint (i64* @global_var_201d60.23 to i64)), i64 3), i64* %rbp.global-to-local, align 8
  %v0_e3c = call i64 @_init()
  br i1 icmp eq (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_201d68.24 to i64), i64 ptrtoint (i64* @global_var_201d60.23 to i64)), i64 3), i64 0), label %dec_label_pc_e66, label %dec_label_pc_e46

dec_label_pc_e46:                                 ; preds = %dec_label_pc_e10
  store i64 0, i64* %rbx.global-to-local, align 8
  %v0_e50 = load i64, i64* %r15.global-to-local, align 8
  %v0_e53 = load i64, i64* %r14.global-to-local, align 8
  %v0_e56 = load i64, i64* %r13.global-to-local, align 8
  br label %dec_label_pc_e50

dec_label_pc_e50:                                 ; preds = %dec_label_pc_e50, %dec_label_pc_e46
  %v1_e5d2 = phi i64 [ %v1_e5d, %dec_label_pc_e50 ], [ 0, %dec_label_pc_e46 ]
  %v1_e5d = add i64 %v1_e5d2, 1
  %v12_e61 = icmp eq i64 %v1_e5d2, sub (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_201d68.24 to i64), i64 ptrtoint (i64* @global_var_201d60.23 to i64)), i64 3), i64 1)
  %v1_e64 = icmp eq i1 %v12_e61, false
  br i1 %v1_e64, label %dec_label_pc_e50, label %dec_label_pc_e66.loopexit

dec_label_pc_e66.loopexit:                        ; preds = %dec_label_pc_e50
  store i64 %v0_e50, i64* %rdx.global-to-local, align 8
  store i64 %v0_e53, i64* %rsi.global-to-local, align 8
  store i64 %v0_e56, i64* %rdi.global-to-local, align 8
  store i64 %v1_e5d, i64* %rbx.global-to-local, align 8
  br label %dec_label_pc_e66

dec_label_pc_e66:                                 ; preds = %dec_label_pc_e66.loopexit, %dec_label_pc_e10
  store i64 %v0_e2a, i64* %rbx.global-to-local, align 8
  store i64 %v0_e22, i64* %rbp.global-to-local, align 8
  store i64 %v0_e19, i64* %r12.global-to-local, align 8
  store i64 %v0_e17, i64* %r13.global-to-local, align 8
  store i64 %v0_e12, i64* %r14.global-to-local, align 8
  store i64 %v0_e10, i64* %r15.global-to-local, align 8
  ret i64 %v0_e3c
}

define i64 @__libc_csu_fini() local_unnamed_addr {
dec_label_pc_e80:
  %rax.global-to-local = alloca i64, align 8
  %v0_e80 = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_e80
}

define i64 @_fini() local_unnamed_addr {
dec_label_pc_e84:
  %rax.global-to-local = alloca i64, align 8
  %v0_e8c = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_e8c
}

declare void @free(i64*) local_unnamed_addr

declare void @_exit(i32) local_unnamed_addr

declare i32 @puts(i8*) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @setbuf(%_IO_FILE*, i8*) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare i32 @read(i32, i64*, i32) local_unnamed_addr

declare i64* @calloc(i32, i32) local_unnamed_addr

declare i32 @getchar() local_unnamed_addr

declare i64* @malloc(i32) local_unnamed_addr

declare i64* @realloc(i64*, i32) local_unnamed_addr

declare i32 @scanf(i8*, ...) local_unnamed_addr

declare i32 @__libc_start_main(i64, i32, i8**, void ()*, void ()*, void ()*) local_unnamed_addr

declare void @__gmon_start__() local_unnamed_addr

declare void @__cxa_finalize(i64*) local_unnamed_addr

declare i64 @__asm_hlt() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr
