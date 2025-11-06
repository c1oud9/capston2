; ModuleID = '<stdin>'
source_filename = "../../third_party/libjpeg_turbo/simd/x86_64/jsimd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i16, i16, i32, i8, i32, ptr, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@simd_support = internal thread_local global i32 -1, align 4
@jconst_rgb_ycc_convert_avx2 = external constant [0 x i32], align 4
@jconst_rgb_ycc_convert_sse2 = external constant [0 x i32], align 4
@jconst_rgb_gray_convert_avx2 = external constant [0 x i32], align 4
@jconst_rgb_gray_convert_sse2 = external constant [0 x i32], align 4
@jconst_ycc_rgb_convert_avx2 = external constant [0 x i32], align 4
@jconst_ycc_rgb_convert_sse2 = external constant [0 x i32], align 4
@jconst_fancy_upsample_avx2 = external constant [0 x i32], align 4
@jconst_fancy_upsample_sse2 = external constant [0 x i32], align 4
@jconst_merged_upsample_avx2 = external constant [0 x i32], align 4
@jconst_merged_upsample_sse2 = external constant [0 x i32], align 4
@jconst_fdct_islow_avx2 = external constant [0 x i32], align 4
@jconst_fdct_islow_sse2 = external constant [0 x i32], align 4
@jconst_fdct_ifast_sse2 = external constant [0 x i32], align 4
@jconst_fdct_float_sse = external constant [0 x i32], align 4
@jconst_idct_red_sse2 = external constant [0 x i32], align 4
@jconst_idct_islow_avx2 = external constant [0 x i32], align 4
@jconst_idct_islow_sse2 = external constant [0 x i32], align 4
@jconst_idct_ifast_sse2 = external constant [0 x i32], align 4
@jconst_idct_float_sse2 = external constant [0 x i32], align 4
@simd_huffman = internal thread_local global i32 1, align 4
@jconst_huff_encode_one_block = external constant [0 x i32], align 4
@.str = private unnamed_addr constant [16 x i8] c"JSIMD_FORCESSE2\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"JSIMD_FORCEAVX2\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"JSIMD_FORCENONE\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"JSIMD_NOHUFFENC\00", align 1

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_rgb_ycc() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %and1 = and i64 ptrtoint (ptr @jconst_rgb_ycc_convert_avx2 to i64), 31
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and2 = and i32 %3, 8
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.lhs.true4, label %if.end8

land.lhs.true4:                                   ; preds = %if.end
  %and5 = and i64 ptrtoint (ptr @jconst_rgb_ycc_convert_sse2 to i64), 15
  %cmp6 = icmp eq i64 %and5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true4
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal void @init_simd() #0 {
entry:
  %env = alloca [2 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr %env) #11
  call void @llvm.memset.p0.i64(ptr align 1 %env, i8 0, i64 2, i1 false)
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @jpeg_simd_cpu_support()
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  store i32 %call, ptr %2, align 4
  %arraydecay = getelementptr inbounds [2 x i8], ptr %env, i64 0, i64 0
  %call1 = call i32 @GETENV_S(ptr noundef %arraydecay, i64 noundef 2, ptr noundef @.str)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %arraydecay2 = getelementptr inbounds [2 x i8], ptr %env, i64 0, i64 0
  %call3 = call i32 @strcmp(ptr noundef %arraydecay2, ptr noundef @.str.1) #12
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %3 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %4 = load i32, ptr %3, align 4
  %and = and i32 %4, 8
  store i32 %and, ptr %3, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true, %if.end
  %arraydecay7 = getelementptr inbounds [2 x i8], ptr %env, i64 0, i64 0
  %call8 = call i32 @GETENV_S(ptr noundef %arraydecay7, i64 noundef 2, ptr noundef @.str.2)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end16, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.end6
  %arraydecay11 = getelementptr inbounds [2 x i8], ptr %env, i64 0, i64 0
  %call12 = call i32 @strcmp(ptr noundef %arraydecay11, ptr noundef @.str.1) #12
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end16, label %if.then14

if.then14:                                        ; preds = %land.lhs.true10
  %5 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %6 = load i32, ptr %5, align 4
  %and15 = and i32 %6, 128
  store i32 %and15, ptr %5, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true10, %if.end6
  %arraydecay17 = getelementptr inbounds [2 x i8], ptr %env, i64 0, i64 0
  %call18 = call i32 @GETENV_S(ptr noundef %arraydecay17, i64 noundef 2, ptr noundef @.str.3)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end25, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %if.end16
  %arraydecay21 = getelementptr inbounds [2 x i8], ptr %env, i64 0, i64 0
  %call22 = call i32 @strcmp(ptr noundef %arraydecay21, ptr noundef @.str.1) #12
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %land.lhs.true20
  %7 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  store i32 0, ptr %7, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %land.lhs.true20, %if.end16
  %arraydecay26 = getelementptr inbounds [2 x i8], ptr %env, i64 0, i64 0
  %call27 = call i32 @GETENV_S(ptr noundef %arraydecay26, i64 noundef 2, ptr noundef @.str.4)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end34, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %if.end25
  %arraydecay30 = getelementptr inbounds [2 x i8], ptr %env, i64 0, i64 0
  %call31 = call i32 @strcmp(ptr noundef %arraydecay30, ptr noundef @.str.1) #12
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %land.lhs.true29
  %8 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_huffman)
  store i32 0, ptr %8, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %land.lhs.true29, %if.end25
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %env) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #1

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_rgb_gray() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %and1 = and i64 ptrtoint (ptr @jconst_rgb_gray_convert_avx2 to i64), 31
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and2 = and i32 %3, 8
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.lhs.true4, label %if.end8

land.lhs.true4:                                   ; preds = %if.end
  %and5 = and i64 ptrtoint (ptr @jconst_rgb_gray_convert_sse2 to i64), 15
  %cmp6 = icmp eq i64 %and5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true4
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_ycc_rgb() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %and1 = and i64 ptrtoint (ptr @jconst_ycc_rgb_convert_avx2 to i64), 31
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and2 = and i32 %3, 8
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.lhs.true4, label %if.end8

land.lhs.true4:                                   ; preds = %if.end
  %and5 = and i64 ptrtoint (ptr @jconst_ycc_rgb_convert_sse2 to i64), 15
  %cmp6 = icmp eq i64 %and5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true4
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_ycc_rgb565() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_rgb_ycc_convert(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %output_row, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %avx2fct = alloca ptr, align 8
  %sse2fct = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %output_row, ptr %output_row.addr, align 4
  store i32 %num_rows, ptr %num_rows.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %avx2fct) #11
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %avx2fct, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %sse2fct) #11
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %sse2fct, align 8, !annotation !3
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @init_simd()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 10
  %3 = load i32, ptr %in_color_space, align 4
  switch i32 %3, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb1
    i32 12, label %sw.bb1
    i32 8, label %sw.bb2
    i32 9, label %sw.bb3
    i32 13, label %sw.bb3
    i32 10, label %sw.bb4
    i32 14, label %sw.bb4
    i32 11, label %sw.bb5
    i32 15, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  store ptr @jsimd_extrgb_ycc_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_extrgb_ycc_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_extrgbx_ycc_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_extrgbx_ycc_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  store ptr @jsimd_extbgr_ycc_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_extbgr_ycc_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_extbgrx_ycc_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_extbgrx_ycc_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_extxbgr_ycc_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_extxbgr_ycc_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_extxrgb_ycc_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_extxrgb_ycc_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store ptr @jsimd_rgb_ycc_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_rgb_ycc_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %4 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %5 = load i32, ptr %4, align 4
  %and = and i32 %5, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %sw.epilog
  %6 = load ptr, ptr %avx2fct, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 7
  %8 = load i32, ptr %image_width, align 8
  %9 = load ptr, ptr %input_buf.addr, align 8
  %10 = load ptr, ptr %output_buf.addr, align 8
  %11 = load i32, ptr %output_row.addr, align 4
  %12 = load i32, ptr %num_rows.addr, align 4
  call void %6(i32 noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, i32 noundef %12)
  br label %if.end8

if.else:                                          ; preds = %sw.epilog
  %13 = load ptr, ptr %sse2fct, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %image_width7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 7
  %15 = load i32, ptr %image_width7, align 8
  %16 = load ptr, ptr %input_buf.addr, align 8
  %17 = load ptr, ptr %output_buf.addr, align 8
  %18 = load i32, ptr %output_row.addr, align 4
  %19 = load i32, ptr %num_rows.addr, align 4
  call void %13(i32 noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %18, i32 noundef %19)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sse2fct) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %avx2fct) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extrgb_ycc_convert_avx2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extrgb_ycc_convert_sse2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extrgbx_ycc_convert_avx2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extrgbx_ycc_convert_sse2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extbgr_ycc_convert_avx2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extbgr_ycc_convert_sse2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extbgrx_ycc_convert_avx2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extbgrx_ycc_convert_sse2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extxbgr_ycc_convert_avx2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extxbgr_ycc_convert_sse2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extxrgb_ycc_convert_avx2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extxrgb_ycc_convert_sse2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_rgb_ycc_convert_avx2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_rgb_ycc_convert_sse2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_rgb_gray_convert(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %output_row, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %avx2fct = alloca ptr, align 8
  %sse2fct = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %output_row, ptr %output_row.addr, align 4
  store i32 %num_rows, ptr %num_rows.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %avx2fct) #11
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %avx2fct, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %sse2fct) #11
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %sse2fct, align 8, !annotation !3
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @init_simd()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 10
  %3 = load i32, ptr %in_color_space, align 4
  switch i32 %3, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb1
    i32 12, label %sw.bb1
    i32 8, label %sw.bb2
    i32 9, label %sw.bb3
    i32 13, label %sw.bb3
    i32 10, label %sw.bb4
    i32 14, label %sw.bb4
    i32 11, label %sw.bb5
    i32 15, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  store ptr @jsimd_extrgb_gray_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_extrgb_gray_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_extrgbx_gray_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_extrgbx_gray_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  store ptr @jsimd_extbgr_gray_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_extbgr_gray_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_extbgrx_gray_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_extbgrx_gray_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_extxbgr_gray_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_extxbgr_gray_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_extxrgb_gray_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_extxrgb_gray_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store ptr @jsimd_rgb_gray_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_rgb_gray_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %4 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %5 = load i32, ptr %4, align 4
  %and = and i32 %5, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %sw.epilog
  %6 = load ptr, ptr %avx2fct, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 7
  %8 = load i32, ptr %image_width, align 8
  %9 = load ptr, ptr %input_buf.addr, align 8
  %10 = load ptr, ptr %output_buf.addr, align 8
  %11 = load i32, ptr %output_row.addr, align 4
  %12 = load i32, ptr %num_rows.addr, align 4
  call void %6(i32 noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, i32 noundef %12)
  br label %if.end8

if.else:                                          ; preds = %sw.epilog
  %13 = load ptr, ptr %sse2fct, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %image_width7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 7
  %15 = load i32, ptr %image_width7, align 8
  %16 = load ptr, ptr %input_buf.addr, align 8
  %17 = load ptr, ptr %output_buf.addr, align 8
  %18 = load i32, ptr %output_row.addr, align 4
  %19 = load i32, ptr %num_rows.addr, align 4
  call void %13(i32 noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %18, i32 noundef %19)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sse2fct) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %avx2fct) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extrgb_gray_convert_avx2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extrgb_gray_convert_sse2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extrgbx_gray_convert_avx2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extrgbx_gray_convert_sse2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extbgr_gray_convert_avx2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extbgr_gray_convert_sse2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extbgrx_gray_convert_avx2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extbgrx_gray_convert_sse2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extxbgr_gray_convert_avx2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extxbgr_gray_convert_sse2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extxrgb_gray_convert_avx2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_extxrgb_gray_convert_sse2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_rgb_gray_convert_avx2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_rgb_gray_convert_sse2(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_ycc_rgb_convert(ptr noundef %cinfo, ptr noundef %input_buf, i32 noundef %input_row, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %avx2fct = alloca ptr, align 8
  %sse2fct = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store i32 %input_row, ptr %input_row.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %avx2fct) #11
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %avx2fct, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %sse2fct) #11
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %sse2fct, align 8, !annotation !3
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @init_simd()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 11
  %3 = load i32, ptr %out_color_space, align 8
  switch i32 %3, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb1
    i32 12, label %sw.bb1
    i32 8, label %sw.bb2
    i32 9, label %sw.bb3
    i32 13, label %sw.bb3
    i32 10, label %sw.bb4
    i32 14, label %sw.bb4
    i32 11, label %sw.bb5
    i32 15, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  store ptr @jsimd_ycc_extrgb_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_ycc_extrgb_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_ycc_extrgbx_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_ycc_extrgbx_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  store ptr @jsimd_ycc_extbgr_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_ycc_extbgr_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_ycc_extbgrx_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_ycc_extbgrx_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_ycc_extxbgr_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_ycc_extxbgr_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_ycc_extxrgb_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_ycc_extxrgb_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store ptr @jsimd_ycc_rgb_convert_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_ycc_rgb_convert_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %4 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %5 = load i32, ptr %4, align 4
  %and = and i32 %5, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %sw.epilog
  %6 = load ptr, ptr %avx2fct, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 27
  %8 = load i32, ptr %output_width, align 8
  %9 = load ptr, ptr %input_buf.addr, align 8
  %10 = load i32, ptr %input_row.addr, align 4
  %11 = load ptr, ptr %output_buf.addr, align 8
  %12 = load i32, ptr %num_rows.addr, align 4
  call void %6(i32 noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %11, i32 noundef %12)
  br label %if.end8

if.else:                                          ; preds = %sw.epilog
  %13 = load ptr, ptr %sse2fct, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %output_width7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 27
  %15 = load i32, ptr %output_width7, align 8
  %16 = load ptr, ptr %input_buf.addr, align 8
  %17 = load i32, ptr %input_row.addr, align 4
  %18 = load ptr, ptr %output_buf.addr, align 8
  %19 = load i32, ptr %num_rows.addr, align 4
  call void %13(i32 noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, i32 noundef %19)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sse2fct) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %avx2fct) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_ycc_extrgb_convert_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_ycc_extrgb_convert_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_ycc_extrgbx_convert_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_ycc_extrgbx_convert_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_ycc_extbgr_convert_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_ycc_extbgr_convert_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_ycc_extbgrx_convert_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_ycc_extbgrx_convert_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_ycc_extxbgr_convert_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_ycc_extxbgr_convert_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_ycc_extxrgb_convert_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_ycc_extxrgb_convert_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_ycc_rgb_convert_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_ycc_rgb_convert_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_ycc_rgb565_convert(ptr noundef %cinfo, ptr noundef %input_buf, i32 noundef %input_row, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store i32 %input_row, ptr %input_row.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_h2v2_downsample() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and1 = and i32 %3, 8
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_h2v1_downsample() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and1 = and i32 %3, 8
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_h2v2_downsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %input_data.addr = alloca ptr, align 8
  %output_data.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data, ptr %output_data.addr, align 8
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @init_simd()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and = and i32 %3, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 7
  %5 = load i32, ptr %image_width, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 42
  %7 = load i32, ptr %max_v_samp_factor, align 4
  %8 = load ptr, ptr %compptr.addr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %v_samp_factor, align 4
  %10 = load ptr, ptr %compptr.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %10, i32 0, i32 7
  %11 = load i32, ptr %width_in_blocks, align 4
  %12 = load ptr, ptr %input_data.addr, align 8
  %13 = load ptr, ptr %output_data.addr, align 8
  call void @jsimd_h2v2_downsample_avx2(i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef %12, ptr noundef %13)
  br label %if.end6

if.else:                                          ; preds = %if.end
  %14 = load ptr, ptr %cinfo.addr, align 8
  %image_width2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 7
  %15 = load i32, ptr %image_width2, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i32 0, i32 42
  %17 = load i32, ptr %max_v_samp_factor3, align 4
  %18 = load ptr, ptr %compptr.addr, align 8
  %v_samp_factor4 = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %v_samp_factor4, align 4
  %20 = load ptr, ptr %compptr.addr, align 8
  %width_in_blocks5 = getelementptr inbounds %struct.jpeg_component_info, ptr %20, i32 0, i32 7
  %21 = load i32, ptr %width_in_blocks5, align 4
  %22 = load ptr, ptr %input_data.addr, align 8
  %23 = load ptr, ptr %output_data.addr, align 8
  call void @jsimd_h2v2_downsample_sse2(i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, ptr noundef %22, ptr noundef %23)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_downsample_avx2(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_downsample_sse2(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_h2v1_downsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %input_data.addr = alloca ptr, align 8
  %output_data.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data, ptr %output_data.addr, align 8
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @init_simd()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and = and i32 %3, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 7
  %5 = load i32, ptr %image_width, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 42
  %7 = load i32, ptr %max_v_samp_factor, align 4
  %8 = load ptr, ptr %compptr.addr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %v_samp_factor, align 4
  %10 = load ptr, ptr %compptr.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %10, i32 0, i32 7
  %11 = load i32, ptr %width_in_blocks, align 4
  %12 = load ptr, ptr %input_data.addr, align 8
  %13 = load ptr, ptr %output_data.addr, align 8
  call void @jsimd_h2v1_downsample_avx2(i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef %12, ptr noundef %13)
  br label %if.end6

if.else:                                          ; preds = %if.end
  %14 = load ptr, ptr %cinfo.addr, align 8
  %image_width2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 7
  %15 = load i32, ptr %image_width2, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i32 0, i32 42
  %17 = load i32, ptr %max_v_samp_factor3, align 4
  %18 = load ptr, ptr %compptr.addr, align 8
  %v_samp_factor4 = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %v_samp_factor4, align 4
  %20 = load ptr, ptr %compptr.addr, align 8
  %width_in_blocks5 = getelementptr inbounds %struct.jpeg_component_info, ptr %20, i32 0, i32 7
  %21 = load i32, ptr %width_in_blocks5, align 4
  %22 = load ptr, ptr %input_data.addr, align 8
  %23 = load ptr, ptr %output_data.addr, align 8
  call void @jsimd_h2v1_downsample_sse2(i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, ptr noundef %22, ptr noundef %23)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_downsample_avx2(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_downsample_sse2(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_h2v2_upsample() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and1 = and i32 %3, 8
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_h2v1_upsample() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and1 = and i32 %3, 8
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_h2v2_upsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %input_data.addr = alloca ptr, align 8
  %output_data_ptr.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data_ptr, ptr %output_data_ptr.addr, align 8
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @init_simd()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and = and i32 %3, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 62
  %5 = load i32, ptr %max_v_samp_factor, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 27
  %7 = load i32, ptr %output_width, align 8
  %8 = load ptr, ptr %input_data.addr, align 8
  %9 = load ptr, ptr %output_data_ptr.addr, align 8
  call void @jsimd_h2v2_upsample_avx2(i32 noundef %5, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  br label %if.end4

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 62
  %11 = load i32, ptr %max_v_samp_factor2, align 4
  %12 = load ptr, ptr %cinfo.addr, align 8
  %output_width3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 27
  %13 = load i32, ptr %output_width3, align 8
  %14 = load ptr, ptr %input_data.addr, align 8
  %15 = load ptr, ptr %output_data_ptr.addr, align 8
  call void @jsimd_h2v2_upsample_sse2(i32 noundef %11, i32 noundef %13, ptr noundef %14, ptr noundef %15)
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_upsample_avx2(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_upsample_sse2(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_h2v1_upsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %input_data.addr = alloca ptr, align 8
  %output_data_ptr.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data_ptr, ptr %output_data_ptr.addr, align 8
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @init_simd()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and = and i32 %3, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 62
  %5 = load i32, ptr %max_v_samp_factor, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 27
  %7 = load i32, ptr %output_width, align 8
  %8 = load ptr, ptr %input_data.addr, align 8
  %9 = load ptr, ptr %output_data_ptr.addr, align 8
  call void @jsimd_h2v1_upsample_avx2(i32 noundef %5, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  br label %if.end4

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 62
  %11 = load i32, ptr %max_v_samp_factor2, align 4
  %12 = load ptr, ptr %cinfo.addr, align 8
  %output_width3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 27
  %13 = load i32, ptr %output_width3, align 8
  %14 = load ptr, ptr %input_data.addr, align 8
  %15 = load ptr, ptr %output_data_ptr.addr, align 8
  call void @jsimd_h2v1_upsample_sse2(i32 noundef %11, i32 noundef %13, ptr noundef %14, ptr noundef %15)
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_upsample_avx2(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_upsample_sse2(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_h2v2_fancy_upsample() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %and1 = and i64 ptrtoint (ptr @jconst_fancy_upsample_avx2 to i64), 31
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and2 = and i32 %3, 8
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.lhs.true4, label %if.end8

land.lhs.true4:                                   ; preds = %if.end
  %and5 = and i64 ptrtoint (ptr @jconst_fancy_upsample_sse2 to i64), 15
  %cmp6 = icmp eq i64 %and5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true4
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_h2v1_fancy_upsample() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %and1 = and i64 ptrtoint (ptr @jconst_fancy_upsample_avx2 to i64), 31
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and2 = and i32 %3, 8
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.lhs.true4, label %if.end8

land.lhs.true4:                                   ; preds = %if.end
  %and5 = and i64 ptrtoint (ptr @jconst_fancy_upsample_sse2 to i64), 15
  %cmp6 = icmp eq i64 %and5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true4
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_h2v2_fancy_upsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %input_data.addr = alloca ptr, align 8
  %output_data_ptr.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data_ptr, ptr %output_data_ptr.addr, align 8
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @init_simd()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and = and i32 %3, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 62
  %5 = load i32, ptr %max_v_samp_factor, align 4
  %6 = load ptr, ptr %compptr.addr, align 8
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, ptr %6, i32 0, i32 10
  %7 = load i32, ptr %downsampled_width, align 8
  %8 = load ptr, ptr %input_data.addr, align 8
  %9 = load ptr, ptr %output_data_ptr.addr, align 8
  call void @jsimd_h2v2_fancy_upsample_avx2(i32 noundef %5, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  br label %if.end4

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 62
  %11 = load i32, ptr %max_v_samp_factor2, align 4
  %12 = load ptr, ptr %compptr.addr, align 8
  %downsampled_width3 = getelementptr inbounds %struct.jpeg_component_info, ptr %12, i32 0, i32 10
  %13 = load i32, ptr %downsampled_width3, align 8
  %14 = load ptr, ptr %input_data.addr, align 8
  %15 = load ptr, ptr %output_data_ptr.addr, align 8
  call void @jsimd_h2v2_fancy_upsample_sse2(i32 noundef %11, i32 noundef %13, ptr noundef %14, ptr noundef %15)
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_fancy_upsample_avx2(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_fancy_upsample_sse2(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_h2v1_fancy_upsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %input_data.addr = alloca ptr, align 8
  %output_data_ptr.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data_ptr, ptr %output_data_ptr.addr, align 8
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @init_simd()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and = and i32 %3, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 62
  %5 = load i32, ptr %max_v_samp_factor, align 4
  %6 = load ptr, ptr %compptr.addr, align 8
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, ptr %6, i32 0, i32 10
  %7 = load i32, ptr %downsampled_width, align 8
  %8 = load ptr, ptr %input_data.addr, align 8
  %9 = load ptr, ptr %output_data_ptr.addr, align 8
  call void @jsimd_h2v1_fancy_upsample_avx2(i32 noundef %5, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  br label %if.end4

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 62
  %11 = load i32, ptr %max_v_samp_factor2, align 4
  %12 = load ptr, ptr %compptr.addr, align 8
  %downsampled_width3 = getelementptr inbounds %struct.jpeg_component_info, ptr %12, i32 0, i32 10
  %13 = load i32, ptr %downsampled_width3, align 8
  %14 = load ptr, ptr %input_data.addr, align 8
  %15 = load ptr, ptr %output_data_ptr.addr, align 8
  call void @jsimd_h2v1_fancy_upsample_sse2(i32 noundef %11, i32 noundef %13, ptr noundef %14, ptr noundef %15)
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_fancy_upsample_avx2(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_fancy_upsample_sse2(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_h2v2_merged_upsample() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %and1 = and i64 ptrtoint (ptr @jconst_merged_upsample_avx2 to i64), 31
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and2 = and i32 %3, 8
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.lhs.true4, label %if.end8

land.lhs.true4:                                   ; preds = %if.end
  %and5 = and i64 ptrtoint (ptr @jconst_merged_upsample_sse2 to i64), 15
  %cmp6 = icmp eq i64 %and5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true4
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_h2v1_merged_upsample() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %and1 = and i64 ptrtoint (ptr @jconst_merged_upsample_avx2 to i64), 31
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and2 = and i32 %3, 8
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.lhs.true4, label %if.end8

land.lhs.true4:                                   ; preds = %if.end
  %and5 = and i64 ptrtoint (ptr @jconst_merged_upsample_sse2 to i64), 15
  %cmp6 = icmp eq i64 %and5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true4
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_h2v2_merged_upsample(ptr noundef %cinfo, ptr noundef %input_buf, i32 noundef %in_row_group_ctr, ptr noundef %output_buf) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %in_row_group_ctr.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %avx2fct = alloca ptr, align 8
  %sse2fct = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store i32 %in_row_group_ctr, ptr %in_row_group_ctr.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %avx2fct) #11
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %avx2fct, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %sse2fct) #11
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %sse2fct, align 8, !annotation !3
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @init_simd()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 11
  %3 = load i32, ptr %out_color_space, align 8
  switch i32 %3, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb1
    i32 12, label %sw.bb1
    i32 8, label %sw.bb2
    i32 9, label %sw.bb3
    i32 13, label %sw.bb3
    i32 10, label %sw.bb4
    i32 14, label %sw.bb4
    i32 11, label %sw.bb5
    i32 15, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  store ptr @jsimd_h2v2_extrgb_merged_upsample_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_h2v2_extrgb_merged_upsample_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_h2v2_extrgbx_merged_upsample_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_h2v2_extrgbx_merged_upsample_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  store ptr @jsimd_h2v2_extbgr_merged_upsample_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_h2v2_extbgr_merged_upsample_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_h2v2_extbgrx_merged_upsample_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_h2v2_extbgrx_merged_upsample_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_h2v2_extxbgr_merged_upsample_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_h2v2_extxbgr_merged_upsample_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_h2v2_extxrgb_merged_upsample_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_h2v2_extxrgb_merged_upsample_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store ptr @jsimd_h2v2_merged_upsample_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_h2v2_merged_upsample_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %4 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %5 = load i32, ptr %4, align 4
  %and = and i32 %5, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %sw.epilog
  %6 = load ptr, ptr %avx2fct, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 27
  %8 = load i32, ptr %output_width, align 8
  %9 = load ptr, ptr %input_buf.addr, align 8
  %10 = load i32, ptr %in_row_group_ctr.addr, align 4
  %11 = load ptr, ptr %output_buf.addr, align 8
  call void %6(i32 noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %11)
  br label %if.end8

if.else:                                          ; preds = %sw.epilog
  %12 = load ptr, ptr %sse2fct, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %output_width7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 27
  %14 = load i32, ptr %output_width7, align 8
  %15 = load ptr, ptr %input_buf.addr, align 8
  %16 = load i32, ptr %in_row_group_ctr.addr, align 4
  %17 = load ptr, ptr %output_buf.addr, align 8
  call void %12(i32 noundef %14, ptr noundef %15, i32 noundef %16, ptr noundef %17)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sse2fct) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %avx2fct) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_extrgb_merged_upsample_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_extrgb_merged_upsample_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_extrgbx_merged_upsample_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_extrgbx_merged_upsample_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_extbgr_merged_upsample_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_extbgr_merged_upsample_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_extbgrx_merged_upsample_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_extbgrx_merged_upsample_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_extxbgr_merged_upsample_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_extxbgr_merged_upsample_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_extxrgb_merged_upsample_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_extxrgb_merged_upsample_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_merged_upsample_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v2_merged_upsample_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_h2v1_merged_upsample(ptr noundef %cinfo, ptr noundef %input_buf, i32 noundef %in_row_group_ctr, ptr noundef %output_buf) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %in_row_group_ctr.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %avx2fct = alloca ptr, align 8
  %sse2fct = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store i32 %in_row_group_ctr, ptr %in_row_group_ctr.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %avx2fct) #11
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %avx2fct, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %sse2fct) #11
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %sse2fct, align 8, !annotation !3
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @init_simd()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 11
  %3 = load i32, ptr %out_color_space, align 8
  switch i32 %3, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb1
    i32 12, label %sw.bb1
    i32 8, label %sw.bb2
    i32 9, label %sw.bb3
    i32 13, label %sw.bb3
    i32 10, label %sw.bb4
    i32 14, label %sw.bb4
    i32 11, label %sw.bb5
    i32 15, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  store ptr @jsimd_h2v1_extrgb_merged_upsample_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_h2v1_extrgb_merged_upsample_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_h2v1_extrgbx_merged_upsample_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_h2v1_extrgbx_merged_upsample_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  store ptr @jsimd_h2v1_extbgr_merged_upsample_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_h2v1_extbgr_merged_upsample_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_h2v1_extbgrx_merged_upsample_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_h2v1_extbgrx_merged_upsample_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_h2v1_extxbgr_merged_upsample_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_h2v1_extxbgr_merged_upsample_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end, %if.end
  store ptr @jsimd_h2v1_extxrgb_merged_upsample_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_h2v1_extxrgb_merged_upsample_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store ptr @jsimd_h2v1_merged_upsample_avx2, ptr %avx2fct, align 8
  store ptr @jsimd_h2v1_merged_upsample_sse2, ptr %sse2fct, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %4 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %5 = load i32, ptr %4, align 4
  %and = and i32 %5, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %sw.epilog
  %6 = load ptr, ptr %avx2fct, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 27
  %8 = load i32, ptr %output_width, align 8
  %9 = load ptr, ptr %input_buf.addr, align 8
  %10 = load i32, ptr %in_row_group_ctr.addr, align 4
  %11 = load ptr, ptr %output_buf.addr, align 8
  call void %6(i32 noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %11)
  br label %if.end8

if.else:                                          ; preds = %sw.epilog
  %12 = load ptr, ptr %sse2fct, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %output_width7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 27
  %14 = load i32, ptr %output_width7, align 8
  %15 = load ptr, ptr %input_buf.addr, align 8
  %16 = load i32, ptr %in_row_group_ctr.addr, align 4
  %17 = load ptr, ptr %output_buf.addr, align 8
  call void %12(i32 noundef %14, ptr noundef %15, i32 noundef %16, ptr noundef %17)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sse2fct) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %avx2fct) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_extrgb_merged_upsample_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_extrgb_merged_upsample_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_extrgbx_merged_upsample_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_extrgbx_merged_upsample_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_extbgr_merged_upsample_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_extbgr_merged_upsample_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_extbgrx_merged_upsample_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_extbgrx_merged_upsample_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_extxbgr_merged_upsample_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_extxbgr_merged_upsample_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_extxrgb_merged_upsample_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_extxrgb_merged_upsample_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_merged_upsample_avx2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_h2v1_merged_upsample_sse2(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_convsamp() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and1 = and i32 %3, 8
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_convsamp_float() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_convsamp(ptr noundef %sample_data, i32 noundef %start_col, ptr noundef %workspace) #0 {
entry:
  %sample_data.addr = alloca ptr, align 8
  %start_col.addr = alloca i32, align 4
  %workspace.addr = alloca ptr, align 8
  store ptr %sample_data, ptr %sample_data.addr, align 8
  store i32 %start_col, ptr %start_col.addr, align 4
  store ptr %workspace, ptr %workspace.addr, align 8
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @init_simd()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and = and i32 %3, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %sample_data.addr, align 8
  %5 = load i32, ptr %start_col.addr, align 4
  %6 = load ptr, ptr %workspace.addr, align 8
  call void @jsimd_convsamp_avx2(ptr noundef %4, i32 noundef %5, ptr noundef %6)
  br label %if.end2

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %sample_data.addr, align 8
  %8 = load i32, ptr %start_col.addr, align 4
  %9 = load ptr, ptr %workspace.addr, align 8
  call void @jsimd_convsamp_sse2(ptr noundef %7, i32 noundef %8, ptr noundef %9)
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_convsamp_avx2(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_convsamp_sse2(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_convsamp_float(ptr noundef %sample_data, i32 noundef %start_col, ptr noundef %workspace) #0 {
entry:
  %sample_data.addr = alloca ptr, align 8
  %start_col.addr = alloca i32, align 4
  %workspace.addr = alloca ptr, align 8
  store ptr %sample_data, ptr %sample_data.addr, align 8
  store i32 %start_col, ptr %start_col.addr, align 4
  store ptr %workspace, ptr %workspace.addr, align 8
  %0 = load ptr, ptr %sample_data.addr, align 8
  %1 = load i32, ptr %start_col.addr, align 4
  %2 = load ptr, ptr %workspace.addr, align 8
  call void @jsimd_convsamp_float_sse2(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_convsamp_float_sse2(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_fdct_islow() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %and1 = and i64 ptrtoint (ptr @jconst_fdct_islow_avx2 to i64), 31
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and2 = and i32 %3, 8
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.lhs.true4, label %if.end8

land.lhs.true4:                                   ; preds = %if.end
  %and5 = and i64 ptrtoint (ptr @jconst_fdct_islow_sse2 to i64), 15
  %cmp6 = icmp eq i64 %and5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true4
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_fdct_ifast() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %and1 = and i64 ptrtoint (ptr @jconst_fdct_ifast_sse2 to i64), 15
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_fdct_float() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %and1 = and i64 ptrtoint (ptr @jconst_fdct_float_sse to i64), 15
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_fdct_islow(ptr noundef %data) #0 {
entry:
  %data.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @init_simd()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and = and i32 %3, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %data.addr, align 8
  call void @jsimd_fdct_islow_avx2(ptr noundef %4)
  br label %if.end2

if.else:                                          ; preds = %if.end
  %5 = load ptr, ptr %data.addr, align 8
  call void @jsimd_fdct_islow_sse2(ptr noundef %5)
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_fdct_islow_avx2(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_fdct_islow_sse2(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_fdct_ifast(ptr noundef %data) #0 {
entry:
  %data.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  %0 = load ptr, ptr %data.addr, align 8
  call void @jsimd_fdct_ifast_sse2(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_fdct_ifast_sse2(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_fdct_float(ptr noundef %data) #0 {
entry:
  %data.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  %0 = load ptr, ptr %data.addr, align 8
  call void @jsimd_fdct_float_sse(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_fdct_float_sse(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_quantize() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and1 = and i32 %3, 8
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_quantize_float() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_quantize(ptr noundef %coef_block, ptr noundef %divisors, ptr noundef %workspace) #0 {
entry:
  %coef_block.addr = alloca ptr, align 8
  %divisors.addr = alloca ptr, align 8
  %workspace.addr = alloca ptr, align 8
  store ptr %coef_block, ptr %coef_block.addr, align 8
  store ptr %divisors, ptr %divisors.addr, align 8
  store ptr %workspace, ptr %workspace.addr, align 8
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @init_simd()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and = and i32 %3, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %coef_block.addr, align 8
  %5 = load ptr, ptr %divisors.addr, align 8
  %6 = load ptr, ptr %workspace.addr, align 8
  call void @jsimd_quantize_avx2(ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %if.end2

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %coef_block.addr, align 8
  %8 = load ptr, ptr %divisors.addr, align 8
  %9 = load ptr, ptr %workspace.addr, align 8
  call void @jsimd_quantize_sse2(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_quantize_avx2(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_quantize_sse2(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_quantize_float(ptr noundef %coef_block, ptr noundef %divisors, ptr noundef %workspace) #0 {
entry:
  %coef_block.addr = alloca ptr, align 8
  %divisors.addr = alloca ptr, align 8
  %workspace.addr = alloca ptr, align 8
  store ptr %coef_block, ptr %coef_block.addr, align 8
  store ptr %divisors, ptr %divisors.addr, align 8
  store ptr %workspace, ptr %workspace.addr, align 8
  %0 = load ptr, ptr %coef_block.addr, align 8
  %1 = load ptr, ptr %divisors.addr, align 8
  %2 = load ptr, ptr %workspace.addr, align 8
  call void @jsimd_quantize_float_sse2(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_quantize_float_sse2(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_idct_2x2() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %and1 = and i64 ptrtoint (ptr @jconst_idct_red_sse2 to i64), 15
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_idct_4x4() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %and1 = and i64 ptrtoint (ptr @jconst_idct_red_sse2 to i64), 15
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_idct_2x2(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %coef_block, ptr noundef %output_buf, i32 noundef %output_col) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %coef_block.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_col.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %coef_block, ptr %coef_block.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %output_col, ptr %output_col.addr, align 4
  %0 = load ptr, ptr %compptr.addr, align 8
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, ptr %0, i32 0, i32 20
  %1 = load ptr, ptr %dct_table, align 8
  %2 = load ptr, ptr %coef_block.addr, align 8
  %3 = load ptr, ptr %output_buf.addr, align 8
  %4 = load i32, ptr %output_col.addr, align 4
  call void @jsimd_idct_2x2_sse2(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_idct_2x2_sse2(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_idct_4x4(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %coef_block, ptr noundef %output_buf, i32 noundef %output_col) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %coef_block.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_col.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %coef_block, ptr %coef_block.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %output_col, ptr %output_col.addr, align 4
  %0 = load ptr, ptr %compptr.addr, align 8
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, ptr %0, i32 0, i32 20
  %1 = load ptr, ptr %dct_table, align 8
  %2 = load ptr, ptr %coef_block.addr, align 8
  %3 = load ptr, ptr %output_buf.addr, align 8
  %4 = load i32, ptr %output_col.addr, align 4
  call void @jsimd_idct_4x4_sse2(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_idct_4x4_sse2(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_idct_islow() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %and1 = and i64 ptrtoint (ptr @jconst_idct_islow_avx2 to i64), 31
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and2 = and i32 %3, 8
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.lhs.true4, label %if.end8

land.lhs.true4:                                   ; preds = %if.end
  %and5 = and i64 ptrtoint (ptr @jconst_idct_islow_sse2 to i64), 15
  %cmp6 = icmp eq i64 %and5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true4
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_idct_ifast() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %and1 = and i64 ptrtoint (ptr @jconst_idct_ifast_sse2 to i64), 15
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_idct_float() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %and1 = and i64 ptrtoint (ptr @jconst_idct_float_sse2 to i64), 15
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_idct_islow(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %coef_block, ptr noundef %output_buf, i32 noundef %output_col) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %coef_block.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_col.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %coef_block, ptr %coef_block.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %output_col, ptr %output_col.addr, align 4
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @init_simd()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %3 = load i32, ptr %2, align 4
  %and = and i32 %3, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %compptr.addr, align 8
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, ptr %4, i32 0, i32 20
  %5 = load ptr, ptr %dct_table, align 8
  %6 = load ptr, ptr %coef_block.addr, align 8
  %7 = load ptr, ptr %output_buf.addr, align 8
  %8 = load i32, ptr %output_col.addr, align 4
  call void @jsimd_idct_islow_avx2(ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8)
  br label %if.end3

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %compptr.addr, align 8
  %dct_table2 = getelementptr inbounds %struct.jpeg_component_info, ptr %9, i32 0, i32 20
  %10 = load ptr, ptr %dct_table2, align 8
  %11 = load ptr, ptr %coef_block.addr, align 8
  %12 = load ptr, ptr %output_buf.addr, align 8
  %13 = load i32, ptr %output_col.addr, align 4
  call void @jsimd_idct_islow_sse2(ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13)
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_idct_islow_avx2(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @jsimd_idct_islow_sse2(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_idct_ifast(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %coef_block, ptr noundef %output_buf, i32 noundef %output_col) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %coef_block.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_col.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %coef_block, ptr %coef_block.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %output_col, ptr %output_col.addr, align 4
  %0 = load ptr, ptr %compptr.addr, align 8
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, ptr %0, i32 0, i32 20
  %1 = load ptr, ptr %dct_table, align 8
  %2 = load ptr, ptr %coef_block.addr, align 8
  %3 = load ptr, ptr %output_buf.addr, align 8
  %4 = load i32, ptr %output_col.addr, align 4
  call void @jsimd_idct_ifast_sse2(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_idct_ifast_sse2(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_idct_float(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %coef_block, ptr noundef %output_buf, i32 noundef %output_col) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %coef_block.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_col.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %coef_block, ptr %coef_block.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %output_col, ptr %output_col.addr, align 4
  %0 = load ptr, ptr %compptr.addr, align 8
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, ptr %0, i32 0, i32 20
  %1 = load ptr, ptr %dct_table, align 8
  %2 = load ptr, ptr %coef_block.addr, align 8
  %3 = load ptr, ptr %output_buf.addr, align 8
  %4 = load i32, ptr %output_col.addr, align 4
  call void @jsimd_idct_float_sse2(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_idct_float_sse2(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_huff_encode_one_block() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_huffman)
  %3 = load i32, ptr %2, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %and3 = and i64 ptrtoint (ptr @jconst_huff_encode_one_block to i64), 15
  %cmp = icmp eq i64 %and3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden ptr @jsimd_huff_encode_one_block(ptr noundef %state, ptr noundef %buffer, ptr noundef %block, i32 noundef %last_dc_val, ptr noundef %dctbl, ptr noundef %actbl) #0 {
entry:
  %state.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %last_dc_val.addr = alloca i32, align 4
  %dctbl.addr = alloca ptr, align 8
  %actbl.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store ptr %block, ptr %block.addr, align 8
  store i32 %last_dc_val, ptr %last_dc_val.addr, align 4
  store ptr %dctbl, ptr %dctbl.addr, align 8
  store ptr %actbl, ptr %actbl.addr, align 8
  %0 = load ptr, ptr %state.addr, align 8
  %1 = load ptr, ptr %buffer.addr, align 8
  %2 = load ptr, ptr %block.addr, align 8
  %3 = load i32, ptr %last_dc_val.addr, align 4
  %4 = load ptr, ptr %dctbl.addr, align 8
  %5 = load ptr, ptr %actbl.addr, align 8
  %call = call ptr @jsimd_huff_encode_one_block_sse2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare ptr @jsimd_huff_encode_one_block_sse2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_encode_mcu_AC_first_prepare() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @jsimd_encode_mcu_AC_first_prepare(ptr noundef %block, ptr noundef %jpeg_natural_order_start, i32 noundef %Sl, i32 noundef %Al, ptr noundef %values, ptr noundef %zerobits) #0 {
entry:
  %block.addr = alloca ptr, align 8
  %jpeg_natural_order_start.addr = alloca ptr, align 8
  %Sl.addr = alloca i32, align 4
  %Al.addr = alloca i32, align 4
  %values.addr = alloca ptr, align 8
  %zerobits.addr = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  store ptr %jpeg_natural_order_start, ptr %jpeg_natural_order_start.addr, align 8
  store i32 %Sl, ptr %Sl.addr, align 4
  store i32 %Al, ptr %Al.addr, align 4
  store ptr %values, ptr %values.addr, align 8
  store ptr %zerobits, ptr %zerobits.addr, align 8
  %0 = load ptr, ptr %block.addr, align 8
  %1 = load ptr, ptr %jpeg_natural_order_start.addr, align 8
  %2 = load i32, ptr %Sl.addr, align 4
  %3 = load i32, ptr %Al.addr, align 4
  %4 = load ptr, ptr %values.addr, align 8
  %5 = load ptr, ptr %zerobits.addr, align 8
  call void @jsimd_encode_mcu_AC_first_prepare_sse2(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @jsimd_encode_mcu_AC_first_prepare_sse2(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_can_encode_mcu_AC_refine_prepare() #0 {
entry:
  %retval = alloca i32, align 4
  call void @init_simd()
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @simd_support)
  %1 = load i32, ptr %0, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @jsimd_encode_mcu_AC_refine_prepare(ptr noundef %block, ptr noundef %jpeg_natural_order_start, i32 noundef %Sl, i32 noundef %Al, ptr noundef %absvalues, ptr noundef %bits) #0 {
entry:
  %block.addr = alloca ptr, align 8
  %jpeg_natural_order_start.addr = alloca ptr, align 8
  %Sl.addr = alloca i32, align 4
  %Al.addr = alloca i32, align 4
  %absvalues.addr = alloca ptr, align 8
  %bits.addr = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  store ptr %jpeg_natural_order_start, ptr %jpeg_natural_order_start.addr, align 8
  store i32 %Sl, ptr %Sl.addr, align 4
  store i32 %Al, ptr %Al.addr, align 4
  store ptr %absvalues, ptr %absvalues.addr, align 8
  store ptr %bits, ptr %bits.addr, align 8
  %0 = load ptr, ptr %block.addr, align 8
  %1 = load ptr, ptr %jpeg_natural_order_start.addr, align 8
  %2 = load i32, ptr %Sl.addr, align 4
  %3 = load i32, ptr %Al.addr, align 4
  %4 = load ptr, ptr %absvalues.addr, align 8
  %5 = load ptr, ptr %bits.addr, align 8
  %call = call i32 @jsimd_encode_mcu_AC_refine_prepare_sse2(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare i32 @jsimd_encode_mcu_AC_refine_prepare_sse2(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare i32 @jpeg_simd_cpu_support() #3

; Function Attrs: alwaysinline nounwind null_pointer_is_valid ssp
define internal i32 @GETENV_S(ptr noundef %buffer, i64 noundef %buffer_size, ptr noundef %name) #5 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %buffer_size.addr = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %env = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  store i64 %buffer_size, ptr %buffer_size.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %env) #11
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %env, align 8, !annotation !3
  %0 = load ptr, ptr %buffer.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %buffer_size.addr, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then
  %call = call ptr @__errno_location() #13
  store i32 22, ptr %call, align 4
  store i32 22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %buffer_size.addr, align 8
  %cmp2 = icmp eq i64 %2, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call ptr @__errno_location() #13
  store i32 22, ptr %call4, align 4
  store i32 22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = load ptr, ptr %name.addr, align 8
  %tobool6 = icmp ne ptr %3, null
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  %4 = load ptr, ptr %buffer.addr, align 8
  store i8 0, ptr %4, align 1
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %5 = load ptr, ptr %name.addr, align 8
  %call9 = call ptr @getenv(ptr noundef %5) #11
  store ptr %call9, ptr %env, align 8
  %6 = load ptr, ptr %env, align 8
  %tobool10 = icmp ne ptr %6, null
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  %7 = load ptr, ptr %buffer.addr, align 8
  store i8 0, ptr %7, align 1
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %8 = load ptr, ptr %env, align 8
  %call13 = call i64 @strlen(ptr noundef %8) #12
  %add = add i64 %call13, 1
  %9 = load i64, ptr %buffer_size.addr, align 8
  %cmp14 = icmp ugt i64 %add, %9
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %10 = load ptr, ptr %buffer.addr, align 8
  store i8 0, ptr %10, align 1
  store i32 34, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %11 = load ptr, ptr %buffer.addr, align 8
  %12 = load ptr, ptr %env, align 8
  %13 = load i64, ptr %buffer_size.addr, align 8
  %call17 = call ptr @strncpy.inline(ptr noundef %11, ptr noundef %12, i64 noundef %13) #11
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then11, %if.then7, %if.then3, %if.else, %if.then1
  call void @llvm.lifetime.end.p0(i64 8, ptr %env) #11
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(none)
declare ptr @__errno_location() #7

; Function Attrs: nounwind null_pointer_is_valid
declare ptr @getenv(ptr noundef) #8

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

; Function Attrs: alwaysinline nobuiltin nounwind null_pointer_is_valid ssp
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #9

; Function Attrs: alwaysinline nounwind
define internal ptr @strncpy.inline(ptr noalias %__dest, ptr noalias %__src, i64 %__len) #10 {
entry:
  %__dest.addr = alloca ptr, align 8
  %__src.addr = alloca ptr, align 8
  %__len.addr = alloca i64, align 8
  store ptr %__dest, ptr %__dest.addr, align 8
  store ptr %__src, ptr %__src.addr, align 8
  store i64 %__len, ptr %__len.addr, align 8
  %0 = load ptr, ptr %__dest.addr, align 8
  %1 = load ptr, ptr %__src.addr, align 8
  %2 = load i64, ptr %__len.addr, align 8
  %3 = load ptr, ptr %__dest.addr, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call = call ptr @__strncpy_chk(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %4) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

attributes #0 = { nounwind null_pointer_is_valid ssp "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { alwaysinline nounwind null_pointer_is_valid ssp "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind null_pointer_is_valid willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind null_pointer_is_valid willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { alwaysinline nobuiltin nounwind null_pointer_is_valid ssp "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { alwaysinline nounwind "min-legal-vector-width"="0" }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"auto-init"}
