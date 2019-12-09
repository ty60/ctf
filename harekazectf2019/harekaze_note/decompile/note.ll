source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

%_IO_FILE = type { i32 }

@rbp = internal unnamed_addr global i64 0
@global_var_2008.3 = constant [10 x i8] c"time out!\00"
@global_var_2012.10 = constant [15 x i8] c"1. Create note\00"
@global_var_2021.11 = constant [17 x i8] c"2. Write content\00"
@global_var_2032.12 = constant [16 x i8] c"3. Show content\00"
@global_var_2042.13 = constant [15 x i8] c"4. Delete note\00"
@global_var_2051.14 = constant [9 x i8] c"Choice: \00"
@global_var_205a.16 = constant [15 x i8] c"Too many notes\00"
@global_var_2069.17 = constant [8 x i8] c"Title: \00"
@global_var_2071.19 = constant [30 x i8] c"No such a note with the title\00"
@global_var_2090.20 = constant [33 x i8] c"Title of note to write content: \00"
@global_var_20b8.21 = constant [33 x i8] c"You have already written content\00"
@global_var_20d9.22 = constant [18 x i8] c"Size of content: \00"
@global_var_20eb.23 = constant [8 x i8] c"Too big\00"
@global_var_20f3.24 = constant [10 x i8] c"Content: \00"
@global_var_2100.25 = constant [32 x i8] c"Title of note to show content: \00"
@global_var_2120.26 = constant [26 x i8] c"Title of note to delete: \00"
@global_var_213a.27 = constant [15 x i8] c"Invalid choice\00"
@global_var_3d60.28 = global i64 4576
@global_var_3d68.29 = global i64 4512
@0 = external global i32
@global_var_4048.2 = local_unnamed_addr global i8 0
@global_var_4030.4 = local_unnamed_addr global %_IO_FILE* null
@global_var_4020.5 = local_unnamed_addr global %_IO_FILE* null
@global_var_4040.6 = local_unnamed_addr global %_IO_FILE* null
@global_var_4090.8 = external local_unnamed_addr global i8*
@global_var_4080.7 = external global i8*
@global_var_4098.9 = external local_unnamed_addr global i8*
@global_var_4060.15 = local_unnamed_addr global i32 0
@global_var_4061.18 = global i32 0

define i64 @function_1000() local_unnamed_addr {
dec_label_pc_1000:
  %v0_1004 = load i64, i64* inttoptr (i64 16360 to i64*), align 8
  %v1_100b = icmp eq i64 %v0_1004, 0
  br i1 %v1_100b, label %dec_label_pc_1012, label %dec_label_pc_1010

dec_label_pc_1010:                                ; preds = %dec_label_pc_1000
  call void @__gmon_start__()
  br label %dec_label_pc_1012

dec_label_pc_1012:                                ; preds = %dec_label_pc_1010, %dec_label_pc_1000
  %v0_1016 = phi i64 [ ptrtoint (i32* @0 to i64), %dec_label_pc_1010 ], [ 0, %dec_label_pc_1000 ]
  ret i64 %v0_1016
}

define void @function_1030(i64* %ptr) local_unnamed_addr {
dec_label_pc_1030:
  call void @free(i64* %ptr)
  ret void
}

define i32 @function_1040(i8* %s) local_unnamed_addr {
dec_label_pc_1040:
  %v2_1040 = call i32 @puts(i8* %s)
  ret i32 %v2_1040
}

define void @function_1050() local_unnamed_addr {
dec_label_pc_1050:
  call void @__stack_chk_fail()
  ret void
}

define i32 @function_1060(i8* %format, ...) local_unnamed_addr {
dec_label_pc_1060:
  %v2_1060 = call i32 (i8*, ...) @printf(i8* %format)
  ret i32 %v2_1060
}

define i32 @function_1070(i32 %seconds) local_unnamed_addr {
dec_label_pc_1070:
  %v2_1070 = call i32 @alarm(i32 %seconds)
  ret i32 %v2_1070
}

define i32 @function_1080(i32 %fd, i64* %buf, i32 %nbytes) local_unnamed_addr {
dec_label_pc_1080:
  %v6_1080 = call i32 @read(i32 %fd, i64* %buf, i32 %nbytes)
  ret i32 %v6_1080
}

define i32 @function_1090(i8* %s1, i8* %s2) local_unnamed_addr {
dec_label_pc_1090:
  %v4_1090 = call i32 @strcmp(i8* %s1, i8* %s2)
  ret i32 %v4_1090
}

define void (i32)* @function_10a0(i32 %sig, void (i32)* %handler) local_unnamed_addr {
dec_label_pc_10a0:
  %v4_10a0 = call void (i32)* @signal(i32 %sig, void (i32)* %handler)
  ret void (i32)* %v4_10a0
}

