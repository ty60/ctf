source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

%_IO_FILE = type { i32 }

@xmm0 = internal unnamed_addr global i128 0
@xmm1 = internal unnamed_addr global i128 0
@xmm2 = internal unnamed_addr global i128 0
@xmm3 = internal unnamed_addr global i128 0
@xmm4 = internal unnamed_addr global i128 0
@xmm5 = internal unnamed_addr global i128 0
@xmm6 = internal unnamed_addr global i128 0
@xmm7 = internal unnamed_addr global i128 0
@rax = internal unnamed_addr global i64 0
@rcx = internal unnamed_addr global i64 0
@rdx = internal unnamed_addr global i64 0
@rbp = internal unnamed_addr global i64 0
@rsi = internal unnamed_addr global i64 0
@r8 = internal unnamed_addr global i64 0
@r9 = internal unnamed_addr global i64 0
@global_var_3004.3 = constant [18 x i8] c"What's your name?\00"
@global_var_3016.4 = constant [5 x i8] c"Hi, \00"
@global_var_301b.5 = constant [24 x i8] c"Do you leave a comment?\00"
@global_var_3058.9 = constant i64 -30399778528177
@global_var_3090.10 = constant i64 -22643067589793
@global_var_3208.13 = constant i64 -20680267534974
@global_var_321c.15 = constant i64 -15775414881800
@global_var_4d78.17 = global i64 4528
@global_var_4d80.18 = global i64 4464
@0 = external global i32
@global_var_5048.2 = local_unnamed_addr global i8 0
@global_var_5030.6 = local_unnamed_addr global %_IO_FILE* null
@global_var_5020.7 = local_unnamed_addr global %_IO_FILE* null
@global_var_5040.8 = local_unnamed_addr global %_IO_FILE* null

define i64 @function_1000() local_unnamed_addr {
dec_label_pc_1000:
  %v0_1004 = load i64, i64* inttoptr (i64 20456 to i64*), align 8
  %v1_100b = icmp eq i64 %v0_1004, 0
  br i1 %v1_100b, label %dec_label_pc_1012, label %dec_label_pc_1010

dec_label_pc_1010:                                ; preds = %dec_label_pc_1000
  call void @__gmon_start__()
  br label %dec_label_pc_1012

dec_label_pc_1012:                                ; preds = %dec_label_pc_1010, %dec_label_pc_1000
  %v0_1016 = phi i64 [ ptrtoint (i32* @0 to i64), %dec_label_pc_1010 ], [ 0, %dec_label_pc_1000 ]
  ret i64 %v0_1016
}

define void @function_1030(i32 %status) local_unnamed_addr {
dec_label_pc_1030:
  call void @_exit(i32 %status)
  ret void
}

define i32 @function_1040(i8* %s) local_unnamed_addr {
dec_label_pc_1040:
  %v2_1040 = call i32 @puts(i8* %s)
  ret i32 %v2_1040
}

define i32 @function_1050(i8* %s) local_unnamed_addr {
dec_label_pc_1050:
  %v2_1050 = call i32 @strlen(i8* %s)
  ret i32 %v2_1050
}

define void @function_1060() local_unnamed_addr {
dec_label_pc_1060:
  call void @__stack_chk_fail()
  ret void
}

define i64* @function_1070(i64* %s, i32 %c, i32 %n) local_unnamed_addr {
dec_label_pc_1070:
  %v6_1070 = call i64* @memset(i64* %s, i32 %c, i32 %n)
  ret i64* %v6_1070
}

define i32 @function_1080(i32 %fd, i64* %buf, i32 %nbytes) local_unnamed_addr {
dec_label_pc_1080:
  %v6_1080 = call i32 @read(i32 %fd, i64* %buf, i32 %nbytes)
  ret i32 %v6_1080
}

define i64* @function_1090(i64* %dest, i64* %src, i32 %n) local_unnamed_addr {
dec_label_pc_1090:
  %v6_1090 = call i64* @memcpy(i64* %dest, i64* %src, i32 %n)
  ret i64* %v6_1090
}

define i32 @function_10a0(%_IO_FILE* %stream, i8* %buf, i32 %modes, i32 %n) local_unnamed_addr {
dec_label_pc_10a0:
  %v8_10a0 = call i32 @setvbuf(%_IO_FILE* %stream, i8* %buf, i32 %modes, i32 %n)
  ret i32 %v8_10a0
}

define i16** @function_10b0() local_unnamed_addr {
dec_label_pc_10b0:
  %v0_10b0 = call i16** @__ctype_b_loc()
  ret i16** %v0_10b0
}

define void @function_10c0(i64* %d) local_unnamed_addr {
dec_label_pc_10c0:
  call void @__cxa_finalize(i64* %d)
  ret void
}

define i64 @entry_point(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_10d0:
  %rdx.global-to-local = alloca i64, align 8
  store i64 %arg3, i64* %rdx.global-to-local, align 8
  %stack_var_8 = alloca i64, align 8
  %v0_10d2 = load i64, i64* %rdx.global-to-local, align 8
  %v4_10d5 = ptrtoint i64* %stack_var_8 to i64
  %tmp248 = bitcast i64* %stack_var_8 to i8**
  store i64 %v4_10d5, i64* %rdx.global-to-local, align 8
  %v2_10f4 = trunc i64 %arg4 to i32
  %v13_10f4 = inttoptr i64 %v0_10d2 to void ()*
  %v14_10f4 = call i32 @__libc_start_main(i64 4533, i32 %v2_10f4, i8** %tmp248, void ()* inttoptr (i64 10816 to void ()*), void ()* inttoptr (i64 10912 to void ()*), void ()* %v13_10f4)
  %v0_10fa = call i64 @__asm_hlt()
  unreachable
}

define i64 @function_1100() local_unnamed_addr {
dec_label_pc_1100:
  ret i64 20496
}

define i64 @function_1130() local_unnamed_addr {
dec_label_pc_1168:
  ret i64 0
}

define i64 @function_1170() local_unnamed_addr {
dec_label_pc_1170:
  %rax.global-to-local = alloca i64, align 8
  %rbp.global-to-local = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %v0_1170 = load i8, i8* @global_var_5048.2, align 1
  %v7_1170 = icmp eq i8 %v0_1170, 0
  %v1_1177 = icmp eq i1 %v7_1170, false
  br i1 %v1_1177, label %dec_label_pc_11a8, label %dec_label_pc_1179

dec_label_pc_1179:                                ; preds = %dec_label_pc_1170
  %v0_1179 = load i64, i64* %rbp.global-to-local, align 8
  store i64 %v0_1179, i64* %stack_var_-8, align 8
  %v4_1179 = ptrtoint i64* %stack_var_-8 to i64
  %v0_117a = load i64, i64* inttoptr (i64 20472 to i64*), align 8
  %v7_117a = icmp eq i64 %v0_117a, 0
  store i64 %v4_1179, i64* %rbp.global-to-local, align 8
  br i1 %v7_117a, label %dec_label_pc_1193, label %dec_label_pc_1187

dec_label_pc_1187:                                ; preds = %dec_label_pc_1179
  %v0_1187 = load i64, i64* inttoptr (i64 20488 to i64*), align 8
  %v1_118e = inttoptr i64 %v0_1187 to i64*
  call void @__cxa_finalize(i64* %v1_118e)
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.global-to-local, align 8
  br label %dec_label_pc_1193

dec_label_pc_1193:                                ; preds = %dec_label_pc_1187, %dec_label_pc_1179
  %v0_1193 = call i64 @function_1100()
  store i64 %v0_1193, i64* %rax.global-to-local, align 8
  store i8 1, i8* @global_var_5048.2, align 1
  %v2_119f = load i64, i64* %stack_var_-8, align 8
  store i64 %v2_119f, i64* %rbp.global-to-local, align 8
  ret i64 %v0_1193

dec_label_pc_11a8:                                ; preds = %dec_label_pc_1170
  %v0_11a8 = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_11a8
}

define i64 @function_11b0() local_unnamed_addr {
dec_label_pc_11b0:
  %v0_11b0 = call i64 @function_1130()
  ret i64 %v0_11b0
}

define i64 @function_11b5() local_unnamed_addr {
dec_label_pc_11b5:
  %r8.global-to-local = alloca i64, align 8
  %r9.global-to-local = alloca i64, align 8
  %rax.global-to-local = alloca i64, align 8
  %rdx.global-to-local = alloca i64, align 8
  %stack_var_-280 = alloca i64, align 8
  %v0_11c0 = call i64 @__readfsqword(i64 40)
  store i64 0, i64* %rax.global-to-local, align 8
  %v0_11cf = call i64 @function_130d()
  store i64 0, i64* @rax, align 8
  %v3_11e0 = load i64, i64* @rsi, align 8
  %v4_11e0 = load i64, i64* @rdx, align 8
  %v5_11e0 = load i64, i64* @rcx, align 8
  %v6_11e0 = load i64, i64* %r8.global-to-local, align 8
  %v7_11e0 = load i64, i64* %r9.global-to-local, align 8
  %v8_11e0 = call i64 @function_136e(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_var_3004.3, i64 0, i64 0), i64 %v3_11e0, i64 %v4_11e0, i64 %v5_11e0, i64 %v6_11e0, i64 %v7_11e0)
  %v2_11e5 = ptrtoint i64* %stack_var_-280 to i64
  store i64 %v2_11e5, i64* %rax.global-to-local, align 8
  store i64 256, i64* %rdx.global-to-local, align 8
  %v7_11f9 = call i32 @read(i32 0, i64* nonnull %stack_var_-280, i32 256)
  %v2_120a = add i32 %v7_11f9, -1
  %v17_120a = zext i32 %v2_120a to i64
  %v0_120f = load i64, i64* @rbp, align 8
  %v3_120f = add nsw i64 %v17_120a, -272
  %v4_120f = add i64 %v3_120f, %v0_120f
  %v5_120f = inttoptr i64 %v4_120f to i8*
  store i8 0, i8* %v5_120f, align 1
  store i64 %v17_120a, i64* %rax.global-to-local, align 8
  %v7_1274276 = icmp sgt i32 %v2_120a, 0
  br i1 %v7_1274276, label %dec_label_pc_1223, label %dec_label_pc_11b5.dec_label_pc_1276_crit_edge

dec_label_pc_11b5.dec_label_pc_1276_crit_edge:    ; preds = %dec_label_pc_11b5
  %v4_1282.pre = load i64, i64* %rdx.global-to-local, align 8
  br label %dec_label_pc_1276

dec_label_pc_1223:                                ; preds = %dec_label_pc_11b5, %dec_label_pc_1265
  %storemerge277 = phi i32 [ %v4_125e, %dec_label_pc_1265 ], [ 0, %dec_label_pc_11b5 ]
  %v0_1223 = call i16** @__ctype_b_loc()
  %v2_1223 = ptrtoint i16** %v0_1223 to i64
  store i64 %v2_1223, i64* %rax.global-to-local, align 8
  %v1_1228 = bitcast i16** %v0_1223 to i64*
  %v2_1228 = load i64, i64* %v1_1228, align 8
  store i64 %v2_1228, i64* %rdx.global-to-local, align 8
  %v4_122b = zext i32 %storemerge277 to i64
  store i64 %v4_122b, i64* %rax.global-to-local, align 8
  %v0_1233 = load i64, i64* @rbp, align 8
  %v3_1233 = add nsw i64 %v4_122b, -272
  %v4_1233 = add i64 %v3_1233, %v0_1233
  %v5_1233 = inttoptr i64 %v4_1233 to i8*
  %v6_1233 = load i8, i8* %v5_1233, align 1
  %v7_1233 = zext i8 %v6_1233 to i64
  %v2_123f = mul nuw nsw i64 %v7_1233, 2
  %v2_1242 = add i64 %v2_123f, %v2_1228
  store i64 %v2_1242, i64* %rax.global-to-local, align 8
  %v1_1245 = inttoptr i64 %v2_1242 to i16*
  %v2_1245 = load i16, i16* %v1_1245, align 2
  %v1_124b = zext i16 %v2_1245 to i32
  %v2_124b = and i32 %v1_124b, 16384
  %v3_124b = icmp eq i32 %v2_124b, 0
  %v9_124b = zext i32 %v2_124b to i64
  store i64 %v9_124b, i64* %rax.global-to-local, align 8
  %v1_1252 = icmp eq i1 %v3_124b, false
  %v4_125e = add nsw i32 %storemerge277, 1
  br i1 %v1_1252, label %dec_label_pc_1265, label %dec_label_pc_1254

dec_label_pc_1254:                                ; preds = %dec_label_pc_1223
  call void @_exit(i32 1)
  unreachable

dec_label_pc_1265:                                ; preds = %dec_label_pc_1223
  store i64 %v17_120a, i64* %rax.global-to-local, align 8
  %v7_1274 = icmp slt i32 %v4_125e, %v2_120a
  br i1 %v7_1274, label %dec_label_pc_1223, label %dec_label_pc_1276

dec_label_pc_1276:                                ; preds = %dec_label_pc_1265, %dec_label_pc_11b5.dec_label_pc_1276_crit_edge
  %v4_1282 = phi i64 [ %v4_1282.pre, %dec_label_pc_11b5.dec_label_pc_1276_crit_edge ], [ %v2_1228, %dec_label_pc_1265 ]
  store i64 0, i64* @rax, align 8
  %v5_1282 = load i64, i64* @rcx, align 8
  %v6_1282 = load i64, i64* @r8, align 8
  %v7_1282 = load i64, i64* @r9, align 8
  %v8_1282 = call i64 @function_136e(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_var_3016.4, i64 0, i64 0), i64 %v2_11e5, i64 %v4_1282, i64 %v5_1282, i64 %v6_1282, i64 %v7_1282)
  %tmp274 = bitcast i64* %stack_var_-280 to i8*
  store i64 0, i64* @rax, align 8
  %v4_1296 = load i64, i64* @rdx, align 8
  %v5_1296 = load i64, i64* @rcx, align 8
  %v6_1296 = load i64, i64* @r8, align 8
  %v7_1296 = load i64, i64* @r9, align 8
  %v8_1296 = call i64 @function_136e(i8* %tmp274, i64 %v2_11e5, i64 %v4_1296, i64 %v5_1296, i64 %v6_1296, i64 %v7_1296)
  store i64 0, i64* @rax, align 8
  %v4_12a7 = load i64, i64* @rdx, align 8
  %v5_12a7 = load i64, i64* @rcx, align 8
  %v6_12a7 = load i64, i64* @r8, align 8
  %v7_12a7 = load i64, i64* @r9, align 8
  %v8_12a7 = call i64 @function_136e(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @global_var_301b.5, i64 0, i64 0), i64 %v2_11e5, i64 %v4_12a7, i64 %v5_12a7, i64 %v6_12a7, i64 %v7_12a7)
  store i64 %v2_11e5, i64* %rax.global-to-local, align 8
  store i64 256, i64* %rdx.global-to-local, align 8
  %v8_12c0 = call i32 @read(i32 0, i64* nonnull %stack_var_-280, i32 256)
  %v2_12d1 = add i32 %v8_12c0, -1
  %v17_12d1 = zext i32 %v2_12d1 to i64
  %v0_12d6 = load i64, i64* @rbp, align 8
  %v3_12d6 = add i64 %v0_12d6, -272
  %v4_12d6 = add i64 %v3_12d6, %v17_12d1
  %v5_12d6 = inttoptr i64 %v4_12d6 to i8*
  store i8 0, i8* %v5_12d6, align 1
  store i64 0, i64* @rax, align 8
  %v6_12ed = load i64, i64* @rcx, align 8
  %v7_12ed = load i64, i64* @r8, align 8
  %v8_12ed = load i64, i64* @r9, align 8
  %v9_12ed = call i64 @function_136e(i8* %tmp274, i64 %v2_11e5, i64 256, i64 %v6_12ed, i64 %v7_12ed, i64 %v8_12ed)
  store i64 0, i64* %rax.global-to-local, align 8
  %v1_12fb = call i64 @__readfsqword(i64 40)
  %v3_12fb = icmp eq i64 %v1_12fb, %v0_11c0
  br i1 %v3_12fb, label %dec_label_pc_1276.dec_label_pc_130b_crit_edge, label %dec_label_pc_1306

dec_label_pc_1276.dec_label_pc_130b_crit_edge:    ; preds = %dec_label_pc_1276
  %v0_130c.pre = load i64, i64* %rax.global-to-local, align 8
  br label %dec_label_pc_130b

dec_label_pc_1306:                                ; preds = %dec_label_pc_1276
  call void @__stack_chk_fail()
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.global-to-local, align 8
  br label %dec_label_pc_130b

dec_label_pc_130b:                                ; preds = %dec_label_pc_1276.dec_label_pc_130b_crit_edge, %dec_label_pc_1306
  %v0_130c = phi i64 [ %v0_130c.pre, %dec_label_pc_1276.dec_label_pc_130b_crit_edge ], [ ptrtoint (i32* @0 to i64), %dec_label_pc_1306 ]
  ret i64 %v0_130c
}

define i64 @function_130d() local_unnamed_addr {
dec_label_pc_130d:
  %v0_1311 = load %_IO_FILE*, %_IO_FILE** @global_var_5030.6, align 8
  %v12_132a = call i32 @setvbuf(%_IO_FILE* %v0_1311, i8* null, i32 2, i32 0)
  %v0_132f = load %_IO_FILE*, %_IO_FILE** @global_var_5020.7, align 8
  %v12_1348 = call i32 @setvbuf(%_IO_FILE* %v0_132f, i8* null, i32 2, i32 0)
  %v0_134d = load %_IO_FILE*, %_IO_FILE** @global_var_5040.8, align 8
  store i64 0, i64* @rcx, align 8
  store i64 2, i64* @rdx, align 8
  store i64 0, i64* @rsi, align 8
  %v12_1366 = call i32 @setvbuf(%_IO_FILE* %v0_134d, i8* null, i32 2, i32 0)
  %v14_1366 = sext i32 %v12_1366 to i64
  ret i64 %v14_1366
}

define i64 @function_136e(i8* %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5, i64 %arg6) local_unnamed_addr {
dec_label_pc_136e:
  %rax.global-to-local = alloca i64, align 8
  %rdi.global-to-local = alloca i64, align 8
  %rsp.global-to-local = alloca i64, align 8
  store i64 0, i64* %rsp.global-to-local, align 8
  store i64 %arg6, i64* @r9, align 8
  store i64 %arg5, i64* @r8, align 8
  store i64 %arg4, i64* @rcx, align 8
  %tmp129 = ptrtoint i8* %arg1 to i64
  store i64 %tmp129, i64* %rdi.global-to-local, align 8
  %stack_var_-184 = alloca i64, align 8
  %stack_var_8 = alloca i64, align 8
  %v0_1379 = load i64, i64* %rdi.global-to-local, align 8
  %v0_13a3 = load i64, i64* @rax, align 8
  %v4_13a3 = trunc i64 %v0_13a3 to i8
  %v5_13a3 = icmp eq i8 %v4_13a3, 0
  br i1 %v5_13a3, label %dec_label_pc_13c7, label %dec_label_pc_13a7

dec_label_pc_13a7:                                ; preds = %dec_label_pc_136e
  %v0_13a7 = load i128, i128* @xmm0, align 8
  %v1_13a7 = call i64 @__asm_movaps(i128 %v0_13a7)
  %v0_13ab = load i128, i128* @xmm1, align 8
  %v1_13ab = call i64 @__asm_movaps(i128 %v0_13ab)
  %v0_13af = load i128, i128* @xmm2, align 8
  %v1_13af = call i64 @__asm_movaps(i128 %v0_13af)
  %v0_13b3 = load i128, i128* @xmm3, align 8
  %v1_13b3 = call i64 @__asm_movaps(i128 %v0_13b3)
  %v0_13b7 = load i128, i128* @xmm4, align 8
  %v1_13b7 = call i64 @__asm_movaps(i128 %v0_13b7)
  %v0_13bb = load i128, i128* @xmm5, align 8
  %v1_13bb = call i64 @__asm_movaps(i128 %v0_13bb)
  %v0_13bf = load i128, i128* @xmm6, align 8
  %v1_13bf = call i64 @__asm_movaps(i128 %v0_13bf)
  %v0_13c3 = load i128, i128* @xmm7, align 8
  %v1_13c3 = call i64 @__asm_movaps(i128 %v0_13c3)
  br label %dec_label_pc_13c7

dec_label_pc_13c7:                                ; preds = %dec_label_pc_13a7, %dec_label_pc_136e
  %v0_13c7 = call i64 @__readfsqword(i64 40)
  %v2_13f8 = ptrtoint i64* %stack_var_8 to i64
  %v2_1403 = ptrtoint i64* %stack_var_-184 to i64
  store i64 %v2_1403, i64* %rax.global-to-local, align 8
  br label %dec_label_pc_1c25

dec_label_pc_1421:                                ; preds = %dec_label_pc_1c25
  store i64 %stack_var_-336.2, i64* @rdx, align 8
  store i64 %v2_1c33, i64* %rax.global-to-local, align 8
  %v2_1432 = load i8, i8* %v1_1c36, align 1
  %v3_1432 = zext i8 %v2_1432 to i64
  store i64 %v3_1432, i64* %rax.global-to-local, align 8
  %v11_1435 = icmp eq i8 %v2_1432, 37
  %v1_1437 = icmp eq i1 %v11_1435, false
  br i1 %v1_1437, label %dec_label_pc_1c01, label %dec_label_pc_143d

dec_label_pc_143d:                                ; preds = %dec_label_pc_1421
  %v4_143d = add i64 %stack_var_-336.2, 1
  %v2_1474 = add i64 %v4_143d, %v0_1379
  store i64 %v2_1474, i64* %rax.global-to-local, align 8
  %v1_1477 = inttoptr i64 %v2_1474 to i8*
  %v2_1477 = load i8, i8* %v1_1477, align 1
  %v1_147d = zext i8 %v2_1477 to i32
  %v2_147d = add nsw i32 %v1_147d, -32
  %v16_147d = zext i32 %v2_147d to i64
  store i64 %v16_147d, i64* %rax.global-to-local, align 8
  %v6_1480 = icmp ult i32 %v2_147d, 13
  %v11_1480 = icmp eq i8 %v2_1477, 45
  %v2_1483 = or i1 %v11_1480, %v6_1480
  br i1 %v2_1483, label %dec_label_pc_1485, label %dec_label_pc_14b1

dec_label_pc_1485:                                ; preds = %dec_label_pc_143d
  %v1_1487 = mul nuw nsw i64 %v16_147d, 4
  store i64 ptrtoint (i64* @global_var_3058.9 to i64), i64* %rax.global-to-local, align 8
  %v3_1496 = add i64 %v1_1487, ptrtoint (i64* @global_var_3058.9 to i64)
  %v4_1496 = inttoptr i64 %v3_1496 to i32*
  %v5_1496 = load i32, i32* %v4_1496, align 4
  %v6_1496 = zext i32 %v5_1496 to i64
  store i64 ptrtoint (i64* @global_var_3058.9 to i64), i64* @rdx, align 8
  %v2_14a2 = add i64 %v6_1496, ptrtoint (i64* @global_var_3058.9 to i64)
  store i64 %v2_14a2, i64* %rax.global-to-local, align 8
  ret i64 %v2_14a2

dec_label_pc_14b1:                                ; preds = %dec_label_pc_143d
  store i64 %v2_1474, i64* %rax.global-to-local, align 8
  %v2_14c2 = load i8, i8* %v1_1477, align 1
  %v3_14c2 = zext i8 %v2_14c2 to i64
  store i64 %v3_14c2, i64* %rax.global-to-local, align 8
  %v9_14c7 = icmp sgt i8 %v2_14c2, 47
  br i1 %v9_14c7, label %dec_label_pc_14c9, label %dec_label_pc_1542

dec_label_pc_14c9:                                ; preds = %dec_label_pc_14b1
  store i64 %v2_1474, i64* %rax.global-to-local, align 8
  %v2_14da = load i8, i8* %v1_1477, align 1
  %v3_14da = zext i8 %v2_14da to i64
  store i64 %v3_14da, i64* %rax.global-to-local, align 8
  %v10_14df = icmp sgt i8 %v2_14da, 57
  br i1 %v10_14df, label %dec_label_pc_1542, label %dec_label_pc_14e1

dec_label_pc_14e1:                                ; preds = %dec_label_pc_14c9
  store i64 %v2_1474, i64* %rax.global-to-local, align 8
  store i64 %v2_1474, i64* %rdi.global-to-local, align 8
  %v2_14f5 = call i64 @function_295e(i64 %v2_1474)
  store i64 %v2_1474, i64* %rax.global-to-local, align 8
  store i64 %v2_1474, i64* %rdi.global-to-local, align 8
  %v2_1515 = call i64 @function_29d8(i64 %v2_1474)
  store i64 %v2_1515, i64* @rdx, align 8
  %v2_1524 = add i64 %v2_1515, %v4_143d
  store i64 %v2_1524, i64* %rax.global-to-local, align 8
  %v11_152e = icmp slt i64 %v2_14f5, 0
  %v1_1536 = icmp eq i1 %v11_152e, false
  br i1 %v1_1536, label %dec_label_pc_1542, label %dec_label_pc_1538

dec_label_pc_1538:                                ; preds = %dec_label_pc_14e1
  store i64 1, i64* %rdi.global-to-local, align 8
  call void @_exit(i32 1)
  unreachable

dec_label_pc_1542:                                ; preds = %dec_label_pc_14b1, %dec_label_pc_14e1, %dec_label_pc_14c9
  %stack_var_-336.0 = phi i64 [ %v4_143d, %dec_label_pc_14c9 ], [ %v2_1524, %dec_label_pc_14e1 ], [ %v4_143d, %dec_label_pc_14b1 ]
  store i64 %stack_var_-336.0, i64* @rdx, align 8
  %v2_1550 = add i64 %stack_var_-336.0, %v0_1379
  store i64 %v2_1550, i64* %rax.global-to-local, align 8
  %v1_1553 = inttoptr i64 %v2_1550 to i8*
  %v2_1553 = load i8, i8* %v1_1553, align 1
  %v3_1553 = zext i8 %v2_1553 to i64
  store i64 %v3_1553, i64* %rax.global-to-local, align 8
  %v11_1559 = icmp eq i8 %v2_1553, 106
  br i1 %v11_1559, label %dec_label_pc_161f, label %dec_label_pc_1562

dec_label_pc_1562:                                ; preds = %dec_label_pc_1542
  %v10_1565 = icmp ugt i8 %v2_1553, 106
  br i1 %v10_1565, label %dec_label_pc_1583, label %dec_label_pc_1567

dec_label_pc_1567:                                ; preds = %dec_label_pc_1562
  switch i8 %v2_1553, label %dec_label_pc_162d [
    i8 76, label %dec_label_pc_161f
    i8 104, label %dec_label_pc_159f
    i8 46, label %dec_label_pc_161f
  ]

dec_label_pc_1583:                                ; preds = %dec_label_pc_1562
  switch i8 %v2_1553, label %dec_label_pc_162d [
    i8 116, label %dec_label_pc_161f
    i8 122, label %dec_label_pc_161f
    i8 108, label %dec_label_pc_15df
  ]

dec_label_pc_159f:                                ; preds = %dec_label_pc_1567
  %v4_159f = add i64 %stack_var_-336.0, 1
  %v2_15c0 = add i64 %v4_159f, %v0_1379
  store i64 %v2_15c0, i64* %rax.global-to-local, align 8
  %v1_15c3 = inttoptr i64 %v2_15c0 to i8*
  %v2_15c3 = load i8, i8* %v1_15c3, align 1
  %v3_15c3 = zext i8 %v2_15c3 to i64
  store i64 %v3_15c3, i64* %rax.global-to-local, align 8
  %v11_15c6 = icmp eq i8 %v2_15c3, 104
  %v1_15c8 = icmp eq i1 %v11_15c6, false
  %v4_15d5 = add i64 %stack_var_-336.0, 2
  %v4_159f.v4_15d5 = select i1 %v1_15c8, i64 %v4_159f, i64 %v4_15d5
  br label %dec_label_pc_162d

dec_label_pc_15df:                                ; preds = %dec_label_pc_1583
  %v4_15df = add i64 %stack_var_-336.0, 1
  %v2_1600 = add i64 %v4_15df, %v0_1379
  store i64 %v2_1600, i64* %rax.global-to-local, align 8
  %v1_1603 = inttoptr i64 %v2_1600 to i8*
  %v2_1603 = load i8, i8* %v1_1603, align 1
  %v3_1603 = zext i8 %v2_1603 to i64
  store i64 %v3_1603, i64* %rax.global-to-local, align 8
  %v11_1606 = icmp eq i8 %v2_1603, 108
  %v1_1608 = icmp eq i1 %v11_1606, false
  %v4_1615 = add i64 %stack_var_-336.0, 2
  %v4_15df.v4_1615 = select i1 %v1_1608, i64 %v4_15df, i64 %v4_1615
  br label %dec_label_pc_162d

dec_label_pc_161f:                                ; preds = %dec_label_pc_1583, %dec_label_pc_1583, %dec_label_pc_1567, %dec_label_pc_1567, %dec_label_pc_1542
  store i64 1, i64* %rdi.global-to-local, align 8
  call void @_exit(i32 1)
  unreachable

dec_label_pc_162d:                                ; preds = %dec_label_pc_15df, %dec_label_pc_159f, %dec_label_pc_1583, %dec_label_pc_1567
  %stack_var_-336.1 = phi i64 [ %stack_var_-336.0, %dec_label_pc_1567 ], [ %stack_var_-336.0, %dec_label_pc_1583 ], [ %v4_159f.v4_15d5, %dec_label_pc_159f ], [ %v4_15df.v4_1615, %dec_label_pc_15df ]
  store i64 %stack_var_-336.1, i64* @rdx, align 8
  %v2_163b = add i64 %stack_var_-336.1, %v0_1379
  store i64 %v2_163b, i64* %rax.global-to-local, align 8
  %v1_163e = inttoptr i64 %v2_163b to i8*
  %v2_163e = load i8, i8* %v1_163e, align 1
  %v1_1644 = zext i8 %v2_163e to i32
  %v2_1644 = add nsw i32 %v1_1644, -37
  %v17_1644 = zext i32 %v2_1644 to i64
  store i64 %v17_1644, i64* %rax.global-to-local, align 8
  %v6_1647 = icmp ult i32 %v2_1644, 83
  %v11_1647 = icmp eq i8 %v2_163e, 120
  %v2_164a = or i1 %v11_1647, %v6_1647
  br i1 %v2_164a, label %dec_label_pc_1650, label %dec_label_pc_1c11

dec_label_pc_1650:                                ; preds = %dec_label_pc_162d
  %v1_1652 = mul nuw nsw i64 %v17_1644, 4
  store i64 ptrtoint (i64* @global_var_3090.10 to i64), i64* %rax.global-to-local, align 8
  %v3_1661 = add i64 %v1_1652, ptrtoint (i64* @global_var_3090.10 to i64)
  %v4_1661 = inttoptr i64 %v3_1661 to i32*
  %v5_1661 = load i32, i32* %v4_1661, align 4
  %v6_1661 = zext i32 %v5_1661 to i64
  store i64 ptrtoint (i64* @global_var_3090.10 to i64), i64* @rdx, align 8
  %v2_166d = add i64 %v6_1661, ptrtoint (i64* @global_var_3090.10 to i64)
  store i64 %v2_166d, i64* %rax.global-to-local, align 8
  ret i64 %v2_166d

dec_label_pc_1c01:                                ; preds = %dec_label_pc_1421
  %v4_1c01 = add i64 %stack_var_-344.1, 1
  br label %dec_label_pc_1c11

dec_label_pc_1c11:                                ; preds = %dec_label_pc_162d, %dec_label_pc_1c01
  %stack_var_-336.1.sink = phi i64 [ %stack_var_-336.2, %dec_label_pc_1c01 ], [ %stack_var_-336.1, %dec_label_pc_162d ]
  %stack_var_-344.0 = phi i64 [ %v4_1c01, %dec_label_pc_1c01 ], [ %stack_var_-344.1, %dec_label_pc_162d ]
  %v4_1bf7 = add i64 %stack_var_-336.1.sink, 1
  %v11_1c11 = icmp slt i64 %stack_var_-344.0, 0
  %v1_1c19 = icmp eq i1 %v11_1c11, false
  br i1 %v1_1c19, label %dec_label_pc_1c25, label %dec_label_pc_1c1b

dec_label_pc_1c1b:                                ; preds = %dec_label_pc_1c11
  store i64 1, i64* %rdi.global-to-local, align 8
  call void @_exit(i32 1)
  unreachable

dec_label_pc_1c25:                                ; preds = %dec_label_pc_1c11, %dec_label_pc_13c7
  %stack_var_-344.1 = phi i64 [ 0, %dec_label_pc_13c7 ], [ %stack_var_-344.0, %dec_label_pc_1c11 ]
  %stack_var_-336.2 = phi i64 [ 0, %dec_label_pc_13c7 ], [ %v4_1bf7, %dec_label_pc_1c11 ]
  store i64 %stack_var_-336.2, i64* @rdx, align 8
  %v2_1c33 = add i64 %stack_var_-336.2, %v0_1379
  store i64 %v2_1c33, i64* %rax.global-to-local, align 8
  %v1_1c36 = inttoptr i64 %v2_1c33 to i8*
  %v2_1c36 = load i8, i8* %v1_1c36, align 1
  %v3_1c36 = zext i8 %v2_1c36 to i64
  store i64 %v3_1c36, i64* %rax.global-to-local, align 8
  %v5_1c39 = icmp eq i8 %v2_1c36, 0
  %v1_1c3b = icmp eq i1 %v5_1c39, false
  br i1 %v1_1c3b, label %dec_label_pc_1421, label %dec_label_pc_1c41

dec_label_pc_1c41:                                ; preds = %dec_label_pc_1c25
  %v4_1c41 = add i64 %stack_var_-344.1, 1
  %v14_1c41 = icmp slt i64 %v4_1c41, 0
  %v1_1c51 = icmp eq i1 %v14_1c41, false
  br i1 %v1_1c51, label %dec_label_pc_1c5d, label %dec_label_pc_1c53

dec_label_pc_1c53:                                ; preds = %dec_label_pc_1c41
  store i64 1, i64* %rdi.global-to-local, align 8
  call void @_exit(i32 1)
  unreachable

dec_label_pc_1c5d:                                ; preds = %dec_label_pc_1c41
  %v2_1c71 = add i64 %stack_var_-344.1, 24
  %tmp219 = urem i64 %v2_1c71, 16
  %v0_1c85 = load i64, i64* %rsp.global-to-local, align 8
  %v3_1c8182 = sub i64 %tmp219, %v2_1c71
  %v2_1c85 = add i64 %v0_1c85, %v3_1c8182
  %v1_1c8b = add i64 %v2_1c85, 15
  %v2_1c8f = and i64 %v1_1c8b, -16
  %v4_1c97 = inttoptr i64 %v2_1c8f to i8*
  store i64 %v0_1379, i64* %rax.global-to-local, align 8
  %v1_2912255264 = inttoptr i64 %v0_1379 to i8*
  %v2_2912256265 = load i8, i8* %v1_2912255264, align 1
  %v3_2912257266 = zext i8 %v2_2912256265 to i64
  store i64 %v3_2912257266, i64* %rax.global-to-local, align 8
  %v5_2915258267 = icmp eq i8 %v2_2912256265, 0
  %v1_2917259268 = icmp eq i1 %v5_2915258267, false
  br i1 %v1_2917259268, label %dec_label_pc_1ce6.lr.ph, label %dec_label_pc_291d

dec_label_pc_1ce6.lr.ph:                          ; preds = %dec_label_pc_1c5d, %dec_label_pc_28c0
  %v1_2912255274 = phi i8* [ %v1_2912255, %dec_label_pc_28c0 ], [ %v1_2912255264, %dec_label_pc_1c5d ]
  %v2_290f254273 = phi i64 [ %v2_290f254, %dec_label_pc_28c0 ], [ %v0_1379, %dec_label_pc_1c5d ]
  %stack_var_-328.4.ph272 = phi i8* [ %stack_var_-328.3, %dec_label_pc_28c0 ], [ null, %dec_label_pc_1c5d ]
  %stack_var_-336.5.ph271 = phi i64 [ %v4_28c0, %dec_label_pc_28c0 ], [ 0, %dec_label_pc_1c5d ]
  %stack_var_-208.3.ph270 = phi i64 [ %stack_var_-208.2, %dec_label_pc_28c0 ], [ %v2_13f8, %dec_label_pc_1c5d ]
  %stack_var_-216.3.ph269 = phi i32 [ %stack_var_-216.2, %dec_label_pc_28c0 ], [ 8, %dec_label_pc_1c5d ]
  br label %dec_label_pc_1ce6

dec_label_pc_1ce6:                                ; preds = %dec_label_pc_1ce6.lr.ph, %dec_label_pc_28ca
  %v1_2912263 = phi i8* [ %v1_2912255274, %dec_label_pc_1ce6.lr.ph ], [ %v1_2912, %dec_label_pc_28ca ]
  %v2_290f262 = phi i64 [ %v2_290f254273, %dec_label_pc_1ce6.lr.ph ], [ %v2_290f, %dec_label_pc_28ca ]
  %stack_var_-328.4261 = phi i8* [ %stack_var_-328.4.ph272, %dec_label_pc_1ce6.lr.ph ], [ %v23_28f1, %dec_label_pc_28ca ]
  %stack_var_-336.5260 = phi i64 [ %stack_var_-336.5.ph271, %dec_label_pc_1ce6.lr.ph ], [ %v4_28f9, %dec_label_pc_28ca ]
  store i64 %v2_290f262, i64* %rax.global-to-local, align 8
  %v2_1cf7 = load i8, i8* %v1_2912263, align 1
  %v3_1cf7 = zext i8 %v2_1cf7 to i64
  store i64 %v3_1cf7, i64* %rax.global-to-local, align 8
  %v11_1cfa = icmp eq i8 %v2_1cf7, 37
  %v1_1cfc = icmp eq i1 %v11_1cfa, false
  br i1 %v1_1cfc, label %dec_label_pc_28ca, label %dec_label_pc_1d02

dec_label_pc_1d02:                                ; preds = %dec_label_pc_1ce6
  %v4_1d02 = add i64 %stack_var_-336.5260, 1
  %v2_1d43 = add i64 %v4_1d02, %v0_1379
  store i64 %v2_1d43, i64* %rax.global-to-local, align 8
  %v1_1d46 = inttoptr i64 %v2_1d43 to i8*
  %v2_1d46 = load i8, i8* %v1_1d46, align 1
  %v3_1d46 = zext i8 %v2_1d46 to i64
  store i64 %v3_1d46, i64* %rax.global-to-local, align 8
  %v9_1d4b = icmp sgt i8 %v2_1d46, 47
  br i1 %v9_1d4b, label %dec_label_pc_1d4d, label %dec_label_pc_1db2

dec_label_pc_1d4d:                                ; preds = %dec_label_pc_1d02
  store i64 %v2_1d43, i64* %rax.global-to-local, align 8
  %v2_1d5e = load i8, i8* %v1_1d46, align 1
  %v3_1d5e = zext i8 %v2_1d5e to i64
  store i64 %v3_1d5e, i64* %rax.global-to-local, align 8
  %v10_1d63 = icmp sgt i8 %v2_1d5e, 57
  br i1 %v10_1d63, label %dec_label_pc_1db2, label %dec_label_pc_1d65

dec_label_pc_1d65:                                ; preds = %dec_label_pc_1d4d
  store i64 %v2_1d43, i64* %rax.global-to-local, align 8
  store i64 %v2_1d43, i64* %rdi.global-to-local, align 8
  %v2_1d79 = call i64 @function_29d8(i64 %v2_1d43)
  %v2_1d88 = add i64 %v2_1d79, %v4_1d02
  %v2_1da0 = add i64 %v2_1d88, %v0_1379
  store i64 %v2_1da0, i64* %rax.global-to-local, align 8
  store i64 %v2_1da0, i64* %rdi.global-to-local, align 8
  %v2_1da6 = call i64 @function_295e(i64 %v2_1da0)
  store i64 %v2_1da6, i64* %rax.global-to-local, align 8
  br label %dec_label_pc_1db2

dec_label_pc_1db2:                                ; preds = %dec_label_pc_1d02, %dec_label_pc_1d65, %dec_label_pc_1d4d
  %stack_var_-336.3 = phi i64 [ %v4_1d02, %dec_label_pc_1d4d ], [ %v2_1d88, %dec_label_pc_1d65 ], [ %v4_1d02, %dec_label_pc_1d02 ]
  %stack_var_-312.0 = phi i64 [ 0, %dec_label_pc_1d4d ], [ %v2_1da6, %dec_label_pc_1d65 ], [ 0, %dec_label_pc_1d02 ]
  %v2_1dc0 = add i64 %stack_var_-336.3, %v0_1379
  store i64 %v2_1dc0, i64* %rax.global-to-local, align 8
  %v1_1dc3 = inttoptr i64 %v2_1dc0 to i8*
  %v2_1dc3 = load i8, i8* %v1_1dc3, align 1
  %v3_1dc3 = zext i8 %v2_1dc3 to i64
  store i64 %v3_1dc3, i64* %rax.global-to-local, align 8
  switch i8 %v2_1dc3, label %dec_label_pc_1e5c [
    i8 104, label %dec_label_pc_1dd8
    i8 108, label %dec_label_pc_1e18
  ]

dec_label_pc_1dd8:                                ; preds = %dec_label_pc_1db2
  %v4_1dd8 = add i64 %stack_var_-336.3, 1
  %v2_1df9 = add i64 %v4_1dd8, %v0_1379
  store i64 %v2_1df9, i64* %rax.global-to-local, align 8
  %v1_1dfc = inttoptr i64 %v2_1df9 to i8*
  %v2_1dfc = load i8, i8* %v1_1dfc, align 1
  %v3_1dfc = zext i8 %v2_1dfc to i64
  store i64 %v3_1dfc, i64* %rax.global-to-local, align 8
  %v11_1dff = icmp eq i8 %v2_1dfc, 104
  %v1_1e01 = icmp eq i1 %v11_1dff, false
  %v4_1e0e = add i64 %stack_var_-336.3, 2
  %v4_1dd8.v4_1e0e = select i1 %v1_1e01, i64 %v4_1dd8, i64 %v4_1e0e
  %. = select i1 %v1_1e01, i64 4, i64 0
  br label %dec_label_pc_1e5c

dec_label_pc_1e18:                                ; preds = %dec_label_pc_1db2
  %v4_1e18 = add i64 %stack_var_-336.3, 1
  %v2_1e39 = add i64 %v4_1e18, %v0_1379
  store i64 %v2_1e39, i64* %rax.global-to-local, align 8
  %v1_1e3c = inttoptr i64 %v2_1e39 to i8*
  %v2_1e3c = load i8, i8* %v1_1e3c, align 1
  %v3_1e3c = zext i8 %v2_1e3c to i64
  store i64 %v3_1e3c, i64* %rax.global-to-local, align 8
  %v11_1e3f = icmp eq i8 %v2_1e3c, 108
  %v1_1e41 = icmp eq i1 %v11_1e3f, false
  %v4_1e4e = add i64 %stack_var_-336.3, 2
  %v4_1e18.v4_1e4e = select i1 %v1_1e41, i64 %v4_1e18, i64 %v4_1e4e
  %.239 = select i1 %v1_1e41, i64 12, i64 8
  br label %dec_label_pc_1e5c

dec_label_pc_1e5c:                                ; preds = %dec_label_pc_1e18, %dec_label_pc_1dd8, %dec_label_pc_1db2
  %stack_var_-336.4 = phi i64 [ %stack_var_-336.3, %dec_label_pc_1db2 ], [ %v4_1dd8.v4_1e0e, %dec_label_pc_1dd8 ], [ %v4_1e18.v4_1e4e, %dec_label_pc_1e18 ]
  %stack_var_-320.0 = phi i64 [ 16, %dec_label_pc_1db2 ], [ %., %dec_label_pc_1dd8 ], [ %.239, %dec_label_pc_1e18 ]
  store i64 %stack_var_-336.4, i64* @rdx, align 8
  %v2_1e6a = add i64 %stack_var_-336.4, %v0_1379
  store i64 %v2_1e6a, i64* %rax.global-to-local, align 8
  %v1_1e6d = inttoptr i64 %v2_1e6a to i8*
  %v2_1e6d = load i8, i8* %v1_1e6d, align 1
  %v3_1e6d = zext i8 %v2_1e6d to i64
  store i64 %v3_1e6d, i64* %rax.global-to-local, align 8
  %v11_1e73 = icmp eq i8 %v2_1e6d, 99
  br i1 %v11_1e73, label %dec_label_pc_2739, label %dec_label_pc_1e7c

dec_label_pc_1e7c:                                ; preds = %dec_label_pc_1e5c
  %v10_1e7f = icmp ugt i8 %v2_1e6d, 99
  br i1 %v10_1e7f, label %dec_label_pc_1e98, label %dec_label_pc_1e81

dec_label_pc_1e81:                                ; preds = %dec_label_pc_1e7c
  switch i8 %v2_1e6d, label %dec_label_pc_2945 [
    i8 37, label %dec_label_pc_2898
    i8 88, label %dec_label_pc_233d
  ]

dec_label_pc_1e98:                                ; preds = %dec_label_pc_1e7c
  switch i8 %v2_1e6d, label %dec_label_pc_1eaa [
    i8 115, label %dec_label_pc_27fd
    i8 120, label %dec_label_pc_233d
  ]

dec_label_pc_1eaa:                                ; preds = %dec_label_pc_1e98
  %v11_1eaa = icmp eq i8 %v2_1e6d, 100
  %v1_1ead = icmp eq i1 %v11_1eaa, false
  br i1 %v1_1ead, label %dec_label_pc_2945, label %dec_label_pc_1eb3

dec_label_pc_1eb3:                                ; preds = %dec_label_pc_1eaa
  store i64 ptrtoint (i64* @global_var_3208.13 to i64), i64* %rax.global-to-local, align 8
  %v3_1ed7 = add i64 %stack_var_-320.0, ptrtoint (i64* @global_var_3208.13 to i64)
  %v4_1ed7 = inttoptr i64 %v3_1ed7 to i32*
  %v5_1ed7 = load i32, i32* %v4_1ed7, align 4
  %v6_1ed7 = zext i32 %v5_1ed7 to i64
  store i64 ptrtoint (i64* @global_var_3208.13 to i64), i64* @rdx, align 8
  %v2_1ee3 = add i64 %v6_1ed7, ptrtoint (i64* @global_var_3208.13 to i64)
  store i64 %v2_1ee3, i64* %rax.global-to-local, align 8
  ret i64 %v2_1ee3

dec_label_pc_233d:                                ; preds = %dec_label_pc_1e98, %dec_label_pc_1e81
  store i64 ptrtoint (i64* @global_var_321c.15 to i64), i64* %rax.global-to-local, align 8
  %v3_2361 = add i64 %stack_var_-320.0, ptrtoint (i64* @global_var_321c.15 to i64)
  %v4_2361 = inttoptr i64 %v3_2361 to i32*
  %v5_2361 = load i32, i32* %v4_2361, align 4
  %v6_2361 = zext i32 %v5_2361 to i64
  store i64 ptrtoint (i64* @global_var_321c.15 to i64), i64* @rdx, align 8
  %v2_236d = add i64 %v6_2361, ptrtoint (i64* @global_var_321c.15 to i64)
  store i64 %v2_236d, i64* %rax.global-to-local, align 8
  ret i64 %v2_236d

dec_label_pc_2739:                                ; preds = %dec_label_pc_1e5c
  %v4_2739 = zext i32 %stack_var_-216.3.ph269 to i64
  store i64 %v4_2739, i64* %rax.global-to-local, align 8
  %tmp229 = icmp ult i32 %stack_var_-216.3.ph269, 48
  br i1 %tmp229, label %dec_label_pc_2744, label %dec_label_pc_2767

dec_label_pc_2744:                                ; preds = %dec_label_pc_2739
  %v2_2753 = add i64 %v4_2739, %v2_1403
  store i64 %v2_2753, i64* %rax.global-to-local, align 8
  %v2_275c = add i32 %stack_var_-216.3.ph269, 8
  br label %dec_label_pc_2779

dec_label_pc_2767:                                ; preds = %dec_label_pc_2739
  store i64 %stack_var_-208.3.ph270, i64* %rax.global-to-local, align 8
  %v1_276e = add i64 %stack_var_-208.3.ph270, 8
  br label %dec_label_pc_2779

dec_label_pc_2779:                                ; preds = %dec_label_pc_2767, %dec_label_pc_2744
  %stack_var_-208.0 = phi i64 [ %v1_276e, %dec_label_pc_2767 ], [ %stack_var_-208.3.ph270, %dec_label_pc_2744 ]
  %v0_2779 = phi i64 [ %stack_var_-208.3.ph270, %dec_label_pc_2767 ], [ %v2_2753, %dec_label_pc_2744 ]
  %stack_var_-216.0 = phi i32 [ %stack_var_-216.3.ph269, %dec_label_pc_2767 ], [ %v2_275c, %dec_label_pc_2744 ]
  %v1_2779 = inttoptr i64 %v0_2779 to i32*
  %v2_2779 = load i32, i32* %v1_2779, align 4
  %v3_2779 = zext i32 %v2_2779 to i64
  store i64 %v3_2779, i64* %rax.global-to-local, align 8
  %v1_277b = trunc i32 %v2_2779 to i8
  %v7_2789 = icmp sgt i64 %stack_var_-312.0, 0
  br i1 %v7_2789, label %dec_label_pc_278b, label %dec_label_pc_27d6

dec_label_pc_278b:                                ; preds = %dec_label_pc_2779
  %v1_2792 = add i64 %stack_var_-312.0, -1
  store i64 %v1_2792, i64* @rcx, align 8
  %v4_27a0 = ptrtoint i8* %stack_var_-328.4261 to i64
  %v2_27a7 = add i64 %v4_27a0, %v2_1c8f
  store i64 %v2_27a7, i64* %rax.global-to-local, align 8
  %v1_27aa = trunc i64 %v1_2792 to i32
  store i64 %v2_27a7, i64* %rdi.global-to-local, align 8
  %v1_27b5 = inttoptr i64 %v2_27a7 to i64*
  %v8_27b5 = call i64* @memset(i64* %v1_27b5, i32 32, i32 %v1_27aa)
  %v2_27c8 = add i64 %v4_27a0, -1
  %v1_27cb = add i64 %v2_27c8, %stack_var_-312.0
  store i64 %v1_27cb, i64* %rax.global-to-local, align 8
  %v4_27cf = inttoptr i64 %v1_27cb to i8*
  br label %dec_label_pc_27d6

dec_label_pc_27d6:                                ; preds = %dec_label_pc_2779, %dec_label_pc_278b
  %stack_var_-328.2 = phi i8* [ %v4_27cf, %dec_label_pc_278b ], [ %stack_var_-328.4261, %dec_label_pc_2779 ]
  %v4_27dd = ptrtoint i8* %stack_var_-328.2 to i64
  %v2_27e4 = add i64 %v4_27dd, %v2_1c8f
  %v1_277b.mask = urem i32 %v2_2779, 256
  %v4_27e7 = zext i32 %v1_277b.mask to i64
  store i64 %v4_27e7, i64* %rax.global-to-local, align 8
  %v3_27ee = inttoptr i64 %v2_27e4 to i8*
  store i8 %v1_277b, i8* %v3_27ee, align 1
  %v5_27f0 = add i64 %v4_27dd, 1
  br label %dec_label_pc_28c0

dec_label_pc_27fd:                                ; preds = %dec_label_pc_1e98
  %v4_27fd = zext i32 %stack_var_-216.3.ph269 to i64
  store i64 %v4_27fd, i64* %rax.global-to-local, align 8
  %tmp234 = icmp ult i32 %stack_var_-216.3.ph269, 48
  br i1 %tmp234, label %dec_label_pc_2808, label %dec_label_pc_282b

dec_label_pc_2808:                                ; preds = %dec_label_pc_27fd
  %v2_2817 = add i64 %v4_27fd, %v2_1403
  store i64 %v2_2817, i64* %rax.global-to-local, align 8
  %v2_2820 = add i32 %stack_var_-216.3.ph269, 8
  br label %dec_label_pc_283d

dec_label_pc_282b:                                ; preds = %dec_label_pc_27fd
  store i64 %stack_var_-208.3.ph270, i64* %rax.global-to-local, align 8
  %v1_2832 = add i64 %stack_var_-208.3.ph270, 8
  br label %dec_label_pc_283d

dec_label_pc_283d:                                ; preds = %dec_label_pc_282b, %dec_label_pc_2808
  %stack_var_-208.1 = phi i64 [ %v1_2832, %dec_label_pc_282b ], [ %stack_var_-208.3.ph270, %dec_label_pc_2808 ]
  %v0_283d = phi i64 [ %stack_var_-208.3.ph270, %dec_label_pc_282b ], [ %v2_2817, %dec_label_pc_2808 ]
  %stack_var_-216.1 = phi i32 [ %stack_var_-216.3.ph269, %dec_label_pc_282b ], [ %v2_2820, %dec_label_pc_2808 ]
  %v1_283d = inttoptr i64 %v0_283d to i64*
  %v2_283d = load i64, i64* %v1_283d, align 8
  store i64 %v2_283d, i64* %rax.global-to-local, align 8
  %v1_284e = inttoptr i64 %v2_283d to i8*
  store i64 %v2_283d, i64* %rdi.global-to-local, align 8
  %v3_2851 = call i32 @strlen(i8* %v1_284e)
  %v4_2860 = ptrtoint i8* %stack_var_-328.4261 to i64
  %v3_2867 = add i64 %v4_2860, %v2_1c8f
  store i64 %v3_2867, i64* @rcx, align 8
  store i64 %v2_283d, i64* %rax.global-to-local, align 8
  store i64 %v3_2867, i64* %rdi.global-to-local, align 8
  %v1_287b = inttoptr i64 %v3_2867 to i64*
  %v3_287b = inttoptr i64 %v2_283d to i64*
  %v7_287b = call i64* @memcpy(i64* %v1_287b, i64* %v3_287b, i32 %v3_2851)
  store i64 %v2_283d, i64* %rax.global-to-local, align 8
  store i64 %v2_283d, i64* %rdi.global-to-local, align 8
  %v3_288a = call i32 @strlen(i8* %v1_284e)
  %v5_288a = sext i32 %v3_288a to i64
  store i64 %v5_288a, i64* %rax.global-to-local, align 8
  %v6_288f = add i64 %v5_288a, %v4_2860
  br label %dec_label_pc_28c0

dec_label_pc_2898:                                ; preds = %dec_label_pc_1e81
  %v4_289f = ptrtoint i8* %stack_var_-328.4261 to i64
  %v2_28a6 = add i64 %v4_289f, %v2_1c8f
  store i64 %v2_28a6, i64* %rax.global-to-local, align 8
  %v1_28a9 = inttoptr i64 %v2_28a6 to i8*
  store i8 37, i8* %v1_28a9, align 1
  %v5_28ac = add i64 %v4_289f, 1
  br label %dec_label_pc_28c0

dec_label_pc_28c0:                                ; preds = %dec_label_pc_2898, %dec_label_pc_283d, %dec_label_pc_27d6
  %stack_var_-216.2 = phi i32 [ %stack_var_-216.0, %dec_label_pc_27d6 ], [ %stack_var_-216.1, %dec_label_pc_283d ], [ %stack_var_-216.3.ph269, %dec_label_pc_2898 ]
  %stack_var_-208.2 = phi i64 [ %stack_var_-208.0, %dec_label_pc_27d6 ], [ %stack_var_-208.1, %dec_label_pc_283d ], [ %stack_var_-208.3.ph270, %dec_label_pc_2898 ]
  %stack_var_-328.3.in = phi i64 [ %v5_27f0, %dec_label_pc_27d6 ], [ %v6_288f, %dec_label_pc_283d ], [ %v5_28ac, %dec_label_pc_2898 ]
  %stack_var_-328.3 = inttoptr i64 %stack_var_-328.3.in to i8*
  %v4_28c0 = add i64 %stack_var_-336.4, 1
  %v2_290f254 = add i64 %v4_28c0, %v0_1379
  store i64 %v2_290f254, i64* %rax.global-to-local, align 8
  %v1_2912255 = inttoptr i64 %v2_290f254 to i8*
  %v2_2912256 = load i8, i8* %v1_2912255, align 1
  %v3_2912257 = zext i8 %v2_2912256 to i64
  store i64 %v3_2912257, i64* %rax.global-to-local, align 8
  %v5_2915258 = icmp eq i8 %v2_2912256, 0
  %v1_2917259 = icmp eq i1 %v5_2915258, false
  br i1 %v1_2917259, label %dec_label_pc_1ce6.lr.ph, label %dec_label_pc_291d

dec_label_pc_28ca:                                ; preds = %dec_label_pc_1ce6
  store i64 %v2_290f262, i64* %rax.global-to-local, align 8
  store i64 %v2_1c8f, i64* @rcx, align 8
  %v4_28e2 = ptrtoint i8* %stack_var_-328.4261 to i64
  %v2_28e9 = add i64 %v4_28e2, %v2_1c8f
  %v2_28ec = load i8, i8* %v1_2912263, align 1
  %v3_28ef = inttoptr i64 %v2_28e9 to i8*
  store i8 %v2_28ec, i8* %v3_28ef, align 1
  %v5_28f1 = add i64 %v4_28e2, 1
  %v23_28f1 = inttoptr i64 %v5_28f1 to i8*
  %v4_28f9 = add i64 %stack_var_-336.5260, 1
  %v2_290f = add i64 %v4_28f9, %v0_1379
  store i64 %v2_290f, i64* %rax.global-to-local, align 8
  %v1_2912 = inttoptr i64 %v2_290f to i8*
  %v2_2912 = load i8, i8* %v1_2912, align 1
  %v3_2912 = zext i8 %v2_2912 to i64
  store i64 %v3_2912, i64* %rax.global-to-local, align 8
  %v5_2915 = icmp eq i8 %v2_2912, 0
  %v1_2917 = icmp eq i1 %v5_2915, false
  br i1 %v1_2917, label %dec_label_pc_1ce6, label %dec_label_pc_291d

dec_label_pc_291d:                                ; preds = %dec_label_pc_28ca, %dec_label_pc_1c5d, %dec_label_pc_28c0
  store i64 %stack_var_-344.1, i64* @rdx, align 8
  %v2_2930 = add i64 %v2_1c8f, %stack_var_-344.1
  %v1_2933 = inttoptr i64 %v2_2930 to i8*
  store i8 0, i8* %v1_2933, align 1
  store i64 %v2_1c8f, i64* %rax.global-to-local, align 8
  store i64 %v2_1c8f, i64* %rdi.global-to-local, align 8
  %v3_2940 = call i32 @puts(i8* %v4_1c97)
  %v5_2940 = sext i32 %v3_2940 to i64
  br label %dec_label_pc_2945

dec_label_pc_2945:                                ; preds = %dec_label_pc_1e81, %dec_label_pc_1eaa, %dec_label_pc_291d
  %storemerge = phi i64 [ %v5_2940, %dec_label_pc_291d ], [ 4294967295, %dec_label_pc_1eaa ], [ 4294967295, %dec_label_pc_1e81 ]
  store i64 %storemerge, i64* %rax.global-to-local, align 8
  %v1_294c = call i64 @__readfsqword(i64 40)
  %v3_294c = icmp eq i64 %v1_294c, %v0_13c7
  br i1 %v3_294c, label %dec_label_pc_2945.dec_label_pc_295c_crit_edge, label %dec_label_pc_2957

dec_label_pc_2945.dec_label_pc_295c_crit_edge:    ; preds = %dec_label_pc_2945
  %v0_295d.pre = load i64, i64* %rax.global-to-local, align 8
  br label %dec_label_pc_295c

dec_label_pc_2957:                                ; preds = %dec_label_pc_2945
  call void @__stack_chk_fail()
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.global-to-local, align 8
  br label %dec_label_pc_295c

dec_label_pc_295c:                                ; preds = %dec_label_pc_2945.dec_label_pc_295c_crit_edge, %dec_label_pc_2957
  %v0_295d = phi i64 [ %v0_295d.pre, %dec_label_pc_2945.dec_label_pc_295c_crit_edge ], [ ptrtoint (i32* @0 to i64), %dec_label_pc_2957 ]
  ret i64 %v0_295d
}

define i64 @function_295e(i64 %arg1) local_unnamed_addr {
dec_label_pc_295e:
  %rdi.global-to-local = alloca i64, align 8
  store i64 %arg1, i64* %rdi.global-to-local, align 8
  %v0_2962 = load i64, i64* %rdi.global-to-local, align 8
  %v1_29b914 = inttoptr i64 %v0_2962 to i8*
  %v2_29b915 = load i8, i8* %v1_29b914, align 1
  %v9_29be17 = icmp sgt i8 %v2_29b915, 47
  br i1 %v9_29be17, label %dec_label_pc_29c0, label %dec_label_pc_29d2

dec_label_pc_2978:                                ; preds = %dec_label_pc_29c0
  %v2_2986 = mul i64 %stack_var_-24.018, 10
  store i64 %v2_2986, i64* @rcx, align 8
  %v2_2997 = load i8, i8* %v1_29b921, align 1
  %v3_2997 = zext i8 %v2_2997 to i64
  %v2_299e = add i64 %v2_2986, -48
  %v1_29a1 = add i64 %v2_299e, %v3_2997
  %v4_29a9 = add i64 %storemerge19, 1
  %v2_29b6 = add i64 %v4_29a9, %v0_2962
  %v1_29b9 = inttoptr i64 %v2_29b6 to i8*
  %v2_29b9 = load i8, i8* %v1_29b9, align 1
  %v9_29be = icmp sgt i8 %v2_29b9, 47
  br i1 %v9_29be, label %dec_label_pc_29c0, label %dec_label_pc_29d2

dec_label_pc_29c0:                                ; preds = %dec_label_pc_295e, %dec_label_pc_2978
  %v1_29b921 = phi i8* [ %v1_29b9, %dec_label_pc_2978 ], [ %v1_29b914, %dec_label_pc_295e ]
  %storemerge19 = phi i64 [ %v4_29a9, %dec_label_pc_2978 ], [ 0, %dec_label_pc_295e ]
  %stack_var_-24.018 = phi i64 [ %v1_29a1, %dec_label_pc_2978 ], [ 0, %dec_label_pc_295e ]
  %v2_29cb = load i8, i8* %v1_29b921, align 1
  %v9_29d0 = icmp sgt i8 %v2_29cb, 57
  br i1 %v9_29d0, label %dec_label_pc_29d2, label %dec_label_pc_2978

dec_label_pc_29d2:                                ; preds = %dec_label_pc_2978, %dec_label_pc_29c0, %dec_label_pc_295e
  %stack_var_-24.0.lcssa = phi i64 [ 0, %dec_label_pc_295e ], [ %stack_var_-24.018, %dec_label_pc_29c0 ], [ %v1_29a1, %dec_label_pc_2978 ]
  ret i64 %stack_var_-24.0.lcssa
}

define i64 @function_29d8(i64 %arg1) local_unnamed_addr {
dec_label_pc_29d8:
  %rdi.global-to-local = alloca i64, align 8
  store i64 %arg1, i64* %rdi.global-to-local, align 8
  %v0_29e0 = load i64, i64* %rdi.global-to-local, align 8
  %v1_29eb = call i64 @function_295e(i64 %v0_29e0)
  %v11_29fc = icmp eq i64 %v1_29eb, 0
  %v1_2a01 = icmp eq i1 %v11_29fc, false
  br i1 %v1_2a01, label %dec_label_pc_2a0a.lr.ph, label %dec_label_pc_2a36

dec_label_pc_2a0a.lr.ph:                          ; preds = %dec_label_pc_29d8
  br label %dec_label_pc_2a0a

dec_label_pc_2a0a:                                ; preds = %dec_label_pc_2a0a.lr.ph, %dec_label_pc_2a0a
  %stack_var_-16.09 = phi i64 [ 0, %dec_label_pc_2a0a.lr.ph ], [ %v4_2a26, %dec_label_pc_2a0a ]
  %v4_2a26 = add i64 %stack_var_-16.09, 1
  br i1 undef, label %dec_label_pc_2a0a, label %dec_label_pc_2a36.loopexit

dec_label_pc_2a36.loopexit:                       ; preds = %dec_label_pc_2a0a
  br label %dec_label_pc_2a36

dec_label_pc_2a36:                                ; preds = %dec_label_pc_2a36.loopexit, %dec_label_pc_29d8
  %storemerge = phi i64 [ 1, %dec_label_pc_29d8 ], [ %v4_2a26, %dec_label_pc_2a36.loopexit ]
  ret i64 %storemerge
}

define i64 @function_2a40(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_2a40:
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
  %v0_2a40 = load i64, i64* %r15.global-to-local, align 8
  %v0_2a42 = load i64, i64* %rdx.global-to-local, align 8
  store i64 %v0_2a42, i64* %r15.global-to-local, align 8
  %v0_2a45 = load i64, i64* %r14.global-to-local, align 8
  %v0_2a47 = load i64, i64* %rsi.global-to-local, align 8
  store i64 %v0_2a47, i64* %r14.global-to-local, align 8
  %v0_2a4a = load i64, i64* %r13.global-to-local, align 8
  %v0_2a4c = load i64, i64* %rdi.global-to-local, align 8
  store i64 %v0_2a4c, i64* %r13.global-to-local, align 8
  %v0_2a4f = load i64, i64* %r12.global-to-local, align 8
  store i64 ptrtoint (i64* @global_var_4d78.17 to i64), i64* %r12.global-to-local, align 8
  %v0_2a58 = load i64, i64* %rbp.global-to-local, align 8
  %v0_2a60 = load i64, i64* %rbx.global-to-local, align 8
  store i64 sub (i64 ptrtoint (i64* @global_var_4d80.18 to i64), i64 ptrtoint (i64* @global_var_4d78.17 to i64)), i64* %rbp.global-to-local, align 8
  %v0_2a68 = call i64 @function_1000()
  store i64 sdiv (i64 sub (i64 ptrtoint (i64* @global_var_4d80.18 to i64), i64 ptrtoint (i64* @global_var_4d78.17 to i64)), i64 8), i64* %rbp.global-to-local, align 8
  br i1 icmp eq (i64 sdiv (i64 sub (i64 ptrtoint (i64* @global_var_4d80.18 to i64), i64 ptrtoint (i64* @global_var_4d78.17 to i64)), i64 8), i64 0), label %dec_label_pc_2a8e, label %dec_label_pc_2a73

dec_label_pc_2a73:                                ; preds = %dec_label_pc_2a40
  store i64 0, i64* %rbx.global-to-local, align 8
  %v0_2a78 = load i64, i64* %r15.global-to-local, align 8
  %v0_2a7b = load i64, i64* %r14.global-to-local, align 8
  %v0_2a7e = load i64, i64* %r13.global-to-local, align 8
  br label %dec_label_pc_2a78

dec_label_pc_2a78:                                ; preds = %dec_label_pc_2a78, %dec_label_pc_2a73
  %v1_2a852 = phi i64 [ %v1_2a85, %dec_label_pc_2a78 ], [ 0, %dec_label_pc_2a73 ]
  %v1_2a85 = add i64 %v1_2a852, 1
  %v12_2a89 = icmp eq i64 %v1_2a85, sdiv (i64 sub (i64 ptrtoint (i64* @global_var_4d80.18 to i64), i64 ptrtoint (i64* @global_var_4d78.17 to i64)), i64 8)
  %v1_2a8c = icmp eq i1 %v12_2a89, false
  br i1 %v1_2a8c, label %dec_label_pc_2a78, label %dec_label_pc_2a8e.loopexit

dec_label_pc_2a8e.loopexit:                       ; preds = %dec_label_pc_2a78
  store i64 %v0_2a78, i64* %rdx.global-to-local, align 8
  store i64 %v0_2a7b, i64* %rsi.global-to-local, align 8
  store i64 %v0_2a7e, i64* %rdi.global-to-local, align 8
  store i64 %v1_2a85, i64* %rbx.global-to-local, align 8
  br label %dec_label_pc_2a8e

dec_label_pc_2a8e:                                ; preds = %dec_label_pc_2a8e.loopexit, %dec_label_pc_2a40
  store i64 %v0_2a60, i64* %rbx.global-to-local, align 8
  store i64 %v0_2a58, i64* %rbp.global-to-local, align 8
  store i64 %v0_2a4f, i64* %r12.global-to-local, align 8
  store i64 %v0_2a4a, i64* %r13.global-to-local, align 8
  store i64 %v0_2a45, i64* %r14.global-to-local, align 8
  store i64 %v0_2a40, i64* %r15.global-to-local, align 8
  ret i64 %v0_2a68
}

define i64 @function_2aa0() local_unnamed_addr {
dec_label_pc_2aa0:
  %rax.global-to-local = alloca i64, align 8
  %v0_2aa0 = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_2aa0
}

define i64 @function_2aa4() local_unnamed_addr {
dec_label_pc_2aa4:
  %rax.global-to-local = alloca i64, align 8
  %v0_2aac = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_2aac
}

declare void @_exit(i32) local_unnamed_addr

declare i32 @puts(i8*) local_unnamed_addr

declare i32 @strlen(i8*) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64* @memset(i64*, i32, i32) local_unnamed_addr

declare i32 @read(i32, i64*, i32) local_unnamed_addr

declare i64* @memcpy(i64*, i64*, i32) local_unnamed_addr

declare i32 @setvbuf(%_IO_FILE*, i8*, i32, i32) local_unnamed_addr

declare i16** @__ctype_b_loc() local_unnamed_addr

declare i32 @__libc_start_main(i64, i32, i8**, void ()*, void ()*, void ()*) local_unnamed_addr

declare void @__gmon_start__() local_unnamed_addr

declare void @__cxa_finalize(i64*) local_unnamed_addr

declare i64 @__asm_hlt() local_unnamed_addr

declare i64 @__asm_movaps(i128) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr
