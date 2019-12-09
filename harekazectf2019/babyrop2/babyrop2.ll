source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

%_IO_FILE = type { i32 }

@global_var_400758.6 = constant [19 x i8] c"What's your name? \00"
@global_var_400770.7 = constant [37 x i8] c"Welcome to the Pwn World again, %s!\0A\00"
@global_var_601050.4 = local_unnamed_addr global %_IO_FILE* null
@global_var_601060.5 = local_unnamed_addr global %_IO_FILE* null

define i64 @main(i64 %argc, i8** %argv) local_unnamed_addr {
dec_label_pc_400636:
  %rbp.global-to-local = alloca i64, align 8
  %stack_var_-40 = alloca i64, align 8
  %v0_40063e = load %_IO_FILE*, %_IO_FILE** @global_var_601050.4, align 8
  %v12_400657 = call i32 @setvbuf(%_IO_FILE* %v0_40063e, i8* null, i32 2, i32 0)
  %v0_40065c = load %_IO_FILE*, %_IO_FILE** @global_var_601060.5, align 8
  %v12_400675 = call i32 @setvbuf(%_IO_FILE* %v0_40065c, i8* null, i32 2, i32 0)
  %v3_400684 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_var_400758.6, i64 0, i64 0))
  %v8_40069a = call i32 @read(i32 0, i64* nonnull %stack_var_-40, i32 256)
  %v2_4006a5 = add i32 %v8_40069a, -1
  %v17_4006a5 = zext i32 %v2_4006a5 to i64
  %v0_4006aa = load i64, i64* %rbp.global-to-local, align 8
  %v3_4006aa = add i64 %v0_4006aa, -32
  %v4_4006aa = add i64 %v3_4006aa, %v17_4006a5
  %v5_4006aa = inttoptr i64 %v4_4006aa to i8*
  store i8 0, i8* %v5_4006aa, align 1
  %v6_4006c0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @global_var_400770.7, i64 0, i64 0), i64* nonnull %stack_var_-40)
  ret i64 0
}

declare i32 @printf(i8*, ...) local_unnamed_addr

declare i32 @read(i32, i64*, i32) local_unnamed_addr

declare i32 @setvbuf(%_IO_FILE*, i8*, i32, i32) local_unnamed_addr