define i64* @function_10b0(i32 %size) local_unnamed_addr {
dec_label_pc_10b0:
  %v2_10b0 = call i64* @malloc(i32 %size)
  ret i64* %v2_10b0
}

define i32 @function_10c0(%_IO_FILE* %stream, i8* %buf, i32 %modes, i32 %n) local_unnamed_addr {
dec_label_pc_10c0:
  %v8_10c0 = call i32 @setvbuf(%_IO_FILE* %stream, i8* %buf, i32 %modes, i32 %n)
  ret i32 %v8_10c0
}

define i32 @function_10d0(i8* %nptr) local_unnamed_addr {
dec_label_pc_10d0:
  %v2_10d0 = call i32 @atoi(i8* %nptr)
  ret i32 %v2_10d0
}

define void @function_10e0(i32 %status) local_unnamed_addr {
dec_label_pc_10e0:
  call void @exit(i32 %status)
  ret void
}

define void @function_10f0(i64* %d) local_unnamed_addr {
dec_label_pc_10f0:
  call void @__cxa_finalize(i64* %d)
  ret void
}

define i64 @entry_point(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_1100:
  %rdx.global-to-local = alloca i64, align 8
  store i64 %arg3, i64* %rdx.global-to-local, align 8
  %stack_var_8 = alloca i64, align 8
  %v0_1102 = load i64, i64* %rdx.global-to-local, align 8
  %v4_1105 = ptrtoint i64* %stack_var_8 to i64
  %tmp248 = bitcast i64* %stack_var_8 to i8**
  store i64 %v4_1105, i64* %rdx.global-to-local, align 8
  %v2_1124 = trunc i64 %arg4 to i32
  %v13_1124 = inttoptr i64 %v0_1102 to void ()*
  %v14_1124 = call i32 @__libc_start_main(i64 5884, i32 %v2_1124, i8** %tmp248, void ()* inttoptr (i64 6000 to void ()*), void ()* inttoptr (i64 6096 to void ()*), void ()* %v13_1124)
  %v0_112a = call i64 @__asm_hlt()
  unreachable
}

define i64 @function_1130() local_unnamed_addr {
dec_label_pc_1130:
  ret i64 16400
}

define i64 @function_1160() local_unnamed_addr {
dec_label_pc_1160:
  ret i64 0
}

define i64 @function_11a0() local_unnamed_addr {
dec_label_pc_11a0:
  %rax.global-to-local = alloca i64, align 8
  %rbp.global-to-local = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %v0_11a0 = load i8, i8* @global_var_4048.2, align 1
  %v7_11a0 = icmp eq i8 %v0_11a0, 0
  %v1_11a7 = icmp eq i1 %v7_11a0, false
  br i1 %v1_11a7, label %dec_label_pc_11d8, label %dec_label_pc_11a9

dec_label_pc_11a9:                                ; preds = %dec_label_pc_11a0
  %v0_11a9 = load i64, i64* %rbp.global-to-local, align 8
  store i64 %v0_11a9, i64* %stack_var_-8, align 8
  %v4_11a9 = ptrtoint i64* %stack_var_-8 to i64
  %v0_11aa = load i64, i64* inttoptr (i64 16376 to i64*), align 8
  %v7_11aa = icmp eq i64 %v0_11aa, 0
  store i64 %v4_11a9, i64* %rbp.global-to-local, align 8
  br i1 %v7_11aa, label %dec_label_pc_11c3, label %dec_label_pc_11b7

dec_label_pc_11b7:                                ; preds = %dec_label_pc_11a9
  %v0_11b7 = load i64, i64* inttoptr (i64 16392 to i64*), align 8
  %v1_11be = inttoptr i64 %v0_11b7 to i64*
  call void @__cxa_finalize(i64* %v1_11be)
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.global-to-local, align 8
  br label %dec_label_pc_11c3

dec_label_pc_11c3:                                ; preds = %dec_label_pc_11b7, %dec_label_pc_11a9
  %v0_11c3 = call i64 @function_1130()
  store i64 %v0_11c3, i64* %rax.global-to-local, align 8
  store i8 1, i8* @global_var_4048.2, align 1
  %v2_11cf = load i64, i64* %stack_var_-8, align 8
  store i64 %v2_11cf, i64* %rbp.global-to-local, align 8
  ret i64 %v0_11c3

dec_label_pc_11d8:                                ; preds = %dec_label_pc_11a0
  %v0_11d8 = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_11d8
}

define i64 @function_11e0() local_unnamed_addr {
dec_label_pc_11e0:
  %v0_11e0 = call i64 @function_1160()
  ret i64 %v0_11e0
}

define i64 @function_11e5() local_unnamed_addr {
dec_label_pc_11e5:
  %v3_11f0 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_var_2008.3, i64 0, i64 0))
  call void @exit(i32 -1)
  unreachable
}

define i64 @function_11ff() local_unnamed_addr {
dec_label_pc_11ff:
  %v0_1203 = load %_IO_FILE*, %_IO_FILE** @global_var_4030.4, align 8
  %v12_121c = call i32 @setvbuf(%_IO_FILE* %v0_1203, i8* null, i32 2, i32 0)
  %v0_1221 = load %_IO_FILE*, %_IO_FILE** @global_var_4020.5, align 8
  %v12_123a = call i32 @setvbuf(%_IO_FILE* %v0_1221, i8* null, i32 2, i32 0)
  %v0_123f = load %_IO_FILE*, %_IO_FILE** @global_var_4040.6, align 8
  %v12_1258 = call i32 @setvbuf(%_IO_FILE* %v0_123f, i8* null, i32 2, i32 0)
  %v6_1269 = call void (i32)* @signal(i32 14, void (i32)* inttoptr (i64 4581 to void (i32)*))
  %v3_1273 = call i32 @alarm(i32 60)
  store i8* bitcast (i8** @global_var_4080.7 to i8*), i8** @global_var_4090.8, align 8
  store i8* bitcast (i8** @global_var_4080.7 to i8*), i8** @global_var_4098.9, align 8
  ret i64 ptrtoint (i8** @global_var_4080.7 to i64)
}

define i64 @function_1297(i64* %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_1297:
  %rax.global-to-local = alloca i64, align 8
  %rdi.global-to-local = alloca i64, align 8
  %rsi.global-to-local = alloca i64, align 8
  store i64 %arg2, i64* %rsi.global-to-local, align 8
  %tmp29 = ptrtoint i64* %arg1 to i64
  store i64 %tmp29, i64* %rdi.global-to-local, align 8
  %v0_129f = load i64, i64* %rdi.global-to-local, align 8
  %v0_12a3 = load i64, i64* %rsi.global-to-local, align 8
  store i64 0, i64* %rax.global-to-local, align 8
  %v6_130b = trunc i64 %v0_12a3 to i32
  %v8_130e11 = icmp sgt i32 %v6_130b, 0
  br i1 %v8_130e11, label %dec_label_pc_12af.preheader, label %dec_label_pc_1310

dec_label_pc_12af.preheader:                      ; preds = %dec_label_pc_1297
  %sext = mul i64 %v0_12a3, 4294967296
  %tmp54 = sdiv i64 %sext, 4294967296
  br label %dec_label_pc_12af

dec_label_pc_12af:                                ; preds = %dec_label_pc_12af.preheader, %dec_label_pc_1304
  %indvars.iv = phi i64 [ 0, %dec_label_pc_12af.preheader ], [ %indvars.iv.next, %dec_label_pc_1304 ]
  %v2_12b9 = add i64 %indvars.iv, %v0_129f
  store i64 %v2_12b9, i64* %rax.global-to-local, align 8
  store i64 %v2_12b9, i64* %rsi.global-to-local, align 8
  store i64 0, i64* %rdi.global-to-local, align 8
  %v4_12c9 = inttoptr i64 %v2_12b9 to i64*
  %v8_12c9 = call i32 @read(i32 0, i64* %v4_12c9, i32 1)
  %v10_12c9 = sext i32 %v8_12c9 to i64
  store i64 %v10_12c9, i64* %rax.global-to-local, align 8
  %v10_12ce = icmp eq i32 %v8_12c9, 1
  br i1 %v10_12ce, label %dec_label_pc_12de, label %dec_label_pc_12d4

dec_label_pc_12d4:                                ; preds = %dec_label_pc_12af
  store i64 4294967295, i64* %rdi.global-to-local, align 8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_12de:                                ; preds = %dec_label_pc_12af
  store i64 %v2_12b9, i64* %rax.global-to-local, align 8
  %v1_12eb = inttoptr i64 %v2_12b9 to i8*
  %v2_12eb = load i8, i8* %v1_12eb, align 1
  %v3_12eb = zext i8 %v2_12eb to i64
  store i64 %v3_12eb, i64* %rax.global-to-local, align 8
  %v11_12ee = icmp eq i8 %v2_12eb, 10
  %v1_12f0 = icmp eq i1 %v11_12ee, false
  br i1 %v1_12f0, label %dec_label_pc_1304, label %dec_label_pc_12f2

dec_label_pc_12f2:                                ; preds = %dec_label_pc_12de
  store i64 %v2_12b9, i64* %rax.global-to-local, align 8
  store i8 0, i8* %v1_12eb, align 1
  br label %dec_label_pc_1310

dec_label_pc_1304:                                ; preds = %dec_label_pc_12de
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  store i64 %indvars.iv.next, i64* %rax.global-to-local, align 8
  %v8_130e = icmp slt i64 %indvars.iv.next, %tmp54
  br i1 %v8_130e, label %dec_label_pc_12af, label %dec_label_pc_1310

dec_label_pc_1310:                                ; preds = %dec_label_pc_1304, %dec_label_pc_1297, %dec_label_pc_12f2
  %v1_1315 = add i64 %v0_12a3, -1
  %v2_131d = add i64 %v1_1315, %v0_129f
  store i64 %v2_131d, i64* %rax.global-to-local, align 8
  %v1_1320 = inttoptr i64 %v2_131d to i8*
  store i8 0, i8* %v1_1320, align 1
  %v0_1325 = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_1325
}

define i64 @function_1326() local_unnamed_addr {
dec_label_pc_1326:
  %rax.global-to-local = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %v15_132a = ptrtoint i64* %stack_var_-56 to i64
  %v0_132e = call i64 @__readfsqword(i64 40)
  store i64 %v15_132a, i64* %rax.global-to-local, align 8
  %v3_1349 = call i64 @function_1297(i64* nonnull %stack_var_-56, i64 32)
  store i64 %v15_132a, i64* %rax.global-to-local, align 8
  %tmp11 = bitcast i64* %stack_var_-56 to i8*
  %v3_1355 = call i32 @atoi(i8* %tmp11)
  %v5_1355 = sext i32 %v3_1355 to i64
  store i64 %v5_1355, i64* %rax.global-to-local, align 8
  %v1_135e = call i64 @__readfsqword(i64 40)
  %v3_135e = icmp eq i64 %v1_135e, %v0_132e
  br i1 %v3_135e, label %dec_label_pc_1326.dec_label_pc_136e_crit_edge, label %dec_label_pc_1369

dec_label_pc_1326.dec_label_pc_136e_crit_edge:    ; preds = %dec_label_pc_1326
  %v0_136f.pre = load i64, i64* %rax.global-to-local, align 8
  br label %dec_label_pc_136e

dec_label_pc_1369:                                ; preds = %dec_label_pc_1326
  call void @__stack_chk_fail()
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.global-to-local, align 8
  br label %dec_label_pc_136e

dec_label_pc_136e:                                ; preds = %dec_label_pc_1326.dec_label_pc_136e_crit_edge, %dec_label_pc_1369
  %v0_136f = phi i64 [ %v0_136f.pre, %dec_label_pc_1326.dec_label_pc_136e_crit_edge ], [ ptrtoint (i32* @0 to i64), %dec_label_pc_1369 ]
  ret i64 %v0_136f
}

define i64 @function_1370() local_unnamed_addr {
dec_label_pc_1370:
  %v3_137b = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_var_2012.10, i64 0, i64 0))
  %v3_1387 = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @global_var_2021.11, i64 0, i64 0))
  %v3_1393 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_var_2032.12, i64 0, i64 0))
  %v3_139f = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_var_2042.13, i64 0, i64 0))
  %v3_13b0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_var_2051.14, i64 0, i64 0))
  %v0_13ba = call i64 @function_1326()
  ret i64 %v0_13ba
}

define i64 @function_13c1() local_unnamed_addr {
dec_label_pc_13c1:
  %v0_13c9 = load i32, i32* @global_var_4060.15, align 4
  %v9_13d2 = icmp sgt i32 %v0_13c9, 79
  br i1 %v9_13d2, label %dec_label_pc_13d4, label %dec_label_pc_13e0

dec_label_pc_13d4:                                ; preds = %dec_label_pc_13c1
  %v3_13db = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_var_205a.16, i64 0, i64 0))
  br label %dec_label_pc_13e0

dec_label_pc_13e0:                                ; preds = %dec_label_pc_13c1, %dec_label_pc_13d4
  %v3_13e5 = call i64* @malloc(i32 40)
  %v5_13e5 = ptrtoint i64* %v3_13e5 to i64
  %v3_13fa = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_var_2069.17, i64 0, i64 0))
  %v3_140b = call i64 @function_1297(i64* %v3_13e5, i64 16)
  %v2_141b = add i64 %v5_13e5, 24
  %v3_141b = inttoptr i64 %v2_141b to i64*
  store i64 ptrtoint (i8** @global_var_4080.7 to i64), i64* %v3_141b, align 8
  %v0_141f = load i8*, i8** @global_var_4090.8, align 8
  %v1_141f = ptrtoint i8* %v0_141f to i64
  %v2_142a = add i64 %v5_13e5, 16
  %v3_142a = inttoptr i64 %v2_142a to i64*
  store i64 %v1_141f, i64* %v3_142a, align 8
  %v0_142e = load i8*, i8** @global_var_4090.8, align 8
  %v1_142e = ptrtoint i8* %v0_142e to i64
  %v2_1439 = add i64 %v1_142e, 24
  %v3_1439 = inttoptr i64 %v2_1439 to i64*
  store i64 %v5_13e5, i64* %v3_1439, align 8
  %v1_1441 = bitcast i64* %v3_13e5 to i8*
  store i8* %v1_1441, i8** @global_var_4090.8, align 8
  store i32 ptrtoint (i32* @global_var_4061.18 to i32), i32* @global_var_4060.15, align 4
  ret i64 ptrtoint (i32* @global_var_4061.18 to i64)
}

define i64 @function_145a(i64* %arg1) local_unnamed_addr {
dec_label_pc_145a:
  %rdi.global-to-local = alloca i64, align 8
  %tmp19 = ptrtoint i64* %arg1 to i64
  store i64 %tmp19, i64* %rdi.global-to-local, align 8
  %v0_1462 = load i64, i64* %rdi.global-to-local, align 8
  %v0_1466 = load i8*, i8** @global_var_4098.9, align 8
  %v16_14a310 = icmp eq i8* %v0_1466, bitcast (i8** @global_var_4080.7 to i8*)
  %v1_14a711 = icmp eq i1 %v16_14a310, false
  br i1 %v1_14a711, label %dec_label_pc_1473.lr.ph, label %dec_label_pc_14a9

dec_label_pc_1473.lr.ph:                          ; preds = %dec_label_pc_145a
  %v4_14a34 = ptrtoint i8* %v0_1466 to i64
  %v1_1481 = inttoptr i64 %v0_1462 to i8*
  br label %dec_label_pc_1473

dec_label_pc_1473:                                ; preds = %dec_label_pc_1473.lr.ph, %dec_label_pc_1490
  %v4_14a313 = phi i64 [ %v4_14a34, %dec_label_pc_1473.lr.ph ], [ %v3_1494, %dec_label_pc_1490 ]
  %storemerge212 = phi i8* [ %v0_1466, %dec_label_pc_1473.lr.ph ], [ %v4_1498, %dec_label_pc_1490 ]
  store i64 %v0_1462, i64* %rdi.global-to-local, align 8
  %v5_1481 = call i32 @strcmp(i8* %v1_1481, i8* %storemerge212)
  %v5_1486 = icmp eq i32 %v5_1481, 0
  %v1_1488 = icmp eq i1 %v5_1486, false
  br i1 %v1_1488, label %dec_label_pc_1490, label %dec_label_pc_14ba

dec_label_pc_1490:                                ; preds = %dec_label_pc_1473
  %v1_1494 = add i64 %v4_14a313, 24
  %v2_1494 = inttoptr i64 %v1_1494 to i64*
  %v3_1494 = load i64, i64* %v2_1494, align 8
  %v4_1498 = inttoptr i64 %v3_1494 to i8*
  %v16_14a3 = icmp eq i64 %v3_1494, ptrtoint (i8** @global_var_4080.7 to i64)
  %v1_14a7 = icmp eq i1 %v16_14a3, false
  br i1 %v1_14a7, label %dec_label_pc_1473, label %dec_label_pc_14a9

dec_label_pc_14a9:                                ; preds = %dec_label_pc_1490, %dec_label_pc_145a
  store i64 ptrtoint ([30 x i8]* @global_var_2071.19 to i64), i64* %rdi.global-to-local, align 8
  %v3_14b0 = call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_var_2071.19, i64 0, i64 0))
  br label %dec_label_pc_14ba

dec_label_pc_14ba:                                ; preds = %dec_label_pc_1473, %dec_label_pc_14a9
  %storemerge = phi i64 [ 0, %dec_label_pc_14a9 ], [ %v4_14a313, %dec_label_pc_1473 ]
  ret i64 %storemerge
}

define i64 @function_14bc() local_unnamed_addr {
dec_label_pc_14bc:
  %stack_var_-40 = alloca i64, align 8
  %v0_14c4 = call i64 @__readfsqword(i64 40)
  %v3_14df = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_var_2090.20, i64 0, i64 0))
  %v3_14f0 = call i64 @function_1297(i64* nonnull %stack_var_-40, i64 16)
  %v2_14fc = call i64 @function_145a(i64* nonnull %stack_var_-40)
  %v10_1505 = icmp eq i64 %v2_14fc, 0
  br i1 %v10_1505, label %dec_label_pc_15a4, label %dec_label_pc_1510

dec_label_pc_1510:                                ; preds = %dec_label_pc_14bc
  %v1_1514 = add i64 %v2_14fc, 32
  %v2_1514 = inttoptr i64 %v1_1514 to i64*
  %v3_1514 = load i64, i64* %v2_1514, align 8
  %v1_1518 = icmp eq i64 %v3_1514, 0
  br i1 %v1_1518, label %dec_label_pc_152b, label %dec_label_pc_151d

dec_label_pc_151d:                                ; preds = %dec_label_pc_1510
  %v3_1524 = call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @global_var_20b8.21, i64 0, i64 0))
  br label %dec_label_pc_15a4

dec_label_pc_152b:                                ; preds = %dec_label_pc_1510
  %v3_1537 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_var_20d9.22, i64 0, i64 0))
  %v0_1541 = call i64 @function_1326()
  %v1_1546 = trunc i64 %v0_1541 to i32
  %v1_1546.off = add i32 %v1_1546, -1
  %tmp33 = icmp ugt i32 %v1_1546.off, 79
  br i1 %tmp33, label %dec_label_pc_1555, label %dec_label_pc_1563

dec_label_pc_1555:                                ; preds = %dec_label_pc_152b
  %v3_155c = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_var_20eb.23, i64 0, i64 0))
  br label %dec_label_pc_15a4

dec_label_pc_1563:                                ; preds = %dec_label_pc_152b
  %v4_1563 = and i64 %v0_1541, 4294967295
  %v3_156b = call i64* @malloc(i32 %v1_1546)
  %v5_156b = ptrtoint i64* %v3_156b to i64
  store i64 %v5_156b, i64* %v2_1514, align 8
  %v3_1587 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_var_20f3.24, i64 0, i64 0))
  %v3_1590 = load i64, i64* %v2_1514, align 8
  %v1_159c = inttoptr i64 %v3_1590 to i64*
  %v3_159c = call i64 @function_1297(i64* %v1_159c, i64 %v4_1563)
  br label %dec_label_pc_15a4

dec_label_pc_15a4:                                ; preds = %dec_label_pc_14bc, %dec_label_pc_1563, %dec_label_pc_1555, %dec_label_pc_151d
  %v1_15a8 = call i64 @__readfsqword(i64 40)
  %v3_15a8 = icmp eq i64 %v1_15a8, %v0_14c4
  br i1 %v3_15a8, label %dec_label_pc_15b8, label %dec_label_pc_15b3

dec_label_pc_15b3:                                ; preds = %dec_label_pc_15a4
  call void @__stack_chk_fail()
  br label %dec_label_pc_15b8

dec_label_pc_15b8:                                ; preds = %dec_label_pc_15b3, %dec_label_pc_15a4
  %v0_15b9 = phi i64 [ ptrtoint (i32* @0 to i64), %dec_label_pc_15b3 ], [ 0, %dec_label_pc_15a4 ]
  ret i64 %v0_15b9
}

define i64 @function_15ba() local_unnamed_addr {
dec_label_pc_15ba:
  %stack_var_-40 = alloca i64, align 8
  %v0_15c2 = call i64 @__readfsqword(i64 40)
  %v3_15dd = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_var_2100.25, i64 0, i64 0))
  %v3_15ee = call i64 @function_1297(i64* nonnull %stack_var_-40, i64 16)
  %v2_15fa = call i64 @function_145a(i64* nonnull %stack_var_-40)
  %v10_1603 = icmp eq i64 %v2_15fa, 0
  br i1 %v10_1603, label %dec_label_pc_162a, label %dec_label_pc_160a

dec_label_pc_160a:                                ; preds = %dec_label_pc_15ba
  %v1_160e = add i64 %v2_15fa, 32
  %v2_160e = inttoptr i64 %v1_160e to i64*
  %v3_160e = load i64, i64* %v2_160e, align 8
  %v1_1612 = icmp eq i64 %v3_160e, 0
  br i1 %v1_1612, label %dec_label_pc_162a, label %dec_label_pc_1617

dec_label_pc_1617:                                ; preds = %dec_label_pc_160a
  %v3_161b = load i64, i64* %v2_160e, align 8
  %v1_161f = inttoptr i64 %v3_161b to i8*
  %v3_1622 = call i32 @puts(i8* %v1_161f)
  br label %dec_label_pc_162a

dec_label_pc_162a:                                ; preds = %dec_label_pc_15ba, %dec_label_pc_1617, %dec_label_pc_160a
  %v1_162e = call i64 @__readfsqword(i64 40)
  %v3_162e = icmp eq i64 %v1_162e, %v0_15c2
  br i1 %v3_162e, label %dec_label_pc_163e, label %dec_label_pc_1639

dec_label_pc_1639:                                ; preds = %dec_label_pc_162a
  call void @__stack_chk_fail()
  br label %dec_label_pc_163e

dec_label_pc_163e:                                ; preds = %dec_label_pc_1639, %dec_label_pc_162a
  %v0_163f = phi i64 [ ptrtoint (i32* @0 to i64), %dec_label_pc_1639 ], [ 0, %dec_label_pc_162a ]
  ret i64 %v0_163f
}

define i64 @function_1640() local_unnamed_addr {
dec_label_pc_1640:
  %stack_var_-40 = alloca i64, align 8
  %v0_1648 = call i64 @__readfsqword(i64 40)
  %v3_1663 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @global_var_2120.26, i64 0, i64 0))
  %v3_1674 = call i64 @function_1297(i64* nonnull %stack_var_-40, i64 16)
  %v2_1680 = call i64 @function_145a(i64* nonnull %stack_var_-40)
  %v10_1689 = icmp eq i64 %v2_1680, 0
  br i1 %v10_1689, label %dec_label_pc_16e6, label %dec_label_pc_1690

dec_label_pc_1690:                                ; preds = %dec_label_pc_1640
  %v1_1694 = add i64 %v2_1680, 16
  %v2_1694 = inttoptr i64 %v1_1694 to i64*
  %v3_1694 = load i64, i64* %v2_1694, align 8
  %v1_169c = add i64 %v2_1680, 24
  %v2_169c = inttoptr i64 %v1_169c to i64*
  %v3_169c = load i64, i64* %v2_169c, align 8
  %v2_16a0 = add i64 %v3_1694, 24
  %v3_16a0 = inttoptr i64 %v2_16a0 to i64*
  store i64 %v3_169c, i64* %v3_16a0, align 8
  %v3_16a8 = load i64, i64* %v2_169c, align 8
  %v3_16b0 = load i64, i64* %v2_1694, align 8
  %v2_16b4 = add i64 %v3_16a8, 16
  %v3_16b4 = inttoptr i64 %v2_16b4 to i64*
  store i64 %v3_16b0, i64* %v3_16b4, align 8
  %v1_16bc = add i64 %v2_1680, 32
  %v2_16bc = inttoptr i64 %v1_16bc to i64*
  %v3_16bc = load i64, i64* %v2_16bc, align 8
  %v1_16c3 = inttoptr i64 %v3_16bc to i64*
  call void @free(i64* %v1_16c3)
  %v1_16cf = inttoptr i64 %v2_1680 to i64*
  call void @free(i64* %v1_16cf)
  %v0_16d4 = load i32, i32* @global_var_4060.15, align 4
  %v2_16da = add i32 %v0_16d4, -1
  store i32 %v2_16da, i32* @global_var_4060.15, align 4
  br label %dec_label_pc_16e6

dec_label_pc_16e6:                                ; preds = %dec_label_pc_1640, %dec_label_pc_1690
  %v1_16ea = call i64 @__readfsqword(i64 40)
  %v3_16ea = icmp eq i64 %v1_16ea, %v0_1648
  br i1 %v3_16ea, label %dec_label_pc_16fa, label %dec_label_pc_16f5

dec_label_pc_16f5:                                ; preds = %dec_label_pc_16e6
  call void @__stack_chk_fail()
  br label %dec_label_pc_16fa

dec_label_pc_16fa:                                ; preds = %dec_label_pc_16f5, %dec_label_pc_16e6
  %v0_16fb = phi i64 [ ptrtoint (i32* @0 to i64), %dec_label_pc_16f5 ], [ 0, %dec_label_pc_16e6 ]
  ret i64 %v0_16fb
}

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

define i64 @function_1770(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_1770:
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
  %v0_1770 = load i64, i64* %r15.global-to-local, align 8
  %v0_1772 = load i64, i64* %rdx.global-to-local, align 8
  store i64 %v0_1772, i64* %r15.global-to-local, align 8
  %v0_1775 = load i64, i64* %r14.global-to-local, align 8
  %v0_1777 = load i64, i64* %rsi.global-to-local, align 8
  store i64 %v0_1777, i64* %r14.global-to-local, align 8
  %v0_177a = load i64, i64* %r13.global-to-local, align 8
  %v0_177c = load i64, i64* %rdi.global-to-local, align 8
  store i64 %v0_177c, i64* %r13.global-to-local, align 8
  %v0_177f = load i64, i64* %r12.global-to-local, align 8
  store i64 ptrtoint (i64* @global_var_3d60.28 to i64), i64* %r12.global-to-local, align 8
  %v0_1788 = load i64, i64* %rbp.global-to-local, align 8
  %v0_1790 = load i64, i64* %rbx.global-to-local, align 8
  store i64 sub (i64 ptrtoint (i64* @global_var_3d68.29 to i64), i64 ptrtoint (i64* @global_var_3d60.28 to i64)), i64* %rbp.global-to-local, align 8
  %v0_1798 = call i64 @function_1000()
  store i64 sdiv (i64 sub (i64 ptrtoint (i64* @global_var_3d68.29 to i64), i64 ptrtoint (i64* @global_var_3d60.28 to i64)), i64 8), i64* %rbp.global-to-local, align 8
  br i1 icmp eq (i64 sdiv (i64 sub (i64 ptrtoint (i64* @global_var_3d68.29 to i64), i64 ptrtoint (i64* @global_var_3d60.28 to i64)), i64 8), i64 0), label %dec_label_pc_17be, label %dec_label_pc_17a3

dec_label_pc_17a3:                                ; preds = %dec_label_pc_1770
  store i64 0, i64* %rbx.global-to-local, align 8
  %v0_17a8 = load i64, i64* %r15.global-to-local, align 8
  %v0_17ab = load i64, i64* %r14.global-to-local, align 8
  %v0_17ae = load i64, i64* %r13.global-to-local, align 8
  br label %dec_label_pc_17a8

dec_label_pc_17a8:                                ; preds = %dec_label_pc_17a8, %dec_label_pc_17a3
  %v1_17b52 = phi i64 [ %v1_17b5, %dec_label_pc_17a8 ], [ 0, %dec_label_pc_17a3 ]
  %v1_17b5 = add i64 %v1_17b52, 1
  %v12_17b9 = icmp eq i64 %v1_17b5, sdiv (i64 sub (i64 ptrtoint (i64* @global_var_3d68.29 to i64), i64 ptrtoint (i64* @global_var_3d60.28 to i64)), i64 8)
  %v1_17bc = icmp eq i1 %v12_17b9, false
  br i1 %v1_17bc, label %dec_label_pc_17a8, label %dec_label_pc_17be.loopexit

dec_label_pc_17be.loopexit:                       ; preds = %dec_label_pc_17a8
  store i64 %v0_17a8, i64* %rdx.global-to-local, align 8
  store i64 %v0_17ab, i64* %rsi.global-to-local, align 8
  store i64 %v0_17ae, i64* %rdi.global-to-local, align 8
  store i64 %v1_17b5, i64* %rbx.global-to-local, align 8
  br label %dec_label_pc_17be

dec_label_pc_17be:                                ; preds = %dec_label_pc_17be.loopexit, %dec_label_pc_1770
  store i64 %v0_1790, i64* %rbx.global-to-local, align 8
  store i64 %v0_1788, i64* %rbp.global-to-local, align 8
  store i64 %v0_177f, i64* %r12.global-to-local, align 8
  store i64 %v0_177a, i64* %r13.global-to-local, align 8
  store i64 %v0_1775, i64* %r14.global-to-local, align 8
  store i64 %v0_1770, i64* %r15.global-to-local, align 8
  ret i64 %v0_1798
}

define i64 @function_17d0() local_unnamed_addr {
dec_label_pc_17d0:
  %rax.global-to-local = alloca i64, align 8
  %v0_17d0 = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_17d0
}

define i64 @function_17d4() local_unnamed_addr {
dec_label_pc_17d4:
  %rax.global-to-local = alloca i64, align 8
  %v0_17dc = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_17dc
}

declare void @free(i64*) local_unnamed_addr

declare i32 @puts(i8*) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare i32 @alarm(i32) local_unnamed_addr

declare i32 @read(i32, i64*, i32) local_unnamed_addr

declare i32 @strcmp(i8*, i8*) local_unnamed_addr

declare void (i32)* @signal(i32, void (i32)*) local_unnamed_addr

declare i64* @malloc(i32) local_unnamed_addr

declare i32 @setvbuf(%_IO_FILE*, i8*, i32, i32) local_unnamed_addr

declare i32 @atoi(i8*) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare i32 @__libc_start_main(i64, i32, i8**, void ()*, void ()*, void ()*) local_unnamed_addr

declare void @__gmon_start__() local_unnamed_addr

declare void @__cxa_finalize(i64*) local_unnamed_addr

declare i64 @__asm_hlt() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr
