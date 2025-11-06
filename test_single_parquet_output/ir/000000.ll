; ModuleID = '<stdin>'
source_filename = "/local-ssd/duckdb-2yf7npukr2iavk33jc4ewnzpbnznwfqd-build/aidengro/spack-stage-duckdb-0.8.1-2yf7npukr2iavk33jc4ewnzpbnznwfqd/spack-src/third_party/mbedtls/library/bignum.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_mpi = type { i32, i64, ptr }

@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @mbedtls_mpi_init(ptr noundef %X) #0 {
entry:
  %X.addr = alloca ptr, align 8
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.mbedtls_mpi, ptr %0, i32 0, i32 0
  store i32 1, ptr %s, align 8, !tbaa !8
  %1 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %1, i32 0, i32 1
  store i64 0, ptr %n, align 8, !tbaa !12
  %2 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %2, i32 0, i32 2
  store ptr null, ptr %p, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @mbedtls_mpi_free(ptr noundef %X) #1 {
entry:
  %X.addr = alloca ptr, align 8
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %p, align 8, !tbaa !13
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p3 = getelementptr inbounds %struct.mbedtls_mpi, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %p3, align 8, !tbaa !13
  %5 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %n, align 8, !tbaa !12
  call void @_ZL19mbedtls_mpi_zeroizePmm(ptr noundef %4, i64 noundef %6)
  %7 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p4 = getelementptr inbounds %struct.mbedtls_mpi, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %p4, align 8, !tbaa !13
  call void @free(ptr noundef %8) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %9 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.mbedtls_mpi, ptr %9, i32 0, i32 0
  store i32 1, ptr %s, align 8, !tbaa !8
  %10 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n6 = getelementptr inbounds %struct.mbedtls_mpi, ptr %10, i32 0, i32 1
  store i64 0, ptr %n6, align 8, !tbaa !12
  %11 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p7 = getelementptr inbounds %struct.mbedtls_mpi, ptr %11, i32 0, i32 2
  store ptr null, ptr %p7, align 8, !tbaa !13
  br label %return

return:                                           ; preds = %if.end5, %if.then
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL19mbedtls_mpi_zeroizePmm(ptr noundef %v, i64 noundef %n) #1 {
entry:
  %v.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %1 = load i64, ptr %n.addr, align 8, !tbaa !14
  %mul = mul i64 8, %1
  call void @mbedtls_platform_zeroize(ptr noundef %0, i64 noundef %mul)
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_grow(ptr noundef %X, i64 noundef %nblimbs) #1 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %nblimbs.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store i64 %nblimbs, ptr %nblimbs.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %0 = load i64, ptr %nblimbs.addr, align 8, !tbaa !14
  %cmp = icmp ugt i64 %0, 10000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 -16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.end
  %1 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %1, i32 0, i32 1
  %2 = load i64, ptr %n, align 8, !tbaa !12
  %3 = load i64, ptr %nblimbs.addr, align 8, !tbaa !14
  %cmp1 = icmp ult i64 %2, %3
  br i1 %cmp1, label %if.then2, label %if.end17

if.then2:                                         ; preds = %if.end
  %4 = load i64, ptr %nblimbs.addr, align 8, !tbaa !14
  %call = call noalias ptr @calloc(i64 noundef %4, i64 noundef 8) #11
  store ptr %call, ptr %p, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  store i32 -16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  %5 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p6 = getelementptr inbounds %struct.mbedtls_mpi, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %p6, align 8, !tbaa !13
  %cmp7 = icmp ne ptr %6, null
  br i1 %cmp7, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end5
  %7 = load ptr, ptr %p, align 8, !tbaa !4
  %8 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p9 = getelementptr inbounds %struct.mbedtls_mpi, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %p9, align 8, !tbaa !13
  %10 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n10 = getelementptr inbounds %struct.mbedtls_mpi, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %n10, align 8, !tbaa !12
  %mul = mul i64 %11, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %9, i64 %mul, i1 false)
  %12 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p11 = getelementptr inbounds %struct.mbedtls_mpi, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %p11, align 8, !tbaa !13
  %14 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n12 = getelementptr inbounds %struct.mbedtls_mpi, ptr %14, i32 0, i32 1
  %15 = load i64, ptr %n12, align 8, !tbaa !12
  call void @_ZL19mbedtls_mpi_zeroizePmm(ptr noundef %13, i64 noundef %15)
  %16 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p13 = getelementptr inbounds %struct.mbedtls_mpi, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %p13, align 8, !tbaa !13
  call void @free(ptr noundef %17) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end5
  %18 = load i64, ptr %nblimbs.addr, align 8, !tbaa !14
  %19 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n15 = getelementptr inbounds %struct.mbedtls_mpi, ptr %19, i32 0, i32 1
  store i64 %18, ptr %n15, align 8, !tbaa !12
  %20 = load ptr, ptr %p, align 8, !tbaa !4
  %21 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p16 = getelementptr inbounds %struct.mbedtls_mpi, ptr %21, i32 0, i32 2
  store ptr %20, ptr %p16, align 8, !tbaa !13
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_shrink(ptr noundef %X, i64 noundef %nblimbs) #1 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %nblimbs.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store i64 %nblimbs, ptr %nblimbs.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %0 = load i64, ptr %nblimbs.addr, align 8, !tbaa !14
  %cmp = icmp ugt i64 %0, 10000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 -16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.end
  %1 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %1, i32 0, i32 1
  %2 = load i64, ptr %n, align 8, !tbaa !12
  %3 = load i64, ptr %nblimbs.addr, align 8, !tbaa !14
  %cmp1 = icmp ule i64 %2, %3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %5 = load i64, ptr %nblimbs.addr, align 8, !tbaa !14
  %call = call i32 @mbedtls_mpi_grow(ptr noundef %4, i64 noundef %5)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n4 = getelementptr inbounds %struct.mbedtls_mpi, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %n4, align 8, !tbaa !12
  %sub = sub i64 %7, 1
  store i64 %sub, ptr %i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %8 = load i64, ptr %i, align 8, !tbaa !14
  %cmp5 = icmp ugt i64 %8, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p6 = getelementptr inbounds %struct.mbedtls_mpi, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %p6, align 8, !tbaa !13
  %11 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i64, ptr %10, i64 %11
  %12 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %cmp7 = icmp ne i64 %12, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  br label %for.end

if.end9:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %13 = load i64, ptr %i, align 8, !tbaa !14
  %dec = add i64 %13, -1
  store i64 %dec, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %if.then8, %for.cond
  %14 = load i64, ptr %i, align 8, !tbaa !14
  %inc = add i64 %14, 1
  store i64 %inc, ptr %i, align 8, !tbaa !14
  %15 = load i64, ptr %i, align 8, !tbaa !14
  %16 = load i64, ptr %nblimbs.addr, align 8, !tbaa !14
  %cmp10 = icmp ult i64 %15, %16
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  %17 = load i64, ptr %nblimbs.addr, align 8, !tbaa !14
  store i64 %17, ptr %i, align 8, !tbaa !14
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %for.end
  %18 = load i64, ptr %i, align 8, !tbaa !14
  %call13 = call noalias ptr @calloc(i64 noundef %18, i64 noundef 8) #11
  store ptr %call13, ptr %p, align 8, !tbaa !4
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  store i32 -16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %19 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p17 = getelementptr inbounds %struct.mbedtls_mpi, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %p17, align 8, !tbaa !13
  %cmp18 = icmp ne ptr %20, null
  br i1 %cmp18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end16
  %21 = load ptr, ptr %p, align 8, !tbaa !4
  %22 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p20 = getelementptr inbounds %struct.mbedtls_mpi, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %p20, align 8, !tbaa !13
  %24 = load i64, ptr %i, align 8, !tbaa !14
  %mul = mul i64 %24, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %21, ptr align 8 %23, i64 %mul, i1 false)
  %25 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.mbedtls_mpi, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %p21, align 8, !tbaa !13
  %27 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n22 = getelementptr inbounds %struct.mbedtls_mpi, ptr %27, i32 0, i32 1
  %28 = load i64, ptr %n22, align 8, !tbaa !12
  call void @_ZL19mbedtls_mpi_zeroizePmm(ptr noundef %26, i64 noundef %28)
  %29 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p23 = getelementptr inbounds %struct.mbedtls_mpi, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %p23, align 8, !tbaa !13
  call void @free(ptr noundef %30) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end16
  %31 = load i64, ptr %i, align 8, !tbaa !14
  %32 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n25 = getelementptr inbounds %struct.mbedtls_mpi, ptr %32, i32 0, i32 1
  store i64 %31, ptr %n25, align 8, !tbaa !12
  %33 = load ptr, ptr %p, align 8, !tbaa !4
  %34 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p26 = getelementptr inbounds %struct.mbedtls_mpi, ptr %34, i32 0, i32 2
  store ptr %33, ptr %p26, align 8, !tbaa !13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then15, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_copy(ptr noundef %X, ptr noundef %Y) #1 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %Y.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %Y, ptr %Y.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 0, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  %0 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %Y.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end3
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup37

if.end:                                           ; preds = %do.end3
  %2 = load ptr, ptr %Y.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %n, align 8, !tbaa !12
  %cmp4 = icmp eq i64 %3, 0
  br i1 %cmp4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end
  %4 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n6 = getelementptr inbounds %struct.mbedtls_mpi, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %n6, align 8, !tbaa !12
  %cmp7 = icmp ne i64 %5, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then5
  %6 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.mbedtls_mpi, ptr %6, i32 0, i32 0
  store i32 1, ptr %s, align 8, !tbaa !8
  %7 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %p, align 8, !tbaa !13
  %9 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n9 = getelementptr inbounds %struct.mbedtls_mpi, ptr %9, i32 0, i32 1
  %10 = load i64, ptr %n9, align 8, !tbaa !12
  %mul = mul i64 %10, 8
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 %mul, i1 false)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then5
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup37

if.end11:                                         ; preds = %if.end
  %11 = load ptr, ptr %Y.addr, align 8, !tbaa !4
  %n12 = getelementptr inbounds %struct.mbedtls_mpi, ptr %11, i32 0, i32 1
  %12 = load i64, ptr %n12, align 8, !tbaa !12
  %sub = sub i64 %12, 1
  store i64 %sub, ptr %i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %13 = load i64, ptr %i, align 8, !tbaa !14
  %cmp13 = icmp ugt i64 %13, 0
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %Y.addr, align 8, !tbaa !4
  %p14 = getelementptr inbounds %struct.mbedtls_mpi, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %p14, align 8, !tbaa !13
  %16 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i64, ptr %15, i64 %16
  %17 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %cmp15 = icmp ne i64 %17, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body
  br label %for.end

if.end17:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %18 = load i64, ptr %i, align 8, !tbaa !14
  %dec = add i64 %18, -1
  store i64 %dec, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %if.then16, %for.cond
  %19 = load i64, ptr %i, align 8, !tbaa !14
  %inc = add i64 %19, 1
  store i64 %inc, ptr %i, align 8, !tbaa !14
  %20 = load ptr, ptr %Y.addr, align 8, !tbaa !4
  %s18 = getelementptr inbounds %struct.mbedtls_mpi, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %s18, align 8, !tbaa !8
  %22 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s19 = getelementptr inbounds %struct.mbedtls_mpi, ptr %22, i32 0, i32 0
  store i32 %21, ptr %s19, align 8, !tbaa !8
  %23 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n20 = getelementptr inbounds %struct.mbedtls_mpi, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %n20, align 8, !tbaa !12
  %25 = load i64, ptr %i, align 8, !tbaa !14
  %cmp21 = icmp ult i64 %24, %25
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %for.end
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  %26 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %27 = load i64, ptr %i, align 8, !tbaa !14
  %call = call i32 @mbedtls_mpi_grow(ptr noundef %26, i64 noundef %27)
  store i32 %call, ptr %ret, align 4, !tbaa !17
  %cmp24 = icmp ne i32 %call, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.body23
  br label %cleanup

if.end26:                                         ; preds = %do.body23
  br label %do.cond27

do.cond27:                                        ; preds = %if.end26
  br label %do.end28

do.end28:                                         ; preds = %do.cond27
  br label %if.end33

if.else:                                          ; preds = %for.end
  %28 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p29 = getelementptr inbounds %struct.mbedtls_mpi, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %p29, align 8, !tbaa !13
  %30 = load i64, ptr %i, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i64, ptr %29, i64 %30
  %31 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n30 = getelementptr inbounds %struct.mbedtls_mpi, ptr %31, i32 0, i32 1
  %32 = load i64, ptr %n30, align 8, !tbaa !12
  %33 = load i64, ptr %i, align 8, !tbaa !14
  %sub31 = sub i64 %32, %33
  %mul32 = mul i64 %sub31, 8
  call void @llvm.memset.p0.i64(ptr align 8 %add.ptr, i8 0, i64 %mul32, i1 false)
  br label %if.end33

if.end33:                                         ; preds = %if.else, %do.end28
  %34 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p34 = getelementptr inbounds %struct.mbedtls_mpi, ptr %34, i32 0, i32 2
  %35 = load ptr, ptr %p34, align 8, !tbaa !13
  %36 = load ptr, ptr %Y.addr, align 8, !tbaa !4
  %p35 = getelementptr inbounds %struct.mbedtls_mpi, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %p35, align 8, !tbaa !13
  %38 = load i64, ptr %i, align 8, !tbaa !14
  %mul36 = mul i64 %38, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %35, ptr align 8 %37, i64 %mul36, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then25
  %39 = load i32, ptr %ret, align 4, !tbaa !17
  store i32 %39, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup37

cleanup37:                                        ; preds = %cleanup, %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @mbedtls_mpi_swap(ptr noundef %X, ptr noundef %Y) #0 {
entry:
  %X.addr = alloca ptr, align 8
  %Y.addr = alloca ptr, align 8
  %T = alloca %struct.mbedtls_mpi, align 8
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %Y, ptr %Y.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 24, ptr %T) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  %0 = load ptr, ptr %X.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %T, ptr align 8 %0, i64 24, i1 false)
  %1 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %Y.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 24, i1 false)
  %3 = load ptr, ptr %Y.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %T, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr %T) #10
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_lset(ptr noundef %X, i64 noundef %z) #1 {
entry:
  %X.addr = alloca ptr, align 8
  %z.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store i64 %z, ptr %z.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 -110, ptr %ret, align 4, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %0 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_mpi_grow(ptr noundef %0, i64 noundef 1)
  store i32 %call, ptr %ret, align 4, !tbaa !17
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body1
  br label %cleanup

if.end:                                           ; preds = %do.body1
  br label %do.cond2

do.cond2:                                         ; preds = %if.end
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  %1 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %p, align 8, !tbaa !13
  %3 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %n, align 8, !tbaa !12
  %mul = mul i64 %4, 8
  call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 %mul, i1 false)
  %5 = load i64, ptr %z.addr, align 8, !tbaa !14
  %cmp4 = icmp slt i64 %5, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end3
  %6 = load i64, ptr %z.addr, align 8, !tbaa !14
  %sub = sub nsw i64 0, %6
  br label %cond.end

cond.false:                                       ; preds = %do.end3
  %7 = load i64, ptr %z.addr, align 8, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %7, %cond.false ]
  %8 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p5 = getelementptr inbounds %struct.mbedtls_mpi, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %p5, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i64, ptr %9, i64 0
  store i64 %cond, ptr %arrayidx, align 8, !tbaa !14
  %10 = load i64, ptr %z.addr, align 8, !tbaa !14
  %cmp6 = icmp slt i64 %10, 0
  %11 = zext i1 %cmp6 to i64
  %cond7 = select i1 %cmp6, i32 -1, i32 1
  %12 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.mbedtls_mpi, ptr %12, i32 0, i32 0
  store i32 %cond7, ptr %s, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %13 = load i32, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  ret i32 %13
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @mbedtls_mpi_get_bit(ptr noundef %X, i64 noundef %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store i64 %pos, ptr %pos.addr, align 8, !tbaa !14
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %n, align 8, !tbaa !12
  %mul = mul i64 %1, 64
  %2 = load i64, ptr %pos.addr, align 8, !tbaa !14
  %cmp = icmp ule i64 %mul, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  %3 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %p, align 8, !tbaa !13
  %5 = load i64, ptr %pos.addr, align 8, !tbaa !14
  %div = udiv i64 %5, 64
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %div
  %6 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %7 = load i64, ptr %pos.addr, align 8, !tbaa !14
  %rem = urem i64 %7, 64
  %shr = lshr i64 %6, %rem
  %and = and i64 %shr, 1
  %conv = trunc i64 %and to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_set_bit(ptr noundef %X, i64 noundef %pos, i8 noundef zeroext %val) #1 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %val.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %off = alloca i64, align 8
  %idx = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store i64 %pos, ptr %pos.addr, align 8, !tbaa !14
  store i8 %val, ptr %val.addr, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 0, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #10
  %0 = load i64, ptr %pos.addr, align 8, !tbaa !14
  %div = udiv i64 %0, 64
  store i64 %div, ptr %off, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #10
  %1 = load i64, ptr %pos.addr, align 8, !tbaa !14
  %rem = urem i64 %1, 64
  store i64 %rem, ptr %idx, align 8, !tbaa !14
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %2 = load i8, ptr %val.addr, align 1, !tbaa !19
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %3 = load i8, ptr %val.addr, align 1, !tbaa !19
  %conv1 = zext i8 %3 to i32
  %cmp2 = icmp ne i32 %conv1, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20

if.end:                                           ; preds = %land.lhs.true, %do.end
  %4 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %n, align 8, !tbaa !12
  %mul = mul i64 %5, 64
  %6 = load i64, ptr %pos.addr, align 8, !tbaa !14
  %cmp3 = icmp ule i64 %mul, %6
  br i1 %cmp3, label %if.then4, label %if.end15

if.then4:                                         ; preds = %if.end
  %7 = load i8, ptr %val.addr, align 1, !tbaa !19
  %conv5 = zext i8 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20

if.end8:                                          ; preds = %if.then4
  br label %do.body9

do.body9:                                         ; preds = %if.end8
  %8 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %9 = load i64, ptr %off, align 8, !tbaa !14
  %add = add i64 %9, 1
  %call = call i32 @mbedtls_mpi_grow(ptr noundef %8, i64 noundef %add)
  store i32 %call, ptr %ret, align 4, !tbaa !17
  %cmp10 = icmp ne i32 %call, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.body9
  br label %cleanup

if.end12:                                         ; preds = %do.body9
  br label %do.cond13

do.cond13:                                        ; preds = %if.end12
  br label %do.end14

do.end14:                                         ; preds = %do.cond13
  br label %if.end15

if.end15:                                         ; preds = %do.end14, %if.end
  %10 = load i64, ptr %idx, align 8, !tbaa !14
  %shl = shl i64 1, %10
  %not = xor i64 %shl, -1
  %11 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %p, align 8, !tbaa !13
  %13 = load i64, ptr %off, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i64, ptr %12, i64 %13
  %14 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %and = and i64 %14, %not
  store i64 %and, ptr %arrayidx, align 8, !tbaa !14
  %15 = load i8, ptr %val.addr, align 1, !tbaa !19
  %conv16 = zext i8 %15 to i64
  %16 = load i64, ptr %idx, align 8, !tbaa !14
  %shl17 = shl i64 %conv16, %16
  %17 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p18 = getelementptr inbounds %struct.mbedtls_mpi, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %p18, align 8, !tbaa !13
  %19 = load i64, ptr %off, align 8, !tbaa !14
  %arrayidx19 = getelementptr inbounds i64, ptr %18, i64 %19
  %20 = load i64, ptr %arrayidx19, align 8, !tbaa !14
  %or = or i64 %20, %shl17
  store i64 %or, ptr %arrayidx19, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then11
  %21 = load i32, ptr %ret, align 4, !tbaa !17
  store i32 %21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20

cleanup20:                                        ; preds = %cleanup, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @mbedtls_mpi_lsb(ptr noundef %X) #0 {
entry:
  %retval = alloca i64, align 8
  %X.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %count = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #10
  store i64 0, ptr %count, align 8, !tbaa !14
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i64 0, ptr %i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %do.end
  %0 = load i64, ptr %i, align 8, !tbaa !14
  %1 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %1, i32 0, i32 1
  %2 = load i64, ptr %n, align 8, !tbaa !12
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %j, align 8, !tbaa !14
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i64, ptr %j, align 8, !tbaa !14
  %cmp2 = icmp ult i64 %3, 64
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %p, align 8, !tbaa !13
  %6 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i64, ptr %5, i64 %6
  %7 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %8 = load i64, ptr %j, align 8, !tbaa !14
  %shr = lshr i64 %7, %8
  %and = and i64 %shr, 1
  %cmp4 = icmp ne i64 %and, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %9 = load i64, ptr %count, align 8, !tbaa !14
  store i64 %9, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i64, ptr %j, align 8, !tbaa !14
  %inc = add i64 %10, 1
  store i64 %inc, ptr %j, align 8, !tbaa !14
  %11 = load i64, ptr %count, align 8, !tbaa !14
  %inc5 = add i64 %11, 1
  store i64 %inc5, ptr %count, align 8, !tbaa !14
  br label %for.cond1, !llvm.loop !20

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %12 = load i64, ptr %i, align 8, !tbaa !14
  %inc7 = add i64 %12, 1
  store i64 %inc7, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !21

for.end8:                                         ; preds = %for.cond
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %13 = load i64, ptr %retval, align 8
  ret i64 %13
}

; Function Attrs: mustprogress uwtable
define hidden i64 @mbedtls_mpi_bitlen(ptr noundef %X) #1 {
entry:
  %retval = alloca i64, align 8
  %X.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10
  %0 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %n, align 8, !tbaa !12
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n1 = getelementptr inbounds %struct.mbedtls_mpi, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %n1, align 8, !tbaa !12
  %sub = sub i64 %3, 1
  store i64 %sub, ptr %i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, ptr %i, align 8, !tbaa !14
  %cmp2 = icmp ugt i64 %4, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %p, align 8, !tbaa !13
  %7 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i64, ptr %6, i64 %7
  %8 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %cmp3 = icmp ne i64 %8, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  br label %for.end

if.end5:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %9 = load i64, ptr %i, align 8, !tbaa !14
  %dec = add i64 %9, -1
  store i64 %dec, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %if.then4, %for.cond
  %10 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p6 = getelementptr inbounds %struct.mbedtls_mpi, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %p6, align 8, !tbaa !13
  %12 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx7 = getelementptr inbounds i64, ptr %11, i64 %12
  %13 = load i64, ptr %arrayidx7, align 8, !tbaa !14
  %call = call noundef i64 @_ZL11mbedtls_clzm(i64 noundef %13)
  %sub8 = sub i64 64, %call
  store i64 %sub8, ptr %j, align 8, !tbaa !14
  %14 = load i64, ptr %i, align 8, !tbaa !14
  %mul = mul i64 %14, 64
  %15 = load i64, ptr %j, align 8, !tbaa !14
  %add = add i64 %mul, %15
  store i64 %add, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %16 = load i64, ptr %retval, align 8
  ret i64 %16
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @_ZL11mbedtls_clzm(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %j = alloca i64, align 8
  %mask = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10
  store i64 -9223372036854775808, ptr %mask, align 8, !tbaa !14
  store i64 0, ptr %j, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %j, align 8, !tbaa !14
  %cmp = icmp ult i64 %0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %x.addr, align 8, !tbaa !14
  %2 = load i64, ptr %mask, align 8, !tbaa !14
  %and = and i64 %1, %2
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %3 = load i64, ptr %mask, align 8, !tbaa !14
  %shr = lshr i64 %3, 1
  store i64 %shr, ptr %mask, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i64, ptr %j, align 8, !tbaa !14
  %inc = add i64 %4, 1
  store i64 %inc, ptr %j, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %if.then, %for.cond
  %5 = load i64, ptr %j, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10
  ret i64 %5
}

; Function Attrs: mustprogress uwtable
define hidden i64 @mbedtls_mpi_size(ptr noundef %X) #1 {
entry:
  %X.addr = alloca ptr, align 8
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %call = call i64 @mbedtls_mpi_bitlen(ptr noundef %0)
  %add = add i64 %call, 7
  %shr = lshr i64 %add, 3
  ret i64 %shr
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_read_string(ptr noundef %X, i32 noundef %radix, ptr noundef %s) #1 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %radix.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %slen = alloca i64, align 8
  %n = alloca i64, align 8
  %sign = alloca i32, align 4
  %d = alloca i64, align 8
  %T = alloca %struct.mbedtls_mpi, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store i32 %radix, ptr %radix.addr, align 4, !tbaa !17
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 -110, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %slen) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %sign) #10
  store i32 1, ptr %sign, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %T) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  %0 = load i32, ptr %radix.addr, align 4, !tbaa !17
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end3
  %1 = load i32, ptr %radix.addr, align 4, !tbaa !17
  %cmp4 = icmp sgt i32 %1, 16
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end3
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92

if.end:                                           ; preds = %lor.lhs.false
  call void @mbedtls_mpi_init(ptr noundef %T)
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !19
  %conv = sext i8 %3 to i32
  %cmp5 = icmp eq i32 %conv, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %4 = load ptr, ptr %X.addr, align 8, !tbaa !4
  call void @mbedtls_mpi_free(ptr noundef %4)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92

if.end7:                                          ; preds = %if.end
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx8, align 1, !tbaa !19
  %conv9 = sext i8 %6 to i32
  %cmp10 = icmp eq i32 %conv9, 45
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  %7 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8, !tbaa !4
  store i32 -1, ptr %sign, align 4, !tbaa !17
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end7
  %8 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call i64 @strlen(ptr noundef %8) #12
  store i64 %call, ptr %slen, align 8, !tbaa !14
  %9 = load i32, ptr %radix.addr, align 4, !tbaa !17
  %cmp13 = icmp eq i32 %9, 16
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %10 = load i64, ptr %slen, align 8, !tbaa !14
  %cmp15 = icmp ugt i64 %10, 4611686018427387903
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then14
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92

if.end17:                                         ; preds = %if.then14
  %11 = load i64, ptr %slen, align 8, !tbaa !14
  %shl = shl i64 %11, 2
  %div = udiv i64 %shl, 64
  %12 = load i64, ptr %slen, align 8, !tbaa !14
  %shl18 = shl i64 %12, 2
  %rem = urem i64 %shl18, 64
  %cmp19 = icmp ne i64 %rem, 0
  %conv20 = zext i1 %cmp19 to i64
  %add = add i64 %div, %conv20
  store i64 %add, ptr %n, align 8, !tbaa !14
  br label %do.body21

do.body21:                                        ; preds = %if.end17
  %13 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %14 = load i64, ptr %n, align 8, !tbaa !14
  %call22 = call i32 @mbedtls_mpi_grow(ptr noundef %13, i64 noundef %14)
  store i32 %call22, ptr %ret, align 4, !tbaa !17
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %do.body21
  br label %cleanup

if.end25:                                         ; preds = %do.body21
  br label %do.cond26

do.cond26:                                        ; preds = %if.end25
  br label %do.end27

do.end27:                                         ; preds = %do.cond26
  br label %do.body28

do.body28:                                        ; preds = %do.end27
  %15 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %call29 = call i32 @mbedtls_mpi_lset(ptr noundef %15, i64 noundef 0)
  store i32 %call29, ptr %ret, align 4, !tbaa !17
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.body28
  br label %cleanup

if.end32:                                         ; preds = %do.body28
  br label %do.cond33

do.cond33:                                        ; preds = %if.end32
  br label %do.end34

do.end34:                                         ; preds = %do.cond33
  %16 = load i64, ptr %slen, align 8, !tbaa !14
  store i64 %16, ptr %i, align 8, !tbaa !14
  store i64 0, ptr %j, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end34
  %17 = load i64, ptr %i, align 8, !tbaa !14
  %cmp35 = icmp ugt i64 %17, 0
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body36

do.body36:                                        ; preds = %for.body
  %18 = load i32, ptr %radix.addr, align 4, !tbaa !17
  %19 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %20 = load i64, ptr %i, align 8, !tbaa !14
  %sub = sub i64 %20, 1
  %arrayidx37 = getelementptr inbounds i8, ptr %19, i64 %sub
  %21 = load i8, ptr %arrayidx37, align 1, !tbaa !19
  %call38 = call noundef i32 @_ZL13mpi_get_digitPmic(ptr noundef %d, i32 noundef %18, i8 noundef signext %21)
  store i32 %call38, ptr %ret, align 4, !tbaa !17
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %do.body36
  br label %cleanup

if.end41:                                         ; preds = %do.body36
  br label %do.cond42

do.cond42:                                        ; preds = %if.end41
  br label %do.end43

do.end43:                                         ; preds = %do.cond42
  %22 = load i64, ptr %d, align 8, !tbaa !14
  %23 = load i64, ptr %j, align 8, !tbaa !14
  %rem44 = urem i64 %23, 16
  %shl45 = shl i64 %rem44, 2
  %shl46 = shl i64 %22, %shl45
  %24 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %p, align 8, !tbaa !13
  %26 = load i64, ptr %j, align 8, !tbaa !14
  %div47 = udiv i64 %26, 16
  %arrayidx48 = getelementptr inbounds i64, ptr %25, i64 %div47
  %27 = load i64, ptr %arrayidx48, align 8, !tbaa !14
  %or = or i64 %27, %shl46
  store i64 %or, ptr %arrayidx48, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %do.end43
  %28 = load i64, ptr %i, align 8, !tbaa !14
  %dec = add i64 %28, -1
  store i64 %dec, ptr %i, align 8, !tbaa !14
  %29 = load i64, ptr %j, align 8, !tbaa !14
  %inc = add i64 %29, 1
  store i64 %inc, ptr %j, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  br label %if.end85

if.else:                                          ; preds = %if.end12
  br label %do.body49

do.body49:                                        ; preds = %if.else
  %30 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %call50 = call i32 @mbedtls_mpi_lset(ptr noundef %30, i64 noundef 0)
  store i32 %call50, ptr %ret, align 4, !tbaa !17
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %do.body49
  br label %cleanup

if.end53:                                         ; preds = %do.body49
  br label %do.cond54

do.cond54:                                        ; preds = %if.end53
  br label %do.end55

do.end55:                                         ; preds = %do.cond54
  store i64 0, ptr %i, align 8, !tbaa !14
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc82, %do.end55
  %31 = load i64, ptr %i, align 8, !tbaa !14
  %32 = load i64, ptr %slen, align 8, !tbaa !14
  %cmp57 = icmp ult i64 %31, %32
  br i1 %cmp57, label %for.body58, label %for.end84

for.body58:                                       ; preds = %for.cond56
  br label %do.body59

do.body59:                                        ; preds = %for.body58
  %33 = load i32, ptr %radix.addr, align 4, !tbaa !17
  %34 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %35 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx60 = getelementptr inbounds i8, ptr %34, i64 %35
  %36 = load i8, ptr %arrayidx60, align 1, !tbaa !19
  %call61 = call noundef i32 @_ZL13mpi_get_digitPmic(ptr noundef %d, i32 noundef %33, i8 noundef signext %36)
  store i32 %call61, ptr %ret, align 4, !tbaa !17
  %cmp62 = icmp ne i32 %call61, 0
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %do.body59
  br label %cleanup

if.end64:                                         ; preds = %do.body59
  br label %do.cond65

do.cond65:                                        ; preds = %if.end64
  br label %do.end66

do.end66:                                         ; preds = %do.cond65
  br label %do.body67

do.body67:                                        ; preds = %do.end66
  %37 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %38 = load i32, ptr %radix.addr, align 4, !tbaa !17
  %conv68 = sext i32 %38 to i64
  %call69 = call i32 @mbedtls_mpi_mul_int(ptr noundef %T, ptr noundef %37, i64 noundef %conv68)
  store i32 %call69, ptr %ret, align 4, !tbaa !17
  %cmp70 = icmp ne i32 %call69, 0
  br i1 %cmp70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %do.body67
  br label %cleanup

if.end72:                                         ; preds = %do.body67
  br label %do.cond73

do.cond73:                                        ; preds = %if.end72
  br label %do.end74

do.end74:                                         ; preds = %do.cond73
  br label %do.body75

do.body75:                                        ; preds = %do.end74
  %39 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %40 = load i64, ptr %d, align 8, !tbaa !14
  %call76 = call i32 @mbedtls_mpi_add_int(ptr noundef %39, ptr noundef %T, i64 noundef %40)
  store i32 %call76, ptr %ret, align 4, !tbaa !17
  %cmp77 = icmp ne i32 %call76, 0
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %do.body75
  br label %cleanup

if.end79:                                         ; preds = %do.body75
  br label %do.cond80

do.cond80:                                        ; preds = %if.end79
  br label %do.end81

do.end81:                                         ; preds = %do.cond80
  br label %for.inc82

for.inc82:                                        ; preds = %do.end81
  %41 = load i64, ptr %i, align 8, !tbaa !14
  %inc83 = add i64 %41, 1
  store i64 %inc83, ptr %i, align 8, !tbaa !14
  br label %for.cond56, !llvm.loop !25

for.end84:                                        ; preds = %for.cond56
  br label %if.end85

if.end85:                                         ; preds = %for.end84, %for.end
  %42 = load i32, ptr %sign, align 4, !tbaa !17
  %cmp86 = icmp slt i32 %42, 0
  br i1 %cmp86, label %land.lhs.true, label %if.end91

land.lhs.true:                                    ; preds = %if.end85
  %43 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %call87 = call i64 @mbedtls_mpi_bitlen(ptr noundef %43)
  %cmp88 = icmp ne i64 %call87, 0
  br i1 %cmp88, label %if.then89, label %if.end91

if.then89:                                        ; preds = %land.lhs.true
  %44 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s90 = getelementptr inbounds %struct.mbedtls_mpi, ptr %44, i32 0, i32 0
  store i32 -1, ptr %s90, align 8, !tbaa !8
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %land.lhs.true, %if.end85
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %if.then78, %if.then71, %if.then63, %if.then52, %if.then40, %if.then31, %if.then24
  call void @mbedtls_mpi_free(ptr noundef %T)
  %45 = load i32, ptr %ret, align 4, !tbaa !17
  store i32 %45, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92

cleanup92:                                        ; preds = %cleanup, %if.then16, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %T) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %sign) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %slen) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  %46 = load i32, ptr %retval, align 4
  ret i32 %46
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #7

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL13mpi_get_digitPmic(ptr noundef %d, i32 noundef %radix, i8 noundef signext %c) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca ptr, align 8
  %radix.addr = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store ptr %d, ptr %d.addr, align 8, !tbaa !4
  store i32 %radix, ptr %radix.addr, align 4, !tbaa !17
  store i8 %c, ptr %c.addr, align 1, !tbaa !19
  %0 = load ptr, ptr %d.addr, align 8, !tbaa !4
  store i64 255, ptr %0, align 8, !tbaa !14
  %1 = load i8, ptr %c.addr, align 1, !tbaa !19
  %conv = sext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, ptr %c.addr, align 1, !tbaa !19
  %conv1 = sext i8 %2 to i32
  %cmp2 = icmp sle i32 %conv1, 57
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8, ptr %c.addr, align 1, !tbaa !19
  %conv3 = sext i8 %3 to i32
  %sub = sub nsw i32 %conv3, 48
  %conv4 = sext i32 %sub to i64
  %4 = load ptr, ptr %d.addr, align 8, !tbaa !4
  store i64 %conv4, ptr %4, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i8, ptr %c.addr, align 1, !tbaa !19
  %conv5 = sext i8 %5 to i32
  %cmp6 = icmp sge i32 %conv5, 65
  br i1 %cmp6, label %land.lhs.true7, label %if.end14

land.lhs.true7:                                   ; preds = %if.end
  %6 = load i8, ptr %c.addr, align 1, !tbaa !19
  %conv8 = sext i8 %6 to i32
  %cmp9 = icmp sle i32 %conv8, 70
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %land.lhs.true7
  %7 = load i8, ptr %c.addr, align 1, !tbaa !19
  %conv11 = sext i8 %7 to i32
  %sub12 = sub nsw i32 %conv11, 55
  %conv13 = sext i32 %sub12 to i64
  %8 = load ptr, ptr %d.addr, align 8, !tbaa !4
  store i64 %conv13, ptr %8, align 8, !tbaa !14
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %land.lhs.true7, %if.end
  %9 = load i8, ptr %c.addr, align 1, !tbaa !19
  %conv15 = sext i8 %9 to i32
  %cmp16 = icmp sge i32 %conv15, 97
  br i1 %cmp16, label %land.lhs.true17, label %if.end24

land.lhs.true17:                                  ; preds = %if.end14
  %10 = load i8, ptr %c.addr, align 1, !tbaa !19
  %conv18 = sext i8 %10 to i32
  %cmp19 = icmp sle i32 %conv18, 102
  br i1 %cmp19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %land.lhs.true17
  %11 = load i8, ptr %c.addr, align 1, !tbaa !19
  %conv21 = sext i8 %11 to i32
  %sub22 = sub nsw i32 %conv21, 87
  %conv23 = sext i32 %sub22 to i64
  %12 = load ptr, ptr %d.addr, align 8, !tbaa !4
  store i64 %conv23, ptr %12, align 8, !tbaa !14
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %land.lhs.true17, %if.end14
  %13 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %14 = load i64, ptr %13, align 8, !tbaa !14
  %15 = load i32, ptr %radix.addr, align 4, !tbaa !17
  %conv25 = sext i32 %15 to i64
  %cmp26 = icmp uge i64 %14, %conv25
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  store i32 -6, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end24
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then27
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_mul_int(ptr noundef %X, ptr noundef %A, i64 noundef %b) #1 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %b.addr = alloca i64, align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !14
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %n3 = getelementptr inbounds %struct.mbedtls_mpi, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %n3, align 8, !tbaa !12
  store i64 %1, ptr %n, align 8, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end2
  %2 = load i64, ptr %n, align 8, !tbaa !14
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %p, align 8, !tbaa !13
  %5 = load i64, ptr %n, align 8, !tbaa !14
  %sub = sub i64 %5, 1
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %sub
  %6 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %cmp4 = icmp eq i64 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i64, ptr %n, align 8, !tbaa !14
  %dec = add i64 %8, -1
  store i64 %dec, ptr %n, align 8, !tbaa !14
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %land.end
  %9 = load i64, ptr %b.addr, align 8, !tbaa !14
  %cmp5 = icmp eq i64 %9, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %10 = load i64, ptr %n, align 8, !tbaa !14
  %cmp6 = icmp eq i64 %10, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.end
  %11 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_mpi_lset(ptr noundef %11, i64 noundef 0)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 -110, ptr %ret, align 4, !tbaa !17
  br label %do.body7

do.body7:                                         ; preds = %if.end
  %12 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %13 = load i64, ptr %n, align 8, !tbaa !14
  %add = add i64 %13, 1
  %call8 = call i32 @mbedtls_mpi_grow(ptr noundef %12, i64 noundef %add)
  store i32 %call8, ptr %ret, align 4, !tbaa !17
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body7
  br label %cleanup

if.end11:                                         ; preds = %do.body7
  br label %do.cond

do.cond:                                          ; preds = %if.end11
  br label %do.end12

do.end12:                                         ; preds = %do.cond
  br label %do.body13

do.body13:                                        ; preds = %do.end12
  %14 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call14 = call i32 @mbedtls_mpi_copy(ptr noundef %14, ptr noundef %15)
  store i32 %call14, ptr %ret, align 4, !tbaa !17
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body13
  br label %cleanup

if.end17:                                         ; preds = %do.body13
  br label %do.cond18

do.cond18:                                        ; preds = %if.end17
  br label %do.end19

do.end19:                                         ; preds = %do.cond18
  %16 = load i64, ptr %n, align 8, !tbaa !14
  %17 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %p20 = getelementptr inbounds %struct.mbedtls_mpi, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %p20, align 8, !tbaa !13
  %19 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.mbedtls_mpi, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %p21, align 8, !tbaa !13
  %21 = load i64, ptr %b.addr, align 8, !tbaa !14
  %sub22 = sub i64 %21, 1
  call void @_ZL11mpi_mul_hlpmPKmPmm(i64 noundef %16, ptr noundef %18, ptr noundef %20, i64 noundef %sub22)
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.then16, %if.then10
  %22 = load i32, ptr %ret, align 4, !tbaa !17
  store i32 %22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  br label %cleanup24

cleanup24:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_add_int(ptr noundef %X, ptr noundef %A, i64 noundef %b) #1 {
entry:
  %X.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %b.addr = alloca i64, align 8
  %B = alloca %struct.mbedtls_mpi, align 8
  %p = alloca [1 x i64], align 8
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 24, ptr %B) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  %0 = load i64, ptr %b.addr, align 8, !tbaa !14
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end3
  %1 = load i64, ptr %b.addr, align 8, !tbaa !14
  %sub = sub nsw i64 0, %1
  br label %cond.end

cond.false:                                       ; preds = %do.end3
  %2 = load i64, ptr %b.addr, align 8, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %2, %cond.false ]
  %arrayidx = getelementptr inbounds [1 x i64], ptr %p, i64 0, i64 0
  store i64 %cond, ptr %arrayidx, align 8, !tbaa !14
  %3 = load i64, ptr %b.addr, align 8, !tbaa !14
  %cmp4 = icmp slt i64 %3, 0
  %4 = zext i1 %cmp4 to i64
  %cond5 = select i1 %cmp4, i32 -1, i32 1
  %s = getelementptr inbounds %struct.mbedtls_mpi, ptr %B, i32 0, i32 0
  store i32 %cond5, ptr %s, align 8, !tbaa !8
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %B, i32 0, i32 1
  store i64 1, ptr %n, align 8, !tbaa !12
  %arraydecay = getelementptr inbounds [1 x i64], ptr %p, i64 0, i64 0
  %p6 = getelementptr inbounds %struct.mbedtls_mpi, ptr %B, i32 0, i32 2
  store ptr %arraydecay, ptr %p6, align 8, !tbaa !13
  %5 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_mpi_add_mpi(ptr noundef %5, ptr noundef %6, ptr noundef %B)
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %B) #10
  ret i32 %call
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_write_string(ptr noundef %X, i32 noundef %radix, ptr noundef %buf, i64 noundef %buflen, ptr noundef %olen) #1 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %radix.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  %olen.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  %p = alloca ptr, align 8
  %T = alloca %struct.mbedtls_mpi, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store i32 %radix, ptr %radix.addr, align 4, !tbaa !17
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store i64 %buflen, ptr %buflen.addr, align 8, !tbaa !14
  store ptr %olen, ptr %olen.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 0, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %T) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  br label %do.cond5

do.cond5:                                         ; preds = %do.body4
  br label %do.end6

do.end6:                                          ; preds = %do.cond5
  %0 = load i32, ptr %radix.addr, align 4, !tbaa !17
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end6
  %1 = load i32, ptr %radix.addr, align 4, !tbaa !17
  %cmp7 = icmp sgt i32 %1, 16
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end6
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup72

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %call = call i64 @mbedtls_mpi_bitlen(ptr noundef %2)
  store i64 %call, ptr %n, align 8, !tbaa !14
  %3 = load i32, ptr %radix.addr, align 4, !tbaa !17
  %cmp8 = icmp sge i32 %3, 4
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %4 = load i64, ptr %n, align 8, !tbaa !14
  %shr = lshr i64 %4, 1
  store i64 %shr, ptr %n, align 8, !tbaa !14
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %5 = load i32, ptr %radix.addr, align 4, !tbaa !17
  %cmp11 = icmp sge i32 %5, 16
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %6 = load i64, ptr %n, align 8, !tbaa !14
  %shr13 = lshr i64 %6, 1
  store i64 %shr13, ptr %n, align 8, !tbaa !14
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  %7 = load i64, ptr %n, align 8, !tbaa !14
  %add = add i64 %7, 1
  store i64 %add, ptr %n, align 8, !tbaa !14
  %8 = load i64, ptr %n, align 8, !tbaa !14
  %add15 = add i64 %8, 1
  store i64 %add15, ptr %n, align 8, !tbaa !14
  %9 = load i64, ptr %n, align 8, !tbaa !14
  %add16 = add i64 %9, 1
  store i64 %add16, ptr %n, align 8, !tbaa !14
  %10 = load i64, ptr %n, align 8, !tbaa !14
  %and = and i64 %10, 1
  %11 = load i64, ptr %n, align 8, !tbaa !14
  %add17 = add i64 %11, %and
  store i64 %add17, ptr %n, align 8, !tbaa !14
  %12 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  %13 = load i64, ptr %n, align 8, !tbaa !14
  %cmp18 = icmp ult i64 %12, %13
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end14
  %14 = load i64, ptr %n, align 8, !tbaa !14
  %15 = load ptr, ptr %olen.addr, align 8, !tbaa !4
  store i64 %14, ptr %15, align 8, !tbaa !14
  store i32 -8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup72

if.end20:                                         ; preds = %if.end14
  %16 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  store ptr %16, ptr %p, align 8, !tbaa !4
  call void @mbedtls_mpi_init(ptr noundef %T)
  %17 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.mbedtls_mpi, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %s, align 8, !tbaa !8
  %cmp21 = icmp eq i32 %18, -1
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end20
  %19 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  store i8 45, ptr %19, align 1, !tbaa !19
  %20 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  %dec = add i64 %20, -1
  store i64 %dec, ptr %buflen.addr, align 8, !tbaa !14
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end20
  %21 = load i32, ptr %radix.addr, align 4, !tbaa !17
  %cmp24 = icmp eq i32 %21, 16
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #10
  %22 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n26 = getelementptr inbounds %struct.mbedtls_mpi, ptr %22, i32 0, i32 1
  %23 = load i64, ptr %n26, align 8, !tbaa !12
  store i64 %23, ptr %i, align 8, !tbaa !14
  store i64 0, ptr %k, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %if.then25
  %24 = load i64, ptr %i, align 8, !tbaa !14
  %cmp27 = icmp ugt i64 %24, 0
  br i1 %cmp27, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  store i64 8, ptr %j, align 8, !tbaa !14
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %for.body
  %25 = load i64, ptr %j, align 8, !tbaa !14
  %cmp29 = icmp ugt i64 %25, 0
  br i1 %cmp29, label %for.body30, label %for.end

for.body30:                                       ; preds = %for.cond28
  %26 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p31 = getelementptr inbounds %struct.mbedtls_mpi, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %p31, align 8, !tbaa !13
  %28 = load i64, ptr %i, align 8, !tbaa !14
  %sub = sub i64 %28, 1
  %arrayidx = getelementptr inbounds i64, ptr %27, i64 %sub
  %29 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %30 = load i64, ptr %j, align 8, !tbaa !14
  %sub32 = sub i64 %30, 1
  %shl = shl i64 %sub32, 3
  %shr33 = lshr i64 %29, %shl
  %and34 = and i64 %shr33, 255
  %conv = trunc i64 %and34 to i32
  store i32 %conv, ptr %c, align 4, !tbaa !17
  %31 = load i32, ptr %c, align 4, !tbaa !17
  %cmp35 = icmp eq i32 %31, 0
  br i1 %cmp35, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %for.body30
  %32 = load i64, ptr %k, align 8, !tbaa !14
  %cmp36 = icmp eq i64 %32, 0
  br i1 %cmp36, label %land.lhs.true37, label %if.end41

land.lhs.true37:                                  ; preds = %land.lhs.true
  %33 = load i64, ptr %i, align 8, !tbaa !14
  %34 = load i64, ptr %j, align 8, !tbaa !14
  %add38 = add i64 %33, %34
  %cmp39 = icmp ne i64 %add38, 2
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %land.lhs.true37
  br label %for.inc

if.end41:                                         ; preds = %land.lhs.true37, %land.lhs.true, %for.body30
  %35 = load i32, ptr %c, align 4, !tbaa !17
  %div = sdiv i32 %35, 16
  %idxprom = sext i32 %div to i64
  %arrayidx42 = getelementptr inbounds [17 x i8], ptr @.str, i64 0, i64 %idxprom
  %36 = load i8, ptr %arrayidx42, align 1, !tbaa !19
  %37 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr43 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr43, ptr %p, align 8, !tbaa !4
  store i8 %36, ptr %37, align 1, !tbaa !19
  %38 = load i32, ptr %c, align 4, !tbaa !17
  %rem = srem i32 %38, 16
  %idxprom44 = sext i32 %rem to i64
  %arrayidx45 = getelementptr inbounds [17 x i8], ptr @.str, i64 0, i64 %idxprom44
  %39 = load i8, ptr %arrayidx45, align 1, !tbaa !19
  %40 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr46 = getelementptr inbounds i8, ptr %40, i32 1
  store ptr %incdec.ptr46, ptr %p, align 8, !tbaa !4
  store i8 %39, ptr %40, align 1, !tbaa !19
  store i64 1, ptr %k, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %if.end41, %if.then40
  %41 = load i64, ptr %j, align 8, !tbaa !14
  %dec47 = add i64 %41, -1
  store i64 %dec47, ptr %j, align 8, !tbaa !14
  br label %for.cond28, !llvm.loop !27

for.end:                                          ; preds = %for.cond28
  br label %for.inc48

for.inc48:                                        ; preds = %for.end
  %42 = load i64, ptr %i, align 8, !tbaa !14
  %dec49 = add i64 %42, -1
  store i64 %dec49, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !28

for.end50:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #10
  br label %if.end70

if.else:                                          ; preds = %if.end23
  br label %do.body51

do.body51:                                        ; preds = %if.else
  %43 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %call52 = call i32 @mbedtls_mpi_copy(ptr noundef %T, ptr noundef %43)
  store i32 %call52, ptr %ret, align 4, !tbaa !17
  %cmp53 = icmp ne i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %do.body51
  br label %cleanup

if.end55:                                         ; preds = %do.body51
  br label %do.cond56

do.cond56:                                        ; preds = %if.end55
  br label %do.end57

do.end57:                                         ; preds = %do.cond56
  %s58 = getelementptr inbounds %struct.mbedtls_mpi, ptr %T, i32 0, i32 0
  %44 = load i32, ptr %s58, align 8, !tbaa !8
  %cmp59 = icmp eq i32 %44, -1
  br i1 %cmp59, label %if.then60, label %if.end62

if.then60:                                        ; preds = %do.end57
  %s61 = getelementptr inbounds %struct.mbedtls_mpi, ptr %T, i32 0, i32 0
  store i32 1, ptr %s61, align 8, !tbaa !8
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %do.end57
  br label %do.body63

do.body63:                                        ; preds = %if.end62
  %45 = load i32, ptr %radix.addr, align 4, !tbaa !17
  %46 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  %call64 = call noundef i32 @_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm(ptr noundef %T, i32 noundef %45, ptr noundef %p, i64 noundef %46)
  store i32 %call64, ptr %ret, align 4, !tbaa !17
  %cmp65 = icmp ne i32 %call64, 0
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %do.body63
  br label %cleanup

if.end67:                                         ; preds = %do.body63
  br label %do.cond68

do.cond68:                                        ; preds = %if.end67
  br label %do.end69

do.end69:                                         ; preds = %do.cond68
  br label %if.end70

if.end70:                                         ; preds = %do.end69, %for.end50
  %47 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr71 = getelementptr inbounds i8, ptr %47, i32 1
  store ptr %incdec.ptr71, ptr %p, align 8, !tbaa !4
  store i8 0, ptr %47, align 1, !tbaa !19
  %48 = load ptr, ptr %p, align 8, !tbaa !4
  %49 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %48 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %49 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %50 = load ptr, ptr %olen.addr, align 8, !tbaa !4
  store i64 %sub.ptr.sub, ptr %50, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then66, %if.then54
  call void @mbedtls_mpi_free(ptr noundef %T)
  %51 = load i32, ptr %ret, align 4, !tbaa !17
  store i32 %51, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup72

cleanup72:                                        ; preds = %cleanup, %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %T) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm(ptr noundef %X, i32 noundef %radix, ptr noundef %p, i64 noundef %buflen) #1 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %radix.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %r = alloca i64, align 8
  %length = alloca i64, align 8
  %p_end = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store i32 %radix, ptr %radix.addr, align 4, !tbaa !17
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i64 %buflen, ptr %buflen.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 -110, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #10
  store i64 0, ptr %length, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_end) #10
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %2 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %2
  store ptr %add.ptr, ptr %p_end, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %do.cond20, %entry
  %3 = load i64, ptr %length, align 8, !tbaa !14
  %4 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  %cmp = icmp uge i64 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 -8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25

if.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.end
  %5 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %6 = load i32, ptr %radix.addr, align 4, !tbaa !17
  %conv = sext i32 %6 to i64
  %call = call i32 @mbedtls_mpi_mod_int(ptr noundef %r, ptr noundef %5, i64 noundef %conv)
  store i32 %call, ptr %ret, align 4, !tbaa !17
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %do.body1
  br label %cleanup

if.end4:                                          ; preds = %do.body1
  br label %do.cond

do.cond:                                          ; preds = %if.end4
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body5

do.body5:                                         ; preds = %do.end
  %7 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %9 = load i32, ptr %radix.addr, align 4, !tbaa !17
  %conv6 = sext i32 %9 to i64
  %call7 = call i32 @mbedtls_mpi_div_int(ptr noundef %7, ptr noundef null, ptr noundef %8, i64 noundef %conv6)
  store i32 %call7, ptr %ret, align 4, !tbaa !17
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.body5
  br label %cleanup

if.end10:                                         ; preds = %do.body5
  br label %do.cond11

do.cond11:                                        ; preds = %if.end10
  br label %do.end12

do.end12:                                         ; preds = %do.cond11
  %10 = load i64, ptr %r, align 8, !tbaa !14
  %cmp13 = icmp ult i64 %10, 10
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %do.end12
  %11 = load i64, ptr %r, align 8, !tbaa !14
  %add = add i64 48, %11
  %conv15 = trunc i64 %add to i8
  %12 = load ptr, ptr %p_end, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 -1
  store ptr %incdec.ptr, ptr %p_end, align 8, !tbaa !4
  store i8 %conv15, ptr %incdec.ptr, align 1, !tbaa !19
  br label %if.end19

if.else:                                          ; preds = %do.end12
  %13 = load i64, ptr %r, align 8, !tbaa !14
  %sub = sub i64 %13, 10
  %add16 = add i64 65, %sub
  %conv17 = trunc i64 %add16 to i8
  %14 = load ptr, ptr %p_end, align 8, !tbaa !4
  %incdec.ptr18 = getelementptr inbounds i8, ptr %14, i32 -1
  store ptr %incdec.ptr18, ptr %p_end, align 8, !tbaa !4
  store i8 %conv17, ptr %incdec.ptr18, align 1, !tbaa !19
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then14
  %15 = load i64, ptr %length, align 8, !tbaa !14
  %inc = add i64 %15, 1
  store i64 %inc, ptr %length, align 8, !tbaa !14
  br label %do.cond20

do.cond20:                                        ; preds = %if.end19
  %16 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %call21 = call i32 @mbedtls_mpi_cmp_int(ptr noundef %16, i64 noundef 0)
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %do.body, label %do.end23, !llvm.loop !29

do.end23:                                         ; preds = %do.cond20
  %17 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %17, align 8, !tbaa !4
  %19 = load ptr, ptr %p_end, align 8, !tbaa !4
  %20 = load i64, ptr %length, align 8, !tbaa !14
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %18, ptr align 1 %19, i64 %20, i1 false)
  %21 = load i64, ptr %length, align 8, !tbaa !14
  %22 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %22, align 8, !tbaa !4
  %add.ptr24 = getelementptr inbounds i8, ptr %23, i64 %21
  store ptr %add.ptr24, ptr %22, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.then9, %if.then3
  %24 = load i32, ptr %ret, align 4, !tbaa !17
  store i32 %24, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25

cleanup25:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_end) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_read_binary_le(ptr noundef %X, ptr noundef %buf, i64 noundef %buflen) #1 {
entry:
  %X.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %limbs = alloca i64, align 8
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store i64 %buflen, ptr %buflen.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 -110, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %limbs) #10
  %0 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  %div = udiv i64 %0, 8
  %1 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  %rem = urem i64 %1, 8
  %cmp = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp to i64
  %add = add i64 %div, %conv
  store i64 %add, ptr %limbs, align 8, !tbaa !14
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %3 = load i64, ptr %limbs, align 8, !tbaa !14
  %call = call noundef i32 @_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim(ptr noundef %2, i64 noundef %3)
  store i32 %call, ptr %ret, align 4, !tbaa !17
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i64 0, ptr %i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load i64, ptr %i, align 8, !tbaa !14
  %5 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  %cmp2 = icmp ult i64 %4, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %7 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %7
  %8 = load i8, ptr %arrayidx, align 1, !tbaa !19
  %conv3 = zext i8 %8 to i64
  %9 = load i64, ptr %i, align 8, !tbaa !14
  %rem4 = urem i64 %9, 8
  %shl = shl i64 %rem4, 3
  %shl5 = shl i64 %conv3, %shl
  %10 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %p, align 8, !tbaa !13
  %12 = load i64, ptr %i, align 8, !tbaa !14
  %div6 = udiv i64 %12, 8
  %arrayidx7 = getelementptr inbounds i64, ptr %11, i64 %div6
  %13 = load i64, ptr %arrayidx7, align 8, !tbaa !14
  %or = or i64 %13, %shl5
  store i64 %or, ptr %arrayidx7, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i64, ptr %i, align 8, !tbaa !14
  %inc = add i64 %14, 1
  store i64 %inc, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %15 = load i32, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr %limbs) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  ret i32 %15
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim(ptr noundef %X, i64 noundef %limbs) #1 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %limbs.addr = alloca i64, align 8
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store i64 %limbs, ptr %limbs.addr, align 8, !tbaa !14
  %0 = load i64, ptr %limbs.addr, align 8, !tbaa !14
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %X.addr, align 8, !tbaa !4
  call void @mbedtls_mpi_free(ptr noundef %1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %n, align 8, !tbaa !12
  %4 = load i64, ptr %limbs.addr, align 8, !tbaa !14
  %cmp1 = icmp eq i64 %3, %4
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %5 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %p, align 8, !tbaa !13
  %7 = load i64, ptr %limbs.addr, align 8, !tbaa !14
  %mul = mul i64 %7, 8
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %mul, i1 false)
  %8 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.mbedtls_mpi, ptr %8, i32 0, i32 0
  store i32 1, ptr %s, align 8, !tbaa !8
  store i32 0, ptr %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  %9 = load ptr, ptr %X.addr, align 8, !tbaa !4
  call void @mbedtls_mpi_free(ptr noundef %9)
  %10 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %11 = load i64, ptr %limbs.addr, align 8, !tbaa !14
  %call = call i32 @mbedtls_mpi_grow(ptr noundef %10, i64 noundef %11)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_read_binary(ptr noundef %X, ptr noundef %buf, i64 noundef %buflen) #1 {
entry:
  %X.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %limbs = alloca i64, align 8
  %overhead = alloca i64, align 8
  %Xp = alloca ptr, align 8
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store i64 %buflen, ptr %buflen.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 -110, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %limbs) #10
  %0 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  %div = udiv i64 %0, 8
  %1 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  %rem = urem i64 %1, 8
  %cmp = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp to i64
  %add = add i64 %div, %conv
  store i64 %add, ptr %limbs, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %overhead) #10
  %2 = load i64, ptr %limbs, align 8, !tbaa !14
  %mul = mul i64 %2, 8
  %3 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  %sub = sub i64 %mul, %3
  store i64 %sub, ptr %overhead, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %Xp) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  %4 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %5 = load i64, ptr %limbs, align 8, !tbaa !14
  %call = call noundef i32 @_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim(ptr noundef %4, i64 noundef %5)
  store i32 %call, ptr %ret, align 4, !tbaa !17
  %cmp5 = icmp ne i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %do.body4
  br label %cleanup

if.end:                                           ; preds = %do.body4
  br label %do.cond6

do.cond6:                                         ; preds = %if.end
  br label %do.end7

do.end7:                                          ; preds = %do.cond6
  %6 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  %cmp8 = icmp ne i64 %6, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %do.end7
  %7 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %p, align 8, !tbaa !13
  store ptr %8, ptr %Xp, align 8, !tbaa !4
  %9 = load ptr, ptr %Xp, align 8, !tbaa !4
  %10 = load i64, ptr %overhead, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %10
  %11 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %12 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %11, i64 %12, i1 false)
  %13 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p10 = getelementptr inbounds %struct.mbedtls_mpi, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %p10, align 8, !tbaa !13
  %15 = load i64, ptr %limbs, align 8, !tbaa !14
  call void @_ZL21mpi_bigendian_to_hostPmm(ptr noundef %14, i64 noundef %15)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.end7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  %16 = load i32, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr %Xp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %overhead) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %limbs) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  ret i32 %16
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL21mpi_bigendian_to_hostPmm(ptr noundef %p, i64 noundef %limbs) #1 {
entry:
  %p.addr = alloca ptr, align 8
  %limbs.addr = alloca i64, align 8
  %cur_limb_left = alloca ptr, align 8
  %cur_limb_right = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i64 %limbs, ptr %limbs.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_limb_left) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_limb_right) #10
  %0 = load i64, ptr %limbs.addr, align 8, !tbaa !14
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store ptr %1, ptr %cur_limb_left, align 8, !tbaa !4
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %3 = load i64, ptr %limbs.addr, align 8, !tbaa !14
  %sub = sub i64 %3, 1
  %add.ptr = getelementptr inbounds i64, ptr %2, i64 %sub
  store ptr %add.ptr, ptr %cur_limb_right, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %cur_limb_left, align 8, !tbaa !4
  %5 = load ptr, ptr %cur_limb_right, align 8, !tbaa !4
  %cmp1 = icmp ule ptr %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #10
  %6 = load ptr, ptr %cur_limb_left, align 8, !tbaa !4
  %7 = load i64, ptr %6, align 8, !tbaa !14
  %call = call noundef i64 @_ZL26mpi_uint_bigendian_to_hostm(i64 noundef %7)
  store i64 %call, ptr %tmp, align 8, !tbaa !14
  %8 = load ptr, ptr %cur_limb_right, align 8, !tbaa !4
  %9 = load i64, ptr %8, align 8, !tbaa !14
  %call2 = call noundef i64 @_ZL26mpi_uint_bigendian_to_hostm(i64 noundef %9)
  %10 = load ptr, ptr %cur_limb_left, align 8, !tbaa !4
  store i64 %call2, ptr %10, align 8, !tbaa !14
  %11 = load i64, ptr %tmp, align 8, !tbaa !14
  %12 = load ptr, ptr %cur_limb_right, align 8, !tbaa !4
  store i64 %11, ptr %12, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load ptr, ptr %cur_limb_left, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i64, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %cur_limb_left, align 8, !tbaa !4
  %14 = load ptr, ptr %cur_limb_right, align 8, !tbaa !4
  %incdec.ptr3 = getelementptr inbounds i64, ptr %14, i32 -1
  store ptr %incdec.ptr3, ptr %cur_limb_right, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_limb_right) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_limb_left) #10
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

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @mbedtls_mpi_write_binary_le(ptr noundef %X, ptr noundef %buf, i64 noundef %buflen) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  %stored_bytes = alloca i64, align 8
  %bytes_to_copy = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store i64 %buflen, ptr %buflen.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %stored_bytes) #10
  %0 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %n, align 8, !tbaa !12
  %mul = mul i64 %1, 8
  store i64 %mul, ptr %stored_bytes, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes_to_copy) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  %2 = load i64, ptr %stored_bytes, align 8, !tbaa !14
  %3 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %stored_bytes, align 8, !tbaa !14
  store i64 %4, ptr %bytes_to_copy, align 8, !tbaa !14
  br label %if.end5

if.else:                                          ; preds = %entry
  %5 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  store i64 %5, ptr %bytes_to_copy, align 8, !tbaa !14
  %6 = load i64, ptr %bytes_to_copy, align 8, !tbaa !14
  store i64 %6, ptr %i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %7 = load i64, ptr %i, align 8, !tbaa !14
  %8 = load i64, ptr %stored_bytes, align 8, !tbaa !14
  %cmp1 = icmp ult i64 %7, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %p, align 8, !tbaa !13
  %11 = load i64, ptr %i, align 8, !tbaa !14
  %div = udiv i64 %11, 8
  %arrayidx = getelementptr inbounds i64, ptr %10, i64 %div
  %12 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %13 = load i64, ptr %i, align 8, !tbaa !14
  %rem = urem i64 %13, 8
  %mul2 = mul i64 %rem, 8
  %shr = lshr i64 %12, %mul2
  %and = and i64 %shr, 255
  %cmp3 = icmp ne i64 %and, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  store i32 -8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i64, ptr %i, align 8, !tbaa !14
  %inc = add i64 %14, 1
  store i64 %inc, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  br label %if.end5

if.end5:                                          ; preds = %for.end, %if.then
  store i64 0, ptr %i, align 8, !tbaa !14
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc17, %if.end5
  %15 = load i64, ptr %i, align 8, !tbaa !14
  %16 = load i64, ptr %bytes_to_copy, align 8, !tbaa !14
  %cmp7 = icmp ult i64 %15, %16
  br i1 %cmp7, label %for.body8, label %for.end19

for.body8:                                        ; preds = %for.cond6
  %17 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p9 = getelementptr inbounds %struct.mbedtls_mpi, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %p9, align 8, !tbaa !13
  %19 = load i64, ptr %i, align 8, !tbaa !14
  %div10 = udiv i64 %19, 8
  %arrayidx11 = getelementptr inbounds i64, ptr %18, i64 %div10
  %20 = load i64, ptr %arrayidx11, align 8, !tbaa !14
  %21 = load i64, ptr %i, align 8, !tbaa !14
  %rem12 = urem i64 %21, 8
  %mul13 = mul i64 %rem12, 8
  %shr14 = lshr i64 %20, %mul13
  %and15 = and i64 %shr14, 255
  %conv = trunc i64 %and15 to i8
  %22 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %23 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx16 = getelementptr inbounds i8, ptr %22, i64 %23
  store i8 %conv, ptr %arrayidx16, align 1, !tbaa !19
  br label %for.inc17

for.inc17:                                        ; preds = %for.body8
  %24 = load i64, ptr %i, align 8, !tbaa !14
  %inc18 = add i64 %24, 1
  store i64 %inc18, ptr %i, align 8, !tbaa !14
  br label %for.cond6, !llvm.loop !33

for.end19:                                        ; preds = %for.cond6
  %25 = load i64, ptr %stored_bytes, align 8, !tbaa !14
  %26 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  %cmp20 = icmp ult i64 %25, %26
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %for.end19
  %27 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %28 = load i64, ptr %stored_bytes, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %27, i64 %28
  %29 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  %30 = load i64, ptr %stored_bytes, align 8, !tbaa !14
  %sub = sub i64 %29, %30
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %sub, i1 false)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %for.end19
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes_to_copy) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %stored_bytes) #10
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @mbedtls_mpi_write_binary(ptr noundef %X, ptr noundef %buf, i64 noundef %buflen) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  %stored_bytes = alloca i64, align 8
  %bytes_to_copy = alloca i64, align 8
  %p = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store i64 %buflen, ptr %buflen.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %stored_bytes) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes_to_copy) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  %0 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %n, align 8, !tbaa !12
  %mul = mul i64 %1, 8
  store i64 %mul, ptr %stored_bytes, align 8, !tbaa !14
  %2 = load i64, ptr %stored_bytes, align 8, !tbaa !14
  %3 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end3
  %4 = load i64, ptr %stored_bytes, align 8, !tbaa !14
  store i64 %4, ptr %bytes_to_copy, align 8, !tbaa !14
  %5 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %6 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %6
  %7 = load i64, ptr %stored_bytes, align 8, !tbaa !14
  %idx.neg = sub i64 0, %7
  %add.ptr4 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  store ptr %add.ptr4, ptr %p, align 8, !tbaa !4
  %8 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %9 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  %10 = load i64, ptr %stored_bytes, align 8, !tbaa !14
  %sub = sub i64 %9, %10
  call void @llvm.memset.p0.i64(ptr align 1 %8, i8 0, i64 %sub, i1 false)
  br label %if.end10

if.else:                                          ; preds = %do.end3
  %11 = load i64, ptr %buflen.addr, align 8, !tbaa !14
  store i64 %11, ptr %bytes_to_copy, align 8, !tbaa !14
  %12 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  store ptr %12, ptr %p, align 8, !tbaa !4
  %13 = load i64, ptr %bytes_to_copy, align 8, !tbaa !14
  store i64 %13, ptr %i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %14 = load i64, ptr %i, align 8, !tbaa !14
  %15 = load i64, ptr %stored_bytes, align 8, !tbaa !14
  %cmp5 = icmp ult i64 %14, %15
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p6 = getelementptr inbounds %struct.mbedtls_mpi, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %p6, align 8, !tbaa !13
  %18 = load i64, ptr %i, align 8, !tbaa !14
  %div = udiv i64 %18, 8
  %arrayidx = getelementptr inbounds i64, ptr %17, i64 %div
  %19 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %20 = load i64, ptr %i, align 8, !tbaa !14
  %rem = urem i64 %20, 8
  %mul7 = mul i64 %rem, 8
  %shr = lshr i64 %19, %mul7
  %and = and i64 %shr, 255
  %cmp8 = icmp ne i64 %and, 0
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %for.body
  store i32 -8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i64, ptr %i, align 8, !tbaa !14
  %inc = add i64 %21, 1
  store i64 %inc, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  br label %if.end10

if.end10:                                         ; preds = %for.end, %if.then
  store i64 0, ptr %i, align 8, !tbaa !14
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc24, %if.end10
  %22 = load i64, ptr %i, align 8, !tbaa !14
  %23 = load i64, ptr %bytes_to_copy, align 8, !tbaa !14
  %cmp12 = icmp ult i64 %22, %23
  br i1 %cmp12, label %for.body13, label %for.end26

for.body13:                                       ; preds = %for.cond11
  %24 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p14 = getelementptr inbounds %struct.mbedtls_mpi, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %p14, align 8, !tbaa !13
  %26 = load i64, ptr %i, align 8, !tbaa !14
  %div15 = udiv i64 %26, 8
  %arrayidx16 = getelementptr inbounds i64, ptr %25, i64 %div15
  %27 = load i64, ptr %arrayidx16, align 8, !tbaa !14
  %28 = load i64, ptr %i, align 8, !tbaa !14
  %rem17 = urem i64 %28, 8
  %mul18 = mul i64 %rem17, 8
  %shr19 = lshr i64 %27, %mul18
  %and20 = and i64 %shr19, 255
  %conv = trunc i64 %and20 to i8
  %29 = load ptr, ptr %p, align 8, !tbaa !4
  %30 = load i64, ptr %bytes_to_copy, align 8, !tbaa !14
  %31 = load i64, ptr %i, align 8, !tbaa !14
  %sub21 = sub i64 %30, %31
  %sub22 = sub i64 %sub21, 1
  %arrayidx23 = getelementptr inbounds i8, ptr %29, i64 %sub22
  store i8 %conv, ptr %arrayidx23, align 1, !tbaa !19
  br label %for.inc24

for.inc24:                                        ; preds = %for.body13
  %32 = load i64, ptr %i, align 8, !tbaa !14
  %inc25 = add i64 %32, 1
  store i64 %inc25, ptr %i, align 8, !tbaa !14
  br label %for.cond11, !llvm.loop !35

for.end26:                                        ; preds = %for.cond11
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end26, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes_to_copy) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %stored_bytes) #10
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_shift_l(ptr noundef %X, i64 noundef %count) #1 {
entry:
  %X.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %v0 = alloca i64, align 8
  %t1 = alloca i64, align 8
  %r0 = alloca i64, align 8
  %r1 = alloca i64, align 8
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store i64 %count, ptr %count.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 -110, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %v0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %t1) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %r0) #10
  store i64 0, ptr %r0, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %r1) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %0 = load i64, ptr %count.addr, align 8, !tbaa !14
  %div = udiv i64 %0, 64
  store i64 %div, ptr %v0, align 8, !tbaa !14
  %1 = load i64, ptr %count.addr, align 8, !tbaa !14
  %and = and i64 %1, 63
  store i64 %and, ptr %t1, align 8, !tbaa !14
  %2 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %call = call i64 @mbedtls_mpi_bitlen(ptr noundef %2)
  %3 = load i64, ptr %count.addr, align 8, !tbaa !14
  %add = add i64 %call, %3
  store i64 %add, ptr %i, align 8, !tbaa !14
  %4 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %n, align 8, !tbaa !12
  %mul = mul i64 %5, 64
  %6 = load i64, ptr %i, align 8, !tbaa !14
  %cmp = icmp ult i64 %mul, %6
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %do.end
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %7 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %8 = load i64, ptr %i, align 8, !tbaa !14
  %div2 = udiv i64 %8, 64
  %9 = load i64, ptr %i, align 8, !tbaa !14
  %rem = urem i64 %9, 64
  %cmp3 = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp3 to i64
  %add4 = add i64 %div2, %conv
  %call5 = call i32 @mbedtls_mpi_grow(ptr noundef %7, i64 noundef %add4)
  store i32 %call5, ptr %ret, align 4, !tbaa !17
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %do.body1
  br label %cleanup

if.end:                                           ; preds = %do.body1
  br label %do.cond8

do.cond8:                                         ; preds = %if.end
  br label %do.end9

do.end9:                                          ; preds = %do.cond8
  br label %if.end10

if.end10:                                         ; preds = %do.end9, %do.end
  store i32 0, ptr %ret, align 4, !tbaa !17
  %10 = load i64, ptr %v0, align 8, !tbaa !14
  %cmp11 = icmp ugt i64 %10, 0
  br i1 %cmp11, label %if.then12, label %if.end28

if.then12:                                        ; preds = %if.end10
  %11 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n13 = getelementptr inbounds %struct.mbedtls_mpi, ptr %11, i32 0, i32 1
  %12 = load i64, ptr %n13, align 8, !tbaa !12
  store i64 %12, ptr %i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then12
  %13 = load i64, ptr %i, align 8, !tbaa !14
  %14 = load i64, ptr %v0, align 8, !tbaa !14
  %cmp14 = icmp ugt i64 %13, %14
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %p, align 8, !tbaa !13
  %17 = load i64, ptr %i, align 8, !tbaa !14
  %18 = load i64, ptr %v0, align 8, !tbaa !14
  %sub = sub i64 %17, %18
  %sub15 = sub i64 %sub, 1
  %arrayidx = getelementptr inbounds i64, ptr %16, i64 %sub15
  %19 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %20 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p16 = getelementptr inbounds %struct.mbedtls_mpi, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %p16, align 8, !tbaa !13
  %22 = load i64, ptr %i, align 8, !tbaa !14
  %sub17 = sub i64 %22, 1
  %arrayidx18 = getelementptr inbounds i64, ptr %21, i64 %sub17
  store i64 %19, ptr %arrayidx18, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i64, ptr %i, align 8, !tbaa !14
  %dec = add i64 %23, -1
  store i64 %dec, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc25, %for.end
  %24 = load i64, ptr %i, align 8, !tbaa !14
  %cmp20 = icmp ugt i64 %24, 0
  br i1 %cmp20, label %for.body21, label %for.end27

for.body21:                                       ; preds = %for.cond19
  %25 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p22 = getelementptr inbounds %struct.mbedtls_mpi, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %p22, align 8, !tbaa !13
  %27 = load i64, ptr %i, align 8, !tbaa !14
  %sub23 = sub i64 %27, 1
  %arrayidx24 = getelementptr inbounds i64, ptr %26, i64 %sub23
  store i64 0, ptr %arrayidx24, align 8, !tbaa !14
  br label %for.inc25

for.inc25:                                        ; preds = %for.body21
  %28 = load i64, ptr %i, align 8, !tbaa !14
  %dec26 = add i64 %28, -1
  store i64 %dec26, ptr %i, align 8, !tbaa !14
  br label %for.cond19, !llvm.loop !37

for.end27:                                        ; preds = %for.cond19
  br label %if.end28

if.end28:                                         ; preds = %for.end27, %if.end10
  %29 = load i64, ptr %t1, align 8, !tbaa !14
  %cmp29 = icmp ugt i64 %29, 0
  br i1 %cmp29, label %if.then30, label %if.end44

if.then30:                                        ; preds = %if.end28
  %30 = load i64, ptr %v0, align 8, !tbaa !14
  store i64 %30, ptr %i, align 8, !tbaa !14
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc42, %if.then30
  %31 = load i64, ptr %i, align 8, !tbaa !14
  %32 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n32 = getelementptr inbounds %struct.mbedtls_mpi, ptr %32, i32 0, i32 1
  %33 = load i64, ptr %n32, align 8, !tbaa !12
  %cmp33 = icmp ult i64 %31, %33
  br i1 %cmp33, label %for.body34, label %for.end43

for.body34:                                       ; preds = %for.cond31
  %34 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p35 = getelementptr inbounds %struct.mbedtls_mpi, ptr %34, i32 0, i32 2
  %35 = load ptr, ptr %p35, align 8, !tbaa !13
  %36 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx36 = getelementptr inbounds i64, ptr %35, i64 %36
  %37 = load i64, ptr %arrayidx36, align 8, !tbaa !14
  %38 = load i64, ptr %t1, align 8, !tbaa !14
  %sub37 = sub i64 64, %38
  %shr = lshr i64 %37, %sub37
  store i64 %shr, ptr %r1, align 8, !tbaa !14
  %39 = load i64, ptr %t1, align 8, !tbaa !14
  %40 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p38 = getelementptr inbounds %struct.mbedtls_mpi, ptr %40, i32 0, i32 2
  %41 = load ptr, ptr %p38, align 8, !tbaa !13
  %42 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx39 = getelementptr inbounds i64, ptr %41, i64 %42
  %43 = load i64, ptr %arrayidx39, align 8, !tbaa !14
  %shl = shl i64 %43, %39
  store i64 %shl, ptr %arrayidx39, align 8, !tbaa !14
  %44 = load i64, ptr %r0, align 8, !tbaa !14
  %45 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p40 = getelementptr inbounds %struct.mbedtls_mpi, ptr %45, i32 0, i32 2
  %46 = load ptr, ptr %p40, align 8, !tbaa !13
  %47 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx41 = getelementptr inbounds i64, ptr %46, i64 %47
  %48 = load i64, ptr %arrayidx41, align 8, !tbaa !14
  %or = or i64 %48, %44
  store i64 %or, ptr %arrayidx41, align 8, !tbaa !14
  %49 = load i64, ptr %r1, align 8, !tbaa !14
  store i64 %49, ptr %r0, align 8, !tbaa !14
  br label %for.inc42

for.inc42:                                        ; preds = %for.body34
  %50 = load i64, ptr %i, align 8, !tbaa !14
  %inc = add i64 %50, 1
  store i64 %inc, ptr %i, align 8, !tbaa !14
  br label %for.cond31, !llvm.loop !38

for.end43:                                        ; preds = %for.cond31
  br label %if.end44

if.end44:                                         ; preds = %for.end43, %if.end28
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then7
  %51 = load i32, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr %r1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %r0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %t1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %v0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  ret i32 %51
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_shift_r(ptr noundef %X, i64 noundef %count) #1 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %r0 = alloca i64, align 8
  %r1 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store i64 %count, ptr %count.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %v0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %r0) #10
  store i64 0, ptr %r0, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %r1) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %0 = load i64, ptr %count.addr, align 8, !tbaa !14
  %div = udiv i64 %0, 64
  store i64 %div, ptr %v0, align 8, !tbaa !14
  %1 = load i64, ptr %count.addr, align 8, !tbaa !14
  %and = and i64 %1, 63
  store i64 %and, ptr %v1, align 8, !tbaa !14
  %2 = load i64, ptr %v0, align 8, !tbaa !14
  %3 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %n, align 8, !tbaa !12
  %cmp = icmp ugt i64 %2, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %5 = load i64, ptr %v0, align 8, !tbaa !14
  %6 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n1 = getelementptr inbounds %struct.mbedtls_mpi, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %n1, align 8, !tbaa !12
  %cmp2 = icmp eq i64 %5, %7
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = load i64, ptr %v1, align 8, !tbaa !14
  %cmp3 = icmp ugt i64 %8, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %do.end
  %9 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_mpi_lset(ptr noundef %9, i64 noundef 0)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %10 = load i64, ptr %v0, align 8, !tbaa !14
  %cmp4 = icmp ugt i64 %10, 0
  br i1 %cmp4, label %if.then5, label %if.end19

if.then5:                                         ; preds = %if.end
  store i64 0, ptr %i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %11 = load i64, ptr %i, align 8, !tbaa !14
  %12 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n6 = getelementptr inbounds %struct.mbedtls_mpi, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %n6, align 8, !tbaa !12
  %14 = load i64, ptr %v0, align 8, !tbaa !14
  %sub = sub i64 %13, %14
  %cmp7 = icmp ult i64 %11, %sub
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %p, align 8, !tbaa !13
  %17 = load i64, ptr %i, align 8, !tbaa !14
  %18 = load i64, ptr %v0, align 8, !tbaa !14
  %add = add i64 %17, %18
  %arrayidx = getelementptr inbounds i64, ptr %16, i64 %add
  %19 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %20 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p8 = getelementptr inbounds %struct.mbedtls_mpi, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %p8, align 8, !tbaa !13
  %22 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx9 = getelementptr inbounds i64, ptr %21, i64 %22
  store i64 %19, ptr %arrayidx9, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i64, ptr %i, align 8, !tbaa !14
  %inc = add i64 %23, 1
  store i64 %inc, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc16, %for.end
  %24 = load i64, ptr %i, align 8, !tbaa !14
  %25 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n11 = getelementptr inbounds %struct.mbedtls_mpi, ptr %25, i32 0, i32 1
  %26 = load i64, ptr %n11, align 8, !tbaa !12
  %cmp12 = icmp ult i64 %24, %26
  br i1 %cmp12, label %for.body13, label %for.end18

for.body13:                                       ; preds = %for.cond10
  %27 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p14 = getelementptr inbounds %struct.mbedtls_mpi, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %p14, align 8, !tbaa !13
  %29 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx15 = getelementptr inbounds i64, ptr %28, i64 %29
  store i64 0, ptr %arrayidx15, align 8, !tbaa !14
  br label %for.inc16

for.inc16:                                        ; preds = %for.body13
  %30 = load i64, ptr %i, align 8, !tbaa !14
  %inc17 = add i64 %30, 1
  store i64 %inc17, ptr %i, align 8, !tbaa !14
  br label %for.cond10, !llvm.loop !40

for.end18:                                        ; preds = %for.cond10
  br label %if.end19

if.end19:                                         ; preds = %for.end18, %if.end
  %31 = load i64, ptr %v1, align 8, !tbaa !14
  %cmp20 = icmp ugt i64 %31, 0
  br i1 %cmp20, label %if.then21, label %if.end38

if.then21:                                        ; preds = %if.end19
  %32 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n22 = getelementptr inbounds %struct.mbedtls_mpi, ptr %32, i32 0, i32 1
  %33 = load i64, ptr %n22, align 8, !tbaa !12
  store i64 %33, ptr %i, align 8, !tbaa !14
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc36, %if.then21
  %34 = load i64, ptr %i, align 8, !tbaa !14
  %cmp24 = icmp ugt i64 %34, 0
  br i1 %cmp24, label %for.body25, label %for.end37

for.body25:                                       ; preds = %for.cond23
  %35 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p26 = getelementptr inbounds %struct.mbedtls_mpi, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %p26, align 8, !tbaa !13
  %37 = load i64, ptr %i, align 8, !tbaa !14
  %sub27 = sub i64 %37, 1
  %arrayidx28 = getelementptr inbounds i64, ptr %36, i64 %sub27
  %38 = load i64, ptr %arrayidx28, align 8, !tbaa !14
  %39 = load i64, ptr %v1, align 8, !tbaa !14
  %sub29 = sub i64 64, %39
  %shl = shl i64 %38, %sub29
  store i64 %shl, ptr %r1, align 8, !tbaa !14
  %40 = load i64, ptr %v1, align 8, !tbaa !14
  %41 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p30 = getelementptr inbounds %struct.mbedtls_mpi, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %p30, align 8, !tbaa !13
  %43 = load i64, ptr %i, align 8, !tbaa !14
  %sub31 = sub i64 %43, 1
  %arrayidx32 = getelementptr inbounds i64, ptr %42, i64 %sub31
  %44 = load i64, ptr %arrayidx32, align 8, !tbaa !14
  %shr = lshr i64 %44, %40
  store i64 %shr, ptr %arrayidx32, align 8, !tbaa !14
  %45 = load i64, ptr %r0, align 8, !tbaa !14
  %46 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p33 = getelementptr inbounds %struct.mbedtls_mpi, ptr %46, i32 0, i32 2
  %47 = load ptr, ptr %p33, align 8, !tbaa !13
  %48 = load i64, ptr %i, align 8, !tbaa !14
  %sub34 = sub i64 %48, 1
  %arrayidx35 = getelementptr inbounds i64, ptr %47, i64 %sub34
  %49 = load i64, ptr %arrayidx35, align 8, !tbaa !14
  %or = or i64 %49, %45
  store i64 %or, ptr %arrayidx35, align 8, !tbaa !14
  %50 = load i64, ptr %r1, align 8, !tbaa !14
  store i64 %50, ptr %r0, align 8, !tbaa !14
  br label %for.inc36

for.inc36:                                        ; preds = %for.body25
  %51 = load i64, ptr %i, align 8, !tbaa !14
  %dec = add i64 %51, -1
  store i64 %dec, ptr %i, align 8, !tbaa !14
  br label %for.cond23, !llvm.loop !41

for.end37:                                        ; preds = %for.cond23
  br label %if.end38

if.end38:                                         ; preds = %for.end37, %if.end19
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %r0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %v0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @mbedtls_mpi_cmp_abs(ptr noundef %X, ptr noundef %Y) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %Y.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %Y, ptr %Y.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  %0 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %n, align 8, !tbaa !12
  store i64 %1, ptr %i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end3
  %2 = load i64, ptr %i, align 8, !tbaa !14
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %p, align 8, !tbaa !13
  %5 = load i64, ptr %i, align 8, !tbaa !14
  %sub = sub i64 %5, 1
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %sub
  %6 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %cmp4 = icmp ne i64 %6, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i64, ptr %i, align 8, !tbaa !14
  %dec = add i64 %7, -1
  store i64 %dec, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load ptr, ptr %Y.addr, align 8, !tbaa !4
  %n5 = getelementptr inbounds %struct.mbedtls_mpi, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %n5, align 8, !tbaa !12
  store i64 %9, ptr %j, align 8, !tbaa !14
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc15, %for.end
  %10 = load i64, ptr %j, align 8, !tbaa !14
  %cmp7 = icmp ugt i64 %10, 0
  br i1 %cmp7, label %for.body8, label %for.end17

for.body8:                                        ; preds = %for.cond6
  %11 = load ptr, ptr %Y.addr, align 8, !tbaa !4
  %p9 = getelementptr inbounds %struct.mbedtls_mpi, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %p9, align 8, !tbaa !13
  %13 = load i64, ptr %j, align 8, !tbaa !14
  %sub10 = sub i64 %13, 1
  %arrayidx11 = getelementptr inbounds i64, ptr %12, i64 %sub10
  %14 = load i64, ptr %arrayidx11, align 8, !tbaa !14
  %cmp12 = icmp ne i64 %14, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body8
  br label %for.end17

if.end14:                                         ; preds = %for.body8
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %15 = load i64, ptr %j, align 8, !tbaa !14
  %dec16 = add i64 %15, -1
  store i64 %dec16, ptr %j, align 8, !tbaa !14
  br label %for.cond6, !llvm.loop !43

for.end17:                                        ; preds = %if.then13, %for.cond6
  %16 = load i64, ptr %i, align 8, !tbaa !14
  %cmp18 = icmp eq i64 %16, 0
  br i1 %cmp18, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %for.end17
  %17 = load i64, ptr %j, align 8, !tbaa !14
  %cmp19 = icmp eq i64 %17, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true, %for.end17
  %18 = load i64, ptr %i, align 8, !tbaa !14
  %19 = load i64, ptr %j, align 8, !tbaa !14
  %cmp22 = icmp ugt i64 %18, %19
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end21
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %20 = load i64, ptr %j, align 8, !tbaa !14
  %21 = load i64, ptr %i, align 8, !tbaa !14
  %cmp25 = icmp ugt i64 %20, %21
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end24
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc49, %if.end27
  %22 = load i64, ptr %i, align 8, !tbaa !14
  %cmp29 = icmp ugt i64 %22, 0
  br i1 %cmp29, label %for.body30, label %for.end51

for.body30:                                       ; preds = %for.cond28
  %23 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p31 = getelementptr inbounds %struct.mbedtls_mpi, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %p31, align 8, !tbaa !13
  %25 = load i64, ptr %i, align 8, !tbaa !14
  %sub32 = sub i64 %25, 1
  %arrayidx33 = getelementptr inbounds i64, ptr %24, i64 %sub32
  %26 = load i64, ptr %arrayidx33, align 8, !tbaa !14
  %27 = load ptr, ptr %Y.addr, align 8, !tbaa !4
  %p34 = getelementptr inbounds %struct.mbedtls_mpi, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %p34, align 8, !tbaa !13
  %29 = load i64, ptr %i, align 8, !tbaa !14
  %sub35 = sub i64 %29, 1
  %arrayidx36 = getelementptr inbounds i64, ptr %28, i64 %sub35
  %30 = load i64, ptr %arrayidx36, align 8, !tbaa !14
  %cmp37 = icmp ugt i64 %26, %30
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %for.body30
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end39:                                         ; preds = %for.body30
  %31 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p40 = getelementptr inbounds %struct.mbedtls_mpi, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %p40, align 8, !tbaa !13
  %33 = load i64, ptr %i, align 8, !tbaa !14
  %sub41 = sub i64 %33, 1
  %arrayidx42 = getelementptr inbounds i64, ptr %32, i64 %sub41
  %34 = load i64, ptr %arrayidx42, align 8, !tbaa !14
  %35 = load ptr, ptr %Y.addr, align 8, !tbaa !4
  %p43 = getelementptr inbounds %struct.mbedtls_mpi, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %p43, align 8, !tbaa !13
  %37 = load i64, ptr %i, align 8, !tbaa !14
  %sub44 = sub i64 %37, 1
  %arrayidx45 = getelementptr inbounds i64, ptr %36, i64 %sub44
  %38 = load i64, ptr %arrayidx45, align 8, !tbaa !14
  %cmp46 = icmp ult i64 %34, %38
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end39
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end48:                                         ; preds = %if.end39
  br label %for.inc49

for.inc49:                                        ; preds = %if.end48
  %39 = load i64, ptr %i, align 8, !tbaa !14
  %dec50 = add i64 %39, -1
  store i64 %dec50, ptr %i, align 8, !tbaa !14
  br label %for.cond28, !llvm.loop !44

for.end51:                                        ; preds = %for.cond28
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end51, %if.then47, %if.then38, %if.then26, %if.then23, %if.then20
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @mbedtls_mpi_cmp_mpi(ptr noundef %X, ptr noundef %Y) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %Y.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %Y, ptr %Y.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  %0 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %n, align 8, !tbaa !12
  store i64 %1, ptr %i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end3
  %2 = load i64, ptr %i, align 8, !tbaa !14
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %p, align 8, !tbaa !13
  %5 = load i64, ptr %i, align 8, !tbaa !14
  %sub = sub i64 %5, 1
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %sub
  %6 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %cmp4 = icmp ne i64 %6, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i64, ptr %i, align 8, !tbaa !14
  %dec = add i64 %7, -1
  store i64 %dec, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load ptr, ptr %Y.addr, align 8, !tbaa !4
  %n5 = getelementptr inbounds %struct.mbedtls_mpi, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %n5, align 8, !tbaa !12
  store i64 %9, ptr %j, align 8, !tbaa !14
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc15, %for.end
  %10 = load i64, ptr %j, align 8, !tbaa !14
  %cmp7 = icmp ugt i64 %10, 0
  br i1 %cmp7, label %for.body8, label %for.end17

for.body8:                                        ; preds = %for.cond6
  %11 = load ptr, ptr %Y.addr, align 8, !tbaa !4
  %p9 = getelementptr inbounds %struct.mbedtls_mpi, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %p9, align 8, !tbaa !13
  %13 = load i64, ptr %j, align 8, !tbaa !14
  %sub10 = sub i64 %13, 1
  %arrayidx11 = getelementptr inbounds i64, ptr %12, i64 %sub10
  %14 = load i64, ptr %arrayidx11, align 8, !tbaa !14
  %cmp12 = icmp ne i64 %14, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body8
  br label %for.end17

if.end14:                                         ; preds = %for.body8
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %15 = load i64, ptr %j, align 8, !tbaa !14
  %dec16 = add i64 %15, -1
  store i64 %dec16, ptr %j, align 8, !tbaa !14
  br label %for.cond6, !llvm.loop !46

for.end17:                                        ; preds = %if.then13, %for.cond6
  %16 = load i64, ptr %i, align 8, !tbaa !14
  %cmp18 = icmp eq i64 %16, 0
  br i1 %cmp18, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %for.end17
  %17 = load i64, ptr %j, align 8, !tbaa !14
  %cmp19 = icmp eq i64 %17, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true, %for.end17
  %18 = load i64, ptr %i, align 8, !tbaa !14
  %19 = load i64, ptr %j, align 8, !tbaa !14
  %cmp22 = icmp ugt i64 %18, %19
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end21
  %20 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.mbedtls_mpi, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %s, align 8, !tbaa !8
  store i32 %21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %22 = load i64, ptr %j, align 8, !tbaa !14
  %23 = load i64, ptr %i, align 8, !tbaa !14
  %cmp25 = icmp ugt i64 %22, %23
  br i1 %cmp25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end24
  %24 = load ptr, ptr %Y.addr, align 8, !tbaa !4
  %s27 = getelementptr inbounds %struct.mbedtls_mpi, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %s27, align 8, !tbaa !8
  %sub28 = sub nsw i32 0, %25
  store i32 %sub28, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %26 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s30 = getelementptr inbounds %struct.mbedtls_mpi, ptr %26, i32 0, i32 0
  %27 = load i32, ptr %s30, align 8, !tbaa !8
  %cmp31 = icmp sgt i32 %27, 0
  br i1 %cmp31, label %land.lhs.true32, label %if.end36

land.lhs.true32:                                  ; preds = %if.end29
  %28 = load ptr, ptr %Y.addr, align 8, !tbaa !4
  %s33 = getelementptr inbounds %struct.mbedtls_mpi, ptr %28, i32 0, i32 0
  %29 = load i32, ptr %s33, align 8, !tbaa !8
  %cmp34 = icmp slt i32 %29, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %land.lhs.true32
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %land.lhs.true32, %if.end29
  %30 = load ptr, ptr %Y.addr, align 8, !tbaa !4
  %s37 = getelementptr inbounds %struct.mbedtls_mpi, ptr %30, i32 0, i32 0
  %31 = load i32, ptr %s37, align 8, !tbaa !8
  %cmp38 = icmp sgt i32 %31, 0
  br i1 %cmp38, label %land.lhs.true39, label %if.end43

land.lhs.true39:                                  ; preds = %if.end36
  %32 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s40 = getelementptr inbounds %struct.mbedtls_mpi, ptr %32, i32 0, i32 0
  %33 = load i32, ptr %s40, align 8, !tbaa !8
  %cmp41 = icmp slt i32 %33, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %land.lhs.true39
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %land.lhs.true39, %if.end36
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc68, %if.end43
  %34 = load i64, ptr %i, align 8, !tbaa !14
  %cmp45 = icmp ugt i64 %34, 0
  br i1 %cmp45, label %for.body46, label %for.end70

for.body46:                                       ; preds = %for.cond44
  %35 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p47 = getelementptr inbounds %struct.mbedtls_mpi, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %p47, align 8, !tbaa !13
  %37 = load i64, ptr %i, align 8, !tbaa !14
  %sub48 = sub i64 %37, 1
  %arrayidx49 = getelementptr inbounds i64, ptr %36, i64 %sub48
  %38 = load i64, ptr %arrayidx49, align 8, !tbaa !14
  %39 = load ptr, ptr %Y.addr, align 8, !tbaa !4
  %p50 = getelementptr inbounds %struct.mbedtls_mpi, ptr %39, i32 0, i32 2
  %40 = load ptr, ptr %p50, align 8, !tbaa !13
  %41 = load i64, ptr %i, align 8, !tbaa !14
  %sub51 = sub i64 %41, 1
  %arrayidx52 = getelementptr inbounds i64, ptr %40, i64 %sub51
  %42 = load i64, ptr %arrayidx52, align 8, !tbaa !14
  %cmp53 = icmp ugt i64 %38, %42
  br i1 %cmp53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %for.body46
  %43 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s55 = getelementptr inbounds %struct.mbedtls_mpi, ptr %43, i32 0, i32 0
  %44 = load i32, ptr %s55, align 8, !tbaa !8
  store i32 %44, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %for.body46
  %45 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p57 = getelementptr inbounds %struct.mbedtls_mpi, ptr %45, i32 0, i32 2
  %46 = load ptr, ptr %p57, align 8, !tbaa !13
  %47 = load i64, ptr %i, align 8, !tbaa !14
  %sub58 = sub i64 %47, 1
  %arrayidx59 = getelementptr inbounds i64, ptr %46, i64 %sub58
  %48 = load i64, ptr %arrayidx59, align 8, !tbaa !14
  %49 = load ptr, ptr %Y.addr, align 8, !tbaa !4
  %p60 = getelementptr inbounds %struct.mbedtls_mpi, ptr %49, i32 0, i32 2
  %50 = load ptr, ptr %p60, align 8, !tbaa !13
  %51 = load i64, ptr %i, align 8, !tbaa !14
  %sub61 = sub i64 %51, 1
  %arrayidx62 = getelementptr inbounds i64, ptr %50, i64 %sub61
  %52 = load i64, ptr %arrayidx62, align 8, !tbaa !14
  %cmp63 = icmp ult i64 %48, %52
  br i1 %cmp63, label %if.then64, label %if.end67

if.then64:                                        ; preds = %if.end56
  %53 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s65 = getelementptr inbounds %struct.mbedtls_mpi, ptr %53, i32 0, i32 0
  %54 = load i32, ptr %s65, align 8, !tbaa !8
  %sub66 = sub nsw i32 0, %54
  store i32 %sub66, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end67:                                         ; preds = %if.end56
  br label %for.inc68

for.inc68:                                        ; preds = %if.end67
  %55 = load i64, ptr %i, align 8, !tbaa !14
  %dec69 = add i64 %55, -1
  store i64 %dec69, ptr %i, align 8, !tbaa !14
  br label %for.cond44, !llvm.loop !47

for.end70:                                        ; preds = %for.cond44
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end70, %if.then64, %if.then54, %if.then42, %if.then35, %if.then26, %if.then23, %if.then20
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @mbedtls_mpi_cmp_int(ptr noundef %X, i64 noundef %z) #0 {
entry:
  %X.addr = alloca ptr, align 8
  %z.addr = alloca i64, align 8
  %Y = alloca %struct.mbedtls_mpi, align 8
  %p = alloca [1 x i64], align 8
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store i64 %z, ptr %z.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 24, ptr %Y) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %0 = load i64, ptr %z.addr, align 8, !tbaa !14
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %1 = load i64, ptr %z.addr, align 8, !tbaa !14
  %sub = sub nsw i64 0, %1
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %2 = load i64, ptr %z.addr, align 8, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %2, %cond.false ]
  %arraydecay = getelementptr inbounds [1 x i64], ptr %p, i64 0, i64 0
  store i64 %cond, ptr %arraydecay, align 8, !tbaa !14
  %3 = load i64, ptr %z.addr, align 8, !tbaa !14
  %cmp1 = icmp slt i64 %3, 0
  %4 = zext i1 %cmp1 to i64
  %cond2 = select i1 %cmp1, i32 -1, i32 1
  %s = getelementptr inbounds %struct.mbedtls_mpi, ptr %Y, i32 0, i32 0
  store i32 %cond2, ptr %s, align 8, !tbaa !8
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %Y, i32 0, i32 1
  store i64 1, ptr %n, align 8, !tbaa !12
  %arraydecay3 = getelementptr inbounds [1 x i64], ptr %p, i64 0, i64 0
  %p4 = getelementptr inbounds %struct.mbedtls_mpi, ptr %Y, i32 0, i32 2
  store ptr %arraydecay3, ptr %p4, align 8, !tbaa !13
  %5 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef %5, ptr noundef %Y)
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %Y) #10
  ret i32 %call
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_add_abs(ptr noundef %X, ptr noundef %A, ptr noundef %B) #1 {
entry:
  %X.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %o = alloca ptr, align 8
  %p = alloca ptr, align 8
  %c = alloca i64, align 8
  %tmp = alloca i64, align 8
  %T = alloca ptr, align 8
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %B, ptr %B.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 -110, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  br label %do.cond5

do.cond5:                                         ; preds = %do.body4
  br label %do.end6

do.end6:                                          ; preds = %do.cond5
  %0 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %T) #10
  %2 = load ptr, ptr %A.addr, align 8, !tbaa !4
  store ptr %2, ptr %T, align 8, !tbaa !4
  %3 = load ptr, ptr %X.addr, align 8, !tbaa !4
  store ptr %3, ptr %A.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %T, align 8, !tbaa !4
  store ptr %4, ptr %B.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %T) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end6
  %5 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %cmp7 = icmp ne ptr %5, %6
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end
  br label %do.body9

do.body9:                                         ; preds = %if.then8
  %7 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_mpi_copy(ptr noundef %7, ptr noundef %8)
  store i32 %call, ptr %ret, align 4, !tbaa !17
  %cmp10 = icmp ne i32 %call, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.body9
  br label %cleanup

if.end12:                                         ; preds = %do.body9
  br label %do.cond13

do.cond13:                                        ; preds = %if.end12
  br label %do.end14

do.end14:                                         ; preds = %do.cond13
  br label %if.end15

if.end15:                                         ; preds = %do.end14, %if.end
  %9 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.mbedtls_mpi, ptr %9, i32 0, i32 0
  store i32 1, ptr %s, align 8, !tbaa !8
  %10 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %n, align 8, !tbaa !12
  store i64 %11, ptr %j, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end15
  %12 = load i64, ptr %j, align 8, !tbaa !14
  %cmp16 = icmp ugt i64 %12, 0
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %p17 = getelementptr inbounds %struct.mbedtls_mpi, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %p17, align 8, !tbaa !13
  %15 = load i64, ptr %j, align 8, !tbaa !14
  %sub = sub i64 %15, 1
  %arrayidx = getelementptr inbounds i64, ptr %14, i64 %sub
  %16 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %cmp18 = icmp ne i64 %16, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.body
  br label %for.end

if.end20:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %17 = load i64, ptr %j, align 8, !tbaa !14
  %dec = add i64 %17, -1
  store i64 %dec, ptr %j, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %if.then19, %for.cond
  br label %do.body21

do.body21:                                        ; preds = %for.end
  %18 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %19 = load i64, ptr %j, align 8, !tbaa !14
  %call22 = call i32 @mbedtls_mpi_grow(ptr noundef %18, i64 noundef %19)
  store i32 %call22, ptr %ret, align 4, !tbaa !17
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %do.body21
  br label %cleanup

if.end25:                                         ; preds = %do.body21
  br label %do.cond26

do.cond26:                                        ; preds = %if.end25
  br label %do.end27

do.end27:                                         ; preds = %do.cond26
  %20 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %p28 = getelementptr inbounds %struct.mbedtls_mpi, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %p28, align 8, !tbaa !13
  store ptr %21, ptr %o, align 8, !tbaa !4
  %22 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p29 = getelementptr inbounds %struct.mbedtls_mpi, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %p29, align 8, !tbaa !13
  store ptr %23, ptr %p, align 8, !tbaa !4
  store i64 0, ptr %c, align 8, !tbaa !14
  store i64 0, ptr %i, align 8, !tbaa !14
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc38, %do.end27
  %24 = load i64, ptr %i, align 8, !tbaa !14
  %25 = load i64, ptr %j, align 8, !tbaa !14
  %cmp31 = icmp ult i64 %24, %25
  br i1 %cmp31, label %for.body32, label %for.end40

for.body32:                                       ; preds = %for.cond30
  %26 = load ptr, ptr %o, align 8, !tbaa !4
  %27 = load i64, ptr %26, align 8, !tbaa !14
  store i64 %27, ptr %tmp, align 8, !tbaa !14
  %28 = load i64, ptr %c, align 8, !tbaa !14
  %29 = load ptr, ptr %p, align 8, !tbaa !4
  %30 = load i64, ptr %29, align 8, !tbaa !14
  %add = add i64 %30, %28
  store i64 %add, ptr %29, align 8, !tbaa !14
  %31 = load ptr, ptr %p, align 8, !tbaa !4
  %32 = load i64, ptr %31, align 8, !tbaa !14
  %33 = load i64, ptr %c, align 8, !tbaa !14
  %cmp33 = icmp ult i64 %32, %33
  %conv = zext i1 %cmp33 to i64
  store i64 %conv, ptr %c, align 8, !tbaa !14
  %34 = load i64, ptr %tmp, align 8, !tbaa !14
  %35 = load ptr, ptr %p, align 8, !tbaa !4
  %36 = load i64, ptr %35, align 8, !tbaa !14
  %add34 = add i64 %36, %34
  store i64 %add34, ptr %35, align 8, !tbaa !14
  %37 = load ptr, ptr %p, align 8, !tbaa !4
  %38 = load i64, ptr %37, align 8, !tbaa !14
  %39 = load i64, ptr %tmp, align 8, !tbaa !14
  %cmp35 = icmp ult i64 %38, %39
  %conv36 = zext i1 %cmp35 to i64
  %40 = load i64, ptr %c, align 8, !tbaa !14
  %add37 = add i64 %40, %conv36
  store i64 %add37, ptr %c, align 8, !tbaa !14
  br label %for.inc38

for.inc38:                                        ; preds = %for.body32
  %41 = load i64, ptr %i, align 8, !tbaa !14
  %inc = add i64 %41, 1
  store i64 %inc, ptr %i, align 8, !tbaa !14
  %42 = load ptr, ptr %o, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i64, ptr %42, i32 1
  store ptr %incdec.ptr, ptr %o, align 8, !tbaa !4
  %43 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr39 = getelementptr inbounds i64, ptr %43, i32 1
  store ptr %incdec.ptr39, ptr %p, align 8, !tbaa !4
  br label %for.cond30, !llvm.loop !49

for.end40:                                        ; preds = %for.cond30
  br label %while.cond

while.cond:                                       ; preds = %if.end54, %for.end40
  %44 = load i64, ptr %c, align 8, !tbaa !14
  %cmp41 = icmp ne i64 %44, 0
  br i1 %cmp41, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %45 = load i64, ptr %i, align 8, !tbaa !14
  %46 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n42 = getelementptr inbounds %struct.mbedtls_mpi, ptr %46, i32 0, i32 1
  %47 = load i64, ptr %n42, align 8, !tbaa !12
  %cmp43 = icmp uge i64 %45, %47
  br i1 %cmp43, label %if.then44, label %if.end54

if.then44:                                        ; preds = %while.body
  br label %do.body45

do.body45:                                        ; preds = %if.then44
  %48 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %49 = load i64, ptr %i, align 8, !tbaa !14
  %add46 = add i64 %49, 1
  %call47 = call i32 @mbedtls_mpi_grow(ptr noundef %48, i64 noundef %add46)
  store i32 %call47, ptr %ret, align 4, !tbaa !17
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %do.body45
  br label %cleanup

if.end50:                                         ; preds = %do.body45
  br label %do.cond51

do.cond51:                                        ; preds = %if.end50
  br label %do.end52

do.end52:                                         ; preds = %do.cond51
  %50 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p53 = getelementptr inbounds %struct.mbedtls_mpi, ptr %50, i32 0, i32 2
  %51 = load ptr, ptr %p53, align 8, !tbaa !13
  %52 = load i64, ptr %i, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i64, ptr %51, i64 %52
  store ptr %add.ptr, ptr %p, align 8, !tbaa !4
  br label %if.end54

if.end54:                                         ; preds = %do.end52, %while.body
  %53 = load i64, ptr %c, align 8, !tbaa !14
  %54 = load ptr, ptr %p, align 8, !tbaa !4
  %55 = load i64, ptr %54, align 8, !tbaa !14
  %add55 = add i64 %55, %53
  store i64 %add55, ptr %54, align 8, !tbaa !14
  %56 = load ptr, ptr %p, align 8, !tbaa !4
  %57 = load i64, ptr %56, align 8, !tbaa !14
  %58 = load i64, ptr %c, align 8, !tbaa !14
  %cmp56 = icmp ult i64 %57, %58
  %conv57 = zext i1 %cmp56 to i64
  store i64 %conv57, ptr %c, align 8, !tbaa !14
  %59 = load i64, ptr %i, align 8, !tbaa !14
  %inc58 = add i64 %59, 1
  store i64 %inc58, ptr %i, align 8, !tbaa !14
  %60 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr59 = getelementptr inbounds i64, ptr %60, i32 1
  store ptr %incdec.ptr59, ptr %p, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !50

while.end:                                        ; preds = %while.cond
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then49, %if.then24, %if.then11
  %61 = load i32, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  ret i32 %61
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_sub_abs(ptr noundef %X, ptr noundef %A, ptr noundef %B) #1 {
entry:
  %X.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  %carry = alloca i64, align 8
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %B, ptr %B.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 -110, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %carry) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  br label %do.cond5

do.cond5:                                         ; preds = %do.body4
  br label %do.end6

do.end6:                                          ; preds = %do.cond5
  %0 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %n7 = getelementptr inbounds %struct.mbedtls_mpi, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %n7, align 8, !tbaa !12
  store i64 %1, ptr %n, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end6
  %2 = load i64, ptr %n, align 8, !tbaa !14
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %p, align 8, !tbaa !13
  %5 = load i64, ptr %n, align 8, !tbaa !14
  %sub = sub i64 %5, 1
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %sub
  %6 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %cmp8 = icmp ne i64 %6, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i64, ptr %n, align 8, !tbaa !14
  %dec = add i64 %7, -1
  store i64 %dec, ptr %n, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load i64, ptr %n, align 8, !tbaa !14
  %9 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %n9 = getelementptr inbounds %struct.mbedtls_mpi, ptr %9, i32 0, i32 1
  %10 = load i64, ptr %n9, align 8, !tbaa !12
  %cmp10 = icmp ugt i64 %8, %10
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  store i32 -10, ptr %ret, align 4, !tbaa !17
  br label %cleanup

if.end12:                                         ; preds = %for.end
  br label %do.body13

do.body13:                                        ; preds = %if.end12
  %11 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %n14 = getelementptr inbounds %struct.mbedtls_mpi, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %n14, align 8, !tbaa !12
  %call = call i32 @mbedtls_mpi_grow(ptr noundef %11, i64 noundef %13)
  store i32 %call, ptr %ret, align 4, !tbaa !17
  %cmp15 = icmp ne i32 %call, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body13
  br label %cleanup

if.end17:                                         ; preds = %do.body13
  br label %do.cond18

do.cond18:                                        ; preds = %if.end17
  br label %do.end19

do.end19:                                         ; preds = %do.cond18
  %14 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %n20 = getelementptr inbounds %struct.mbedtls_mpi, ptr %14, i32 0, i32 1
  %15 = load i64, ptr %n20, align 8, !tbaa !12
  %16 = load i64, ptr %n, align 8, !tbaa !14
  %cmp21 = icmp ugt i64 %15, %16
  br i1 %cmp21, label %if.then22, label %if.end28

if.then22:                                        ; preds = %do.end19
  %17 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p23 = getelementptr inbounds %struct.mbedtls_mpi, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %p23, align 8, !tbaa !13
  %19 = load i64, ptr %n, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i64, ptr %18, i64 %19
  %20 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %p24 = getelementptr inbounds %struct.mbedtls_mpi, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %p24, align 8, !tbaa !13
  %22 = load i64, ptr %n, align 8, !tbaa !14
  %add.ptr25 = getelementptr inbounds i64, ptr %21, i64 %22
  %23 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %n26 = getelementptr inbounds %struct.mbedtls_mpi, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %n26, align 8, !tbaa !12
  %25 = load i64, ptr %n, align 8, !tbaa !14
  %sub27 = sub i64 %24, %25
  %mul = mul i64 %sub27, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr, ptr align 8 %add.ptr25, i64 %mul, i1 false)
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %do.end19
  %26 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n29 = getelementptr inbounds %struct.mbedtls_mpi, ptr %26, i32 0, i32 1
  %27 = load i64, ptr %n29, align 8, !tbaa !12
  %28 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %n30 = getelementptr inbounds %struct.mbedtls_mpi, ptr %28, i32 0, i32 1
  %29 = load i64, ptr %n30, align 8, !tbaa !12
  %cmp31 = icmp ugt i64 %27, %29
  br i1 %cmp31, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.end28
  %30 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p33 = getelementptr inbounds %struct.mbedtls_mpi, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %p33, align 8, !tbaa !13
  %32 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %n34 = getelementptr inbounds %struct.mbedtls_mpi, ptr %32, i32 0, i32 1
  %33 = load i64, ptr %n34, align 8, !tbaa !12
  %add.ptr35 = getelementptr inbounds i64, ptr %31, i64 %33
  %34 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n36 = getelementptr inbounds %struct.mbedtls_mpi, ptr %34, i32 0, i32 1
  %35 = load i64, ptr %n36, align 8, !tbaa !12
  %36 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %n37 = getelementptr inbounds %struct.mbedtls_mpi, ptr %36, i32 0, i32 1
  %37 = load i64, ptr %n37, align 8, !tbaa !12
  %sub38 = sub i64 %35, %37
  %mul39 = mul i64 %sub38, 8
  call void @llvm.memset.p0.i64(ptr align 8 %add.ptr35, i8 0, i64 %mul39, i1 false)
  br label %if.end40

if.end40:                                         ; preds = %if.then32, %if.end28
  %38 = load i64, ptr %n, align 8, !tbaa !14
  %39 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p41 = getelementptr inbounds %struct.mbedtls_mpi, ptr %39, i32 0, i32 2
  %40 = load ptr, ptr %p41, align 8, !tbaa !13
  %41 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %p42 = getelementptr inbounds %struct.mbedtls_mpi, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %p42, align 8, !tbaa !13
  %43 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %p43 = getelementptr inbounds %struct.mbedtls_mpi, ptr %43, i32 0, i32 2
  %44 = load ptr, ptr %p43, align 8, !tbaa !13
  %call44 = call noundef i64 @_ZL11mpi_sub_hlpmPmPKmS1_(i64 noundef %38, ptr noundef %40, ptr noundef %42, ptr noundef %44)
  store i64 %call44, ptr %carry, align 8, !tbaa !14
  %45 = load i64, ptr %carry, align 8, !tbaa !14
  %cmp45 = icmp ne i64 %45, 0
  br i1 %cmp45, label %if.then46, label %if.end66

if.then46:                                        ; preds = %if.end40
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc57, %if.then46
  %46 = load i64, ptr %n, align 8, !tbaa !14
  %47 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n48 = getelementptr inbounds %struct.mbedtls_mpi, ptr %47, i32 0, i32 1
  %48 = load i64, ptr %n48, align 8, !tbaa !12
  %cmp49 = icmp ult i64 %46, %48
  br i1 %cmp49, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond47
  %49 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p50 = getelementptr inbounds %struct.mbedtls_mpi, ptr %49, i32 0, i32 2
  %50 = load ptr, ptr %p50, align 8, !tbaa !13
  %51 = load i64, ptr %n, align 8, !tbaa !14
  %arrayidx51 = getelementptr inbounds i64, ptr %50, i64 %51
  %52 = load i64, ptr %arrayidx51, align 8, !tbaa !14
  %cmp52 = icmp eq i64 %52, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond47
  %53 = phi i1 [ false, %for.cond47 ], [ %cmp52, %land.rhs ]
  br i1 %53, label %for.body53, label %for.end58

for.body53:                                       ; preds = %land.end
  %54 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p54 = getelementptr inbounds %struct.mbedtls_mpi, ptr %54, i32 0, i32 2
  %55 = load ptr, ptr %p54, align 8, !tbaa !13
  %56 = load i64, ptr %n, align 8, !tbaa !14
  %arrayidx55 = getelementptr inbounds i64, ptr %55, i64 %56
  %57 = load i64, ptr %arrayidx55, align 8, !tbaa !14
  %dec56 = add i64 %57, -1
  store i64 %dec56, ptr %arrayidx55, align 8, !tbaa !14
  br label %for.inc57

for.inc57:                                        ; preds = %for.body53
  %58 = load i64, ptr %n, align 8, !tbaa !14
  %inc = add i64 %58, 1
  store i64 %inc, ptr %n, align 8, !tbaa !14
  br label %for.cond47, !llvm.loop !52

for.end58:                                        ; preds = %land.end
  %59 = load i64, ptr %n, align 8, !tbaa !14
  %60 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n59 = getelementptr inbounds %struct.mbedtls_mpi, ptr %60, i32 0, i32 1
  %61 = load i64, ptr %n59, align 8, !tbaa !12
  %cmp60 = icmp eq i64 %59, %61
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %for.end58
  store i32 -10, ptr %ret, align 4, !tbaa !17
  br label %cleanup

if.end62:                                         ; preds = %for.end58
  %62 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p63 = getelementptr inbounds %struct.mbedtls_mpi, ptr %62, i32 0, i32 2
  %63 = load ptr, ptr %p63, align 8, !tbaa !13
  %64 = load i64, ptr %n, align 8, !tbaa !14
  %arrayidx64 = getelementptr inbounds i64, ptr %63, i64 %64
  %65 = load i64, ptr %arrayidx64, align 8, !tbaa !14
  %dec65 = add i64 %65, -1
  store i64 %dec65, ptr %arrayidx64, align 8, !tbaa !14
  br label %if.end66

if.end66:                                         ; preds = %if.end62, %if.end40
  %66 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.mbedtls_mpi, ptr %66, i32 0, i32 0
  store i32 1, ptr %s, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then61, %if.then16, %if.then11
  %67 = load i32, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr %carry) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  ret i32 %67
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @_ZL11mpi_sub_hlpmPmPKmS1_(i64 noundef %n, ptr noundef %d, ptr noundef %l, ptr noundef %r) #0 {
entry:
  %n.addr = alloca i64, align 8
  %d.addr = alloca ptr, align 8
  %l.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %c = alloca i64, align 8
  %t = alloca i64, align 8
  %z = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !14
  store ptr %d, ptr %d.addr, align 8, !tbaa !4
  store ptr %l, ptr %l.addr, align 8, !tbaa !4
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #10
  store i64 0, ptr %c, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #10
  store i64 0, ptr %i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !14
  %1 = load i64, ptr %n.addr, align 8, !tbaa !14
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %3 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %3
  %4 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %5 = load i64, ptr %c, align 8, !tbaa !14
  %cmp1 = icmp ult i64 %4, %5
  %conv = zext i1 %cmp1 to i64
  store i64 %conv, ptr %z, align 8, !tbaa !14
  %6 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %7 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 %7
  %8 = load i64, ptr %arrayidx2, align 8, !tbaa !14
  %9 = load i64, ptr %c, align 8, !tbaa !14
  %sub = sub i64 %8, %9
  store i64 %sub, ptr %t, align 8, !tbaa !14
  %10 = load i64, ptr %t, align 8, !tbaa !14
  %11 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %12 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx3 = getelementptr inbounds i64, ptr %11, i64 %12
  %13 = load i64, ptr %arrayidx3, align 8, !tbaa !14
  %cmp4 = icmp ult i64 %10, %13
  %conv5 = zext i1 %cmp4 to i64
  %14 = load i64, ptr %z, align 8, !tbaa !14
  %add = add i64 %conv5, %14
  store i64 %add, ptr %c, align 8, !tbaa !14
  %15 = load i64, ptr %t, align 8, !tbaa !14
  %16 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %17 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx6 = getelementptr inbounds i64, ptr %16, i64 %17
  %18 = load i64, ptr %arrayidx6, align 8, !tbaa !14
  %sub7 = sub i64 %15, %18
  %19 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %20 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx8 = getelementptr inbounds i64, ptr %19, i64 %20
  store i64 %sub7, ptr %arrayidx8, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i64, ptr %i, align 8, !tbaa !14
  %inc = add i64 %21, 1
  store i64 %inc, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  %22 = load i64, ptr %c, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  ret i64 %22
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_add_mpi(ptr noundef %X, ptr noundef %A, ptr noundef %B) #1 {
entry:
  %X.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %s = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %B, ptr %B.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  br label %do.cond5

do.cond5:                                         ; preds = %do.body4
  br label %do.end6

do.end6:                                          ; preds = %do.cond5
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %s7 = getelementptr inbounds %struct.mbedtls_mpi, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %s7, align 8, !tbaa !8
  store i32 %1, ptr %s, align 4, !tbaa !17
  %2 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %s8 = getelementptr inbounds %struct.mbedtls_mpi, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %s8, align 8, !tbaa !8
  %4 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %s9 = getelementptr inbounds %struct.mbedtls_mpi, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %s9, align 8, !tbaa !8
  %mul = mul nsw i32 %3, %5
  %cmp = icmp slt i32 %mul, 0
  br i1 %cmp, label %if.then, label %if.else28

if.then:                                          ; preds = %do.end6
  %6 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_mpi_cmp_abs(ptr noundef %6, ptr noundef %7)
  %cmp10 = icmp sge i32 %call, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  %8 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %call13 = call i32 @mbedtls_mpi_sub_abs(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store i32 %call13, ptr %ret, align 4, !tbaa !17
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %do.body12
  br label %cleanup

if.end:                                           ; preds = %do.body12
  br label %do.cond16

do.cond16:                                        ; preds = %if.end
  br label %do.end17

do.end17:                                         ; preds = %do.cond16
  %11 = load i32, ptr %s, align 4, !tbaa !17
  %12 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s18 = getelementptr inbounds %struct.mbedtls_mpi, ptr %12, i32 0, i32 0
  store i32 %11, ptr %s18, align 8, !tbaa !8
  br label %if.end27

if.else:                                          ; preds = %if.then
  br label %do.body19

do.body19:                                        ; preds = %if.else
  %13 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call20 = call i32 @mbedtls_mpi_sub_abs(ptr noundef %13, ptr noundef %14, ptr noundef %15)
  store i32 %call20, ptr %ret, align 4, !tbaa !17
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %do.body19
  br label %cleanup

if.end23:                                         ; preds = %do.body19
  br label %do.cond24

do.cond24:                                        ; preds = %if.end23
  br label %do.end25

do.end25:                                         ; preds = %do.cond24
  %16 = load i32, ptr %s, align 4, !tbaa !17
  %sub = sub nsw i32 0, %16
  %17 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s26 = getelementptr inbounds %struct.mbedtls_mpi, ptr %17, i32 0, i32 0
  store i32 %sub, ptr %s26, align 8, !tbaa !8
  br label %if.end27

if.end27:                                         ; preds = %do.end25, %do.end17
  br label %if.end37

if.else28:                                        ; preds = %do.end6
  br label %do.body29

do.body29:                                        ; preds = %if.else28
  %18 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %call30 = call i32 @mbedtls_mpi_add_abs(ptr noundef %18, ptr noundef %19, ptr noundef %20)
  store i32 %call30, ptr %ret, align 4, !tbaa !17
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.body29
  br label %cleanup

if.end33:                                         ; preds = %do.body29
  br label %do.cond34

do.cond34:                                        ; preds = %if.end33
  br label %do.end35

do.end35:                                         ; preds = %do.cond34
  %21 = load i32, ptr %s, align 4, !tbaa !17
  %22 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s36 = getelementptr inbounds %struct.mbedtls_mpi, ptr %22, i32 0, i32 0
  store i32 %21, ptr %s36, align 8, !tbaa !8
  br label %if.end37

if.end37:                                         ; preds = %do.end35, %if.end27
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then32, %if.then22, %if.then15
  %23 = load i32, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  ret i32 %23
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_sub_mpi(ptr noundef %X, ptr noundef %A, ptr noundef %B) #1 {
entry:
  %X.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %s = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %B, ptr %B.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  br label %do.cond5

do.cond5:                                         ; preds = %do.body4
  br label %do.end6

do.end6:                                          ; preds = %do.cond5
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %s7 = getelementptr inbounds %struct.mbedtls_mpi, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %s7, align 8, !tbaa !8
  store i32 %1, ptr %s, align 4, !tbaa !17
  %2 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %s8 = getelementptr inbounds %struct.mbedtls_mpi, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %s8, align 8, !tbaa !8
  %4 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %s9 = getelementptr inbounds %struct.mbedtls_mpi, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %s9, align 8, !tbaa !8
  %mul = mul nsw i32 %3, %5
  %cmp = icmp sgt i32 %mul, 0
  br i1 %cmp, label %if.then, label %if.else28

if.then:                                          ; preds = %do.end6
  %6 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_mpi_cmp_abs(ptr noundef %6, ptr noundef %7)
  %cmp10 = icmp sge i32 %call, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  %8 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %call13 = call i32 @mbedtls_mpi_sub_abs(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store i32 %call13, ptr %ret, align 4, !tbaa !17
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %do.body12
  br label %cleanup

if.end:                                           ; preds = %do.body12
  br label %do.cond16

do.cond16:                                        ; preds = %if.end
  br label %do.end17

do.end17:                                         ; preds = %do.cond16
  %11 = load i32, ptr %s, align 4, !tbaa !17
  %12 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s18 = getelementptr inbounds %struct.mbedtls_mpi, ptr %12, i32 0, i32 0
  store i32 %11, ptr %s18, align 8, !tbaa !8
  br label %if.end27

if.else:                                          ; preds = %if.then
  br label %do.body19

do.body19:                                        ; preds = %if.else
  %13 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call20 = call i32 @mbedtls_mpi_sub_abs(ptr noundef %13, ptr noundef %14, ptr noundef %15)
  store i32 %call20, ptr %ret, align 4, !tbaa !17
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %do.body19
  br label %cleanup

if.end23:                                         ; preds = %do.body19
  br label %do.cond24

do.cond24:                                        ; preds = %if.end23
  br label %do.end25

do.end25:                                         ; preds = %do.cond24
  %16 = load i32, ptr %s, align 4, !tbaa !17
  %sub = sub nsw i32 0, %16
  %17 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s26 = getelementptr inbounds %struct.mbedtls_mpi, ptr %17, i32 0, i32 0
  store i32 %sub, ptr %s26, align 8, !tbaa !8
  br label %if.end27

if.end27:                                         ; preds = %do.end25, %do.end17
  br label %if.end37

if.else28:                                        ; preds = %do.end6
  br label %do.body29

do.body29:                                        ; preds = %if.else28
  %18 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %call30 = call i32 @mbedtls_mpi_add_abs(ptr noundef %18, ptr noundef %19, ptr noundef %20)
  store i32 %call30, ptr %ret, align 4, !tbaa !17
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.body29
  br label %cleanup

if.end33:                                         ; preds = %do.body29
  br label %do.cond34

do.cond34:                                        ; preds = %if.end33
  br label %do.end35

do.end35:                                         ; preds = %do.cond34
  %21 = load i32, ptr %s, align 4, !tbaa !17
  %22 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s36 = getelementptr inbounds %struct.mbedtls_mpi, ptr %22, i32 0, i32 0
  store i32 %21, ptr %s36, align 8, !tbaa !8
  br label %if.end37

if.end37:                                         ; preds = %do.end35, %if.end27
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then32, %if.then22, %if.then15
  %23 = load i32, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  ret i32 %23
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_sub_int(ptr noundef %X, ptr noundef %A, i64 noundef %b) #1 {
entry:
  %X.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %b.addr = alloca i64, align 8
  %B = alloca %struct.mbedtls_mpi, align 8
  %p = alloca [1 x i64], align 8
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 24, ptr %B) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  %0 = load i64, ptr %b.addr, align 8, !tbaa !14
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end3
  %1 = load i64, ptr %b.addr, align 8, !tbaa !14
  %sub = sub nsw i64 0, %1
  br label %cond.end

cond.false:                                       ; preds = %do.end3
  %2 = load i64, ptr %b.addr, align 8, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %2, %cond.false ]
  %arrayidx = getelementptr inbounds [1 x i64], ptr %p, i64 0, i64 0
  store i64 %cond, ptr %arrayidx, align 8, !tbaa !14
  %3 = load i64, ptr %b.addr, align 8, !tbaa !14
  %cmp4 = icmp slt i64 %3, 0
  %4 = zext i1 %cmp4 to i64
  %cond5 = select i1 %cmp4, i32 -1, i32 1
  %s = getelementptr inbounds %struct.mbedtls_mpi, ptr %B, i32 0, i32 0
  store i32 %cond5, ptr %s, align 8, !tbaa !8
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %B, i32 0, i32 1
  store i64 1, ptr %n, align 8, !tbaa !12
  %arraydecay = getelementptr inbounds [1 x i64], ptr %p, i64 0, i64 0
  %p6 = getelementptr inbounds %struct.mbedtls_mpi, ptr %B, i32 0, i32 2
  store ptr %arraydecay, ptr %p6, align 8, !tbaa !13
  %5 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_mpi_sub_mpi(ptr noundef %5, ptr noundef %6, ptr noundef %B)
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %B) #10
  ret i32 %call
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_mul_mpi(ptr noundef %X, ptr noundef %A, ptr noundef %B) #1 {
entry:
  %X.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %TA = alloca %struct.mbedtls_mpi, align 8
  %TB = alloca %struct.mbedtls_mpi, align 8
  %result_is_zero = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %B, ptr %B.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 -110, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %TA) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %TB) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %result_is_zero) #10
  store i32 0, ptr %result_is_zero, align 4, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  br label %do.cond5

do.cond5:                                         ; preds = %do.body4
  br label %do.end6

do.end6:                                          ; preds = %do.cond5
  call void @mbedtls_mpi_init(ptr noundef %TA)
  call void @mbedtls_mpi_init(ptr noundef %TB)
  %0 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %do.end6
  br label %do.body7

do.body7:                                         ; preds = %if.then
  %2 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_mpi_copy(ptr noundef %TA, ptr noundef %2)
  store i32 %call, ptr %ret, align 4, !tbaa !17
  %cmp8 = icmp ne i32 %call, 0
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %do.body7
  br label %cleanup

if.end:                                           ; preds = %do.body7
  br label %do.cond10

do.cond10:                                        ; preds = %if.end
  br label %do.end11

do.end11:                                         ; preds = %do.cond10
  store ptr %TA, ptr %A.addr, align 8, !tbaa !4
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %do.end6
  %3 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %cmp13 = icmp eq ptr %3, %4
  br i1 %cmp13, label %if.then14, label %if.end22

if.then14:                                        ; preds = %if.end12
  br label %do.body15

do.body15:                                        ; preds = %if.then14
  %5 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %call16 = call i32 @mbedtls_mpi_copy(ptr noundef %TB, ptr noundef %5)
  store i32 %call16, ptr %ret, align 4, !tbaa !17
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.body15
  br label %cleanup

if.end19:                                         ; preds = %do.body15
  br label %do.cond20

do.cond20:                                        ; preds = %if.end19
  br label %do.end21

do.end21:                                         ; preds = %do.cond20
  store ptr %TB, ptr %B.addr, align 8, !tbaa !4
  br label %if.end22

if.end22:                                         ; preds = %do.end21, %if.end12
  %6 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %n, align 8, !tbaa !12
  store i64 %7, ptr %i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end22
  %8 = load i64, ptr %i, align 8, !tbaa !14
  %cmp23 = icmp ugt i64 %8, 0
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %p, align 8, !tbaa !13
  %11 = load i64, ptr %i, align 8, !tbaa !14
  %sub = sub i64 %11, 1
  %arrayidx = getelementptr inbounds i64, ptr %10, i64 %sub
  %12 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %cmp24 = icmp ne i64 %12, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.body
  br label %for.end

if.end26:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %13 = load i64, ptr %i, align 8, !tbaa !14
  %dec = add i64 %13, -1
  store i64 %dec, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !54

for.end:                                          ; preds = %if.then25, %for.cond
  %14 = load i64, ptr %i, align 8, !tbaa !14
  %cmp27 = icmp eq i64 %14, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %for.end
  store i32 1, ptr %result_is_zero, align 4, !tbaa !17
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %for.end
  %15 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %n30 = getelementptr inbounds %struct.mbedtls_mpi, ptr %15, i32 0, i32 1
  %16 = load i64, ptr %n30, align 8, !tbaa !12
  store i64 %16, ptr %j, align 8, !tbaa !14
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc40, %if.end29
  %17 = load i64, ptr %j, align 8, !tbaa !14
  %cmp32 = icmp ugt i64 %17, 0
  br i1 %cmp32, label %for.body33, label %for.end42

for.body33:                                       ; preds = %for.cond31
  %18 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %p34 = getelementptr inbounds %struct.mbedtls_mpi, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %p34, align 8, !tbaa !13
  %20 = load i64, ptr %j, align 8, !tbaa !14
  %sub35 = sub i64 %20, 1
  %arrayidx36 = getelementptr inbounds i64, ptr %19, i64 %sub35
  %21 = load i64, ptr %arrayidx36, align 8, !tbaa !14
  %cmp37 = icmp ne i64 %21, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %for.body33
  br label %for.end42

if.end39:                                         ; preds = %for.body33
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39
  %22 = load i64, ptr %j, align 8, !tbaa !14
  %dec41 = add i64 %22, -1
  store i64 %dec41, ptr %j, align 8, !tbaa !14
  br label %for.cond31, !llvm.loop !55

for.end42:                                        ; preds = %if.then38, %for.cond31
  %23 = load i64, ptr %j, align 8, !tbaa !14
  %cmp43 = icmp eq i64 %23, 0
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %for.end42
  store i32 1, ptr %result_is_zero, align 4, !tbaa !17
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %for.end42
  br label %do.body46

do.body46:                                        ; preds = %if.end45
  %24 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %25 = load i64, ptr %i, align 8, !tbaa !14
  %26 = load i64, ptr %j, align 8, !tbaa !14
  %add = add i64 %25, %26
  %call47 = call i32 @mbedtls_mpi_grow(ptr noundef %24, i64 noundef %add)
  store i32 %call47, ptr %ret, align 4, !tbaa !17
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %do.body46
  br label %cleanup

if.end50:                                         ; preds = %do.body46
  br label %do.cond51

do.cond51:                                        ; preds = %if.end50
  br label %do.end52

do.end52:                                         ; preds = %do.cond51
  br label %do.body53

do.body53:                                        ; preds = %do.end52
  %27 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %call54 = call i32 @mbedtls_mpi_lset(ptr noundef %27, i64 noundef 0)
  store i32 %call54, ptr %ret, align 4, !tbaa !17
  %cmp55 = icmp ne i32 %call54, 0
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %do.body53
  br label %cleanup

if.end57:                                         ; preds = %do.body53
  br label %do.cond58

do.cond58:                                        ; preds = %if.end57
  br label %do.end59

do.end59:                                         ; preds = %do.cond58
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc69, %do.end59
  %28 = load i64, ptr %j, align 8, !tbaa !14
  %cmp61 = icmp ugt i64 %28, 0
  br i1 %cmp61, label %for.body62, label %for.end71

for.body62:                                       ; preds = %for.cond60
  %29 = load i64, ptr %i, align 8, !tbaa !14
  %30 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %p63 = getelementptr inbounds %struct.mbedtls_mpi, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %p63, align 8, !tbaa !13
  %32 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p64 = getelementptr inbounds %struct.mbedtls_mpi, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %p64, align 8, !tbaa !13
  %34 = load i64, ptr %j, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i64, ptr %33, i64 %34
  %add.ptr65 = getelementptr inbounds i64, ptr %add.ptr, i64 -1
  %35 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %p66 = getelementptr inbounds %struct.mbedtls_mpi, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %p66, align 8, !tbaa !13
  %37 = load i64, ptr %j, align 8, !tbaa !14
  %sub67 = sub i64 %37, 1
  %arrayidx68 = getelementptr inbounds i64, ptr %36, i64 %sub67
  %38 = load i64, ptr %arrayidx68, align 8, !tbaa !14
  call void @_ZL11mpi_mul_hlpmPKmPmm(i64 noundef %29, ptr noundef %31, ptr noundef %add.ptr65, i64 noundef %38)
  br label %for.inc69

for.inc69:                                        ; preds = %for.body62
  %39 = load i64, ptr %j, align 8, !tbaa !14
  %dec70 = add i64 %39, -1
  store i64 %dec70, ptr %j, align 8, !tbaa !14
  br label %for.cond60, !llvm.loop !56

for.end71:                                        ; preds = %for.cond60
  %40 = load i32, ptr %result_is_zero, align 4, !tbaa !17
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then72, label %if.else

if.then72:                                        ; preds = %for.end71
  %41 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.mbedtls_mpi, ptr %41, i32 0, i32 0
  store i32 1, ptr %s, align 8, !tbaa !8
  br label %if.end76

if.else:                                          ; preds = %for.end71
  %42 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %s73 = getelementptr inbounds %struct.mbedtls_mpi, ptr %42, i32 0, i32 0
  %43 = load i32, ptr %s73, align 8, !tbaa !8
  %44 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %s74 = getelementptr inbounds %struct.mbedtls_mpi, ptr %44, i32 0, i32 0
  %45 = load i32, ptr %s74, align 8, !tbaa !8
  %mul = mul nsw i32 %43, %45
  %46 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s75 = getelementptr inbounds %struct.mbedtls_mpi, ptr %46, i32 0, i32 0
  store i32 %mul, ptr %s75, align 8, !tbaa !8
  br label %if.end76

if.end76:                                         ; preds = %if.else, %if.then72
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.then56, %if.then49, %if.then18, %if.then9
  call void @mbedtls_mpi_free(ptr noundef %TB)
  call void @mbedtls_mpi_free(ptr noundef %TA)
  %47 = load i32, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %result_is_zero) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %TB) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %TA) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  ret i32 %47
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL11mpi_mul_hlpmPKmPmm(i64 noundef %i, ptr noundef %s, ptr noundef %d, i64 noundef %b) #0 {
entry:
  %i.addr = alloca i64, align 8
  %s.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %b.addr = alloca i64, align 8
  %c = alloca i64, align 8
  %r = alloca i128, align 16
  %r0 = alloca i64, align 8
  %r1 = alloca i64, align 8
  %r255 = alloca i128, align 16
  %r0256 = alloca i64, align 8
  %r1257 = alloca i64, align 8
  %r392 = alloca i128, align 16
  %r0393 = alloca i64, align 8
  %r1394 = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8, !tbaa !14
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store ptr %d, ptr %d.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #10
  store i64 0, ptr %c, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i.addr, align 8, !tbaa !14
  %cmp = icmp uge i64 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %r0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %r1) #10
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i64, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8, !tbaa !4
  %2 = load i64, ptr %1, align 8, !tbaa !14
  %conv = zext i64 %2 to i128
  %3 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv1 = zext i64 %3 to i128
  %mul = mul i128 %conv, %conv1
  store i128 %mul, ptr %r, align 16, !tbaa !57
  %4 = load i128, ptr %r, align 16, !tbaa !57
  %conv2 = trunc i128 %4 to i64
  store i64 %conv2, ptr %r0, align 8, !tbaa !14
  %5 = load i128, ptr %r, align 16, !tbaa !57
  %shr = lshr i128 %5, 64
  %conv3 = trunc i128 %shr to i64
  store i64 %conv3, ptr %r1, align 8, !tbaa !14
  %6 = load i64, ptr %c, align 8, !tbaa !14
  %7 = load i64, ptr %r0, align 8, !tbaa !14
  %add = add i64 %7, %6
  store i64 %add, ptr %r0, align 8, !tbaa !14
  %8 = load i64, ptr %r0, align 8, !tbaa !14
  %9 = load i64, ptr %c, align 8, !tbaa !14
  %cmp4 = icmp ult i64 %8, %9
  %conv5 = zext i1 %cmp4 to i64
  %10 = load i64, ptr %r1, align 8, !tbaa !14
  %add6 = add i64 %10, %conv5
  store i64 %add6, ptr %r1, align 8, !tbaa !14
  %11 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %12 = load i64, ptr %11, align 8, !tbaa !14
  %13 = load i64, ptr %r0, align 8, !tbaa !14
  %add7 = add i64 %13, %12
  store i64 %add7, ptr %r0, align 8, !tbaa !14
  %14 = load i64, ptr %r0, align 8, !tbaa !14
  %15 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %16 = load i64, ptr %15, align 8, !tbaa !14
  %cmp8 = icmp ult i64 %14, %16
  %conv9 = zext i1 %cmp8 to i64
  %17 = load i64, ptr %r1, align 8, !tbaa !14
  %add10 = add i64 %17, %conv9
  store i64 %add10, ptr %r1, align 8, !tbaa !14
  %18 = load i64, ptr %r1, align 8, !tbaa !14
  store i64 %18, ptr %c, align 8, !tbaa !14
  %19 = load i64, ptr %r0, align 8, !tbaa !14
  %20 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr11 = getelementptr inbounds i64, ptr %20, i32 1
  store ptr %incdec.ptr11, ptr %d.addr, align 8, !tbaa !4
  store i64 %19, ptr %20, align 8, !tbaa !14
  %21 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr12 = getelementptr inbounds i64, ptr %21, i32 1
  store ptr %incdec.ptr12, ptr %s.addr, align 8, !tbaa !4
  %22 = load i64, ptr %21, align 8, !tbaa !14
  %conv13 = zext i64 %22 to i128
  %23 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv14 = zext i64 %23 to i128
  %mul15 = mul i128 %conv13, %conv14
  store i128 %mul15, ptr %r, align 16, !tbaa !57
  %24 = load i128, ptr %r, align 16, !tbaa !57
  %conv16 = trunc i128 %24 to i64
  store i64 %conv16, ptr %r0, align 8, !tbaa !14
  %25 = load i128, ptr %r, align 16, !tbaa !57
  %shr17 = lshr i128 %25, 64
  %conv18 = trunc i128 %shr17 to i64
  store i64 %conv18, ptr %r1, align 8, !tbaa !14
  %26 = load i64, ptr %c, align 8, !tbaa !14
  %27 = load i64, ptr %r0, align 8, !tbaa !14
  %add19 = add i64 %27, %26
  store i64 %add19, ptr %r0, align 8, !tbaa !14
  %28 = load i64, ptr %r0, align 8, !tbaa !14
  %29 = load i64, ptr %c, align 8, !tbaa !14
  %cmp20 = icmp ult i64 %28, %29
  %conv21 = zext i1 %cmp20 to i64
  %30 = load i64, ptr %r1, align 8, !tbaa !14
  %add22 = add i64 %30, %conv21
  store i64 %add22, ptr %r1, align 8, !tbaa !14
  %31 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %32 = load i64, ptr %31, align 8, !tbaa !14
  %33 = load i64, ptr %r0, align 8, !tbaa !14
  %add23 = add i64 %33, %32
  store i64 %add23, ptr %r0, align 8, !tbaa !14
  %34 = load i64, ptr %r0, align 8, !tbaa !14
  %35 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %36 = load i64, ptr %35, align 8, !tbaa !14
  %cmp24 = icmp ult i64 %34, %36
  %conv25 = zext i1 %cmp24 to i64
  %37 = load i64, ptr %r1, align 8, !tbaa !14
  %add26 = add i64 %37, %conv25
  store i64 %add26, ptr %r1, align 8, !tbaa !14
  %38 = load i64, ptr %r1, align 8, !tbaa !14
  store i64 %38, ptr %c, align 8, !tbaa !14
  %39 = load i64, ptr %r0, align 8, !tbaa !14
  %40 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr27 = getelementptr inbounds i64, ptr %40, i32 1
  store ptr %incdec.ptr27, ptr %d.addr, align 8, !tbaa !4
  store i64 %39, ptr %40, align 8, !tbaa !14
  %41 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr28 = getelementptr inbounds i64, ptr %41, i32 1
  store ptr %incdec.ptr28, ptr %s.addr, align 8, !tbaa !4
  %42 = load i64, ptr %41, align 8, !tbaa !14
  %conv29 = zext i64 %42 to i128
  %43 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv30 = zext i64 %43 to i128
  %mul31 = mul i128 %conv29, %conv30
  store i128 %mul31, ptr %r, align 16, !tbaa !57
  %44 = load i128, ptr %r, align 16, !tbaa !57
  %conv32 = trunc i128 %44 to i64
  store i64 %conv32, ptr %r0, align 8, !tbaa !14
  %45 = load i128, ptr %r, align 16, !tbaa !57
  %shr33 = lshr i128 %45, 64
  %conv34 = trunc i128 %shr33 to i64
  store i64 %conv34, ptr %r1, align 8, !tbaa !14
  %46 = load i64, ptr %c, align 8, !tbaa !14
  %47 = load i64, ptr %r0, align 8, !tbaa !14
  %add35 = add i64 %47, %46
  store i64 %add35, ptr %r0, align 8, !tbaa !14
  %48 = load i64, ptr %r0, align 8, !tbaa !14
  %49 = load i64, ptr %c, align 8, !tbaa !14
  %cmp36 = icmp ult i64 %48, %49
  %conv37 = zext i1 %cmp36 to i64
  %50 = load i64, ptr %r1, align 8, !tbaa !14
  %add38 = add i64 %50, %conv37
  store i64 %add38, ptr %r1, align 8, !tbaa !14
  %51 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %52 = load i64, ptr %51, align 8, !tbaa !14
  %53 = load i64, ptr %r0, align 8, !tbaa !14
  %add39 = add i64 %53, %52
  store i64 %add39, ptr %r0, align 8, !tbaa !14
  %54 = load i64, ptr %r0, align 8, !tbaa !14
  %55 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %56 = load i64, ptr %55, align 8, !tbaa !14
  %cmp40 = icmp ult i64 %54, %56
  %conv41 = zext i1 %cmp40 to i64
  %57 = load i64, ptr %r1, align 8, !tbaa !14
  %add42 = add i64 %57, %conv41
  store i64 %add42, ptr %r1, align 8, !tbaa !14
  %58 = load i64, ptr %r1, align 8, !tbaa !14
  store i64 %58, ptr %c, align 8, !tbaa !14
  %59 = load i64, ptr %r0, align 8, !tbaa !14
  %60 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr43 = getelementptr inbounds i64, ptr %60, i32 1
  store ptr %incdec.ptr43, ptr %d.addr, align 8, !tbaa !4
  store i64 %59, ptr %60, align 8, !tbaa !14
  %61 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr44 = getelementptr inbounds i64, ptr %61, i32 1
  store ptr %incdec.ptr44, ptr %s.addr, align 8, !tbaa !4
  %62 = load i64, ptr %61, align 8, !tbaa !14
  %conv45 = zext i64 %62 to i128
  %63 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv46 = zext i64 %63 to i128
  %mul47 = mul i128 %conv45, %conv46
  store i128 %mul47, ptr %r, align 16, !tbaa !57
  %64 = load i128, ptr %r, align 16, !tbaa !57
  %conv48 = trunc i128 %64 to i64
  store i64 %conv48, ptr %r0, align 8, !tbaa !14
  %65 = load i128, ptr %r, align 16, !tbaa !57
  %shr49 = lshr i128 %65, 64
  %conv50 = trunc i128 %shr49 to i64
  store i64 %conv50, ptr %r1, align 8, !tbaa !14
  %66 = load i64, ptr %c, align 8, !tbaa !14
  %67 = load i64, ptr %r0, align 8, !tbaa !14
  %add51 = add i64 %67, %66
  store i64 %add51, ptr %r0, align 8, !tbaa !14
  %68 = load i64, ptr %r0, align 8, !tbaa !14
  %69 = load i64, ptr %c, align 8, !tbaa !14
  %cmp52 = icmp ult i64 %68, %69
  %conv53 = zext i1 %cmp52 to i64
  %70 = load i64, ptr %r1, align 8, !tbaa !14
  %add54 = add i64 %70, %conv53
  store i64 %add54, ptr %r1, align 8, !tbaa !14
  %71 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %72 = load i64, ptr %71, align 8, !tbaa !14
  %73 = load i64, ptr %r0, align 8, !tbaa !14
  %add55 = add i64 %73, %72
  store i64 %add55, ptr %r0, align 8, !tbaa !14
  %74 = load i64, ptr %r0, align 8, !tbaa !14
  %75 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %76 = load i64, ptr %75, align 8, !tbaa !14
  %cmp56 = icmp ult i64 %74, %76
  %conv57 = zext i1 %cmp56 to i64
  %77 = load i64, ptr %r1, align 8, !tbaa !14
  %add58 = add i64 %77, %conv57
  store i64 %add58, ptr %r1, align 8, !tbaa !14
  %78 = load i64, ptr %r1, align 8, !tbaa !14
  store i64 %78, ptr %c, align 8, !tbaa !14
  %79 = load i64, ptr %r0, align 8, !tbaa !14
  %80 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr59 = getelementptr inbounds i64, ptr %80, i32 1
  store ptr %incdec.ptr59, ptr %d.addr, align 8, !tbaa !4
  store i64 %79, ptr %80, align 8, !tbaa !14
  %81 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr60 = getelementptr inbounds i64, ptr %81, i32 1
  store ptr %incdec.ptr60, ptr %s.addr, align 8, !tbaa !4
  %82 = load i64, ptr %81, align 8, !tbaa !14
  %conv61 = zext i64 %82 to i128
  %83 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv62 = zext i64 %83 to i128
  %mul63 = mul i128 %conv61, %conv62
  store i128 %mul63, ptr %r, align 16, !tbaa !57
  %84 = load i128, ptr %r, align 16, !tbaa !57
  %conv64 = trunc i128 %84 to i64
  store i64 %conv64, ptr %r0, align 8, !tbaa !14
  %85 = load i128, ptr %r, align 16, !tbaa !57
  %shr65 = lshr i128 %85, 64
  %conv66 = trunc i128 %shr65 to i64
  store i64 %conv66, ptr %r1, align 8, !tbaa !14
  %86 = load i64, ptr %c, align 8, !tbaa !14
  %87 = load i64, ptr %r0, align 8, !tbaa !14
  %add67 = add i64 %87, %86
  store i64 %add67, ptr %r0, align 8, !tbaa !14
  %88 = load i64, ptr %r0, align 8, !tbaa !14
  %89 = load i64, ptr %c, align 8, !tbaa !14
  %cmp68 = icmp ult i64 %88, %89
  %conv69 = zext i1 %cmp68 to i64
  %90 = load i64, ptr %r1, align 8, !tbaa !14
  %add70 = add i64 %90, %conv69
  store i64 %add70, ptr %r1, align 8, !tbaa !14
  %91 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %92 = load i64, ptr %91, align 8, !tbaa !14
  %93 = load i64, ptr %r0, align 8, !tbaa !14
  %add71 = add i64 %93, %92
  store i64 %add71, ptr %r0, align 8, !tbaa !14
  %94 = load i64, ptr %r0, align 8, !tbaa !14
  %95 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %96 = load i64, ptr %95, align 8, !tbaa !14
  %cmp72 = icmp ult i64 %94, %96
  %conv73 = zext i1 %cmp72 to i64
  %97 = load i64, ptr %r1, align 8, !tbaa !14
  %add74 = add i64 %97, %conv73
  store i64 %add74, ptr %r1, align 8, !tbaa !14
  %98 = load i64, ptr %r1, align 8, !tbaa !14
  store i64 %98, ptr %c, align 8, !tbaa !14
  %99 = load i64, ptr %r0, align 8, !tbaa !14
  %100 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr75 = getelementptr inbounds i64, ptr %100, i32 1
  store ptr %incdec.ptr75, ptr %d.addr, align 8, !tbaa !4
  store i64 %99, ptr %100, align 8, !tbaa !14
  %101 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr76 = getelementptr inbounds i64, ptr %101, i32 1
  store ptr %incdec.ptr76, ptr %s.addr, align 8, !tbaa !4
  %102 = load i64, ptr %101, align 8, !tbaa !14
  %conv77 = zext i64 %102 to i128
  %103 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv78 = zext i64 %103 to i128
  %mul79 = mul i128 %conv77, %conv78
  store i128 %mul79, ptr %r, align 16, !tbaa !57
  %104 = load i128, ptr %r, align 16, !tbaa !57
  %conv80 = trunc i128 %104 to i64
  store i64 %conv80, ptr %r0, align 8, !tbaa !14
  %105 = load i128, ptr %r, align 16, !tbaa !57
  %shr81 = lshr i128 %105, 64
  %conv82 = trunc i128 %shr81 to i64
  store i64 %conv82, ptr %r1, align 8, !tbaa !14
  %106 = load i64, ptr %c, align 8, !tbaa !14
  %107 = load i64, ptr %r0, align 8, !tbaa !14
  %add83 = add i64 %107, %106
  store i64 %add83, ptr %r0, align 8, !tbaa !14
  %108 = load i64, ptr %r0, align 8, !tbaa !14
  %109 = load i64, ptr %c, align 8, !tbaa !14
  %cmp84 = icmp ult i64 %108, %109
  %conv85 = zext i1 %cmp84 to i64
  %110 = load i64, ptr %r1, align 8, !tbaa !14
  %add86 = add i64 %110, %conv85
  store i64 %add86, ptr %r1, align 8, !tbaa !14
  %111 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %112 = load i64, ptr %111, align 8, !tbaa !14
  %113 = load i64, ptr %r0, align 8, !tbaa !14
  %add87 = add i64 %113, %112
  store i64 %add87, ptr %r0, align 8, !tbaa !14
  %114 = load i64, ptr %r0, align 8, !tbaa !14
  %115 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %116 = load i64, ptr %115, align 8, !tbaa !14
  %cmp88 = icmp ult i64 %114, %116
  %conv89 = zext i1 %cmp88 to i64
  %117 = load i64, ptr %r1, align 8, !tbaa !14
  %add90 = add i64 %117, %conv89
  store i64 %add90, ptr %r1, align 8, !tbaa !14
  %118 = load i64, ptr %r1, align 8, !tbaa !14
  store i64 %118, ptr %c, align 8, !tbaa !14
  %119 = load i64, ptr %r0, align 8, !tbaa !14
  %120 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr91 = getelementptr inbounds i64, ptr %120, i32 1
  store ptr %incdec.ptr91, ptr %d.addr, align 8, !tbaa !4
  store i64 %119, ptr %120, align 8, !tbaa !14
  %121 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr92 = getelementptr inbounds i64, ptr %121, i32 1
  store ptr %incdec.ptr92, ptr %s.addr, align 8, !tbaa !4
  %122 = load i64, ptr %121, align 8, !tbaa !14
  %conv93 = zext i64 %122 to i128
  %123 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv94 = zext i64 %123 to i128
  %mul95 = mul i128 %conv93, %conv94
  store i128 %mul95, ptr %r, align 16, !tbaa !57
  %124 = load i128, ptr %r, align 16, !tbaa !57
  %conv96 = trunc i128 %124 to i64
  store i64 %conv96, ptr %r0, align 8, !tbaa !14
  %125 = load i128, ptr %r, align 16, !tbaa !57
  %shr97 = lshr i128 %125, 64
  %conv98 = trunc i128 %shr97 to i64
  store i64 %conv98, ptr %r1, align 8, !tbaa !14
  %126 = load i64, ptr %c, align 8, !tbaa !14
  %127 = load i64, ptr %r0, align 8, !tbaa !14
  %add99 = add i64 %127, %126
  store i64 %add99, ptr %r0, align 8, !tbaa !14
  %128 = load i64, ptr %r0, align 8, !tbaa !14
  %129 = load i64, ptr %c, align 8, !tbaa !14
  %cmp100 = icmp ult i64 %128, %129
  %conv101 = zext i1 %cmp100 to i64
  %130 = load i64, ptr %r1, align 8, !tbaa !14
  %add102 = add i64 %130, %conv101
  store i64 %add102, ptr %r1, align 8, !tbaa !14
  %131 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %132 = load i64, ptr %131, align 8, !tbaa !14
  %133 = load i64, ptr %r0, align 8, !tbaa !14
  %add103 = add i64 %133, %132
  store i64 %add103, ptr %r0, align 8, !tbaa !14
  %134 = load i64, ptr %r0, align 8, !tbaa !14
  %135 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %136 = load i64, ptr %135, align 8, !tbaa !14
  %cmp104 = icmp ult i64 %134, %136
  %conv105 = zext i1 %cmp104 to i64
  %137 = load i64, ptr %r1, align 8, !tbaa !14
  %add106 = add i64 %137, %conv105
  store i64 %add106, ptr %r1, align 8, !tbaa !14
  %138 = load i64, ptr %r1, align 8, !tbaa !14
  store i64 %138, ptr %c, align 8, !tbaa !14
  %139 = load i64, ptr %r0, align 8, !tbaa !14
  %140 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr107 = getelementptr inbounds i64, ptr %140, i32 1
  store ptr %incdec.ptr107, ptr %d.addr, align 8, !tbaa !4
  store i64 %139, ptr %140, align 8, !tbaa !14
  %141 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr108 = getelementptr inbounds i64, ptr %141, i32 1
  store ptr %incdec.ptr108, ptr %s.addr, align 8, !tbaa !4
  %142 = load i64, ptr %141, align 8, !tbaa !14
  %conv109 = zext i64 %142 to i128
  %143 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv110 = zext i64 %143 to i128
  %mul111 = mul i128 %conv109, %conv110
  store i128 %mul111, ptr %r, align 16, !tbaa !57
  %144 = load i128, ptr %r, align 16, !tbaa !57
  %conv112 = trunc i128 %144 to i64
  store i64 %conv112, ptr %r0, align 8, !tbaa !14
  %145 = load i128, ptr %r, align 16, !tbaa !57
  %shr113 = lshr i128 %145, 64
  %conv114 = trunc i128 %shr113 to i64
  store i64 %conv114, ptr %r1, align 8, !tbaa !14
  %146 = load i64, ptr %c, align 8, !tbaa !14
  %147 = load i64, ptr %r0, align 8, !tbaa !14
  %add115 = add i64 %147, %146
  store i64 %add115, ptr %r0, align 8, !tbaa !14
  %148 = load i64, ptr %r0, align 8, !tbaa !14
  %149 = load i64, ptr %c, align 8, !tbaa !14
  %cmp116 = icmp ult i64 %148, %149
  %conv117 = zext i1 %cmp116 to i64
  %150 = load i64, ptr %r1, align 8, !tbaa !14
  %add118 = add i64 %150, %conv117
  store i64 %add118, ptr %r1, align 8, !tbaa !14
  %151 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %152 = load i64, ptr %151, align 8, !tbaa !14
  %153 = load i64, ptr %r0, align 8, !tbaa !14
  %add119 = add i64 %153, %152
  store i64 %add119, ptr %r0, align 8, !tbaa !14
  %154 = load i64, ptr %r0, align 8, !tbaa !14
  %155 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %156 = load i64, ptr %155, align 8, !tbaa !14
  %cmp120 = icmp ult i64 %154, %156
  %conv121 = zext i1 %cmp120 to i64
  %157 = load i64, ptr %r1, align 8, !tbaa !14
  %add122 = add i64 %157, %conv121
  store i64 %add122, ptr %r1, align 8, !tbaa !14
  %158 = load i64, ptr %r1, align 8, !tbaa !14
  store i64 %158, ptr %c, align 8, !tbaa !14
  %159 = load i64, ptr %r0, align 8, !tbaa !14
  %160 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr123 = getelementptr inbounds i64, ptr %160, i32 1
  store ptr %incdec.ptr123, ptr %d.addr, align 8, !tbaa !4
  store i64 %159, ptr %160, align 8, !tbaa !14
  %161 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr124 = getelementptr inbounds i64, ptr %161, i32 1
  store ptr %incdec.ptr124, ptr %s.addr, align 8, !tbaa !4
  %162 = load i64, ptr %161, align 8, !tbaa !14
  %conv125 = zext i64 %162 to i128
  %163 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv126 = zext i64 %163 to i128
  %mul127 = mul i128 %conv125, %conv126
  store i128 %mul127, ptr %r, align 16, !tbaa !57
  %164 = load i128, ptr %r, align 16, !tbaa !57
  %conv128 = trunc i128 %164 to i64
  store i64 %conv128, ptr %r0, align 8, !tbaa !14
  %165 = load i128, ptr %r, align 16, !tbaa !57
  %shr129 = lshr i128 %165, 64
  %conv130 = trunc i128 %shr129 to i64
  store i64 %conv130, ptr %r1, align 8, !tbaa !14
  %166 = load i64, ptr %c, align 8, !tbaa !14
  %167 = load i64, ptr %r0, align 8, !tbaa !14
  %add131 = add i64 %167, %166
  store i64 %add131, ptr %r0, align 8, !tbaa !14
  %168 = load i64, ptr %r0, align 8, !tbaa !14
  %169 = load i64, ptr %c, align 8, !tbaa !14
  %cmp132 = icmp ult i64 %168, %169
  %conv133 = zext i1 %cmp132 to i64
  %170 = load i64, ptr %r1, align 8, !tbaa !14
  %add134 = add i64 %170, %conv133
  store i64 %add134, ptr %r1, align 8, !tbaa !14
  %171 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %172 = load i64, ptr %171, align 8, !tbaa !14
  %173 = load i64, ptr %r0, align 8, !tbaa !14
  %add135 = add i64 %173, %172
  store i64 %add135, ptr %r0, align 8, !tbaa !14
  %174 = load i64, ptr %r0, align 8, !tbaa !14
  %175 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %176 = load i64, ptr %175, align 8, !tbaa !14
  %cmp136 = icmp ult i64 %174, %176
  %conv137 = zext i1 %cmp136 to i64
  %177 = load i64, ptr %r1, align 8, !tbaa !14
  %add138 = add i64 %177, %conv137
  store i64 %add138, ptr %r1, align 8, !tbaa !14
  %178 = load i64, ptr %r1, align 8, !tbaa !14
  store i64 %178, ptr %c, align 8, !tbaa !14
  %179 = load i64, ptr %r0, align 8, !tbaa !14
  %180 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr139 = getelementptr inbounds i64, ptr %180, i32 1
  store ptr %incdec.ptr139, ptr %d.addr, align 8, !tbaa !4
  store i64 %179, ptr %180, align 8, !tbaa !14
  %181 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr140 = getelementptr inbounds i64, ptr %181, i32 1
  store ptr %incdec.ptr140, ptr %s.addr, align 8, !tbaa !4
  %182 = load i64, ptr %181, align 8, !tbaa !14
  %conv141 = zext i64 %182 to i128
  %183 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv142 = zext i64 %183 to i128
  %mul143 = mul i128 %conv141, %conv142
  store i128 %mul143, ptr %r, align 16, !tbaa !57
  %184 = load i128, ptr %r, align 16, !tbaa !57
  %conv144 = trunc i128 %184 to i64
  store i64 %conv144, ptr %r0, align 8, !tbaa !14
  %185 = load i128, ptr %r, align 16, !tbaa !57
  %shr145 = lshr i128 %185, 64
  %conv146 = trunc i128 %shr145 to i64
  store i64 %conv146, ptr %r1, align 8, !tbaa !14
  %186 = load i64, ptr %c, align 8, !tbaa !14
  %187 = load i64, ptr %r0, align 8, !tbaa !14
  %add147 = add i64 %187, %186
  store i64 %add147, ptr %r0, align 8, !tbaa !14
  %188 = load i64, ptr %r0, align 8, !tbaa !14
  %189 = load i64, ptr %c, align 8, !tbaa !14
  %cmp148 = icmp ult i64 %188, %189
  %conv149 = zext i1 %cmp148 to i64
  %190 = load i64, ptr %r1, align 8, !tbaa !14
  %add150 = add i64 %190, %conv149
  store i64 %add150, ptr %r1, align 8, !tbaa !14
  %191 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %192 = load i64, ptr %191, align 8, !tbaa !14
  %193 = load i64, ptr %r0, align 8, !tbaa !14
  %add151 = add i64 %193, %192
  store i64 %add151, ptr %r0, align 8, !tbaa !14
  %194 = load i64, ptr %r0, align 8, !tbaa !14
  %195 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %196 = load i64, ptr %195, align 8, !tbaa !14
  %cmp152 = icmp ult i64 %194, %196
  %conv153 = zext i1 %cmp152 to i64
  %197 = load i64, ptr %r1, align 8, !tbaa !14
  %add154 = add i64 %197, %conv153
  store i64 %add154, ptr %r1, align 8, !tbaa !14
  %198 = load i64, ptr %r1, align 8, !tbaa !14
  store i64 %198, ptr %c, align 8, !tbaa !14
  %199 = load i64, ptr %r0, align 8, !tbaa !14
  %200 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr155 = getelementptr inbounds i64, ptr %200, i32 1
  store ptr %incdec.ptr155, ptr %d.addr, align 8, !tbaa !4
  store i64 %199, ptr %200, align 8, !tbaa !14
  %201 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr156 = getelementptr inbounds i64, ptr %201, i32 1
  store ptr %incdec.ptr156, ptr %s.addr, align 8, !tbaa !4
  %202 = load i64, ptr %201, align 8, !tbaa !14
  %conv157 = zext i64 %202 to i128
  %203 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv158 = zext i64 %203 to i128
  %mul159 = mul i128 %conv157, %conv158
  store i128 %mul159, ptr %r, align 16, !tbaa !57
  %204 = load i128, ptr %r, align 16, !tbaa !57
  %conv160 = trunc i128 %204 to i64
  store i64 %conv160, ptr %r0, align 8, !tbaa !14
  %205 = load i128, ptr %r, align 16, !tbaa !57
  %shr161 = lshr i128 %205, 64
  %conv162 = trunc i128 %shr161 to i64
  store i64 %conv162, ptr %r1, align 8, !tbaa !14
  %206 = load i64, ptr %c, align 8, !tbaa !14
  %207 = load i64, ptr %r0, align 8, !tbaa !14
  %add163 = add i64 %207, %206
  store i64 %add163, ptr %r0, align 8, !tbaa !14
  %208 = load i64, ptr %r0, align 8, !tbaa !14
  %209 = load i64, ptr %c, align 8, !tbaa !14
  %cmp164 = icmp ult i64 %208, %209
  %conv165 = zext i1 %cmp164 to i64
  %210 = load i64, ptr %r1, align 8, !tbaa !14
  %add166 = add i64 %210, %conv165
  store i64 %add166, ptr %r1, align 8, !tbaa !14
  %211 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %212 = load i64, ptr %211, align 8, !tbaa !14
  %213 = load i64, ptr %r0, align 8, !tbaa !14
  %add167 = add i64 %213, %212
  store i64 %add167, ptr %r0, align 8, !tbaa !14
  %214 = load i64, ptr %r0, align 8, !tbaa !14
  %215 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %216 = load i64, ptr %215, align 8, !tbaa !14
  %cmp168 = icmp ult i64 %214, %216
  %conv169 = zext i1 %cmp168 to i64
  %217 = load i64, ptr %r1, align 8, !tbaa !14
  %add170 = add i64 %217, %conv169
  store i64 %add170, ptr %r1, align 8, !tbaa !14
  %218 = load i64, ptr %r1, align 8, !tbaa !14
  store i64 %218, ptr %c, align 8, !tbaa !14
  %219 = load i64, ptr %r0, align 8, !tbaa !14
  %220 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr171 = getelementptr inbounds i64, ptr %220, i32 1
  store ptr %incdec.ptr171, ptr %d.addr, align 8, !tbaa !4
  store i64 %219, ptr %220, align 8, !tbaa !14
  %221 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr172 = getelementptr inbounds i64, ptr %221, i32 1
  store ptr %incdec.ptr172, ptr %s.addr, align 8, !tbaa !4
  %222 = load i64, ptr %221, align 8, !tbaa !14
  %conv173 = zext i64 %222 to i128
  %223 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv174 = zext i64 %223 to i128
  %mul175 = mul i128 %conv173, %conv174
  store i128 %mul175, ptr %r, align 16, !tbaa !57
  %224 = load i128, ptr %r, align 16, !tbaa !57
  %conv176 = trunc i128 %224 to i64
  store i64 %conv176, ptr %r0, align 8, !tbaa !14
  %225 = load i128, ptr %r, align 16, !tbaa !57
  %shr177 = lshr i128 %225, 64
  %conv178 = trunc i128 %shr177 to i64
  store i64 %conv178, ptr %r1, align 8, !tbaa !14
  %226 = load i64, ptr %c, align 8, !tbaa !14
  %227 = load i64, ptr %r0, align 8, !tbaa !14
  %add179 = add i64 %227, %226
  store i64 %add179, ptr %r0, align 8, !tbaa !14
  %228 = load i64, ptr %r0, align 8, !tbaa !14
  %229 = load i64, ptr %c, align 8, !tbaa !14
  %cmp180 = icmp ult i64 %228, %229
  %conv181 = zext i1 %cmp180 to i64
  %230 = load i64, ptr %r1, align 8, !tbaa !14
  %add182 = add i64 %230, %conv181
  store i64 %add182, ptr %r1, align 8, !tbaa !14
  %231 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %232 = load i64, ptr %231, align 8, !tbaa !14
  %233 = load i64, ptr %r0, align 8, !tbaa !14
  %add183 = add i64 %233, %232
  store i64 %add183, ptr %r0, align 8, !tbaa !14
  %234 = load i64, ptr %r0, align 8, !tbaa !14
  %235 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %236 = load i64, ptr %235, align 8, !tbaa !14
  %cmp184 = icmp ult i64 %234, %236
  %conv185 = zext i1 %cmp184 to i64
  %237 = load i64, ptr %r1, align 8, !tbaa !14
  %add186 = add i64 %237, %conv185
  store i64 %add186, ptr %r1, align 8, !tbaa !14
  %238 = load i64, ptr %r1, align 8, !tbaa !14
  store i64 %238, ptr %c, align 8, !tbaa !14
  %239 = load i64, ptr %r0, align 8, !tbaa !14
  %240 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr187 = getelementptr inbounds i64, ptr %240, i32 1
  store ptr %incdec.ptr187, ptr %d.addr, align 8, !tbaa !4
  store i64 %239, ptr %240, align 8, !tbaa !14
  %241 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr188 = getelementptr inbounds i64, ptr %241, i32 1
  store ptr %incdec.ptr188, ptr %s.addr, align 8, !tbaa !4
  %242 = load i64, ptr %241, align 8, !tbaa !14
  %conv189 = zext i64 %242 to i128
  %243 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv190 = zext i64 %243 to i128
  %mul191 = mul i128 %conv189, %conv190
  store i128 %mul191, ptr %r, align 16, !tbaa !57
  %244 = load i128, ptr %r, align 16, !tbaa !57
  %conv192 = trunc i128 %244 to i64
  store i64 %conv192, ptr %r0, align 8, !tbaa !14
  %245 = load i128, ptr %r, align 16, !tbaa !57
  %shr193 = lshr i128 %245, 64
  %conv194 = trunc i128 %shr193 to i64
  store i64 %conv194, ptr %r1, align 8, !tbaa !14
  %246 = load i64, ptr %c, align 8, !tbaa !14
  %247 = load i64, ptr %r0, align 8, !tbaa !14
  %add195 = add i64 %247, %246
  store i64 %add195, ptr %r0, align 8, !tbaa !14
  %248 = load i64, ptr %r0, align 8, !tbaa !14
  %249 = load i64, ptr %c, align 8, !tbaa !14
  %cmp196 = icmp ult i64 %248, %249
  %conv197 = zext i1 %cmp196 to i64
  %250 = load i64, ptr %r1, align 8, !tbaa !14
  %add198 = add i64 %250, %conv197
  store i64 %add198, ptr %r1, align 8, !tbaa !14
  %251 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %252 = load i64, ptr %251, align 8, !tbaa !14
  %253 = load i64, ptr %r0, align 8, !tbaa !14
  %add199 = add i64 %253, %252
  store i64 %add199, ptr %r0, align 8, !tbaa !14
  %254 = load i64, ptr %r0, align 8, !tbaa !14
  %255 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %256 = load i64, ptr %255, align 8, !tbaa !14
  %cmp200 = icmp ult i64 %254, %256
  %conv201 = zext i1 %cmp200 to i64
  %257 = load i64, ptr %r1, align 8, !tbaa !14
  %add202 = add i64 %257, %conv201
  store i64 %add202, ptr %r1, align 8, !tbaa !14
  %258 = load i64, ptr %r1, align 8, !tbaa !14
  store i64 %258, ptr %c, align 8, !tbaa !14
  %259 = load i64, ptr %r0, align 8, !tbaa !14
  %260 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr203 = getelementptr inbounds i64, ptr %260, i32 1
  store ptr %incdec.ptr203, ptr %d.addr, align 8, !tbaa !4
  store i64 %259, ptr %260, align 8, !tbaa !14
  %261 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr204 = getelementptr inbounds i64, ptr %261, i32 1
  store ptr %incdec.ptr204, ptr %s.addr, align 8, !tbaa !4
  %262 = load i64, ptr %261, align 8, !tbaa !14
  %conv205 = zext i64 %262 to i128
  %263 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv206 = zext i64 %263 to i128
  %mul207 = mul i128 %conv205, %conv206
  store i128 %mul207, ptr %r, align 16, !tbaa !57
  %264 = load i128, ptr %r, align 16, !tbaa !57
  %conv208 = trunc i128 %264 to i64
  store i64 %conv208, ptr %r0, align 8, !tbaa !14
  %265 = load i128, ptr %r, align 16, !tbaa !57
  %shr209 = lshr i128 %265, 64
  %conv210 = trunc i128 %shr209 to i64
  store i64 %conv210, ptr %r1, align 8, !tbaa !14
  %266 = load i64, ptr %c, align 8, !tbaa !14
  %267 = load i64, ptr %r0, align 8, !tbaa !14
  %add211 = add i64 %267, %266
  store i64 %add211, ptr %r0, align 8, !tbaa !14
  %268 = load i64, ptr %r0, align 8, !tbaa !14
  %269 = load i64, ptr %c, align 8, !tbaa !14
  %cmp212 = icmp ult i64 %268, %269
  %conv213 = zext i1 %cmp212 to i64
  %270 = load i64, ptr %r1, align 8, !tbaa !14
  %add214 = add i64 %270, %conv213
  store i64 %add214, ptr %r1, align 8, !tbaa !14
  %271 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %272 = load i64, ptr %271, align 8, !tbaa !14
  %273 = load i64, ptr %r0, align 8, !tbaa !14
  %add215 = add i64 %273, %272
  store i64 %add215, ptr %r0, align 8, !tbaa !14
  %274 = load i64, ptr %r0, align 8, !tbaa !14
  %275 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %276 = load i64, ptr %275, align 8, !tbaa !14
  %cmp216 = icmp ult i64 %274, %276
  %conv217 = zext i1 %cmp216 to i64
  %277 = load i64, ptr %r1, align 8, !tbaa !14
  %add218 = add i64 %277, %conv217
  store i64 %add218, ptr %r1, align 8, !tbaa !14
  %278 = load i64, ptr %r1, align 8, !tbaa !14
  store i64 %278, ptr %c, align 8, !tbaa !14
  %279 = load i64, ptr %r0, align 8, !tbaa !14
  %280 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr219 = getelementptr inbounds i64, ptr %280, i32 1
  store ptr %incdec.ptr219, ptr %d.addr, align 8, !tbaa !4
  store i64 %279, ptr %280, align 8, !tbaa !14
  %281 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr220 = getelementptr inbounds i64, ptr %281, i32 1
  store ptr %incdec.ptr220, ptr %s.addr, align 8, !tbaa !4
  %282 = load i64, ptr %281, align 8, !tbaa !14
  %conv221 = zext i64 %282 to i128
  %283 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv222 = zext i64 %283 to i128
  %mul223 = mul i128 %conv221, %conv222
  store i128 %mul223, ptr %r, align 16, !tbaa !57
  %284 = load i128, ptr %r, align 16, !tbaa !57
  %conv224 = trunc i128 %284 to i64
  store i64 %conv224, ptr %r0, align 8, !tbaa !14
  %285 = load i128, ptr %r, align 16, !tbaa !57
  %shr225 = lshr i128 %285, 64
  %conv226 = trunc i128 %shr225 to i64
  store i64 %conv226, ptr %r1, align 8, !tbaa !14
  %286 = load i64, ptr %c, align 8, !tbaa !14
  %287 = load i64, ptr %r0, align 8, !tbaa !14
  %add227 = add i64 %287, %286
  store i64 %add227, ptr %r0, align 8, !tbaa !14
  %288 = load i64, ptr %r0, align 8, !tbaa !14
  %289 = load i64, ptr %c, align 8, !tbaa !14
  %cmp228 = icmp ult i64 %288, %289
  %conv229 = zext i1 %cmp228 to i64
  %290 = load i64, ptr %r1, align 8, !tbaa !14
  %add230 = add i64 %290, %conv229
  store i64 %add230, ptr %r1, align 8, !tbaa !14
  %291 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %292 = load i64, ptr %291, align 8, !tbaa !14
  %293 = load i64, ptr %r0, align 8, !tbaa !14
  %add231 = add i64 %293, %292
  store i64 %add231, ptr %r0, align 8, !tbaa !14
  %294 = load i64, ptr %r0, align 8, !tbaa !14
  %295 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %296 = load i64, ptr %295, align 8, !tbaa !14
  %cmp232 = icmp ult i64 %294, %296
  %conv233 = zext i1 %cmp232 to i64
  %297 = load i64, ptr %r1, align 8, !tbaa !14
  %add234 = add i64 %297, %conv233
  store i64 %add234, ptr %r1, align 8, !tbaa !14
  %298 = load i64, ptr %r1, align 8, !tbaa !14
  store i64 %298, ptr %c, align 8, !tbaa !14
  %299 = load i64, ptr %r0, align 8, !tbaa !14
  %300 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr235 = getelementptr inbounds i64, ptr %300, i32 1
  store ptr %incdec.ptr235, ptr %d.addr, align 8, !tbaa !4
  store i64 %299, ptr %300, align 8, !tbaa !14
  %301 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr236 = getelementptr inbounds i64, ptr %301, i32 1
  store ptr %incdec.ptr236, ptr %s.addr, align 8, !tbaa !4
  %302 = load i64, ptr %301, align 8, !tbaa !14
  %conv237 = zext i64 %302 to i128
  %303 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv238 = zext i64 %303 to i128
  %mul239 = mul i128 %conv237, %conv238
  store i128 %mul239, ptr %r, align 16, !tbaa !57
  %304 = load i128, ptr %r, align 16, !tbaa !57
  %conv240 = trunc i128 %304 to i64
  store i64 %conv240, ptr %r0, align 8, !tbaa !14
  %305 = load i128, ptr %r, align 16, !tbaa !57
  %shr241 = lshr i128 %305, 64
  %conv242 = trunc i128 %shr241 to i64
  store i64 %conv242, ptr %r1, align 8, !tbaa !14
  %306 = load i64, ptr %c, align 8, !tbaa !14
  %307 = load i64, ptr %r0, align 8, !tbaa !14
  %add243 = add i64 %307, %306
  store i64 %add243, ptr %r0, align 8, !tbaa !14
  %308 = load i64, ptr %r0, align 8, !tbaa !14
  %309 = load i64, ptr %c, align 8, !tbaa !14
  %cmp244 = icmp ult i64 %308, %309
  %conv245 = zext i1 %cmp244 to i64
  %310 = load i64, ptr %r1, align 8, !tbaa !14
  %add246 = add i64 %310, %conv245
  store i64 %add246, ptr %r1, align 8, !tbaa !14
  %311 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %312 = load i64, ptr %311, align 8, !tbaa !14
  %313 = load i64, ptr %r0, align 8, !tbaa !14
  %add247 = add i64 %313, %312
  store i64 %add247, ptr %r0, align 8, !tbaa !14
  %314 = load i64, ptr %r0, align 8, !tbaa !14
  %315 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %316 = load i64, ptr %315, align 8, !tbaa !14
  %cmp248 = icmp ult i64 %314, %316
  %conv249 = zext i1 %cmp248 to i64
  %317 = load i64, ptr %r1, align 8, !tbaa !14
  %add250 = add i64 %317, %conv249
  store i64 %add250, ptr %r1, align 8, !tbaa !14
  %318 = load i64, ptr %r1, align 8, !tbaa !14
  store i64 %318, ptr %c, align 8, !tbaa !14
  %319 = load i64, ptr %r0, align 8, !tbaa !14
  %320 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr251 = getelementptr inbounds i64, ptr %320, i32 1
  store ptr %incdec.ptr251, ptr %d.addr, align 8, !tbaa !4
  store i64 %319, ptr %320, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr %r1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %r0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %321 = load i64, ptr %i.addr, align 8, !tbaa !14
  %sub = sub i64 %321, 16
  store i64 %sub, ptr %i.addr, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !59

for.end:                                          ; preds = %for.cond
  br label %for.cond252

for.cond252:                                      ; preds = %for.inc386, %for.end
  %322 = load i64, ptr %i.addr, align 8, !tbaa !14
  %cmp253 = icmp uge i64 %322, 8
  br i1 %cmp253, label %for.body254, label %for.end388

for.body254:                                      ; preds = %for.cond252
  call void @llvm.lifetime.start.p0(i64 16, ptr %r255) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %r0256) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %r1257) #10
  %323 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr258 = getelementptr inbounds i64, ptr %323, i32 1
  store ptr %incdec.ptr258, ptr %s.addr, align 8, !tbaa !4
  %324 = load i64, ptr %323, align 8, !tbaa !14
  %conv259 = zext i64 %324 to i128
  %325 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv260 = zext i64 %325 to i128
  %mul261 = mul i128 %conv259, %conv260
  store i128 %mul261, ptr %r255, align 16, !tbaa !57
  %326 = load i128, ptr %r255, align 16, !tbaa !57
  %conv262 = trunc i128 %326 to i64
  store i64 %conv262, ptr %r0256, align 8, !tbaa !14
  %327 = load i128, ptr %r255, align 16, !tbaa !57
  %shr263 = lshr i128 %327, 64
  %conv264 = trunc i128 %shr263 to i64
  store i64 %conv264, ptr %r1257, align 8, !tbaa !14
  %328 = load i64, ptr %c, align 8, !tbaa !14
  %329 = load i64, ptr %r0256, align 8, !tbaa !14
  %add265 = add i64 %329, %328
  store i64 %add265, ptr %r0256, align 8, !tbaa !14
  %330 = load i64, ptr %r0256, align 8, !tbaa !14
  %331 = load i64, ptr %c, align 8, !tbaa !14
  %cmp266 = icmp ult i64 %330, %331
  %conv267 = zext i1 %cmp266 to i64
  %332 = load i64, ptr %r1257, align 8, !tbaa !14
  %add268 = add i64 %332, %conv267
  store i64 %add268, ptr %r1257, align 8, !tbaa !14
  %333 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %334 = load i64, ptr %333, align 8, !tbaa !14
  %335 = load i64, ptr %r0256, align 8, !tbaa !14
  %add269 = add i64 %335, %334
  store i64 %add269, ptr %r0256, align 8, !tbaa !14
  %336 = load i64, ptr %r0256, align 8, !tbaa !14
  %337 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %338 = load i64, ptr %337, align 8, !tbaa !14
  %cmp270 = icmp ult i64 %336, %338
  %conv271 = zext i1 %cmp270 to i64
  %339 = load i64, ptr %r1257, align 8, !tbaa !14
  %add272 = add i64 %339, %conv271
  store i64 %add272, ptr %r1257, align 8, !tbaa !14
  %340 = load i64, ptr %r1257, align 8, !tbaa !14
  store i64 %340, ptr %c, align 8, !tbaa !14
  %341 = load i64, ptr %r0256, align 8, !tbaa !14
  %342 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr273 = getelementptr inbounds i64, ptr %342, i32 1
  store ptr %incdec.ptr273, ptr %d.addr, align 8, !tbaa !4
  store i64 %341, ptr %342, align 8, !tbaa !14
  %343 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr274 = getelementptr inbounds i64, ptr %343, i32 1
  store ptr %incdec.ptr274, ptr %s.addr, align 8, !tbaa !4
  %344 = load i64, ptr %343, align 8, !tbaa !14
  %conv275 = zext i64 %344 to i128
  %345 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv276 = zext i64 %345 to i128
  %mul277 = mul i128 %conv275, %conv276
  store i128 %mul277, ptr %r255, align 16, !tbaa !57
  %346 = load i128, ptr %r255, align 16, !tbaa !57
  %conv278 = trunc i128 %346 to i64
  store i64 %conv278, ptr %r0256, align 8, !tbaa !14
  %347 = load i128, ptr %r255, align 16, !tbaa !57
  %shr279 = lshr i128 %347, 64
  %conv280 = trunc i128 %shr279 to i64
  store i64 %conv280, ptr %r1257, align 8, !tbaa !14
  %348 = load i64, ptr %c, align 8, !tbaa !14
  %349 = load i64, ptr %r0256, align 8, !tbaa !14
  %add281 = add i64 %349, %348
  store i64 %add281, ptr %r0256, align 8, !tbaa !14
  %350 = load i64, ptr %r0256, align 8, !tbaa !14
  %351 = load i64, ptr %c, align 8, !tbaa !14
  %cmp282 = icmp ult i64 %350, %351
  %conv283 = zext i1 %cmp282 to i64
  %352 = load i64, ptr %r1257, align 8, !tbaa !14
  %add284 = add i64 %352, %conv283
  store i64 %add284, ptr %r1257, align 8, !tbaa !14
  %353 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %354 = load i64, ptr %353, align 8, !tbaa !14
  %355 = load i64, ptr %r0256, align 8, !tbaa !14
  %add285 = add i64 %355, %354
  store i64 %add285, ptr %r0256, align 8, !tbaa !14
  %356 = load i64, ptr %r0256, align 8, !tbaa !14
  %357 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %358 = load i64, ptr %357, align 8, !tbaa !14
  %cmp286 = icmp ult i64 %356, %358
  %conv287 = zext i1 %cmp286 to i64
  %359 = load i64, ptr %r1257, align 8, !tbaa !14
  %add288 = add i64 %359, %conv287
  store i64 %add288, ptr %r1257, align 8, !tbaa !14
  %360 = load i64, ptr %r1257, align 8, !tbaa !14
  store i64 %360, ptr %c, align 8, !tbaa !14
  %361 = load i64, ptr %r0256, align 8, !tbaa !14
  %362 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr289 = getelementptr inbounds i64, ptr %362, i32 1
  store ptr %incdec.ptr289, ptr %d.addr, align 8, !tbaa !4
  store i64 %361, ptr %362, align 8, !tbaa !14
  %363 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr290 = getelementptr inbounds i64, ptr %363, i32 1
  store ptr %incdec.ptr290, ptr %s.addr, align 8, !tbaa !4
  %364 = load i64, ptr %363, align 8, !tbaa !14
  %conv291 = zext i64 %364 to i128
  %365 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv292 = zext i64 %365 to i128
  %mul293 = mul i128 %conv291, %conv292
  store i128 %mul293, ptr %r255, align 16, !tbaa !57
  %366 = load i128, ptr %r255, align 16, !tbaa !57
  %conv294 = trunc i128 %366 to i64
  store i64 %conv294, ptr %r0256, align 8, !tbaa !14
  %367 = load i128, ptr %r255, align 16, !tbaa !57
  %shr295 = lshr i128 %367, 64
  %conv296 = trunc i128 %shr295 to i64
  store i64 %conv296, ptr %r1257, align 8, !tbaa !14
  %368 = load i64, ptr %c, align 8, !tbaa !14
  %369 = load i64, ptr %r0256, align 8, !tbaa !14
  %add297 = add i64 %369, %368
  store i64 %add297, ptr %r0256, align 8, !tbaa !14
  %370 = load i64, ptr %r0256, align 8, !tbaa !14
  %371 = load i64, ptr %c, align 8, !tbaa !14
  %cmp298 = icmp ult i64 %370, %371
  %conv299 = zext i1 %cmp298 to i64
  %372 = load i64, ptr %r1257, align 8, !tbaa !14
  %add300 = add i64 %372, %conv299
  store i64 %add300, ptr %r1257, align 8, !tbaa !14
  %373 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %374 = load i64, ptr %373, align 8, !tbaa !14
  %375 = load i64, ptr %r0256, align 8, !tbaa !14
  %add301 = add i64 %375, %374
  store i64 %add301, ptr %r0256, align 8, !tbaa !14
  %376 = load i64, ptr %r0256, align 8, !tbaa !14
  %377 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %378 = load i64, ptr %377, align 8, !tbaa !14
  %cmp302 = icmp ult i64 %376, %378
  %conv303 = zext i1 %cmp302 to i64
  %379 = load i64, ptr %r1257, align 8, !tbaa !14
  %add304 = add i64 %379, %conv303
  store i64 %add304, ptr %r1257, align 8, !tbaa !14
  %380 = load i64, ptr %r1257, align 8, !tbaa !14
  store i64 %380, ptr %c, align 8, !tbaa !14
  %381 = load i64, ptr %r0256, align 8, !tbaa !14
  %382 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr305 = getelementptr inbounds i64, ptr %382, i32 1
  store ptr %incdec.ptr305, ptr %d.addr, align 8, !tbaa !4
  store i64 %381, ptr %382, align 8, !tbaa !14
  %383 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr306 = getelementptr inbounds i64, ptr %383, i32 1
  store ptr %incdec.ptr306, ptr %s.addr, align 8, !tbaa !4
  %384 = load i64, ptr %383, align 8, !tbaa !14
  %conv307 = zext i64 %384 to i128
  %385 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv308 = zext i64 %385 to i128
  %mul309 = mul i128 %conv307, %conv308
  store i128 %mul309, ptr %r255, align 16, !tbaa !57
  %386 = load i128, ptr %r255, align 16, !tbaa !57
  %conv310 = trunc i128 %386 to i64
  store i64 %conv310, ptr %r0256, align 8, !tbaa !14
  %387 = load i128, ptr %r255, align 16, !tbaa !57
  %shr311 = lshr i128 %387, 64
  %conv312 = trunc i128 %shr311 to i64
  store i64 %conv312, ptr %r1257, align 8, !tbaa !14
  %388 = load i64, ptr %c, align 8, !tbaa !14
  %389 = load i64, ptr %r0256, align 8, !tbaa !14
  %add313 = add i64 %389, %388
  store i64 %add313, ptr %r0256, align 8, !tbaa !14
  %390 = load i64, ptr %r0256, align 8, !tbaa !14
  %391 = load i64, ptr %c, align 8, !tbaa !14
  %cmp314 = icmp ult i64 %390, %391
  %conv315 = zext i1 %cmp314 to i64
  %392 = load i64, ptr %r1257, align 8, !tbaa !14
  %add316 = add i64 %392, %conv315
  store i64 %add316, ptr %r1257, align 8, !tbaa !14
  %393 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %394 = load i64, ptr %393, align 8, !tbaa !14
  %395 = load i64, ptr %r0256, align 8, !tbaa !14
  %add317 = add i64 %395, %394
  store i64 %add317, ptr %r0256, align 8, !tbaa !14
  %396 = load i64, ptr %r0256, align 8, !tbaa !14
  %397 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %398 = load i64, ptr %397, align 8, !tbaa !14
  %cmp318 = icmp ult i64 %396, %398
  %conv319 = zext i1 %cmp318 to i64
  %399 = load i64, ptr %r1257, align 8, !tbaa !14
  %add320 = add i64 %399, %conv319
  store i64 %add320, ptr %r1257, align 8, !tbaa !14
  %400 = load i64, ptr %r1257, align 8, !tbaa !14
  store i64 %400, ptr %c, align 8, !tbaa !14
  %401 = load i64, ptr %r0256, align 8, !tbaa !14
  %402 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr321 = getelementptr inbounds i64, ptr %402, i32 1
  store ptr %incdec.ptr321, ptr %d.addr, align 8, !tbaa !4
  store i64 %401, ptr %402, align 8, !tbaa !14
  %403 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr322 = getelementptr inbounds i64, ptr %403, i32 1
  store ptr %incdec.ptr322, ptr %s.addr, align 8, !tbaa !4
  %404 = load i64, ptr %403, align 8, !tbaa !14
  %conv323 = zext i64 %404 to i128
  %405 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv324 = zext i64 %405 to i128
  %mul325 = mul i128 %conv323, %conv324
  store i128 %mul325, ptr %r255, align 16, !tbaa !57
  %406 = load i128, ptr %r255, align 16, !tbaa !57
  %conv326 = trunc i128 %406 to i64
  store i64 %conv326, ptr %r0256, align 8, !tbaa !14
  %407 = load i128, ptr %r255, align 16, !tbaa !57
  %shr327 = lshr i128 %407, 64
  %conv328 = trunc i128 %shr327 to i64
  store i64 %conv328, ptr %r1257, align 8, !tbaa !14
  %408 = load i64, ptr %c, align 8, !tbaa !14
  %409 = load i64, ptr %r0256, align 8, !tbaa !14
  %add329 = add i64 %409, %408
  store i64 %add329, ptr %r0256, align 8, !tbaa !14
  %410 = load i64, ptr %r0256, align 8, !tbaa !14
  %411 = load i64, ptr %c, align 8, !tbaa !14
  %cmp330 = icmp ult i64 %410, %411
  %conv331 = zext i1 %cmp330 to i64
  %412 = load i64, ptr %r1257, align 8, !tbaa !14
  %add332 = add i64 %412, %conv331
  store i64 %add332, ptr %r1257, align 8, !tbaa !14
  %413 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %414 = load i64, ptr %413, align 8, !tbaa !14
  %415 = load i64, ptr %r0256, align 8, !tbaa !14
  %add333 = add i64 %415, %414
  store i64 %add333, ptr %r0256, align 8, !tbaa !14
  %416 = load i64, ptr %r0256, align 8, !tbaa !14
  %417 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %418 = load i64, ptr %417, align 8, !tbaa !14
  %cmp334 = icmp ult i64 %416, %418
  %conv335 = zext i1 %cmp334 to i64
  %419 = load i64, ptr %r1257, align 8, !tbaa !14
  %add336 = add i64 %419, %conv335
  store i64 %add336, ptr %r1257, align 8, !tbaa !14
  %420 = load i64, ptr %r1257, align 8, !tbaa !14
  store i64 %420, ptr %c, align 8, !tbaa !14
  %421 = load i64, ptr %r0256, align 8, !tbaa !14
  %422 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr337 = getelementptr inbounds i64, ptr %422, i32 1
  store ptr %incdec.ptr337, ptr %d.addr, align 8, !tbaa !4
  store i64 %421, ptr %422, align 8, !tbaa !14
  %423 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr338 = getelementptr inbounds i64, ptr %423, i32 1
  store ptr %incdec.ptr338, ptr %s.addr, align 8, !tbaa !4
  %424 = load i64, ptr %423, align 8, !tbaa !14
  %conv339 = zext i64 %424 to i128
  %425 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv340 = zext i64 %425 to i128
  %mul341 = mul i128 %conv339, %conv340
  store i128 %mul341, ptr %r255, align 16, !tbaa !57
  %426 = load i128, ptr %r255, align 16, !tbaa !57
  %conv342 = trunc i128 %426 to i64
  store i64 %conv342, ptr %r0256, align 8, !tbaa !14
  %427 = load i128, ptr %r255, align 16, !tbaa !57
  %shr343 = lshr i128 %427, 64
  %conv344 = trunc i128 %shr343 to i64
  store i64 %conv344, ptr %r1257, align 8, !tbaa !14
  %428 = load i64, ptr %c, align 8, !tbaa !14
  %429 = load i64, ptr %r0256, align 8, !tbaa !14
  %add345 = add i64 %429, %428
  store i64 %add345, ptr %r0256, align 8, !tbaa !14
  %430 = load i64, ptr %r0256, align 8, !tbaa !14
  %431 = load i64, ptr %c, align 8, !tbaa !14
  %cmp346 = icmp ult i64 %430, %431
  %conv347 = zext i1 %cmp346 to i64
  %432 = load i64, ptr %r1257, align 8, !tbaa !14
  %add348 = add i64 %432, %conv347
  store i64 %add348, ptr %r1257, align 8, !tbaa !14
  %433 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %434 = load i64, ptr %433, align 8, !tbaa !14
  %435 = load i64, ptr %r0256, align 8, !tbaa !14
  %add349 = add i64 %435, %434
  store i64 %add349, ptr %r0256, align 8, !tbaa !14
  %436 = load i64, ptr %r0256, align 8, !tbaa !14
  %437 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %438 = load i64, ptr %437, align 8, !tbaa !14
  %cmp350 = icmp ult i64 %436, %438
  %conv351 = zext i1 %cmp350 to i64
  %439 = load i64, ptr %r1257, align 8, !tbaa !14
  %add352 = add i64 %439, %conv351
  store i64 %add352, ptr %r1257, align 8, !tbaa !14
  %440 = load i64, ptr %r1257, align 8, !tbaa !14
  store i64 %440, ptr %c, align 8, !tbaa !14
  %441 = load i64, ptr %r0256, align 8, !tbaa !14
  %442 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr353 = getelementptr inbounds i64, ptr %442, i32 1
  store ptr %incdec.ptr353, ptr %d.addr, align 8, !tbaa !4
  store i64 %441, ptr %442, align 8, !tbaa !14
  %443 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr354 = getelementptr inbounds i64, ptr %443, i32 1
  store ptr %incdec.ptr354, ptr %s.addr, align 8, !tbaa !4
  %444 = load i64, ptr %443, align 8, !tbaa !14
  %conv355 = zext i64 %444 to i128
  %445 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv356 = zext i64 %445 to i128
  %mul357 = mul i128 %conv355, %conv356
  store i128 %mul357, ptr %r255, align 16, !tbaa !57
  %446 = load i128, ptr %r255, align 16, !tbaa !57
  %conv358 = trunc i128 %446 to i64
  store i64 %conv358, ptr %r0256, align 8, !tbaa !14
  %447 = load i128, ptr %r255, align 16, !tbaa !57
  %shr359 = lshr i128 %447, 64
  %conv360 = trunc i128 %shr359 to i64
  store i64 %conv360, ptr %r1257, align 8, !tbaa !14
  %448 = load i64, ptr %c, align 8, !tbaa !14
  %449 = load i64, ptr %r0256, align 8, !tbaa !14
  %add361 = add i64 %449, %448
  store i64 %add361, ptr %r0256, align 8, !tbaa !14
  %450 = load i64, ptr %r0256, align 8, !tbaa !14
  %451 = load i64, ptr %c, align 8, !tbaa !14
  %cmp362 = icmp ult i64 %450, %451
  %conv363 = zext i1 %cmp362 to i64
  %452 = load i64, ptr %r1257, align 8, !tbaa !14
  %add364 = add i64 %452, %conv363
  store i64 %add364, ptr %r1257, align 8, !tbaa !14
  %453 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %454 = load i64, ptr %453, align 8, !tbaa !14
  %455 = load i64, ptr %r0256, align 8, !tbaa !14
  %add365 = add i64 %455, %454
  store i64 %add365, ptr %r0256, align 8, !tbaa !14
  %456 = load i64, ptr %r0256, align 8, !tbaa !14
  %457 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %458 = load i64, ptr %457, align 8, !tbaa !14
  %cmp366 = icmp ult i64 %456, %458
  %conv367 = zext i1 %cmp366 to i64
  %459 = load i64, ptr %r1257, align 8, !tbaa !14
  %add368 = add i64 %459, %conv367
  store i64 %add368, ptr %r1257, align 8, !tbaa !14
  %460 = load i64, ptr %r1257, align 8, !tbaa !14
  store i64 %460, ptr %c, align 8, !tbaa !14
  %461 = load i64, ptr %r0256, align 8, !tbaa !14
  %462 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr369 = getelementptr inbounds i64, ptr %462, i32 1
  store ptr %incdec.ptr369, ptr %d.addr, align 8, !tbaa !4
  store i64 %461, ptr %462, align 8, !tbaa !14
  %463 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr370 = getelementptr inbounds i64, ptr %463, i32 1
  store ptr %incdec.ptr370, ptr %s.addr, align 8, !tbaa !4
  %464 = load i64, ptr %463, align 8, !tbaa !14
  %conv371 = zext i64 %464 to i128
  %465 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv372 = zext i64 %465 to i128
  %mul373 = mul i128 %conv371, %conv372
  store i128 %mul373, ptr %r255, align 16, !tbaa !57
  %466 = load i128, ptr %r255, align 16, !tbaa !57
  %conv374 = trunc i128 %466 to i64
  store i64 %conv374, ptr %r0256, align 8, !tbaa !14
  %467 = load i128, ptr %r255, align 16, !tbaa !57
  %shr375 = lshr i128 %467, 64
  %conv376 = trunc i128 %shr375 to i64
  store i64 %conv376, ptr %r1257, align 8, !tbaa !14
  %468 = load i64, ptr %c, align 8, !tbaa !14
  %469 = load i64, ptr %r0256, align 8, !tbaa !14
  %add377 = add i64 %469, %468
  store i64 %add377, ptr %r0256, align 8, !tbaa !14
  %470 = load i64, ptr %r0256, align 8, !tbaa !14
  %471 = load i64, ptr %c, align 8, !tbaa !14
  %cmp378 = icmp ult i64 %470, %471
  %conv379 = zext i1 %cmp378 to i64
  %472 = load i64, ptr %r1257, align 8, !tbaa !14
  %add380 = add i64 %472, %conv379
  store i64 %add380, ptr %r1257, align 8, !tbaa !14
  %473 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %474 = load i64, ptr %473, align 8, !tbaa !14
  %475 = load i64, ptr %r0256, align 8, !tbaa !14
  %add381 = add i64 %475, %474
  store i64 %add381, ptr %r0256, align 8, !tbaa !14
  %476 = load i64, ptr %r0256, align 8, !tbaa !14
  %477 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %478 = load i64, ptr %477, align 8, !tbaa !14
  %cmp382 = icmp ult i64 %476, %478
  %conv383 = zext i1 %cmp382 to i64
  %479 = load i64, ptr %r1257, align 8, !tbaa !14
  %add384 = add i64 %479, %conv383
  store i64 %add384, ptr %r1257, align 8, !tbaa !14
  %480 = load i64, ptr %r1257, align 8, !tbaa !14
  store i64 %480, ptr %c, align 8, !tbaa !14
  %481 = load i64, ptr %r0256, align 8, !tbaa !14
  %482 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr385 = getelementptr inbounds i64, ptr %482, i32 1
  store ptr %incdec.ptr385, ptr %d.addr, align 8, !tbaa !4
  store i64 %481, ptr %482, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr %r1257) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %r0256) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %r255) #10
  br label %for.inc386

for.inc386:                                       ; preds = %for.body254
  %483 = load i64, ptr %i.addr, align 8, !tbaa !14
  %sub387 = sub i64 %483, 8
  store i64 %sub387, ptr %i.addr, align 8, !tbaa !14
  br label %for.cond252, !llvm.loop !60

for.end388:                                       ; preds = %for.cond252
  br label %for.cond389

for.cond389:                                      ; preds = %for.inc411, %for.end388
  %484 = load i64, ptr %i.addr, align 8, !tbaa !14
  %cmp390 = icmp ugt i64 %484, 0
  br i1 %cmp390, label %for.body391, label %for.end412

for.body391:                                      ; preds = %for.cond389
  call void @llvm.lifetime.start.p0(i64 16, ptr %r392) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %r0393) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %r1394) #10
  %485 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr395 = getelementptr inbounds i64, ptr %485, i32 1
  store ptr %incdec.ptr395, ptr %s.addr, align 8, !tbaa !4
  %486 = load i64, ptr %485, align 8, !tbaa !14
  %conv396 = zext i64 %486 to i128
  %487 = load i64, ptr %b.addr, align 8, !tbaa !14
  %conv397 = zext i64 %487 to i128
  %mul398 = mul i128 %conv396, %conv397
  store i128 %mul398, ptr %r392, align 16, !tbaa !57
  %488 = load i128, ptr %r392, align 16, !tbaa !57
  %conv399 = trunc i128 %488 to i64
  store i64 %conv399, ptr %r0393, align 8, !tbaa !14
  %489 = load i128, ptr %r392, align 16, !tbaa !57
  %shr400 = lshr i128 %489, 64
  %conv401 = trunc i128 %shr400 to i64
  store i64 %conv401, ptr %r1394, align 8, !tbaa !14
  %490 = load i64, ptr %c, align 8, !tbaa !14
  %491 = load i64, ptr %r0393, align 8, !tbaa !14
  %add402 = add i64 %491, %490
  store i64 %add402, ptr %r0393, align 8, !tbaa !14
  %492 = load i64, ptr %r0393, align 8, !tbaa !14
  %493 = load i64, ptr %c, align 8, !tbaa !14
  %cmp403 = icmp ult i64 %492, %493
  %conv404 = zext i1 %cmp403 to i64
  %494 = load i64, ptr %r1394, align 8, !tbaa !14
  %add405 = add i64 %494, %conv404
  store i64 %add405, ptr %r1394, align 8, !tbaa !14
  %495 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %496 = load i64, ptr %495, align 8, !tbaa !14
  %497 = load i64, ptr %r0393, align 8, !tbaa !14
  %add406 = add i64 %497, %496
  store i64 %add406, ptr %r0393, align 8, !tbaa !14
  %498 = load i64, ptr %r0393, align 8, !tbaa !14
  %499 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %500 = load i64, ptr %499, align 8, !tbaa !14
  %cmp407 = icmp ult i64 %498, %500
  %conv408 = zext i1 %cmp407 to i64
  %501 = load i64, ptr %r1394, align 8, !tbaa !14
  %add409 = add i64 %501, %conv408
  store i64 %add409, ptr %r1394, align 8, !tbaa !14
  %502 = load i64, ptr %r1394, align 8, !tbaa !14
  store i64 %502, ptr %c, align 8, !tbaa !14
  %503 = load i64, ptr %r0393, align 8, !tbaa !14
  %504 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr410 = getelementptr inbounds i64, ptr %504, i32 1
  store ptr %incdec.ptr410, ptr %d.addr, align 8, !tbaa !4
  store i64 %503, ptr %504, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr %r1394) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %r0393) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %r392) #10
  br label %for.inc411

for.inc411:                                       ; preds = %for.body391
  %505 = load i64, ptr %i.addr, align 8, !tbaa !14
  %dec = add i64 %505, -1
  store i64 %dec, ptr %i.addr, align 8, !tbaa !14
  br label %for.cond389, !llvm.loop !61

for.end412:                                       ; preds = %for.cond389
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end412
  %506 = load i64, ptr %c, align 8, !tbaa !14
  %cmp413 = icmp ne i64 %506, 0
  br i1 %cmp413, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %507 = load i64, ptr %c, align 8, !tbaa !14
  %508 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %509 = load i64, ptr %508, align 8, !tbaa !14
  %add414 = add i64 %509, %507
  store i64 %add414, ptr %508, align 8, !tbaa !14
  %510 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %511 = load i64, ptr %510, align 8, !tbaa !14
  %512 = load i64, ptr %c, align 8, !tbaa !14
  %cmp415 = icmp ult i64 %511, %512
  %conv416 = zext i1 %cmp415 to i64
  store i64 %conv416, ptr %c, align 8, !tbaa !14
  %513 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr417 = getelementptr inbounds i64, ptr %513, i32 1
  store ptr %incdec.ptr417, ptr %d.addr, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !62

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #10
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_div_mpi(ptr noundef %Q, ptr noundef %R, ptr noundef %A, ptr noundef %B) #1 {
entry:
  %retval = alloca i32, align 4
  %Q.addr = alloca ptr, align 8
  %R.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %t = alloca i64, align 8
  %k = alloca i64, align 8
  %X = alloca %struct.mbedtls_mpi, align 8
  %Y = alloca %struct.mbedtls_mpi, align 8
  %Z = alloca %struct.mbedtls_mpi, align 8
  %T1 = alloca %struct.mbedtls_mpi, align 8
  %T2 = alloca %struct.mbedtls_mpi, align 8
  %TP2 = alloca [3 x i64], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Q, ptr %Q.addr, align 8, !tbaa !4
  store ptr %R, ptr %R.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %B, ptr %B.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 -110, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %X) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %Y) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %Z) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %T1) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %T2) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %TP2) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  %0 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_mpi_cmp_int(ptr noundef %0, i64 noundef 0)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end3
  store i32 -12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup311

if.end:                                           ; preds = %do.end3
  call void @mbedtls_mpi_init(ptr noundef %X)
  call void @mbedtls_mpi_init(ptr noundef %Y)
  call void @mbedtls_mpi_init(ptr noundef %Z)
  call void @mbedtls_mpi_init(ptr noundef %T1)
  %s = getelementptr inbounds %struct.mbedtls_mpi, ptr %T2, i32 0, i32 0
  store i32 1, ptr %s, align 8, !tbaa !8
  %n4 = getelementptr inbounds %struct.mbedtls_mpi, ptr %T2, i32 0, i32 1
  store i64 3, ptr %n4, align 8, !tbaa !12
  %arraydecay = getelementptr inbounds [3 x i64], ptr %TP2, i64 0, i64 0
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %T2, i32 0, i32 2
  store ptr %arraydecay, ptr %p, align 8, !tbaa !13
  %1 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %call5 = call i32 @mbedtls_mpi_cmp_abs(ptr noundef %1, ptr noundef %2)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end28

if.then7:                                         ; preds = %if.end
  %3 = load ptr, ptr %Q.addr, align 8, !tbaa !4
  %cmp8 = icmp ne ptr %3, null
  br i1 %cmp8, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.then7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  %4 = load ptr, ptr %Q.addr, align 8, !tbaa !4
  %call11 = call i32 @mbedtls_mpi_lset(ptr noundef %4, i64 noundef 0)
  store i32 %call11, ptr %ret, align 4, !tbaa !17
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.body10
  br label %cleanup

if.end14:                                         ; preds = %do.body10
  br label %do.cond15

do.cond15:                                        ; preds = %if.end14
  br label %do.end16

do.end16:                                         ; preds = %do.cond15
  br label %if.end17

if.end17:                                         ; preds = %do.end16, %if.then7
  %5 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %cmp18 = icmp ne ptr %5, null
  br i1 %cmp18, label %if.then19, label %if.end27

if.then19:                                        ; preds = %if.end17
  br label %do.body20

do.body20:                                        ; preds = %if.then19
  %6 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call21 = call i32 @mbedtls_mpi_copy(ptr noundef %6, ptr noundef %7)
  store i32 %call21, ptr %ret, align 4, !tbaa !17
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %do.body20
  br label %cleanup

if.end24:                                         ; preds = %do.body20
  br label %do.cond25

do.cond25:                                        ; preds = %if.end24
  br label %do.end26

do.end26:                                         ; preds = %do.cond25
  br label %if.end27

if.end27:                                         ; preds = %do.end26, %if.end17
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup311

if.end28:                                         ; preds = %if.end
  br label %do.body29

do.body29:                                        ; preds = %if.end28
  %8 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call30 = call i32 @mbedtls_mpi_copy(ptr noundef %X, ptr noundef %8)
  store i32 %call30, ptr %ret, align 4, !tbaa !17
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.body29
  br label %cleanup

if.end33:                                         ; preds = %do.body29
  br label %do.cond34

do.cond34:                                        ; preds = %if.end33
  br label %do.end35

do.end35:                                         ; preds = %do.cond34
  br label %do.body36

do.body36:                                        ; preds = %do.end35
  %9 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %call37 = call i32 @mbedtls_mpi_copy(ptr noundef %Y, ptr noundef %9)
  store i32 %call37, ptr %ret, align 4, !tbaa !17
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %do.body36
  br label %cleanup

if.end40:                                         ; preds = %do.body36
  br label %do.cond41

do.cond41:                                        ; preds = %if.end40
  br label %do.end42

do.end42:                                         ; preds = %do.cond41
  %s43 = getelementptr inbounds %struct.mbedtls_mpi, ptr %Y, i32 0, i32 0
  store i32 1, ptr %s43, align 8, !tbaa !8
  %s44 = getelementptr inbounds %struct.mbedtls_mpi, ptr %X, i32 0, i32 0
  store i32 1, ptr %s44, align 8, !tbaa !8
  br label %do.body45

do.body45:                                        ; preds = %do.end42
  %10 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %n46 = getelementptr inbounds %struct.mbedtls_mpi, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %n46, align 8, !tbaa !12
  %add = add i64 %11, 2
  %call47 = call i32 @mbedtls_mpi_grow(ptr noundef %Z, i64 noundef %add)
  store i32 %call47, ptr %ret, align 4, !tbaa !17
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %do.body45
  br label %cleanup

if.end50:                                         ; preds = %do.body45
  br label %do.cond51

do.cond51:                                        ; preds = %if.end50
  br label %do.end52

do.end52:                                         ; preds = %do.cond51
  br label %do.body53

do.body53:                                        ; preds = %do.end52
  %call54 = call i32 @mbedtls_mpi_lset(ptr noundef %Z, i64 noundef 0)
  store i32 %call54, ptr %ret, align 4, !tbaa !17
  %cmp55 = icmp ne i32 %call54, 0
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %do.body53
  br label %cleanup

if.end57:                                         ; preds = %do.body53
  br label %do.cond58

do.cond58:                                        ; preds = %if.end57
  br label %do.end59

do.end59:                                         ; preds = %do.cond58
  br label %do.body60

do.body60:                                        ; preds = %do.end59
  %12 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %n61 = getelementptr inbounds %struct.mbedtls_mpi, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %n61, align 8, !tbaa !12
  %add62 = add i64 %13, 2
  %call63 = call i32 @mbedtls_mpi_grow(ptr noundef %T1, i64 noundef %add62)
  store i32 %call63, ptr %ret, align 4, !tbaa !17
  %cmp64 = icmp ne i32 %call63, 0
  br i1 %cmp64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %do.body60
  br label %cleanup

if.end66:                                         ; preds = %do.body60
  br label %do.cond67

do.cond67:                                        ; preds = %if.end66
  br label %do.end68

do.end68:                                         ; preds = %do.cond67
  %call69 = call i64 @mbedtls_mpi_bitlen(ptr noundef %Y)
  %rem = urem i64 %call69, 64
  store i64 %rem, ptr %k, align 8, !tbaa !14
  %14 = load i64, ptr %k, align 8, !tbaa !14
  %cmp70 = icmp ult i64 %14, 63
  br i1 %cmp70, label %if.then71, label %if.else

if.then71:                                        ; preds = %do.end68
  %15 = load i64, ptr %k, align 8, !tbaa !14
  %sub = sub i64 63, %15
  store i64 %sub, ptr %k, align 8, !tbaa !14
  br label %do.body72

do.body72:                                        ; preds = %if.then71
  %16 = load i64, ptr %k, align 8, !tbaa !14
  %call73 = call i32 @mbedtls_mpi_shift_l(ptr noundef %X, i64 noundef %16)
  store i32 %call73, ptr %ret, align 4, !tbaa !17
  %cmp74 = icmp ne i32 %call73, 0
  br i1 %cmp74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %do.body72
  br label %cleanup

if.end76:                                         ; preds = %do.body72
  br label %do.cond77

do.cond77:                                        ; preds = %if.end76
  br label %do.end78

do.end78:                                         ; preds = %do.cond77
  br label %do.body79

do.body79:                                        ; preds = %do.end78
  %17 = load i64, ptr %k, align 8, !tbaa !14
  %call80 = call i32 @mbedtls_mpi_shift_l(ptr noundef %Y, i64 noundef %17)
  store i32 %call80, ptr %ret, align 4, !tbaa !17
  %cmp81 = icmp ne i32 %call80, 0
  br i1 %cmp81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %do.body79
  br label %cleanup

if.end83:                                         ; preds = %do.body79
  br label %do.cond84

do.cond84:                                        ; preds = %if.end83
  br label %do.end85

do.end85:                                         ; preds = %do.cond84
  br label %if.end86

if.else:                                          ; preds = %do.end68
  store i64 0, ptr %k, align 8, !tbaa !14
  br label %if.end86

if.end86:                                         ; preds = %if.else, %do.end85
  %n87 = getelementptr inbounds %struct.mbedtls_mpi, ptr %X, i32 0, i32 1
  %18 = load i64, ptr %n87, align 8, !tbaa !12
  %sub88 = sub i64 %18, 1
  store i64 %sub88, ptr %n, align 8, !tbaa !14
  %n89 = getelementptr inbounds %struct.mbedtls_mpi, ptr %Y, i32 0, i32 1
  %19 = load i64, ptr %n89, align 8, !tbaa !12
  %sub90 = sub i64 %19, 1
  store i64 %sub90, ptr %t, align 8, !tbaa !14
  br label %do.body91

do.body91:                                        ; preds = %if.end86
  %20 = load i64, ptr %n, align 8, !tbaa !14
  %21 = load i64, ptr %t, align 8, !tbaa !14
  %sub92 = sub i64 %20, %21
  %mul = mul i64 64, %sub92
  %call93 = call i32 @mbedtls_mpi_shift_l(ptr noundef %Y, i64 noundef %mul)
  store i32 %call93, ptr %ret, align 4, !tbaa !17
  %cmp94 = icmp ne i32 %call93, 0
  br i1 %cmp94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %do.body91
  br label %cleanup

if.end96:                                         ; preds = %do.body91
  br label %do.cond97

do.cond97:                                        ; preds = %if.end96
  br label %do.end98

do.end98:                                         ; preds = %do.cond97
  br label %while.cond

while.cond:                                       ; preds = %do.end109, %do.end98
  %call99 = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef %X, ptr noundef %Y)
  %cmp100 = icmp sge i32 %call99, 0
  br i1 %cmp100, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %p101 = getelementptr inbounds %struct.mbedtls_mpi, ptr %Z, i32 0, i32 2
  %22 = load ptr, ptr %p101, align 8, !tbaa !13
  %23 = load i64, ptr %n, align 8, !tbaa !14
  %24 = load i64, ptr %t, align 8, !tbaa !14
  %sub102 = sub i64 %23, %24
  %arrayidx = getelementptr inbounds i64, ptr %22, i64 %sub102
  %25 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %inc = add i64 %25, 1
  store i64 %inc, ptr %arrayidx, align 8, !tbaa !14
  br label %do.body103

do.body103:                                       ; preds = %while.body
  %call104 = call i32 @mbedtls_mpi_sub_mpi(ptr noundef %X, ptr noundef %X, ptr noundef %Y)
  store i32 %call104, ptr %ret, align 4, !tbaa !17
  %cmp105 = icmp ne i32 %call104, 0
  br i1 %cmp105, label %if.then106, label %if.end107

if.then106:                                       ; preds = %do.body103
  br label %cleanup

if.end107:                                        ; preds = %do.body103
  br label %do.cond108

do.cond108:                                       ; preds = %if.end107
  br label %do.end109

do.end109:                                        ; preds = %do.cond108
  br label %while.cond, !llvm.loop !63

while.end:                                        ; preds = %while.cond
  br label %do.body110

do.body110:                                       ; preds = %while.end
  %26 = load i64, ptr %n, align 8, !tbaa !14
  %27 = load i64, ptr %t, align 8, !tbaa !14
  %sub111 = sub i64 %26, %27
  %mul112 = mul i64 64, %sub111
  %call113 = call i32 @mbedtls_mpi_shift_r(ptr noundef %Y, i64 noundef %mul112)
  store i32 %call113, ptr %ret, align 4, !tbaa !17
  %cmp114 = icmp ne i32 %call113, 0
  br i1 %cmp114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %do.body110
  br label %cleanup

if.end116:                                        ; preds = %do.body110
  br label %do.cond117

do.cond117:                                       ; preds = %if.end116
  br label %do.end118

do.end118:                                        ; preds = %do.cond117
  %28 = load i64, ptr %n, align 8, !tbaa !14
  store i64 %28, ptr %i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end118
  %29 = load i64, ptr %i, align 8, !tbaa !14
  %30 = load i64, ptr %t, align 8, !tbaa !14
  %cmp119 = icmp ugt i64 %29, %30
  br i1 %cmp119, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %p120 = getelementptr inbounds %struct.mbedtls_mpi, ptr %X, i32 0, i32 2
  %31 = load ptr, ptr %p120, align 8, !tbaa !13
  %32 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx121 = getelementptr inbounds i64, ptr %31, i64 %32
  %33 = load i64, ptr %arrayidx121, align 8, !tbaa !14
  %p122 = getelementptr inbounds %struct.mbedtls_mpi, ptr %Y, i32 0, i32 2
  %34 = load ptr, ptr %p122, align 8, !tbaa !13
  %35 = load i64, ptr %t, align 8, !tbaa !14
  %arrayidx123 = getelementptr inbounds i64, ptr %34, i64 %35
  %36 = load i64, ptr %arrayidx123, align 8, !tbaa !14
  %cmp124 = icmp uge i64 %33, %36
  br i1 %cmp124, label %if.then125, label %if.else130

if.then125:                                       ; preds = %for.body
  %p126 = getelementptr inbounds %struct.mbedtls_mpi, ptr %Z, i32 0, i32 2
  %37 = load ptr, ptr %p126, align 8, !tbaa !13
  %38 = load i64, ptr %i, align 8, !tbaa !14
  %39 = load i64, ptr %t, align 8, !tbaa !14
  %sub127 = sub i64 %38, %39
  %sub128 = sub i64 %sub127, 1
  %arrayidx129 = getelementptr inbounds i64, ptr %37, i64 %sub128
  store i64 -1, ptr %arrayidx129, align 8, !tbaa !14
  br label %if.end143

if.else130:                                       ; preds = %for.body
  %p131 = getelementptr inbounds %struct.mbedtls_mpi, ptr %X, i32 0, i32 2
  %40 = load ptr, ptr %p131, align 8, !tbaa !13
  %41 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx132 = getelementptr inbounds i64, ptr %40, i64 %41
  %42 = load i64, ptr %arrayidx132, align 8, !tbaa !14
  %p133 = getelementptr inbounds %struct.mbedtls_mpi, ptr %X, i32 0, i32 2
  %43 = load ptr, ptr %p133, align 8, !tbaa !13
  %44 = load i64, ptr %i, align 8, !tbaa !14
  %sub134 = sub i64 %44, 1
  %arrayidx135 = getelementptr inbounds i64, ptr %43, i64 %sub134
  %45 = load i64, ptr %arrayidx135, align 8, !tbaa !14
  %p136 = getelementptr inbounds %struct.mbedtls_mpi, ptr %Y, i32 0, i32 2
  %46 = load ptr, ptr %p136, align 8, !tbaa !13
  %47 = load i64, ptr %t, align 8, !tbaa !14
  %arrayidx137 = getelementptr inbounds i64, ptr %46, i64 %47
  %48 = load i64, ptr %arrayidx137, align 8, !tbaa !14
  %call138 = call noundef i64 @_ZL19mbedtls_int_div_intmmmPm(i64 noundef %42, i64 noundef %45, i64 noundef %48, ptr noundef null)
  %p139 = getelementptr inbounds %struct.mbedtls_mpi, ptr %Z, i32 0, i32 2
  %49 = load ptr, ptr %p139, align 8, !tbaa !13
  %50 = load i64, ptr %i, align 8, !tbaa !14
  %51 = load i64, ptr %t, align 8, !tbaa !14
  %sub140 = sub i64 %50, %51
  %sub141 = sub i64 %sub140, 1
  %arrayidx142 = getelementptr inbounds i64, ptr %49, i64 %sub141
  store i64 %call138, ptr %arrayidx142, align 8, !tbaa !14
  br label %if.end143

if.end143:                                        ; preds = %if.else130, %if.then125
  %52 = load i64, ptr %i, align 8, !tbaa !14
  %cmp144 = icmp ult i64 %52, 2
  br i1 %cmp144, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end143
  br label %cond.end

cond.false:                                       ; preds = %if.end143
  %p145 = getelementptr inbounds %struct.mbedtls_mpi, ptr %X, i32 0, i32 2
  %53 = load ptr, ptr %p145, align 8, !tbaa !13
  %54 = load i64, ptr %i, align 8, !tbaa !14
  %sub146 = sub i64 %54, 2
  %arrayidx147 = getelementptr inbounds i64, ptr %53, i64 %sub146
  %55 = load i64, ptr %arrayidx147, align 8, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %55, %cond.false ]
  %p148 = getelementptr inbounds %struct.mbedtls_mpi, ptr %T2, i32 0, i32 2
  %56 = load ptr, ptr %p148, align 8, !tbaa !13
  %arrayidx149 = getelementptr inbounds i64, ptr %56, i64 0
  store i64 %cond, ptr %arrayidx149, align 8, !tbaa !14
  %57 = load i64, ptr %i, align 8, !tbaa !14
  %cmp150 = icmp ult i64 %57, 1
  br i1 %cmp150, label %cond.true151, label %cond.false152

cond.true151:                                     ; preds = %cond.end
  br label %cond.end156

cond.false152:                                    ; preds = %cond.end
  %p153 = getelementptr inbounds %struct.mbedtls_mpi, ptr %X, i32 0, i32 2
  %58 = load ptr, ptr %p153, align 8, !tbaa !13
  %59 = load i64, ptr %i, align 8, !tbaa !14
  %sub154 = sub i64 %59, 1
  %arrayidx155 = getelementptr inbounds i64, ptr %58, i64 %sub154
  %60 = load i64, ptr %arrayidx155, align 8, !tbaa !14
  br label %cond.end156

cond.end156:                                      ; preds = %cond.false152, %cond.true151
  %cond157 = phi i64 [ 0, %cond.true151 ], [ %60, %cond.false152 ]
  %p158 = getelementptr inbounds %struct.mbedtls_mpi, ptr %T2, i32 0, i32 2
  %61 = load ptr, ptr %p158, align 8, !tbaa !13
  %arrayidx159 = getelementptr inbounds i64, ptr %61, i64 1
  store i64 %cond157, ptr %arrayidx159, align 8, !tbaa !14
  %p160 = getelementptr inbounds %struct.mbedtls_mpi, ptr %X, i32 0, i32 2
  %62 = load ptr, ptr %p160, align 8, !tbaa !13
  %63 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx161 = getelementptr inbounds i64, ptr %62, i64 %63
  %64 = load i64, ptr %arrayidx161, align 8, !tbaa !14
  %p162 = getelementptr inbounds %struct.mbedtls_mpi, ptr %T2, i32 0, i32 2
  %65 = load ptr, ptr %p162, align 8, !tbaa !13
  %arrayidx163 = getelementptr inbounds i64, ptr %65, i64 2
  store i64 %64, ptr %arrayidx163, align 8, !tbaa !14
  %p164 = getelementptr inbounds %struct.mbedtls_mpi, ptr %Z, i32 0, i32 2
  %66 = load ptr, ptr %p164, align 8, !tbaa !13
  %67 = load i64, ptr %i, align 8, !tbaa !14
  %68 = load i64, ptr %t, align 8, !tbaa !14
  %sub165 = sub i64 %67, %68
  %sub166 = sub i64 %sub165, 1
  %arrayidx167 = getelementptr inbounds i64, ptr %66, i64 %sub166
  %69 = load i64, ptr %arrayidx167, align 8, !tbaa !14
  %inc168 = add i64 %69, 1
  store i64 %inc168, ptr %arrayidx167, align 8, !tbaa !14
  br label %do.body169

do.body169:                                       ; preds = %do.cond206, %cond.end156
  %p170 = getelementptr inbounds %struct.mbedtls_mpi, ptr %Z, i32 0, i32 2
  %70 = load ptr, ptr %p170, align 8, !tbaa !13
  %71 = load i64, ptr %i, align 8, !tbaa !14
  %72 = load i64, ptr %t, align 8, !tbaa !14
  %sub171 = sub i64 %71, %72
  %sub172 = sub i64 %sub171, 1
  %arrayidx173 = getelementptr inbounds i64, ptr %70, i64 %sub172
  %73 = load i64, ptr %arrayidx173, align 8, !tbaa !14
  %dec = add i64 %73, -1
  store i64 %dec, ptr %arrayidx173, align 8, !tbaa !14
  br label %do.body174

do.body174:                                       ; preds = %do.body169
  %call175 = call i32 @mbedtls_mpi_lset(ptr noundef %T1, i64 noundef 0)
  store i32 %call175, ptr %ret, align 4, !tbaa !17
  %cmp176 = icmp ne i32 %call175, 0
  br i1 %cmp176, label %if.then177, label %if.end178

if.then177:                                       ; preds = %do.body174
  br label %cleanup

if.end178:                                        ; preds = %do.body174
  br label %do.cond179

do.cond179:                                       ; preds = %if.end178
  br label %do.end180

do.end180:                                        ; preds = %do.cond179
  %74 = load i64, ptr %t, align 8, !tbaa !14
  %cmp181 = icmp ult i64 %74, 1
  br i1 %cmp181, label %cond.true182, label %cond.false183

cond.true182:                                     ; preds = %do.end180
  br label %cond.end187

cond.false183:                                    ; preds = %do.end180
  %p184 = getelementptr inbounds %struct.mbedtls_mpi, ptr %Y, i32 0, i32 2
  %75 = load ptr, ptr %p184, align 8, !tbaa !13
  %76 = load i64, ptr %t, align 8, !tbaa !14
  %sub185 = sub i64 %76, 1
  %arrayidx186 = getelementptr inbounds i64, ptr %75, i64 %sub185
  %77 = load i64, ptr %arrayidx186, align 8, !tbaa !14
  br label %cond.end187

cond.end187:                                      ; preds = %cond.false183, %cond.true182
  %cond188 = phi i64 [ 0, %cond.true182 ], [ %77, %cond.false183 ]
  %p189 = getelementptr inbounds %struct.mbedtls_mpi, ptr %T1, i32 0, i32 2
  %78 = load ptr, ptr %p189, align 8, !tbaa !13
  %arrayidx190 = getelementptr inbounds i64, ptr %78, i64 0
  store i64 %cond188, ptr %arrayidx190, align 8, !tbaa !14
  %p191 = getelementptr inbounds %struct.mbedtls_mpi, ptr %Y, i32 0, i32 2
  %79 = load ptr, ptr %p191, align 8, !tbaa !13
  %80 = load i64, ptr %t, align 8, !tbaa !14
  %arrayidx192 = getelementptr inbounds i64, ptr %79, i64 %80
  %81 = load i64, ptr %arrayidx192, align 8, !tbaa !14
  %p193 = getelementptr inbounds %struct.mbedtls_mpi, ptr %T1, i32 0, i32 2
  %82 = load ptr, ptr %p193, align 8, !tbaa !13
  %arrayidx194 = getelementptr inbounds i64, ptr %82, i64 1
  store i64 %81, ptr %arrayidx194, align 8, !tbaa !14
  br label %do.body195

do.body195:                                       ; preds = %cond.end187
  %p196 = getelementptr inbounds %struct.mbedtls_mpi, ptr %Z, i32 0, i32 2
  %83 = load ptr, ptr %p196, align 8, !tbaa !13
  %84 = load i64, ptr %i, align 8, !tbaa !14
  %85 = load i64, ptr %t, align 8, !tbaa !14
  %sub197 = sub i64 %84, %85
  %sub198 = sub i64 %sub197, 1
  %arrayidx199 = getelementptr inbounds i64, ptr %83, i64 %sub198
  %86 = load i64, ptr %arrayidx199, align 8, !tbaa !14
  %call200 = call i32 @mbedtls_mpi_mul_int(ptr noundef %T1, ptr noundef %T1, i64 noundef %86)
  store i32 %call200, ptr %ret, align 4, !tbaa !17
  %cmp201 = icmp ne i32 %call200, 0
  br i1 %cmp201, label %if.then202, label %if.end203

if.then202:                                       ; preds = %do.body195
  br label %cleanup

if.end203:                                        ; preds = %do.body195
  br label %do.cond204

do.cond204:                                       ; preds = %if.end203
  br label %do.end205

do.end205:                                        ; preds = %do.cond204
  br label %do.cond206

do.cond206:                                       ; preds = %do.end205
  %call207 = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef %T1, ptr noundef %T2)
  %cmp208 = icmp sgt i32 %call207, 0
  br i1 %cmp208, label %do.body169, label %do.end209, !llvm.loop !64

do.end209:                                        ; preds = %do.cond206
  br label %do.body210

do.body210:                                       ; preds = %do.end209
  %p211 = getelementptr inbounds %struct.mbedtls_mpi, ptr %Z, i32 0, i32 2
  %87 = load ptr, ptr %p211, align 8, !tbaa !13
  %88 = load i64, ptr %i, align 8, !tbaa !14
  %89 = load i64, ptr %t, align 8, !tbaa !14
  %sub212 = sub i64 %88, %89
  %sub213 = sub i64 %sub212, 1
  %arrayidx214 = getelementptr inbounds i64, ptr %87, i64 %sub213
  %90 = load i64, ptr %arrayidx214, align 8, !tbaa !14
  %call215 = call i32 @mbedtls_mpi_mul_int(ptr noundef %T1, ptr noundef %Y, i64 noundef %90)
  store i32 %call215, ptr %ret, align 4, !tbaa !17
  %cmp216 = icmp ne i32 %call215, 0
  br i1 %cmp216, label %if.then217, label %if.end218

if.then217:                                       ; preds = %do.body210
  br label %cleanup

if.end218:                                        ; preds = %do.body210
  br label %do.cond219

do.cond219:                                       ; preds = %if.end218
  br label %do.end220

do.end220:                                        ; preds = %do.cond219
  br label %do.body221

do.body221:                                       ; preds = %do.end220
  %91 = load i64, ptr %i, align 8, !tbaa !14
  %92 = load i64, ptr %t, align 8, !tbaa !14
  %sub222 = sub i64 %91, %92
  %sub223 = sub i64 %sub222, 1
  %mul224 = mul i64 64, %sub223
  %call225 = call i32 @mbedtls_mpi_shift_l(ptr noundef %T1, i64 noundef %mul224)
  store i32 %call225, ptr %ret, align 4, !tbaa !17
  %cmp226 = icmp ne i32 %call225, 0
  br i1 %cmp226, label %if.then227, label %if.end228

if.then227:                                       ; preds = %do.body221
  br label %cleanup

if.end228:                                        ; preds = %do.body221
  br label %do.cond229

do.cond229:                                       ; preds = %if.end228
  br label %do.end230

do.end230:                                        ; preds = %do.cond229
  br label %do.body231

do.body231:                                       ; preds = %do.end230
  %call232 = call i32 @mbedtls_mpi_sub_mpi(ptr noundef %X, ptr noundef %X, ptr noundef %T1)
  store i32 %call232, ptr %ret, align 4, !tbaa !17
  %cmp233 = icmp ne i32 %call232, 0
  br i1 %cmp233, label %if.then234, label %if.end235

if.then234:                                       ; preds = %do.body231
  br label %cleanup

if.end235:                                        ; preds = %do.body231
  br label %do.cond236

do.cond236:                                       ; preds = %if.end235
  br label %do.end237

do.end237:                                        ; preds = %do.cond236
  %call238 = call i32 @mbedtls_mpi_cmp_int(ptr noundef %X, i64 noundef 0)
  %cmp239 = icmp slt i32 %call238, 0
  br i1 %cmp239, label %if.then240, label %if.end270

if.then240:                                       ; preds = %do.end237
  br label %do.body241

do.body241:                                       ; preds = %if.then240
  %call242 = call i32 @mbedtls_mpi_copy(ptr noundef %T1, ptr noundef %Y)
  store i32 %call242, ptr %ret, align 4, !tbaa !17
  %cmp243 = icmp ne i32 %call242, 0
  br i1 %cmp243, label %if.then244, label %if.end245

if.then244:                                       ; preds = %do.body241
  br label %cleanup

if.end245:                                        ; preds = %do.body241
  br label %do.cond246

do.cond246:                                       ; preds = %if.end245
  br label %do.end247

do.end247:                                        ; preds = %do.cond246
  br label %do.body248

do.body248:                                       ; preds = %do.end247
  %93 = load i64, ptr %i, align 8, !tbaa !14
  %94 = load i64, ptr %t, align 8, !tbaa !14
  %sub249 = sub i64 %93, %94
  %sub250 = sub i64 %sub249, 1
  %mul251 = mul i64 64, %sub250
  %call252 = call i32 @mbedtls_mpi_shift_l(ptr noundef %T1, i64 noundef %mul251)
  store i32 %call252, ptr %ret, align 4, !tbaa !17
  %cmp253 = icmp ne i32 %call252, 0
  br i1 %cmp253, label %if.then254, label %if.end255

if.then254:                                       ; preds = %do.body248
  br label %cleanup

if.end255:                                        ; preds = %do.body248
  br label %do.cond256

do.cond256:                                       ; preds = %if.end255
  br label %do.end257

do.end257:                                        ; preds = %do.cond256
  br label %do.body258

do.body258:                                       ; preds = %do.end257
  %call259 = call i32 @mbedtls_mpi_add_mpi(ptr noundef %X, ptr noundef %X, ptr noundef %T1)
  store i32 %call259, ptr %ret, align 4, !tbaa !17
  %cmp260 = icmp ne i32 %call259, 0
  br i1 %cmp260, label %if.then261, label %if.end262

if.then261:                                       ; preds = %do.body258
  br label %cleanup

if.end262:                                        ; preds = %do.body258
  br label %do.cond263

do.cond263:                                       ; preds = %if.end262
  br label %do.end264

do.end264:                                        ; preds = %do.cond263
  %p265 = getelementptr inbounds %struct.mbedtls_mpi, ptr %Z, i32 0, i32 2
  %95 = load ptr, ptr %p265, align 8, !tbaa !13
  %96 = load i64, ptr %i, align 8, !tbaa !14
  %97 = load i64, ptr %t, align 8, !tbaa !14
  %sub266 = sub i64 %96, %97
  %sub267 = sub i64 %sub266, 1
  %arrayidx268 = getelementptr inbounds i64, ptr %95, i64 %sub267
  %98 = load i64, ptr %arrayidx268, align 8, !tbaa !14
  %dec269 = add i64 %98, -1
  store i64 %dec269, ptr %arrayidx268, align 8, !tbaa !14
  br label %if.end270

if.end270:                                        ; preds = %do.end264, %do.end237
  br label %for.inc

for.inc:                                          ; preds = %if.end270
  %99 = load i64, ptr %i, align 8, !tbaa !14
  %dec271 = add i64 %99, -1
  store i64 %dec271, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !65

for.end:                                          ; preds = %for.cond
  %100 = load ptr, ptr %Q.addr, align 8, !tbaa !4
  %cmp272 = icmp ne ptr %100, null
  br i1 %cmp272, label %if.then273, label %if.end285

if.then273:                                       ; preds = %for.end
  br label %do.body274

do.body274:                                       ; preds = %if.then273
  %101 = load ptr, ptr %Q.addr, align 8, !tbaa !4
  %call275 = call i32 @mbedtls_mpi_copy(ptr noundef %101, ptr noundef %Z)
  store i32 %call275, ptr %ret, align 4, !tbaa !17
  %cmp276 = icmp ne i32 %call275, 0
  br i1 %cmp276, label %if.then277, label %if.end278

if.then277:                                       ; preds = %do.body274
  br label %cleanup

if.end278:                                        ; preds = %do.body274
  br label %do.cond279

do.cond279:                                       ; preds = %if.end278
  br label %do.end280

do.end280:                                        ; preds = %do.cond279
  %102 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %s281 = getelementptr inbounds %struct.mbedtls_mpi, ptr %102, i32 0, i32 0
  %103 = load i32, ptr %s281, align 8, !tbaa !8
  %104 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %s282 = getelementptr inbounds %struct.mbedtls_mpi, ptr %104, i32 0, i32 0
  %105 = load i32, ptr %s282, align 8, !tbaa !8
  %mul283 = mul nsw i32 %103, %105
  %106 = load ptr, ptr %Q.addr, align 8, !tbaa !4
  %s284 = getelementptr inbounds %struct.mbedtls_mpi, ptr %106, i32 0, i32 0
  store i32 %mul283, ptr %s284, align 8, !tbaa !8
  br label %if.end285

if.end285:                                        ; preds = %do.end280, %for.end
  %107 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %cmp286 = icmp ne ptr %107, null
  br i1 %cmp286, label %if.then287, label %if.end309

if.then287:                                       ; preds = %if.end285
  br label %do.body288

do.body288:                                       ; preds = %if.then287
  %108 = load i64, ptr %k, align 8, !tbaa !14
  %call289 = call i32 @mbedtls_mpi_shift_r(ptr noundef %X, i64 noundef %108)
  store i32 %call289, ptr %ret, align 4, !tbaa !17
  %cmp290 = icmp ne i32 %call289, 0
  br i1 %cmp290, label %if.then291, label %if.end292

if.then291:                                       ; preds = %do.body288
  br label %cleanup

if.end292:                                        ; preds = %do.body288
  br label %do.cond293

do.cond293:                                       ; preds = %if.end292
  br label %do.end294

do.end294:                                        ; preds = %do.cond293
  %109 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %s295 = getelementptr inbounds %struct.mbedtls_mpi, ptr %109, i32 0, i32 0
  %110 = load i32, ptr %s295, align 8, !tbaa !8
  %s296 = getelementptr inbounds %struct.mbedtls_mpi, ptr %X, i32 0, i32 0
  store i32 %110, ptr %s296, align 8, !tbaa !8
  br label %do.body297

do.body297:                                       ; preds = %do.end294
  %111 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %call298 = call i32 @mbedtls_mpi_copy(ptr noundef %111, ptr noundef %X)
  store i32 %call298, ptr %ret, align 4, !tbaa !17
  %cmp299 = icmp ne i32 %call298, 0
  br i1 %cmp299, label %if.then300, label %if.end301

if.then300:                                       ; preds = %do.body297
  br label %cleanup

if.end301:                                        ; preds = %do.body297
  br label %do.cond302

do.cond302:                                       ; preds = %if.end301
  br label %do.end303

do.end303:                                        ; preds = %do.cond302
  %112 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %call304 = call i32 @mbedtls_mpi_cmp_int(ptr noundef %112, i64 noundef 0)
  %cmp305 = icmp eq i32 %call304, 0
  br i1 %cmp305, label %if.then306, label %if.end308

if.then306:                                       ; preds = %do.end303
  %113 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %s307 = getelementptr inbounds %struct.mbedtls_mpi, ptr %113, i32 0, i32 0
  store i32 1, ptr %s307, align 8, !tbaa !8
  br label %if.end308

if.end308:                                        ; preds = %if.then306, %do.end303
  br label %if.end309

if.end309:                                        ; preds = %if.end308, %if.end285
  br label %cleanup

cleanup:                                          ; preds = %if.end309, %if.then300, %if.then291, %if.then277, %if.then261, %if.then254, %if.then244, %if.then234, %if.then227, %if.then217, %if.then202, %if.then177, %if.then115, %if.then106, %if.then95, %if.then82, %if.then75, %if.then65, %if.then56, %if.then49, %if.then39, %if.then32, %if.then23, %if.then13
  call void @mbedtls_mpi_free(ptr noundef %X)
  call void @mbedtls_mpi_free(ptr noundef %Y)
  call void @mbedtls_mpi_free(ptr noundef %Z)
  call void @mbedtls_mpi_free(ptr noundef %T1)
  %arraydecay310 = getelementptr inbounds [3 x i64], ptr %TP2, i64 0, i64 0
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay310, i64 noundef 24)
  %114 = load i32, ptr %ret, align 4, !tbaa !17
  store i32 %114, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup311

cleanup311:                                       ; preds = %cleanup, %if.end27, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %TP2) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %T2) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %T1) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %Z) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %Y) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %X) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  %115 = load i32, ptr %retval, align 4
  ret i32 %115
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @_ZL19mbedtls_int_div_intmmmPm(i64 noundef %u1, i64 noundef %u0, i64 noundef %d, ptr noundef %r) #0 {
entry:
  %retval = alloca i64, align 8
  %u1.addr = alloca i64, align 8
  %u0.addr = alloca i64, align 8
  %d.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %dividend = alloca i128, align 16
  %quotient = alloca i128, align 16
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %u1, ptr %u1.addr, align 8, !tbaa !14
  store i64 %u0, ptr %u0.addr, align 8, !tbaa !14
  store i64 %d, ptr %d.addr, align 8, !tbaa !14
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %dividend) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr %quotient) #10
  %0 = load i64, ptr %d.addr, align 8, !tbaa !14
  %cmp = icmp eq i64 0, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %u1.addr, align 8, !tbaa !14
  %2 = load i64, ptr %d.addr, align 8, !tbaa !14
  %cmp1 = icmp uge i64 %1, %2
  br i1 %cmp1, label %if.then, label %if.end4

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %cmp2 = icmp ne ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %r.addr, align 8, !tbaa !4
  store i64 -1, ptr %4, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %5 = load i64, ptr %u1.addr, align 8, !tbaa !14
  %conv = zext i64 %5 to i128
  %shl = shl i128 %conv, 64
  store i128 %shl, ptr %dividend, align 16, !tbaa !57
  %6 = load i64, ptr %u0.addr, align 8, !tbaa !14
  %conv5 = zext i64 %6 to i128
  %7 = load i128, ptr %dividend, align 16, !tbaa !57
  %or = or i128 %7, %conv5
  store i128 %or, ptr %dividend, align 16, !tbaa !57
  %8 = load i128, ptr %dividend, align 16, !tbaa !57
  %9 = load i64, ptr %d.addr, align 8, !tbaa !14
  %conv6 = zext i64 %9 to i128
  %div = udiv i128 %8, %conv6
  store i128 %div, ptr %quotient, align 16, !tbaa !57
  %10 = load i128, ptr %quotient, align 16, !tbaa !57
  %cmp7 = icmp ugt i128 %10, 18446744073709551615
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  store i128 18446744073709551615, ptr %quotient, align 16, !tbaa !57
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4
  %11 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %cmp10 = icmp ne ptr %11, null
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end9
  %12 = load i128, ptr %dividend, align 16, !tbaa !57
  %13 = load i128, ptr %quotient, align 16, !tbaa !57
  %14 = load i64, ptr %d.addr, align 8, !tbaa !14
  %conv12 = zext i64 %14 to i128
  %mul = mul i128 %13, %conv12
  %sub = sub i128 %12, %mul
  %conv13 = trunc i128 %sub to i64
  %15 = load ptr, ptr %r.addr, align 8, !tbaa !4
  store i64 %conv13, ptr %15, align 8, !tbaa !14
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9
  %16 = load i128, ptr %quotient, align 16, !tbaa !57
  %conv15 = trunc i128 %16 to i64
  store i64 %conv15, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end
  call void @llvm.lifetime.end.p0(i64 16, ptr %quotient) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %dividend) #10
  %17 = load i64, ptr %retval, align 8
  ret i64 %17
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) #8

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_div_int(ptr noundef %Q, ptr noundef %R, ptr noundef %A, i64 noundef %b) #1 {
entry:
  %Q.addr = alloca ptr, align 8
  %R.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %b.addr = alloca i64, align 8
  %B = alloca %struct.mbedtls_mpi, align 8
  %p = alloca [1 x i64], align 8
  store ptr %Q, ptr %Q.addr, align 8, !tbaa !4
  store ptr %R, ptr %R.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 24, ptr %B) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %0 = load i64, ptr %b.addr, align 8, !tbaa !14
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %1 = load i64, ptr %b.addr, align 8, !tbaa !14
  %sub = sub nsw i64 0, %1
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %2 = load i64, ptr %b.addr, align 8, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %2, %cond.false ]
  %arrayidx = getelementptr inbounds [1 x i64], ptr %p, i64 0, i64 0
  store i64 %cond, ptr %arrayidx, align 8, !tbaa !14
  %3 = load i64, ptr %b.addr, align 8, !tbaa !14
  %cmp1 = icmp slt i64 %3, 0
  %4 = zext i1 %cmp1 to i64
  %cond2 = select i1 %cmp1, i32 -1, i32 1
  %s = getelementptr inbounds %struct.mbedtls_mpi, ptr %B, i32 0, i32 0
  store i32 %cond2, ptr %s, align 8, !tbaa !8
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %B, i32 0, i32 1
  store i64 1, ptr %n, align 8, !tbaa !12
  %arraydecay = getelementptr inbounds [1 x i64], ptr %p, i64 0, i64 0
  %p3 = getelementptr inbounds %struct.mbedtls_mpi, ptr %B, i32 0, i32 2
  store ptr %arraydecay, ptr %p3, align 8, !tbaa !13
  %5 = load ptr, ptr %Q.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_mpi_div_mpi(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %B)
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %B) #10
  ret i32 %call
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_mod_mpi(ptr noundef %R, ptr noundef %A, ptr noundef %B) #1 {
entry:
  %retval = alloca i32, align 4
  %R.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %R, ptr %R.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %B, ptr %B.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 -110, ptr %ret, align 4, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  br label %do.cond5

do.cond5:                                         ; preds = %do.body4
  br label %do.end6

do.end6:                                          ; preds = %do.cond5
  %0 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_mpi_cmp_int(ptr noundef %0, i64 noundef 0)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end6
  store i32 -10, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup35

if.end:                                           ; preds = %do.end6
  br label %do.body7

do.body7:                                         ; preds = %if.end
  %1 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %call8 = call i32 @mbedtls_mpi_div_mpi(ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  store i32 %call8, ptr %ret, align 4, !tbaa !17
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body7
  br label %cleanup

if.end11:                                         ; preds = %do.body7
  br label %do.cond12

do.cond12:                                        ; preds = %if.end11
  br label %do.end13

do.end13:                                         ; preds = %do.cond12
  br label %while.cond

while.cond:                                       ; preds = %do.end22, %do.end13
  %4 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %call14 = call i32 @mbedtls_mpi_cmp_int(ptr noundef %4, i64 noundef 0)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body16

do.body16:                                        ; preds = %while.body
  %5 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %call17 = call i32 @mbedtls_mpi_add_mpi(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store i32 %call17, ptr %ret, align 4, !tbaa !17
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.body16
  br label %cleanup

if.end20:                                         ; preds = %do.body16
  br label %do.cond21

do.cond21:                                        ; preds = %if.end20
  br label %do.end22

do.end22:                                         ; preds = %do.cond21
  br label %while.cond, !llvm.loop !66

while.end:                                        ; preds = %while.cond
  br label %while.cond23

while.cond23:                                     ; preds = %do.end33, %while.end
  %8 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %call24 = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef %8, ptr noundef %9)
  %cmp25 = icmp sge i32 %call24, 0
  br i1 %cmp25, label %while.body26, label %while.end34

while.body26:                                     ; preds = %while.cond23
  br label %do.body27

do.body27:                                        ; preds = %while.body26
  %10 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %call28 = call i32 @mbedtls_mpi_sub_mpi(ptr noundef %10, ptr noundef %11, ptr noundef %12)
  store i32 %call28, ptr %ret, align 4, !tbaa !17
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %do.body27
  br label %cleanup

if.end31:                                         ; preds = %do.body27
  br label %do.cond32

do.cond32:                                        ; preds = %if.end31
  br label %do.end33

do.end33:                                         ; preds = %do.cond32
  br label %while.cond23, !llvm.loop !67

while.end34:                                      ; preds = %while.cond23
  br label %cleanup

cleanup:                                          ; preds = %while.end34, %if.then30, %if.then19, %if.then10
  %13 = load i32, ptr %ret, align 4, !tbaa !17
  store i32 %13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup35

cleanup35:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @mbedtls_mpi_mod_int(ptr noundef %r, ptr noundef %A, i64 noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %b.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %z = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  %0 = load i64, ptr %b.addr, align 8, !tbaa !14
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end3
  store i32 -12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.end3
  %1 = load i64, ptr %b.addr, align 8, !tbaa !14
  %cmp4 = icmp slt i64 %1, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -10, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = load i64, ptr %b.addr, align 8, !tbaa !14
  %cmp7 = icmp eq i64 %2, 1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %3 = load ptr, ptr %r.addr, align 8, !tbaa !4
  store i64 0, ptr %3, align 8, !tbaa !14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %4 = load i64, ptr %b.addr, align 8, !tbaa !14
  %cmp10 = icmp eq i64 %4, 2
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  %5 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %p, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i64, ptr %6, i64 0
  %7 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %and = and i64 %7, 1
  %8 = load ptr, ptr %r.addr, align 8, !tbaa !4
  store i64 %and, ptr %8, align 8, !tbaa !14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %9 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %9, i32 0, i32 1
  %10 = load i64, ptr %n, align 8, !tbaa !12
  store i64 %10, ptr %i, align 8, !tbaa !14
  store i64 0, ptr %y, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %11 = load i64, ptr %i, align 8, !tbaa !14
  %cmp13 = icmp ugt i64 %11, 0
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %p14 = getelementptr inbounds %struct.mbedtls_mpi, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %p14, align 8, !tbaa !13
  %14 = load i64, ptr %i, align 8, !tbaa !14
  %sub = sub i64 %14, 1
  %arrayidx15 = getelementptr inbounds i64, ptr %13, i64 %sub
  %15 = load i64, ptr %arrayidx15, align 8, !tbaa !14
  store i64 %15, ptr %x, align 8, !tbaa !14
  %16 = load i64, ptr %y, align 8, !tbaa !14
  %shl = shl i64 %16, 32
  %17 = load i64, ptr %x, align 8, !tbaa !14
  %shr = lshr i64 %17, 32
  %or = or i64 %shl, %shr
  store i64 %or, ptr %y, align 8, !tbaa !14
  %18 = load i64, ptr %y, align 8, !tbaa !14
  %19 = load i64, ptr %b.addr, align 8, !tbaa !14
  %div = udiv i64 %18, %19
  store i64 %div, ptr %z, align 8, !tbaa !14
  %20 = load i64, ptr %z, align 8, !tbaa !14
  %21 = load i64, ptr %b.addr, align 8, !tbaa !14
  %mul = mul i64 %20, %21
  %22 = load i64, ptr %y, align 8, !tbaa !14
  %sub16 = sub i64 %22, %mul
  store i64 %sub16, ptr %y, align 8, !tbaa !14
  %23 = load i64, ptr %x, align 8, !tbaa !14
  %shl17 = shl i64 %23, 32
  store i64 %shl17, ptr %x, align 8, !tbaa !14
  %24 = load i64, ptr %y, align 8, !tbaa !14
  %shl18 = shl i64 %24, 32
  %25 = load i64, ptr %x, align 8, !tbaa !14
  %shr19 = lshr i64 %25, 32
  %or20 = or i64 %shl18, %shr19
  store i64 %or20, ptr %y, align 8, !tbaa !14
  %26 = load i64, ptr %y, align 8, !tbaa !14
  %27 = load i64, ptr %b.addr, align 8, !tbaa !14
  %div21 = udiv i64 %26, %27
  store i64 %div21, ptr %z, align 8, !tbaa !14
  %28 = load i64, ptr %z, align 8, !tbaa !14
  %29 = load i64, ptr %b.addr, align 8, !tbaa !14
  %mul22 = mul i64 %28, %29
  %30 = load i64, ptr %y, align 8, !tbaa !14
  %sub23 = sub i64 %30, %mul22
  store i64 %sub23, ptr %y, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i64, ptr %i, align 8, !tbaa !14
  %dec = add i64 %31, -1
  store i64 %dec, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  %32 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.mbedtls_mpi, ptr %32, i32 0, i32 0
  %33 = load i32, ptr %s, align 8, !tbaa !8
  %cmp24 = icmp slt i32 %33, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %for.end
  %34 = load i64, ptr %y, align 8, !tbaa !14
  %cmp25 = icmp ne i64 %34, 0
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %land.lhs.true
  %35 = load i64, ptr %b.addr, align 8, !tbaa !14
  %36 = load i64, ptr %y, align 8, !tbaa !14
  %sub27 = sub i64 %35, %36
  store i64 %sub27, ptr %y, align 8, !tbaa !14
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %land.lhs.true, %for.end
  %37 = load i64, ptr %y, align 8, !tbaa !14
  %38 = load ptr, ptr %r.addr, align 8, !tbaa !4
  store i64 %37, ptr %38, align 8, !tbaa !14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then11, %if.then8, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_exp_mod(ptr noundef %X, ptr noundef %A, ptr noundef %E, ptr noundef %N, ptr noundef %prec_RR) #1 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %E.addr = alloca ptr, align 8
  %N.addr = alloca ptr, align 8
  %prec_RR.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %wbits = alloca i64, align 8
  %wsize = alloca i64, align 8
  %one = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %nblimbs = alloca i64, align 8
  %bufsize = alloca i64, align 8
  %nbits = alloca i64, align 8
  %ei = alloca i64, align 8
  %mm = alloca i64, align 8
  %state = alloca i64, align 8
  %RR = alloca %struct.mbedtls_mpi, align 8
  %T = alloca %struct.mbedtls_mpi, align 8
  %W = alloca [64 x %struct.mbedtls_mpi], align 16
  %WW = alloca %struct.mbedtls_mpi, align 8
  %Apos = alloca %struct.mbedtls_mpi, align 8
  %neg = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %E, ptr %E.addr, align 8, !tbaa !4
  store ptr %N, ptr %N.addr, align 8, !tbaa !4
  store ptr %prec_RR, ptr %prec_RR.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 -110, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %wbits) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %wsize) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %one) #10
  store i64 1, ptr %one, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %nblimbs) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %bufsize) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %nbits) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %RR) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %T) #10
  call void @llvm.lifetime.start.p0(i64 1536, ptr %W) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %WW) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %Apos) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %neg) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  br label %do.cond5

do.cond5:                                         ; preds = %do.body4
  br label %do.end6

do.end6:                                          ; preds = %do.cond5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.cond8

do.cond8:                                         ; preds = %do.body7
  br label %do.end9

do.end9:                                          ; preds = %do.cond8
  %0 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_mpi_cmp_int(ptr noundef %0, i64 noundef 0)
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end9
  %1 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %p, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %and = and i64 %3, 1
  %cmp10 = icmp eq i64 %and, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end9
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup289

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %E.addr, align 8, !tbaa !4
  %call11 = call i32 @mbedtls_mpi_cmp_int(ptr noundef %4, i64 noundef 0)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup289

if.end14:                                         ; preds = %if.end
  %5 = load ptr, ptr %E.addr, align 8, !tbaa !4
  %call15 = call i64 @mbedtls_mpi_bitlen(ptr noundef %5)
  %cmp16 = icmp ugt i64 %call15, 8192
  br i1 %cmp16, label %if.then20, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end14
  %6 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %call18 = call i64 @mbedtls_mpi_bitlen(ptr noundef %6)
  %cmp19 = icmp ugt i64 %call18, 8192
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %lor.lhs.false17, %if.end14
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup289

if.end21:                                         ; preds = %lor.lhs.false17
  %7 = load ptr, ptr %N.addr, align 8, !tbaa !4
  call void @_ZL14mpi_montg_initPmPK11mbedtls_mpi(ptr noundef %mm, ptr noundef %7)
  call void @mbedtls_mpi_init(ptr noundef %RR)
  call void @mbedtls_mpi_init(ptr noundef %T)
  call void @mbedtls_mpi_init(ptr noundef %Apos)
  call void @mbedtls_mpi_init(ptr noundef %WW)
  %arraydecay = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 1536, i1 false)
  %8 = load ptr, ptr %E.addr, align 8, !tbaa !4
  %call22 = call i64 @mbedtls_mpi_bitlen(ptr noundef %8)
  store i64 %call22, ptr %i, align 8, !tbaa !14
  %9 = load i64, ptr %i, align 8, !tbaa !14
  %cmp23 = icmp ugt i64 %9, 671
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end21
  br label %cond.end34

cond.false:                                       ; preds = %if.end21
  %10 = load i64, ptr %i, align 8, !tbaa !14
  %cmp24 = icmp ugt i64 %10, 239
  br i1 %cmp24, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %cond.false
  br label %cond.end32

cond.false26:                                     ; preds = %cond.false
  %11 = load i64, ptr %i, align 8, !tbaa !14
  %cmp27 = icmp ugt i64 %11, 79
  br i1 %cmp27, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %cond.false26
  br label %cond.end

cond.false29:                                     ; preds = %cond.false26
  %12 = load i64, ptr %i, align 8, !tbaa !14
  %cmp30 = icmp ugt i64 %12, 23
  %13 = zext i1 %cmp30 to i64
  %cond = select i1 %cmp30, i32 3, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false29, %cond.true28
  %cond31 = phi i32 [ 4, %cond.true28 ], [ %cond, %cond.false29 ]
  br label %cond.end32

cond.end32:                                       ; preds = %cond.end, %cond.true25
  %cond33 = phi i32 [ 5, %cond.true25 ], [ %cond31, %cond.end ]
  br label %cond.end34

cond.end34:                                       ; preds = %cond.end32, %cond.true
  %cond35 = phi i32 [ 6, %cond.true ], [ %cond33, %cond.end32 ]
  %conv = sext i32 %cond35 to i64
  store i64 %conv, ptr %wsize, align 8, !tbaa !14
  %14 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %14, i32 0, i32 1
  %15 = load i64, ptr %n, align 8, !tbaa !12
  %add = add i64 %15, 1
  store i64 %add, ptr %j, align 8, !tbaa !14
  br label %do.body36

do.body36:                                        ; preds = %cond.end34
  %16 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %17 = load i64, ptr %j, align 8, !tbaa !14
  %call37 = call i32 @mbedtls_mpi_grow(ptr noundef %16, i64 noundef %17)
  store i32 %call37, ptr %ret, align 4, !tbaa !17
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %do.body36
  br label %cleanup

if.end40:                                         ; preds = %do.body36
  br label %do.cond41

do.cond41:                                        ; preds = %if.end40
  br label %do.end42

do.end42:                                         ; preds = %do.cond41
  br label %do.body43

do.body43:                                        ; preds = %do.end42
  %arrayidx44 = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 1
  %18 = load i64, ptr %j, align 8, !tbaa !14
  %call45 = call i32 @mbedtls_mpi_grow(ptr noundef %arrayidx44, i64 noundef %18)
  store i32 %call45, ptr %ret, align 4, !tbaa !17
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %do.body43
  br label %cleanup

if.end48:                                         ; preds = %do.body43
  br label %do.cond49

do.cond49:                                        ; preds = %if.end48
  br label %do.end50

do.end50:                                         ; preds = %do.cond49
  br label %do.body51

do.body51:                                        ; preds = %do.end50
  %19 = load i64, ptr %j, align 8, !tbaa !14
  %mul = mul i64 %19, 2
  %call52 = call i32 @mbedtls_mpi_grow(ptr noundef %T, i64 noundef %mul)
  store i32 %call52, ptr %ret, align 4, !tbaa !17
  %cmp53 = icmp ne i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %do.body51
  br label %cleanup

if.end55:                                         ; preds = %do.body51
  br label %do.cond56

do.cond56:                                        ; preds = %if.end55
  br label %do.end57

do.end57:                                         ; preds = %do.cond56
  %20 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.mbedtls_mpi, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %s, align 8, !tbaa !8
  %cmp58 = icmp eq i32 %21, -1
  %conv59 = zext i1 %cmp58 to i32
  store i32 %conv59, ptr %neg, align 4, !tbaa !17
  %22 = load i32, ptr %neg, align 4, !tbaa !17
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then60, label %if.end69

if.then60:                                        ; preds = %do.end57
  br label %do.body61

do.body61:                                        ; preds = %if.then60
  %23 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call62 = call i32 @mbedtls_mpi_copy(ptr noundef %Apos, ptr noundef %23)
  store i32 %call62, ptr %ret, align 4, !tbaa !17
  %cmp63 = icmp ne i32 %call62, 0
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %do.body61
  br label %cleanup

if.end65:                                         ; preds = %do.body61
  br label %do.cond66

do.cond66:                                        ; preds = %if.end65
  br label %do.end67

do.end67:                                         ; preds = %do.cond66
  %s68 = getelementptr inbounds %struct.mbedtls_mpi, ptr %Apos, i32 0, i32 0
  store i32 1, ptr %s68, align 8, !tbaa !8
  store ptr %Apos, ptr %A.addr, align 8, !tbaa !4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %do.end57
  %24 = load ptr, ptr %prec_RR.addr, align 8, !tbaa !4
  %cmp70 = icmp eq ptr %24, null
  br i1 %cmp70, label %if.then74, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %if.end69
  %25 = load ptr, ptr %prec_RR.addr, align 8, !tbaa !4
  %p72 = getelementptr inbounds %struct.mbedtls_mpi, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %p72, align 8, !tbaa !13
  %cmp73 = icmp eq ptr %26, null
  br i1 %cmp73, label %if.then74, label %if.else

if.then74:                                        ; preds = %lor.lhs.false71, %if.end69
  br label %do.body75

do.body75:                                        ; preds = %if.then74
  %call76 = call i32 @mbedtls_mpi_lset(ptr noundef %RR, i64 noundef 1)
  store i32 %call76, ptr %ret, align 4, !tbaa !17
  %cmp77 = icmp ne i32 %call76, 0
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %do.body75
  br label %cleanup

if.end79:                                         ; preds = %do.body75
  br label %do.cond80

do.cond80:                                        ; preds = %if.end79
  br label %do.end81

do.end81:                                         ; preds = %do.cond80
  br label %do.body82

do.body82:                                        ; preds = %do.end81
  %27 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %n83 = getelementptr inbounds %struct.mbedtls_mpi, ptr %27, i32 0, i32 1
  %28 = load i64, ptr %n83, align 8, !tbaa !12
  %mul84 = mul i64 %28, 2
  %mul85 = mul i64 %mul84, 64
  %call86 = call i32 @mbedtls_mpi_shift_l(ptr noundef %RR, i64 noundef %mul85)
  store i32 %call86, ptr %ret, align 4, !tbaa !17
  %cmp87 = icmp ne i32 %call86, 0
  br i1 %cmp87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %do.body82
  br label %cleanup

if.end89:                                         ; preds = %do.body82
  br label %do.cond90

do.cond90:                                        ; preds = %if.end89
  br label %do.end91

do.end91:                                         ; preds = %do.cond90
  br label %do.body92

do.body92:                                        ; preds = %do.end91
  %29 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %call93 = call i32 @mbedtls_mpi_mod_mpi(ptr noundef %RR, ptr noundef %RR, ptr noundef %29)
  store i32 %call93, ptr %ret, align 4, !tbaa !17
  %cmp94 = icmp ne i32 %call93, 0
  br i1 %cmp94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %do.body92
  br label %cleanup

if.end96:                                         ; preds = %do.body92
  br label %do.cond97

do.cond97:                                        ; preds = %if.end96
  br label %do.end98

do.end98:                                         ; preds = %do.cond97
  %30 = load ptr, ptr %prec_RR.addr, align 8, !tbaa !4
  %cmp99 = icmp ne ptr %30, null
  br i1 %cmp99, label %if.then100, label %if.end101

if.then100:                                       ; preds = %do.end98
  %31 = load ptr, ptr %prec_RR.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %31, ptr align 8 %RR, i64 24, i1 false)
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %do.end98
  br label %if.end102

if.else:                                          ; preds = %lor.lhs.false71
  %32 = load ptr, ptr %prec_RR.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %RR, ptr align 8 %32, i64 24, i1 false)
  br label %if.end102

if.end102:                                        ; preds = %if.else, %if.end101
  %33 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %34 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %call103 = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef %33, ptr noundef %34)
  %cmp104 = icmp sge i32 %call103, 0
  br i1 %cmp104, label %if.then105, label %if.else124

if.then105:                                       ; preds = %if.end102
  br label %do.body106

do.body106:                                       ; preds = %if.then105
  %arrayidx107 = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 1
  %35 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %36 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %call108 = call i32 @mbedtls_mpi_mod_mpi(ptr noundef %arrayidx107, ptr noundef %35, ptr noundef %36)
  store i32 %call108, ptr %ret, align 4, !tbaa !17
  %cmp109 = icmp ne i32 %call108, 0
  br i1 %cmp109, label %if.then110, label %if.end111

if.then110:                                       ; preds = %do.body106
  br label %cleanup

if.end111:                                        ; preds = %do.body106
  br label %do.cond112

do.cond112:                                       ; preds = %if.end111
  br label %do.end113

do.end113:                                        ; preds = %do.cond112
  br label %do.body114

do.body114:                                       ; preds = %do.end113
  %arrayidx115 = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 1
  %37 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %n116 = getelementptr inbounds %struct.mbedtls_mpi, ptr %37, i32 0, i32 1
  %38 = load i64, ptr %n116, align 8, !tbaa !12
  %add117 = add i64 %38, 1
  %call118 = call i32 @mbedtls_mpi_grow(ptr noundef %arrayidx115, i64 noundef %add117)
  store i32 %call118, ptr %ret, align 4, !tbaa !17
  %cmp119 = icmp ne i32 %call118, 0
  br i1 %cmp119, label %if.then120, label %if.end121

if.then120:                                       ; preds = %do.body114
  br label %cleanup

if.end121:                                        ; preds = %do.body114
  br label %do.cond122

do.cond122:                                       ; preds = %if.end121
  br label %do.end123

do.end123:                                        ; preds = %do.cond122
  br label %if.end133

if.else124:                                       ; preds = %if.end102
  br label %do.body125

do.body125:                                       ; preds = %if.else124
  %arrayidx126 = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 1
  %39 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call127 = call i32 @mbedtls_mpi_copy(ptr noundef %arrayidx126, ptr noundef %39)
  store i32 %call127, ptr %ret, align 4, !tbaa !17
  %cmp128 = icmp ne i32 %call127, 0
  br i1 %cmp128, label %if.then129, label %if.end130

if.then129:                                       ; preds = %do.body125
  br label %cleanup

if.end130:                                        ; preds = %do.body125
  br label %do.cond131

do.cond131:                                       ; preds = %if.end130
  br label %do.end132

do.end132:                                        ; preds = %do.cond131
  br label %if.end133

if.end133:                                        ; preds = %do.end132, %do.end123
  %arrayidx134 = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 1
  %40 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %41 = load i64, ptr %mm, align 8, !tbaa !14
  call void @_ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_(ptr noundef %arrayidx134, ptr noundef %RR, ptr noundef %40, i64 noundef %41, ptr noundef %T)
  br label %do.body135

do.body135:                                       ; preds = %if.end133
  %42 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %call136 = call i32 @mbedtls_mpi_copy(ptr noundef %42, ptr noundef %RR)
  store i32 %call136, ptr %ret, align 4, !tbaa !17
  %cmp137 = icmp ne i32 %call136, 0
  br i1 %cmp137, label %if.then138, label %if.end139

if.then138:                                       ; preds = %do.body135
  br label %cleanup

if.end139:                                        ; preds = %do.body135
  br label %do.cond140

do.cond140:                                       ; preds = %if.end139
  br label %do.end141

do.end141:                                        ; preds = %do.cond140
  %43 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %44 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %45 = load i64, ptr %mm, align 8, !tbaa !14
  call void @_ZL11mpi_montredP11mbedtls_mpiPKS_mS2_(ptr noundef %43, ptr noundef %44, i64 noundef %45, ptr noundef %T)
  %46 = load i64, ptr %wsize, align 8, !tbaa !14
  %cmp142 = icmp ugt i64 %46, 1
  br i1 %cmp142, label %if.then143, label %if.end197

if.then143:                                       ; preds = %do.end141
  %47 = load i64, ptr %one, align 8, !tbaa !14
  %48 = load i64, ptr %wsize, align 8, !tbaa !14
  %sub = sub i64 %48, 1
  %shl = shl i64 %47, %sub
  store i64 %shl, ptr %j, align 8, !tbaa !14
  br label %do.body144

do.body144:                                       ; preds = %if.then143
  %49 = load i64, ptr %j, align 8, !tbaa !14
  %arrayidx145 = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 %49
  %50 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %n146 = getelementptr inbounds %struct.mbedtls_mpi, ptr %50, i32 0, i32 1
  %51 = load i64, ptr %n146, align 8, !tbaa !12
  %add147 = add i64 %51, 1
  %call148 = call i32 @mbedtls_mpi_grow(ptr noundef %arrayidx145, i64 noundef %add147)
  store i32 %call148, ptr %ret, align 4, !tbaa !17
  %cmp149 = icmp ne i32 %call148, 0
  br i1 %cmp149, label %if.then150, label %if.end151

if.then150:                                       ; preds = %do.body144
  br label %cleanup

if.end151:                                        ; preds = %do.body144
  br label %do.cond152

do.cond152:                                       ; preds = %if.end151
  br label %do.end153

do.end153:                                        ; preds = %do.cond152
  br label %do.body154

do.body154:                                       ; preds = %do.end153
  %52 = load i64, ptr %j, align 8, !tbaa !14
  %arrayidx155 = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 %52
  %arrayidx156 = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 1
  %call157 = call i32 @mbedtls_mpi_copy(ptr noundef %arrayidx155, ptr noundef %arrayidx156)
  store i32 %call157, ptr %ret, align 4, !tbaa !17
  %cmp158 = icmp ne i32 %call157, 0
  br i1 %cmp158, label %if.then159, label %if.end160

if.then159:                                       ; preds = %do.body154
  br label %cleanup

if.end160:                                        ; preds = %do.body154
  br label %do.cond161

do.cond161:                                       ; preds = %if.end160
  br label %do.end162

do.end162:                                        ; preds = %do.cond161
  store i64 0, ptr %i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end162
  %53 = load i64, ptr %i, align 8, !tbaa !14
  %54 = load i64, ptr %wsize, align 8, !tbaa !14
  %sub163 = sub i64 %54, 1
  %cmp164 = icmp ult i64 %53, %sub163
  br i1 %cmp164, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i64, ptr %j, align 8, !tbaa !14
  %arrayidx165 = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 %55
  %56 = load i64, ptr %j, align 8, !tbaa !14
  %arrayidx166 = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 %56
  %57 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %58 = load i64, ptr %mm, align 8, !tbaa !14
  call void @_ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_(ptr noundef %arrayidx165, ptr noundef %arrayidx166, ptr noundef %57, i64 noundef %58, ptr noundef %T)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %59 = load i64, ptr %i, align 8, !tbaa !14
  %inc = add i64 %59, 1
  store i64 %inc, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !69

for.end:                                          ; preds = %for.cond
  %60 = load i64, ptr %j, align 8, !tbaa !14
  %add167 = add i64 %60, 1
  store i64 %add167, ptr %i, align 8, !tbaa !14
  br label %for.cond168

for.cond168:                                      ; preds = %for.inc194, %for.end
  %61 = load i64, ptr %i, align 8, !tbaa !14
  %62 = load i64, ptr %one, align 8, !tbaa !14
  %63 = load i64, ptr %wsize, align 8, !tbaa !14
  %shl169 = shl i64 %62, %63
  %cmp170 = icmp ult i64 %61, %shl169
  br i1 %cmp170, label %for.body171, label %for.end196

for.body171:                                      ; preds = %for.cond168
  br label %do.body172

do.body172:                                       ; preds = %for.body171
  %64 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx173 = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 %64
  %65 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %n174 = getelementptr inbounds %struct.mbedtls_mpi, ptr %65, i32 0, i32 1
  %66 = load i64, ptr %n174, align 8, !tbaa !12
  %add175 = add i64 %66, 1
  %call176 = call i32 @mbedtls_mpi_grow(ptr noundef %arrayidx173, i64 noundef %add175)
  store i32 %call176, ptr %ret, align 4, !tbaa !17
  %cmp177 = icmp ne i32 %call176, 0
  br i1 %cmp177, label %if.then178, label %if.end179

if.then178:                                       ; preds = %do.body172
  br label %cleanup

if.end179:                                        ; preds = %do.body172
  br label %do.cond180

do.cond180:                                       ; preds = %if.end179
  br label %do.end181

do.end181:                                        ; preds = %do.cond180
  br label %do.body182

do.body182:                                       ; preds = %do.end181
  %67 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx183 = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 %67
  %68 = load i64, ptr %i, align 8, !tbaa !14
  %sub184 = sub i64 %68, 1
  %arrayidx185 = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 %sub184
  %call186 = call i32 @mbedtls_mpi_copy(ptr noundef %arrayidx183, ptr noundef %arrayidx185)
  store i32 %call186, ptr %ret, align 4, !tbaa !17
  %cmp187 = icmp ne i32 %call186, 0
  br i1 %cmp187, label %if.then188, label %if.end189

if.then188:                                       ; preds = %do.body182
  br label %cleanup

if.end189:                                        ; preds = %do.body182
  br label %do.cond190

do.cond190:                                       ; preds = %if.end189
  br label %do.end191

do.end191:                                        ; preds = %do.cond190
  %69 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx192 = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 %69
  %arrayidx193 = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 1
  %70 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %71 = load i64, ptr %mm, align 8, !tbaa !14
  call void @_ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_(ptr noundef %arrayidx192, ptr noundef %arrayidx193, ptr noundef %70, i64 noundef %71, ptr noundef %T)
  br label %for.inc194

for.inc194:                                       ; preds = %do.end191
  %72 = load i64, ptr %i, align 8, !tbaa !14
  %inc195 = add i64 %72, 1
  store i64 %inc195, ptr %i, align 8, !tbaa !14
  br label %for.cond168, !llvm.loop !70

for.end196:                                       ; preds = %for.cond168
  br label %if.end197

if.end197:                                        ; preds = %for.end196, %do.end141
  %73 = load ptr, ptr %E.addr, align 8, !tbaa !4
  %n198 = getelementptr inbounds %struct.mbedtls_mpi, ptr %73, i32 0, i32 1
  %74 = load i64, ptr %n198, align 8, !tbaa !12
  store i64 %74, ptr %nblimbs, align 8, !tbaa !14
  store i64 0, ptr %bufsize, align 8, !tbaa !14
  store i64 0, ptr %nbits, align 8, !tbaa !14
  store i64 0, ptr %wbits, align 8, !tbaa !14
  store i64 0, ptr %state, align 8, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %if.end239, %if.then216, %if.then211, %if.end197
  br label %while.body

while.body:                                       ; preds = %while.cond
  %75 = load i64, ptr %bufsize, align 8, !tbaa !14
  %cmp199 = icmp eq i64 %75, 0
  br i1 %cmp199, label %if.then200, label %if.end204

if.then200:                                       ; preds = %while.body
  %76 = load i64, ptr %nblimbs, align 8, !tbaa !14
  %cmp201 = icmp eq i64 %76, 0
  br i1 %cmp201, label %if.then202, label %if.end203

if.then202:                                       ; preds = %if.then200
  br label %while.end

if.end203:                                        ; preds = %if.then200
  %77 = load i64, ptr %nblimbs, align 8, !tbaa !14
  %dec = add i64 %77, -1
  store i64 %dec, ptr %nblimbs, align 8, !tbaa !14
  store i64 64, ptr %bufsize, align 8, !tbaa !14
  br label %if.end204

if.end204:                                        ; preds = %if.end203, %while.body
  %78 = load i64, ptr %bufsize, align 8, !tbaa !14
  %dec205 = add i64 %78, -1
  store i64 %dec205, ptr %bufsize, align 8, !tbaa !14
  %79 = load ptr, ptr %E.addr, align 8, !tbaa !4
  %p206 = getelementptr inbounds %struct.mbedtls_mpi, ptr %79, i32 0, i32 2
  %80 = load ptr, ptr %p206, align 8, !tbaa !13
  %81 = load i64, ptr %nblimbs, align 8, !tbaa !14
  %arrayidx207 = getelementptr inbounds i64, ptr %80, i64 %81
  %82 = load i64, ptr %arrayidx207, align 8, !tbaa !14
  %83 = load i64, ptr %bufsize, align 8, !tbaa !14
  %shr = lshr i64 %82, %83
  %and208 = and i64 %shr, 1
  store i64 %and208, ptr %ei, align 8, !tbaa !14
  %84 = load i64, ptr %ei, align 8, !tbaa !14
  %cmp209 = icmp eq i64 %84, 0
  br i1 %cmp209, label %land.lhs.true, label %if.end212

land.lhs.true:                                    ; preds = %if.end204
  %85 = load i64, ptr %state, align 8, !tbaa !14
  %cmp210 = icmp eq i64 %85, 0
  br i1 %cmp210, label %if.then211, label %if.end212

if.then211:                                       ; preds = %land.lhs.true
  br label %while.cond, !llvm.loop !71

if.end212:                                        ; preds = %land.lhs.true, %if.end204
  %86 = load i64, ptr %ei, align 8, !tbaa !14
  %cmp213 = icmp eq i64 %86, 0
  br i1 %cmp213, label %land.lhs.true214, label %if.end217

land.lhs.true214:                                 ; preds = %if.end212
  %87 = load i64, ptr %state, align 8, !tbaa !14
  %cmp215 = icmp eq i64 %87, 1
  br i1 %cmp215, label %if.then216, label %if.end217

if.then216:                                       ; preds = %land.lhs.true214
  %88 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %89 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %90 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %91 = load i64, ptr %mm, align 8, !tbaa !14
  call void @_ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_(ptr noundef %88, ptr noundef %89, ptr noundef %90, i64 noundef %91, ptr noundef %T)
  br label %while.cond, !llvm.loop !71

if.end217:                                        ; preds = %land.lhs.true214, %if.end212
  store i64 2, ptr %state, align 8, !tbaa !14
  %92 = load i64, ptr %nbits, align 8, !tbaa !14
  %inc218 = add i64 %92, 1
  store i64 %inc218, ptr %nbits, align 8, !tbaa !14
  %93 = load i64, ptr %ei, align 8, !tbaa !14
  %94 = load i64, ptr %wsize, align 8, !tbaa !14
  %95 = load i64, ptr %nbits, align 8, !tbaa !14
  %sub219 = sub i64 %94, %95
  %shl220 = shl i64 %93, %sub219
  %96 = load i64, ptr %wbits, align 8, !tbaa !14
  %or = or i64 %96, %shl220
  store i64 %or, ptr %wbits, align 8, !tbaa !14
  %97 = load i64, ptr %nbits, align 8, !tbaa !14
  %98 = load i64, ptr %wsize, align 8, !tbaa !14
  %cmp221 = icmp eq i64 %97, %98
  br i1 %cmp221, label %if.then222, label %if.end239

if.then222:                                       ; preds = %if.end217
  store i64 0, ptr %i, align 8, !tbaa !14
  br label %for.cond223

for.cond223:                                      ; preds = %for.inc226, %if.then222
  %99 = load i64, ptr %i, align 8, !tbaa !14
  %100 = load i64, ptr %wsize, align 8, !tbaa !14
  %cmp224 = icmp ult i64 %99, %100
  br i1 %cmp224, label %for.body225, label %for.end228

for.body225:                                      ; preds = %for.cond223
  %101 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %102 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %103 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %104 = load i64, ptr %mm, align 8, !tbaa !14
  call void @_ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_(ptr noundef %101, ptr noundef %102, ptr noundef %103, i64 noundef %104, ptr noundef %T)
  br label %for.inc226

for.inc226:                                       ; preds = %for.body225
  %105 = load i64, ptr %i, align 8, !tbaa !14
  %inc227 = add i64 %105, 1
  store i64 %inc227, ptr %i, align 8, !tbaa !14
  br label %for.cond223, !llvm.loop !72

for.end228:                                       ; preds = %for.cond223
  br label %do.body229

do.body229:                                       ; preds = %for.end228
  %arraydecay230 = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 0
  %106 = load i64, ptr %wsize, align 8, !tbaa !14
  %shl231 = shl i64 1, %106
  %107 = load i64, ptr %wbits, align 8, !tbaa !14
  %call232 = call noundef i32 @_ZL10mpi_selectP11mbedtls_mpiPKS_mm(ptr noundef %WW, ptr noundef %arraydecay230, i64 noundef %shl231, i64 noundef %107)
  store i32 %call232, ptr %ret, align 4, !tbaa !17
  %cmp233 = icmp ne i32 %call232, 0
  br i1 %cmp233, label %if.then234, label %if.end235

if.then234:                                       ; preds = %do.body229
  br label %cleanup

if.end235:                                        ; preds = %do.body229
  br label %do.cond236

do.cond236:                                       ; preds = %if.end235
  br label %do.end237

do.end237:                                        ; preds = %do.cond236
  %108 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %109 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %110 = load i64, ptr %mm, align 8, !tbaa !14
  call void @_ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_(ptr noundef %108, ptr noundef %WW, ptr noundef %109, i64 noundef %110, ptr noundef %T)
  %111 = load i64, ptr %state, align 8, !tbaa !14
  %dec238 = add i64 %111, -1
  store i64 %dec238, ptr %state, align 8, !tbaa !14
  store i64 0, ptr %nbits, align 8, !tbaa !14
  store i64 0, ptr %wbits, align 8, !tbaa !14
  br label %if.end239

if.end239:                                        ; preds = %do.end237, %if.end217
  br label %while.cond, !llvm.loop !71

while.end:                                        ; preds = %if.then202
  store i64 0, ptr %i, align 8, !tbaa !14
  br label %for.cond240

for.cond240:                                      ; preds = %for.inc250, %while.end
  %112 = load i64, ptr %i, align 8, !tbaa !14
  %113 = load i64, ptr %nbits, align 8, !tbaa !14
  %cmp241 = icmp ult i64 %112, %113
  br i1 %cmp241, label %for.body242, label %for.end252

for.body242:                                      ; preds = %for.cond240
  %114 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %115 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %116 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %117 = load i64, ptr %mm, align 8, !tbaa !14
  call void @_ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_(ptr noundef %114, ptr noundef %115, ptr noundef %116, i64 noundef %117, ptr noundef %T)
  %118 = load i64, ptr %wbits, align 8, !tbaa !14
  %shl243 = shl i64 %118, 1
  store i64 %shl243, ptr %wbits, align 8, !tbaa !14
  %119 = load i64, ptr %wbits, align 8, !tbaa !14
  %120 = load i64, ptr %one, align 8, !tbaa !14
  %121 = load i64, ptr %wsize, align 8, !tbaa !14
  %shl244 = shl i64 %120, %121
  %and245 = and i64 %119, %shl244
  %cmp246 = icmp ne i64 %and245, 0
  br i1 %cmp246, label %if.then247, label %if.end249

if.then247:                                       ; preds = %for.body242
  %122 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %arrayidx248 = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 1
  %123 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %124 = load i64, ptr %mm, align 8, !tbaa !14
  call void @_ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_(ptr noundef %122, ptr noundef %arrayidx248, ptr noundef %123, i64 noundef %124, ptr noundef %T)
  br label %if.end249

if.end249:                                        ; preds = %if.then247, %for.body242
  br label %for.inc250

for.inc250:                                       ; preds = %if.end249
  %125 = load i64, ptr %i, align 8, !tbaa !14
  %inc251 = add i64 %125, 1
  store i64 %inc251, ptr %i, align 8, !tbaa !14
  br label %for.cond240, !llvm.loop !73

for.end252:                                       ; preds = %for.cond240
  %126 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %127 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %128 = load i64, ptr %mm, align 8, !tbaa !14
  call void @_ZL11mpi_montredP11mbedtls_mpiPKS_mS2_(ptr noundef %126, ptr noundef %127, i64 noundef %128, ptr noundef %T)
  %129 = load i32, ptr %neg, align 4, !tbaa !17
  %tobool253 = icmp ne i32 %129, 0
  br i1 %tobool253, label %land.lhs.true254, label %if.end271

land.lhs.true254:                                 ; preds = %for.end252
  %130 = load ptr, ptr %E.addr, align 8, !tbaa !4
  %n255 = getelementptr inbounds %struct.mbedtls_mpi, ptr %130, i32 0, i32 1
  %131 = load i64, ptr %n255, align 8, !tbaa !12
  %cmp256 = icmp ne i64 %131, 0
  br i1 %cmp256, label %land.lhs.true257, label %if.end271

land.lhs.true257:                                 ; preds = %land.lhs.true254
  %132 = load ptr, ptr %E.addr, align 8, !tbaa !4
  %p258 = getelementptr inbounds %struct.mbedtls_mpi, ptr %132, i32 0, i32 2
  %133 = load ptr, ptr %p258, align 8, !tbaa !13
  %arrayidx259 = getelementptr inbounds i64, ptr %133, i64 0
  %134 = load i64, ptr %arrayidx259, align 8, !tbaa !14
  %and260 = and i64 %134, 1
  %cmp261 = icmp ne i64 %and260, 0
  br i1 %cmp261, label %if.then262, label %if.end271

if.then262:                                       ; preds = %land.lhs.true257
  %135 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %s263 = getelementptr inbounds %struct.mbedtls_mpi, ptr %135, i32 0, i32 0
  store i32 -1, ptr %s263, align 8, !tbaa !8
  br label %do.body264

do.body264:                                       ; preds = %if.then262
  %136 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %137 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %138 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %call265 = call i32 @mbedtls_mpi_add_mpi(ptr noundef %136, ptr noundef %137, ptr noundef %138)
  store i32 %call265, ptr %ret, align 4, !tbaa !17
  %cmp266 = icmp ne i32 %call265, 0
  br i1 %cmp266, label %if.then267, label %if.end268

if.then267:                                       ; preds = %do.body264
  br label %cleanup

if.end268:                                        ; preds = %do.body264
  br label %do.cond269

do.cond269:                                       ; preds = %if.end268
  br label %do.end270

do.end270:                                        ; preds = %do.cond269
  br label %if.end271

if.end271:                                        ; preds = %do.end270, %land.lhs.true257, %land.lhs.true254, %for.end252
  br label %cleanup

cleanup:                                          ; preds = %if.end271, %if.then267, %if.then234, %if.then188, %if.then178, %if.then159, %if.then150, %if.then138, %if.then129, %if.then120, %if.then110, %if.then95, %if.then88, %if.then78, %if.then64, %if.then54, %if.then47, %if.then39
  %139 = load i64, ptr %one, align 8, !tbaa !14
  %140 = load i64, ptr %wsize, align 8, !tbaa !14
  %sub272 = sub i64 %140, 1
  %shl273 = shl i64 %139, %sub272
  store i64 %shl273, ptr %i, align 8, !tbaa !14
  br label %for.cond274

for.cond274:                                      ; preds = %for.inc279, %cleanup
  %141 = load i64, ptr %i, align 8, !tbaa !14
  %142 = load i64, ptr %one, align 8, !tbaa !14
  %143 = load i64, ptr %wsize, align 8, !tbaa !14
  %shl275 = shl i64 %142, %143
  %cmp276 = icmp ult i64 %141, %shl275
  br i1 %cmp276, label %for.body277, label %for.end281

for.body277:                                      ; preds = %for.cond274
  %144 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx278 = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 %144
  call void @mbedtls_mpi_free(ptr noundef %arrayidx278)
  br label %for.inc279

for.inc279:                                       ; preds = %for.body277
  %145 = load i64, ptr %i, align 8, !tbaa !14
  %inc280 = add i64 %145, 1
  store i64 %inc280, ptr %i, align 8, !tbaa !14
  br label %for.cond274, !llvm.loop !74

for.end281:                                       ; preds = %for.cond274
  %arrayidx282 = getelementptr inbounds [64 x %struct.mbedtls_mpi], ptr %W, i64 0, i64 1
  call void @mbedtls_mpi_free(ptr noundef %arrayidx282)
  call void @mbedtls_mpi_free(ptr noundef %T)
  call void @mbedtls_mpi_free(ptr noundef %Apos)
  call void @mbedtls_mpi_free(ptr noundef %WW)
  %146 = load ptr, ptr %prec_RR.addr, align 8, !tbaa !4
  %cmp283 = icmp eq ptr %146, null
  br i1 %cmp283, label %if.then287, label %lor.lhs.false284

lor.lhs.false284:                                 ; preds = %for.end281
  %147 = load ptr, ptr %prec_RR.addr, align 8, !tbaa !4
  %p285 = getelementptr inbounds %struct.mbedtls_mpi, ptr %147, i32 0, i32 2
  %148 = load ptr, ptr %p285, align 8, !tbaa !13
  %cmp286 = icmp eq ptr %148, null
  br i1 %cmp286, label %if.then287, label %if.end288

if.then287:                                       ; preds = %lor.lhs.false284, %for.end281
  call void @mbedtls_mpi_free(ptr noundef %RR)
  br label %if.end288

if.end288:                                        ; preds = %if.then287, %lor.lhs.false284
  %149 = load i32, ptr %ret, align 4, !tbaa !17
  store i32 %149, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup289

cleanup289:                                       ; preds = %if.end288, %if.then20, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %neg) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %Apos) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %WW) #10
  call void @llvm.lifetime.end.p0(i64 1536, ptr %W) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %T) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %RR) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %nbits) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %bufsize) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %nblimbs) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %one) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %wsize) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %wbits) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  %150 = load i32, ptr %retval, align 4
  ret i32 %150
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL14mpi_montg_initPmPK11mbedtls_mpi(ptr noundef %mm, ptr noundef %N) #0 {
entry:
  %mm.addr = alloca ptr, align 8
  %N.addr = alloca ptr, align 8
  %x = alloca i64, align 8
  %m0 = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %mm, ptr %mm.addr, align 8, !tbaa !4
  store ptr %N, ptr %N.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %m0) #10
  %0 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %p, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i64, ptr %1, i64 0
  %2 = load i64, ptr %arrayidx, align 8, !tbaa !14
  store i64 %2, ptr %m0, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %3 = load i64, ptr %m0, align 8, !tbaa !14
  store i64 %3, ptr %x, align 8, !tbaa !14
  %4 = load i64, ptr %m0, align 8, !tbaa !14
  %add = add i64 %4, 2
  %and = and i64 %add, 4
  %shl = shl i64 %and, 1
  %5 = load i64, ptr %x, align 8, !tbaa !14
  %add1 = add i64 %5, %shl
  store i64 %add1, ptr %x, align 8, !tbaa !14
  store i32 64, ptr %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4, !tbaa !17
  %cmp = icmp uge i32 %6, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, ptr %m0, align 8, !tbaa !14
  %8 = load i64, ptr %x, align 8, !tbaa !14
  %mul = mul i64 %7, %8
  %sub = sub i64 2, %mul
  %9 = load i64, ptr %x, align 8, !tbaa !14
  %mul2 = mul i64 %9, %sub
  store i64 %mul2, ptr %x, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !tbaa !17
  %div = udiv i32 %10, 2
  store i32 %div, ptr %i, align 4, !tbaa !17
  br label %for.cond, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  %11 = load i64, ptr %x, align 8, !tbaa !14
  %not = xor i64 %11, -1
  %add3 = add i64 %not, 1
  %12 = load ptr, ptr %mm.addr, align 8, !tbaa !4
  store i64 %add3, ptr %12, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %m0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #10
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_(ptr noundef %A, ptr noundef %B, ptr noundef %N, i64 noundef %mm, ptr noundef %T) #1 {
entry:
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %N.addr = alloca ptr, align 8
  %mm.addr = alloca i64, align 8
  %T.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %m = alloca i64, align 8
  %u0 = alloca i64, align 8
  %u1 = alloca i64, align 8
  %d = alloca ptr, align 8
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %B, ptr %B.addr, align 8, !tbaa !4
  store ptr %N, ptr %N.addr, align 8, !tbaa !4
  store i64 %mm, ptr %mm.addr, align 8, !tbaa !14
  store ptr %T, ptr %T.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %u0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %u1) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #10
  %0 = load ptr, ptr %T.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %p, align 8, !tbaa !13
  %2 = load ptr, ptr %T.addr, align 8, !tbaa !4
  %n1 = getelementptr inbounds %struct.mbedtls_mpi, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %n1, align 8, !tbaa !12
  %mul = mul i64 %3, 8
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 %mul, i1 false)
  %4 = load ptr, ptr %T.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.mbedtls_mpi, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %p2, align 8, !tbaa !13
  store ptr %5, ptr %d, align 8, !tbaa !4
  %6 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %n3 = getelementptr inbounds %struct.mbedtls_mpi, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %n3, align 8, !tbaa !12
  store i64 %7, ptr %n, align 8, !tbaa !14
  %8 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %n4 = getelementptr inbounds %struct.mbedtls_mpi, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %n4, align 8, !tbaa !12
  %10 = load i64, ptr %n, align 8, !tbaa !14
  %cmp = icmp ult i64 %9, %10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %n5 = getelementptr inbounds %struct.mbedtls_mpi, ptr %11, i32 0, i32 1
  %12 = load i64, ptr %n5, align 8, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %13 = load i64, ptr %n, align 8, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %12, %cond.true ], [ %13, %cond.false ]
  store i64 %cond, ptr %m, align 8, !tbaa !14
  store i64 0, ptr %i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %14 = load i64, ptr %i, align 8, !tbaa !14
  %15 = load i64, ptr %n, align 8, !tbaa !14
  %cmp6 = icmp ult i64 %14, %15
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %p7 = getelementptr inbounds %struct.mbedtls_mpi, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %p7, align 8, !tbaa !13
  %18 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i64, ptr %17, i64 %18
  %19 = load i64, ptr %arrayidx, align 8, !tbaa !14
  store i64 %19, ptr %u0, align 8, !tbaa !14
  %20 = load ptr, ptr %d, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds i64, ptr %20, i64 0
  %21 = load i64, ptr %arrayidx8, align 8, !tbaa !14
  %22 = load i64, ptr %u0, align 8, !tbaa !14
  %23 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %p9 = getelementptr inbounds %struct.mbedtls_mpi, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %p9, align 8, !tbaa !13
  %arrayidx10 = getelementptr inbounds i64, ptr %24, i64 0
  %25 = load i64, ptr %arrayidx10, align 8, !tbaa !14
  %mul11 = mul i64 %22, %25
  %add = add i64 %21, %mul11
  %26 = load i64, ptr %mm.addr, align 8, !tbaa !14
  %mul12 = mul i64 %add, %26
  store i64 %mul12, ptr %u1, align 8, !tbaa !14
  %27 = load i64, ptr %m, align 8, !tbaa !14
  %28 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %p13 = getelementptr inbounds %struct.mbedtls_mpi, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %p13, align 8, !tbaa !13
  %30 = load ptr, ptr %d, align 8, !tbaa !4
  %31 = load i64, ptr %u0, align 8, !tbaa !14
  call void @_ZL11mpi_mul_hlpmPKmPmm(i64 noundef %27, ptr noundef %29, ptr noundef %30, i64 noundef %31)
  %32 = load i64, ptr %n, align 8, !tbaa !14
  %33 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %p14 = getelementptr inbounds %struct.mbedtls_mpi, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %p14, align 8, !tbaa !13
  %35 = load ptr, ptr %d, align 8, !tbaa !4
  %36 = load i64, ptr %u1, align 8, !tbaa !14
  call void @_ZL11mpi_mul_hlpmPKmPmm(i64 noundef %32, ptr noundef %34, ptr noundef %35, i64 noundef %36)
  %37 = load i64, ptr %u0, align 8, !tbaa !14
  %38 = load ptr, ptr %d, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i64, ptr %38, i32 1
  store ptr %incdec.ptr, ptr %d, align 8, !tbaa !4
  store i64 %37, ptr %38, align 8, !tbaa !14
  %39 = load ptr, ptr %d, align 8, !tbaa !4
  %40 = load i64, ptr %n, align 8, !tbaa !14
  %add15 = add i64 %40, 1
  %arrayidx16 = getelementptr inbounds i64, ptr %39, i64 %add15
  store i64 0, ptr %arrayidx16, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i64, ptr %i, align 8, !tbaa !14
  %inc = add i64 %41, 1
  store i64 %inc, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !76

for.end:                                          ; preds = %for.cond
  %42 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %p17 = getelementptr inbounds %struct.mbedtls_mpi, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %p17, align 8, !tbaa !13
  %44 = load ptr, ptr %d, align 8, !tbaa !4
  %45 = load i64, ptr %n, align 8, !tbaa !14
  %mul18 = mul i64 %45, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %43, ptr align 8 %44, i64 %mul18, i1 false)
  %46 = load ptr, ptr %d, align 8, !tbaa !4
  %47 = load i64, ptr %n, align 8, !tbaa !14
  %arrayidx19 = getelementptr inbounds i64, ptr %46, i64 %47
  %48 = load i64, ptr %arrayidx19, align 8, !tbaa !14
  %add20 = add i64 %48, 1
  store i64 %add20, ptr %arrayidx19, align 8, !tbaa !14
  %49 = load i64, ptr %n, align 8, !tbaa !14
  %50 = load ptr, ptr %d, align 8, !tbaa !4
  %51 = load ptr, ptr %d, align 8, !tbaa !4
  %52 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.mbedtls_mpi, ptr %52, i32 0, i32 2
  %53 = load ptr, ptr %p21, align 8, !tbaa !13
  %call = call noundef i64 @_ZL11mpi_sub_hlpmPmPKmS1_(i64 noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef %53)
  %54 = load ptr, ptr %d, align 8, !tbaa !4
  %55 = load i64, ptr %n, align 8, !tbaa !14
  %arrayidx22 = getelementptr inbounds i64, ptr %54, i64 %55
  %56 = load i64, ptr %arrayidx22, align 8, !tbaa !14
  %sub = sub i64 %56, %call
  store i64 %sub, ptr %arrayidx22, align 8, !tbaa !14
  %57 = load i64, ptr %n, align 8, !tbaa !14
  %58 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %p23 = getelementptr inbounds %struct.mbedtls_mpi, ptr %58, i32 0, i32 2
  %59 = load ptr, ptr %p23, align 8, !tbaa !13
  %60 = load ptr, ptr %d, align 8, !tbaa !4
  %61 = load ptr, ptr %d, align 8, !tbaa !4
  %62 = load i64, ptr %n, align 8, !tbaa !14
  %arrayidx24 = getelementptr inbounds i64, ptr %61, i64 %62
  %63 = load i64, ptr %arrayidx24, align 8, !tbaa !14
  %conv = trunc i64 %63 to i8
  call void @_Z31mbedtls_ct_mpi_uint_cond_assignmPmPKmh(i64 noundef %57, ptr noundef %59, ptr noundef %60, i8 noundef zeroext %conv)
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %u1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %u0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL11mpi_montredP11mbedtls_mpiPKS_mS2_(ptr noundef %A, ptr noundef %N, i64 noundef %mm, ptr noundef %T) #1 {
entry:
  %A.addr = alloca ptr, align 8
  %N.addr = alloca ptr, align 8
  %mm.addr = alloca i64, align 8
  %T.addr = alloca ptr, align 8
  %z = alloca i64, align 8
  %U = alloca %struct.mbedtls_mpi, align 8
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %N, ptr %N.addr, align 8, !tbaa !4
  store i64 %mm, ptr %mm.addr, align 8, !tbaa !14
  store ptr %T, ptr %T.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #10
  store i64 1, ptr %z, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 24, ptr %U) #10
  %0 = load i64, ptr %z, align 8, !tbaa !14
  %conv = trunc i64 %0 to i32
  %s = getelementptr inbounds %struct.mbedtls_mpi, ptr %U, i32 0, i32 0
  store i32 %conv, ptr %s, align 8, !tbaa !8
  %conv1 = sext i32 %conv to i64
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %U, i32 0, i32 1
  store i64 %conv1, ptr %n, align 8, !tbaa !12
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %U, i32 0, i32 2
  store ptr %z, ptr %p, align 8, !tbaa !13
  %1 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %3 = load i64, ptr %mm.addr, align 8, !tbaa !14
  %4 = load ptr, ptr %T.addr, align 8, !tbaa !4
  call void @_ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_(ptr noundef %1, ptr noundef %U, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr %U) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #10
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10mpi_selectP11mbedtls_mpiPKS_mm(ptr noundef %R, ptr noundef %T, i64 noundef %T_size, i64 noundef %idx) #1 {
entry:
  %retval = alloca i32, align 4
  %R.addr = alloca ptr, align 8
  %T.addr = alloca ptr, align 8
  %T_size.addr = alloca i64, align 8
  %idx.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %R, ptr %R.addr, align 8, !tbaa !4
  store ptr %T, ptr %T.addr, align 8, !tbaa !4
  store i64 %T_size, ptr %T_size.addr, align 8, !tbaa !14
  store i64 %idx, ptr %idx.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 -110, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  store i64 0, ptr %i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !14
  %1 = load i64, ptr %T_size.addr, align 8, !tbaa !14
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %T.addr, align 8, !tbaa !4
  %4 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds %struct.mbedtls_mpi, ptr %3, i64 %4
  %5 = load i64, ptr %i, align 8, !tbaa !14
  %6 = load i64, ptr %idx.addr, align 8, !tbaa !14
  %call = call noundef i32 @_Z23mbedtls_ct_size_bool_eqmm(i64 noundef %5, i64 noundef %6)
  %conv = trunc i32 %call to i8
  %call1 = call i32 @mbedtls_mpi_safe_cond_assign(ptr noundef %2, ptr noundef %arrayidx, i8 noundef zeroext %conv)
  store i32 %call1, ptr %ret, align 4, !tbaa !17
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %7 = load i64, ptr %i, align 8, !tbaa !14
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !77

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup4 [
    i32 2, label %for.end
    i32 7, label %cleanup3
  ]

for.end:                                          ; preds = %cleanup
  br label %cleanup3

cleanup3:                                         ; preds = %for.end, %cleanup
  %8 = load i32, ptr %ret, align 4, !tbaa !17
  store i32 %8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup4

cleanup4:                                         ; preds = %cleanup3, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_gcd(ptr noundef %G, ptr noundef %A, ptr noundef %B) #1 {
entry:
  %G.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %lz = alloca i64, align 8
  %lzt = alloca i64, align 8
  %TA = alloca %struct.mbedtls_mpi, align 8
  %TB = alloca %struct.mbedtls_mpi, align 8
  store ptr %G, ptr %G.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %B, ptr %B.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 -110, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %lz) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %lzt) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %TA) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %TB) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  br label %do.cond5

do.cond5:                                         ; preds = %do.body4
  br label %do.end6

do.end6:                                          ; preds = %do.cond5
  call void @mbedtls_mpi_init(ptr noundef %TA)
  call void @mbedtls_mpi_init(ptr noundef %TB)
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_mpi_copy(ptr noundef %TA, ptr noundef %0)
  store i32 %call, ptr %ret, align 4, !tbaa !17
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body7
  br label %cleanup

if.end:                                           ; preds = %do.body7
  br label %do.cond8

do.cond8:                                         ; preds = %if.end
  br label %do.end9

do.end9:                                          ; preds = %do.cond8
  br label %do.body10

do.body10:                                        ; preds = %do.end9
  %1 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %call11 = call i32 @mbedtls_mpi_copy(ptr noundef %TB, ptr noundef %1)
  store i32 %call11, ptr %ret, align 4, !tbaa !17
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.body10
  br label %cleanup

if.end14:                                         ; preds = %do.body10
  br label %do.cond15

do.cond15:                                        ; preds = %if.end14
  br label %do.end16

do.end16:                                         ; preds = %do.cond15
  %call17 = call i64 @mbedtls_mpi_lsb(ptr noundef %TA)
  store i64 %call17, ptr %lz, align 8, !tbaa !14
  %call18 = call i64 @mbedtls_mpi_lsb(ptr noundef %TB)
  store i64 %call18, ptr %lzt, align 8, !tbaa !14
  %2 = load i64, ptr %lzt, align 8, !tbaa !14
  %cmp19 = icmp eq i64 %2, 0
  br i1 %cmp19, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %do.end16
  %call20 = call i32 @mbedtls_mpi_get_bit(ptr noundef %TB, i64 noundef 0)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %land.lhs.true
  %3 = load ptr, ptr %G.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call23 = call i32 @mbedtls_mpi_copy(ptr noundef %3, ptr noundef %4)
  store i32 %call23, ptr %ret, align 4, !tbaa !17
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true, %do.end16
  %5 = load i64, ptr %lzt, align 8, !tbaa !14
  %6 = load i64, ptr %lz, align 8, !tbaa !14
  %cmp25 = icmp ult i64 %5, %6
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end24
  %7 = load i64, ptr %lzt, align 8, !tbaa !14
  store i64 %7, ptr %lz, align 8, !tbaa !14
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24
  %s = getelementptr inbounds %struct.mbedtls_mpi, ptr %TB, i32 0, i32 0
  store i32 1, ptr %s, align 8, !tbaa !8
  %s28 = getelementptr inbounds %struct.mbedtls_mpi, ptr %TA, i32 0, i32 0
  store i32 1, ptr %s28, align 8, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end78, %if.end27
  %call29 = call i32 @mbedtls_mpi_cmp_int(ptr noundef %TA, i64 noundef 0)
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body31

do.body31:                                        ; preds = %while.body
  %call32 = call i64 @mbedtls_mpi_lsb(ptr noundef %TA)
  %call33 = call i32 @mbedtls_mpi_shift_r(ptr noundef %TA, i64 noundef %call32)
  store i32 %call33, ptr %ret, align 4, !tbaa !17
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %do.body31
  br label %cleanup

if.end36:                                         ; preds = %do.body31
  br label %do.cond37

do.cond37:                                        ; preds = %if.end36
  br label %do.end38

do.end38:                                         ; preds = %do.cond37
  br label %do.body39

do.body39:                                        ; preds = %do.end38
  %call40 = call i64 @mbedtls_mpi_lsb(ptr noundef %TB)
  %call41 = call i32 @mbedtls_mpi_shift_r(ptr noundef %TB, i64 noundef %call40)
  store i32 %call41, ptr %ret, align 4, !tbaa !17
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %do.body39
  br label %cleanup

if.end44:                                         ; preds = %do.body39
  br label %do.cond45

do.cond45:                                        ; preds = %if.end44
  br label %do.end46

do.end46:                                         ; preds = %do.cond45
  %call47 = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef %TA, ptr noundef %TB)
  %cmp48 = icmp sge i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %if.else

if.then49:                                        ; preds = %do.end46
  br label %do.body50

do.body50:                                        ; preds = %if.then49
  %call51 = call i32 @mbedtls_mpi_sub_abs(ptr noundef %TA, ptr noundef %TA, ptr noundef %TB)
  store i32 %call51, ptr %ret, align 4, !tbaa !17
  %cmp52 = icmp ne i32 %call51, 0
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %do.body50
  br label %cleanup

if.end54:                                         ; preds = %do.body50
  br label %do.cond55

do.cond55:                                        ; preds = %if.end54
  br label %do.end56

do.end56:                                         ; preds = %do.cond55
  br label %do.body57

do.body57:                                        ; preds = %do.end56
  %call58 = call i32 @mbedtls_mpi_shift_r(ptr noundef %TA, i64 noundef 1)
  store i32 %call58, ptr %ret, align 4, !tbaa !17
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %do.body57
  br label %cleanup

if.end61:                                         ; preds = %do.body57
  br label %do.cond62

do.cond62:                                        ; preds = %if.end61
  br label %do.end63

do.end63:                                         ; preds = %do.cond62
  br label %if.end78

if.else:                                          ; preds = %do.end46
  br label %do.body64

do.body64:                                        ; preds = %if.else
  %call65 = call i32 @mbedtls_mpi_sub_abs(ptr noundef %TB, ptr noundef %TB, ptr noundef %TA)
  store i32 %call65, ptr %ret, align 4, !tbaa !17
  %cmp66 = icmp ne i32 %call65, 0
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %do.body64
  br label %cleanup

if.end68:                                         ; preds = %do.body64
  br label %do.cond69

do.cond69:                                        ; preds = %if.end68
  br label %do.end70

do.end70:                                         ; preds = %do.cond69
  br label %do.body71

do.body71:                                        ; preds = %do.end70
  %call72 = call i32 @mbedtls_mpi_shift_r(ptr noundef %TB, i64 noundef 1)
  store i32 %call72, ptr %ret, align 4, !tbaa !17
  %cmp73 = icmp ne i32 %call72, 0
  br i1 %cmp73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %do.body71
  br label %cleanup

if.end75:                                         ; preds = %do.body71
  br label %do.cond76

do.cond76:                                        ; preds = %if.end75
  br label %do.end77

do.end77:                                         ; preds = %do.cond76
  br label %if.end78

if.end78:                                         ; preds = %do.end77, %do.end63
  br label %while.cond, !llvm.loop !78

while.end:                                        ; preds = %while.cond
  br label %do.body79

do.body79:                                        ; preds = %while.end
  %8 = load i64, ptr %lz, align 8, !tbaa !14
  %call80 = call i32 @mbedtls_mpi_shift_l(ptr noundef %TB, i64 noundef %8)
  store i32 %call80, ptr %ret, align 4, !tbaa !17
  %cmp81 = icmp ne i32 %call80, 0
  br i1 %cmp81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %do.body79
  br label %cleanup

if.end83:                                         ; preds = %do.body79
  br label %do.cond84

do.cond84:                                        ; preds = %if.end83
  br label %do.end85

do.end85:                                         ; preds = %do.cond84
  br label %do.body86

do.body86:                                        ; preds = %do.end85
  %9 = load ptr, ptr %G.addr, align 8, !tbaa !4
  %call87 = call i32 @mbedtls_mpi_copy(ptr noundef %9, ptr noundef %TB)
  store i32 %call87, ptr %ret, align 4, !tbaa !17
  %cmp88 = icmp ne i32 %call87, 0
  br i1 %cmp88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %do.body86
  br label %cleanup

if.end90:                                         ; preds = %do.body86
  br label %do.cond91

do.cond91:                                        ; preds = %if.end90
  br label %do.end92

do.end92:                                         ; preds = %do.cond91
  br label %cleanup

cleanup:                                          ; preds = %do.end92, %if.then89, %if.then82, %if.then74, %if.then67, %if.then60, %if.then53, %if.then43, %if.then35, %if.then22, %if.then13, %if.then
  call void @mbedtls_mpi_free(ptr noundef %TA)
  call void @mbedtls_mpi_free(ptr noundef %TB)
  %10 = load i32, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 24, ptr %TB) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %TA) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %lzt) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %lz) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  ret i32 %10
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_fill_random(ptr noundef %X, i64 noundef %size, ptr noundef %f_rng, ptr noundef %p_rng) #1 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %f_rng.addr = alloca ptr, align 8
  %p_rng.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %limbs = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store i64 %size, ptr %size.addr, align 8, !tbaa !14
  store ptr %f_rng, ptr %f_rng.addr, align 8, !tbaa !4
  store ptr %p_rng, ptr %p_rng.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 -110, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %limbs) #10
  %0 = load i64, ptr %size.addr, align 8, !tbaa !14
  %div = udiv i64 %0, 8
  %1 = load i64, ptr %size.addr, align 8, !tbaa !14
  %rem = urem i64 %1, 8
  %cmp = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp to i64
  %add = add i64 %div, %conv
  store i64 %add, ptr %limbs, align 8, !tbaa !14
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  %2 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %3 = load i64, ptr %limbs, align 8, !tbaa !14
  %call = call noundef i32 @_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim(ptr noundef %2, i64 noundef %3)
  store i32 %call, ptr %ret, align 4, !tbaa !17
  %cmp5 = icmp ne i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %do.body4
  br label %cleanup

if.end:                                           ; preds = %do.body4
  br label %do.cond6

do.cond6:                                         ; preds = %if.end
  br label %do.end7

do.end7:                                          ; preds = %do.cond6
  %4 = load i64, ptr %size.addr, align 8, !tbaa !14
  %cmp8 = icmp eq i64 %4, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.end7
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup12

if.end10:                                         ; preds = %do.end7
  %5 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %6 = load i64, ptr %size.addr, align 8, !tbaa !14
  %7 = load ptr, ptr %f_rng.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %p_rng.addr, align 8, !tbaa !4
  %call11 = call noundef i32 @_ZL24mpi_fill_random_internalP11mbedtls_mpimPFiPvPhmES1_(ptr noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %8)
  store i32 %call11, ptr %ret, align 4, !tbaa !17
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then
  %9 = load i32, ptr %ret, align 4, !tbaa !17
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup12

cleanup12:                                        ; preds = %cleanup, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %limbs) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL24mpi_fill_random_internalP11mbedtls_mpimPFiPvPhmES1_(ptr noundef %X, i64 noundef %n_bytes, ptr noundef %f_rng, ptr noundef %p_rng) #1 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %n_bytes.addr = alloca i64, align 8
  %f_rng.addr = alloca ptr, align 8
  %p_rng.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %limbs = alloca i64, align 8
  %overhead = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store i64 %n_bytes, ptr %n_bytes.addr, align 8, !tbaa !14
  store ptr %f_rng, ptr %f_rng.addr, align 8, !tbaa !4
  store ptr %p_rng, ptr %p_rng.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 -110, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %limbs) #10
  %0 = load i64, ptr %n_bytes.addr, align 8, !tbaa !14
  %div = udiv i64 %0, 8
  %1 = load i64, ptr %n_bytes.addr, align 8, !tbaa !14
  %rem = urem i64 %1, 8
  %cmp = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp to i64
  %add = add i64 %div, %conv
  store i64 %add, ptr %limbs, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %overhead) #10
  %2 = load i64, ptr %limbs, align 8, !tbaa !14
  %mul = mul i64 %2, 8
  %3 = load i64, ptr %n_bytes.addr, align 8, !tbaa !14
  %sub = sub i64 %mul, %3
  store i64 %sub, ptr %overhead, align 8, !tbaa !14
  %4 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %n, align 8, !tbaa !12
  %6 = load i64, ptr %limbs, align 8, !tbaa !14
  %cmp1 = icmp ult i64 %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup13

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %p, align 8, !tbaa !13
  %9 = load i64, ptr %overhead, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 %9, i1 false)
  %10 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.mbedtls_mpi, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %p2, align 8, !tbaa !13
  %12 = load i64, ptr %limbs, align 8, !tbaa !14
  %mul3 = mul i64 %12, 8
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %mul3
  %13 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %n4 = getelementptr inbounds %struct.mbedtls_mpi, ptr %13, i32 0, i32 1
  %14 = load i64, ptr %n4, align 8, !tbaa !12
  %15 = load i64, ptr %limbs, align 8, !tbaa !14
  %sub5 = sub i64 %14, %15
  %mul6 = mul i64 %sub5, 8
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %mul6, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.end
  %16 = load ptr, ptr %f_rng.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %p_rng.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p7 = getelementptr inbounds %struct.mbedtls_mpi, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %p7, align 8, !tbaa !13
  %20 = load i64, ptr %overhead, align 8, !tbaa !14
  %add.ptr8 = getelementptr inbounds i8, ptr %19, i64 %20
  %21 = load i64, ptr %n_bytes.addr, align 8, !tbaa !14
  %call = call noundef i32 %16(ptr noundef %17, ptr noundef %add.ptr8, i64 noundef %21)
  store i32 %call, ptr %ret, align 4, !tbaa !17
  %cmp9 = icmp ne i32 %call, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body
  br label %cleanup

if.end11:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end11
  br label %do.end

do.end:                                           ; preds = %do.cond
  %22 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %p12 = getelementptr inbounds %struct.mbedtls_mpi, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %p12, align 8, !tbaa !13
  %24 = load i64, ptr %limbs, align 8, !tbaa !14
  call void @_ZL21mpi_bigendian_to_hostPmm(ptr noundef %23, i64 noundef %24)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then10
  %25 = load i32, ptr %ret, align 4, !tbaa !17
  store i32 %25, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup13

cleanup13:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %overhead) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %limbs) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_random(ptr noundef %X, i64 noundef %min, ptr noundef %N, ptr noundef %f_rng, ptr noundef %p_rng) #1 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %min.addr = alloca i64, align 8
  %N.addr = alloca ptr, align 8
  %f_rng.addr = alloca ptr, align 8
  %p_rng.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  %lt_lower = alloca i32, align 4
  %lt_upper = alloca i32, align 4
  %n_bits = alloca i64, align 8
  %n_bytes = alloca i64, align 8
  %lower_bound = alloca %struct.mbedtls_mpi, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store i64 %min, ptr %min.addr, align 8, !tbaa !14
  store ptr %N, ptr %N.addr, align 8, !tbaa !4
  store ptr %f_rng, ptr %f_rng.addr, align 8, !tbaa !4
  store ptr %p_rng, ptr %p_rng.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 -4, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %lt_lower) #10
  store i32 1, ptr %lt_lower, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %lt_upper) #10
  store i32 0, ptr %lt_upper, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_bits) #10
  %0 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %call = call i64 @mbedtls_mpi_bitlen(ptr noundef %0)
  store i64 %call, ptr %n_bits, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_bytes) #10
  %1 = load i64, ptr %n_bits, align 8, !tbaa !14
  %add = add i64 %1, 7
  %div = udiv i64 %add, 8
  store i64 %div, ptr %n_bytes, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 24, ptr %lower_bound) #10
  %2 = load i64, ptr %min.addr, align 8, !tbaa !14
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup61

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %4 = load i64, ptr %min.addr, align 8, !tbaa !14
  %call1 = call i32 @mbedtls_mpi_cmp_int(ptr noundef %3, i64 noundef %4)
  %cmp2 = icmp sle i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup61

if.end4:                                          ; preds = %if.end
  %5 = load i64, ptr %n_bytes, align 8, !tbaa !14
  %cmp5 = icmp ugt i64 %5, 4
  %6 = zext i1 %cmp5 to i64
  %cond = select i1 %cmp5, i32 30, i32 250
  store i32 %cond, ptr %count, align 4, !tbaa !17
  call void @mbedtls_mpi_init(ptr noundef %lower_bound)
  br label %do.body

do.body:                                          ; preds = %if.end4
  %7 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.mbedtls_mpi, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %n, align 8, !tbaa !12
  %call6 = call noundef i32 @_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim(ptr noundef %7, i64 noundef %9)
  store i32 %call6, ptr %ret, align 4, !tbaa !17
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.body
  br label %cleanup

if.end9:                                          ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end9
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body10

do.body10:                                        ; preds = %do.end
  %10 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %n11 = getelementptr inbounds %struct.mbedtls_mpi, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %n11, align 8, !tbaa !12
  %call12 = call i32 @mbedtls_mpi_grow(ptr noundef %lower_bound, i64 noundef %11)
  store i32 %call12, ptr %ret, align 4, !tbaa !17
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.body10
  br label %cleanup

if.end15:                                         ; preds = %do.body10
  br label %do.cond16

do.cond16:                                        ; preds = %if.end15
  br label %do.end17

do.end17:                                         ; preds = %do.cond16
  br label %do.body18

do.body18:                                        ; preds = %do.end17
  %12 = load i64, ptr %min.addr, align 8, !tbaa !14
  %call19 = call i32 @mbedtls_mpi_lset(ptr noundef %lower_bound, i64 noundef %12)
  store i32 %call19, ptr %ret, align 4, !tbaa !17
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.body18
  br label %cleanup

if.end22:                                         ; preds = %do.body18
  br label %do.cond23

do.cond23:                                        ; preds = %if.end22
  br label %do.end24

do.end24:                                         ; preds = %do.cond23
  br label %do.body25

do.body25:                                        ; preds = %lor.end, %do.end24
  br label %do.body26

do.body26:                                        ; preds = %do.body25
  %13 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %14 = load i64, ptr %n_bytes, align 8, !tbaa !14
  %15 = load ptr, ptr %f_rng.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %p_rng.addr, align 8, !tbaa !4
  %call27 = call noundef i32 @_ZL24mpi_fill_random_internalP11mbedtls_mpimPFiPvPhmES1_(ptr noundef %13, i64 noundef %14, ptr noundef %15, ptr noundef %16)
  store i32 %call27, ptr %ret, align 4, !tbaa !17
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.body26
  br label %cleanup

if.end30:                                         ; preds = %do.body26
  br label %do.cond31

do.cond31:                                        ; preds = %if.end30
  br label %do.end32

do.end32:                                         ; preds = %do.cond31
  br label %do.body33

do.body33:                                        ; preds = %do.end32
  %17 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %18 = load i64, ptr %n_bytes, align 8, !tbaa !14
  %mul = mul i64 8, %18
  %19 = load i64, ptr %n_bits, align 8, !tbaa !14
  %sub = sub i64 %mul, %19
  %call34 = call i32 @mbedtls_mpi_shift_r(ptr noundef %17, i64 noundef %sub)
  store i32 %call34, ptr %ret, align 4, !tbaa !17
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %do.body33
  br label %cleanup

if.end37:                                         ; preds = %do.body33
  br label %do.cond38

do.cond38:                                        ; preds = %if.end37
  br label %do.end39

do.end39:                                         ; preds = %do.cond38
  %20 = load i32, ptr %count, align 4, !tbaa !17
  %dec = add nsw i32 %20, -1
  store i32 %dec, ptr %count, align 4, !tbaa !17
  %cmp40 = icmp eq i32 %dec, 0
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %do.end39
  store i32 -14, ptr %ret, align 4, !tbaa !17
  br label %cleanup

if.end42:                                         ; preds = %do.end39
  br label %do.body43

do.body43:                                        ; preds = %if.end42
  %21 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %call44 = call i32 @mbedtls_mpi_lt_mpi_ct(ptr noundef %21, ptr noundef %lower_bound, ptr noundef %lt_lower)
  store i32 %call44, ptr %ret, align 4, !tbaa !17
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %do.body43
  br label %cleanup

if.end47:                                         ; preds = %do.body43
  br label %do.cond48

do.cond48:                                        ; preds = %if.end47
  br label %do.end49

do.end49:                                         ; preds = %do.cond48
  br label %do.body50

do.body50:                                        ; preds = %do.end49
  %22 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %call51 = call i32 @mbedtls_mpi_lt_mpi_ct(ptr noundef %22, ptr noundef %23, ptr noundef %lt_upper)
  store i32 %call51, ptr %ret, align 4, !tbaa !17
  %cmp52 = icmp ne i32 %call51, 0
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %do.body50
  br label %cleanup

if.end54:                                         ; preds = %do.body50
  br label %do.cond55

do.cond55:                                        ; preds = %if.end54
  br label %do.end56

do.end56:                                         ; preds = %do.cond55
  br label %do.cond57

do.cond57:                                        ; preds = %do.end56
  %24 = load i32, ptr %lt_lower, align 4, !tbaa !17
  %cmp58 = icmp ne i32 %24, 0
  br i1 %cmp58, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond57
  %25 = load i32, ptr %lt_upper, align 4, !tbaa !17
  %cmp59 = icmp eq i32 %25, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond57
  %26 = phi i1 [ true, %do.cond57 ], [ %cmp59, %lor.rhs ]
  br i1 %26, label %do.body25, label %do.end60, !llvm.loop !79

do.end60:                                         ; preds = %lor.end
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %if.then53, %if.then46, %if.then41, %if.then36, %if.then29, %if.then21, %if.then14, %if.then8
  call void @mbedtls_mpi_free(ptr noundef %lower_bound)
  %27 = load i32, ptr %ret, align 4, !tbaa !17
  store i32 %27, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup61

cleanup61:                                        ; preds = %cleanup, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %lower_bound) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_bytes) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_bits) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %lt_upper) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %lt_lower) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

declare i32 @mbedtls_mpi_lt_mpi_ct(ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_mpi_inv_mod(ptr noundef %X, ptr noundef %A, ptr noundef %N) #1 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %N.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %G = alloca %struct.mbedtls_mpi, align 8
  %TA = alloca %struct.mbedtls_mpi, align 8
  %TU = alloca %struct.mbedtls_mpi, align 8
  %U1 = alloca %struct.mbedtls_mpi, align 8
  %U2 = alloca %struct.mbedtls_mpi, align 8
  %TB = alloca %struct.mbedtls_mpi, align 8
  %TV = alloca %struct.mbedtls_mpi, align 8
  %V1 = alloca %struct.mbedtls_mpi, align 8
  %V2 = alloca %struct.mbedtls_mpi, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %N, ptr %N.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 -110, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 24, ptr %G) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %TA) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %TU) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %U1) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %U2) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %TB) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %TV) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %V1) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %V2) #10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  br label %do.cond5

do.cond5:                                         ; preds = %do.body4
  br label %do.end6

do.end6:                                          ; preds = %do.cond5
  %0 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_mpi_cmp_int(ptr noundef %0, i64 noundef 1)
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end6
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup255

if.end:                                           ; preds = %do.end6
  call void @mbedtls_mpi_init(ptr noundef %TA)
  call void @mbedtls_mpi_init(ptr noundef %TU)
  call void @mbedtls_mpi_init(ptr noundef %U1)
  call void @mbedtls_mpi_init(ptr noundef %U2)
  call void @mbedtls_mpi_init(ptr noundef %G)
  call void @mbedtls_mpi_init(ptr noundef %TB)
  call void @mbedtls_mpi_init(ptr noundef %TV)
  call void @mbedtls_mpi_init(ptr noundef %V1)
  call void @mbedtls_mpi_init(ptr noundef %V2)
  br label %do.body7

do.body7:                                         ; preds = %if.end
  %1 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %call8 = call i32 @mbedtls_mpi_gcd(ptr noundef %G, ptr noundef %1, ptr noundef %2)
  store i32 %call8, ptr %ret, align 4, !tbaa !17
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body7
  br label %cleanup

if.end11:                                         ; preds = %do.body7
  br label %do.cond12

do.cond12:                                        ; preds = %if.end11
  br label %do.end13

do.end13:                                         ; preds = %do.cond12
  %call14 = call i32 @mbedtls_mpi_cmp_int(ptr noundef %G, i64 noundef 1)
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.end13
  store i32 -14, ptr %ret, align 4, !tbaa !17
  br label %cleanup

if.end17:                                         ; preds = %do.end13
  br label %do.body18

do.body18:                                        ; preds = %if.end17
  %3 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %call19 = call i32 @mbedtls_mpi_mod_mpi(ptr noundef %TA, ptr noundef %3, ptr noundef %4)
  store i32 %call19, ptr %ret, align 4, !tbaa !17
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.body18
  br label %cleanup

if.end22:                                         ; preds = %do.body18
  br label %do.cond23

do.cond23:                                        ; preds = %if.end22
  br label %do.end24

do.end24:                                         ; preds = %do.cond23
  br label %do.body25

do.body25:                                        ; preds = %do.end24
  %call26 = call i32 @mbedtls_mpi_copy(ptr noundef %TU, ptr noundef %TA)
  store i32 %call26, ptr %ret, align 4, !tbaa !17
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %do.body25
  br label %cleanup

if.end29:                                         ; preds = %do.body25
  br label %do.cond30

do.cond30:                                        ; preds = %if.end29
  br label %do.end31

do.end31:                                         ; preds = %do.cond30
  br label %do.body32

do.body32:                                        ; preds = %do.end31
  %5 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %call33 = call i32 @mbedtls_mpi_copy(ptr noundef %TB, ptr noundef %5)
  store i32 %call33, ptr %ret, align 4, !tbaa !17
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %do.body32
  br label %cleanup

if.end36:                                         ; preds = %do.body32
  br label %do.cond37

do.cond37:                                        ; preds = %if.end36
  br label %do.end38

do.end38:                                         ; preds = %do.cond37
  br label %do.body39

do.body39:                                        ; preds = %do.end38
  %6 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %call40 = call i32 @mbedtls_mpi_copy(ptr noundef %TV, ptr noundef %6)
  store i32 %call40, ptr %ret, align 4, !tbaa !17
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %do.body39
  br label %cleanup

if.end43:                                         ; preds = %do.body39
  br label %do.cond44

do.cond44:                                        ; preds = %if.end43
  br label %do.end45

do.end45:                                         ; preds = %do.cond44
  br label %do.body46

do.body46:                                        ; preds = %do.end45
  %call47 = call i32 @mbedtls_mpi_lset(ptr noundef %U1, i64 noundef 1)
  store i32 %call47, ptr %ret, align 4, !tbaa !17
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %do.body46
  br label %cleanup

if.end50:                                         ; preds = %do.body46
  br label %do.cond51

do.cond51:                                        ; preds = %if.end50
  br label %do.end52

do.end52:                                         ; preds = %do.cond51
  br label %do.body53

do.body53:                                        ; preds = %do.end52
  %call54 = call i32 @mbedtls_mpi_lset(ptr noundef %U2, i64 noundef 0)
  store i32 %call54, ptr %ret, align 4, !tbaa !17
  %cmp55 = icmp ne i32 %call54, 0
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %do.body53
  br label %cleanup

if.end57:                                         ; preds = %do.body53
  br label %do.cond58

do.cond58:                                        ; preds = %if.end57
  br label %do.end59

do.end59:                                         ; preds = %do.cond58
  br label %do.body60

do.body60:                                        ; preds = %do.end59
  %call61 = call i32 @mbedtls_mpi_lset(ptr noundef %V1, i64 noundef 0)
  store i32 %call61, ptr %ret, align 4, !tbaa !17
  %cmp62 = icmp ne i32 %call61, 0
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %do.body60
  br label %cleanup

if.end64:                                         ; preds = %do.body60
  br label %do.cond65

do.cond65:                                        ; preds = %if.end64
  br label %do.end66

do.end66:                                         ; preds = %do.cond65
  br label %do.body67

do.body67:                                        ; preds = %do.end66
  %call68 = call i32 @mbedtls_mpi_lset(ptr noundef %V2, i64 noundef 1)
  store i32 %call68, ptr %ret, align 4, !tbaa !17
  %cmp69 = icmp ne i32 %call68, 0
  br i1 %cmp69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %do.body67
  br label %cleanup

if.end71:                                         ; preds = %do.body67
  br label %do.cond72

do.cond72:                                        ; preds = %if.end71
  br label %do.end73

do.end73:                                         ; preds = %do.cond72
  br label %do.body74

do.body74:                                        ; preds = %do.cond220, %do.end73
  br label %while.cond

while.cond:                                       ; preds = %do.end120, %do.body74
  %p = getelementptr inbounds %struct.mbedtls_mpi, ptr %TU, i32 0, i32 2
  %7 = load ptr, ptr %p, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i64, ptr %7, i64 0
  %8 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %and = and i64 %8, 1
  %cmp75 = icmp eq i64 %and, 0
  br i1 %cmp75, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body76

do.body76:                                        ; preds = %while.body
  %call77 = call i32 @mbedtls_mpi_shift_r(ptr noundef %TU, i64 noundef 1)
  store i32 %call77, ptr %ret, align 4, !tbaa !17
  %cmp78 = icmp ne i32 %call77, 0
  br i1 %cmp78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %do.body76
  br label %cleanup

if.end80:                                         ; preds = %do.body76
  br label %do.cond81

do.cond81:                                        ; preds = %if.end80
  br label %do.end82

do.end82:                                         ; preds = %do.cond81
  %p83 = getelementptr inbounds %struct.mbedtls_mpi, ptr %U1, i32 0, i32 2
  %9 = load ptr, ptr %p83, align 8, !tbaa !13
  %arrayidx84 = getelementptr inbounds i64, ptr %9, i64 0
  %10 = load i64, ptr %arrayidx84, align 8, !tbaa !14
  %and85 = and i64 %10, 1
  %cmp86 = icmp ne i64 %and85, 0
  br i1 %cmp86, label %if.then91, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end82
  %p87 = getelementptr inbounds %struct.mbedtls_mpi, ptr %U2, i32 0, i32 2
  %11 = load ptr, ptr %p87, align 8, !tbaa !13
  %arrayidx88 = getelementptr inbounds i64, ptr %11, i64 0
  %12 = load i64, ptr %arrayidx88, align 8, !tbaa !14
  %and89 = and i64 %12, 1
  %cmp90 = icmp ne i64 %and89, 0
  br i1 %cmp90, label %if.then91, label %if.end106

if.then91:                                        ; preds = %lor.lhs.false, %do.end82
  br label %do.body92

do.body92:                                        ; preds = %if.then91
  %call93 = call i32 @mbedtls_mpi_add_mpi(ptr noundef %U1, ptr noundef %U1, ptr noundef %TB)
  store i32 %call93, ptr %ret, align 4, !tbaa !17
  %cmp94 = icmp ne i32 %call93, 0
  br i1 %cmp94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %do.body92
  br label %cleanup

if.end96:                                         ; preds = %do.body92
  br label %do.cond97

do.cond97:                                        ; preds = %if.end96
  br label %do.end98

do.end98:                                         ; preds = %do.cond97
  br label %do.body99

do.body99:                                        ; preds = %do.end98
  %call100 = call i32 @mbedtls_mpi_sub_mpi(ptr noundef %U2, ptr noundef %U2, ptr noundef %TA)
  store i32 %call100, ptr %ret, align 4, !tbaa !17
  %cmp101 = icmp ne i32 %call100, 0
  br i1 %cmp101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %do.body99
  br label %cleanup

if.end103:                                        ; preds = %do.body99
  br label %do.cond104

do.cond104:                                       ; preds = %if.end103
  br label %do.end105

do.end105:                                        ; preds = %do.cond104
  br label %if.end106

if.end106:                                        ; preds = %do.end105, %lor.lhs.false
  br label %do.body107

do.body107:                                       ; preds = %if.end106
  %call108 = call i32 @mbedtls_mpi_shift_r(ptr noundef %U1, i64 noundef 1)
  store i32 %call108, ptr %ret, align 4, !tbaa !17
  %cmp109 = icmp ne i32 %call108, 0
  br i1 %cmp109, label %if.then110, label %if.end111

if.then110:                                       ; preds = %do.body107
  br label %cleanup

if.end111:                                        ; preds = %do.body107
  br label %do.cond112

do.cond112:                                       ; preds = %if.end111
  br label %do.end113

do.end113:                                        ; preds = %do.cond112
  br label %do.body114

do.body114:                                       ; preds = %do.end113
  %call115 = call i32 @mbedtls_mpi_shift_r(ptr noundef %U2, i64 noundef 1)
  store i32 %call115, ptr %ret, align 4, !tbaa !17
  %cmp116 = icmp ne i32 %call115, 0
  br i1 %cmp116, label %if.then117, label %if.end118

if.then117:                                       ; preds = %do.body114
  br label %cleanup

if.end118:                                        ; preds = %do.body114
  br label %do.cond119

do.cond119:                                       ; preds = %if.end118
  br label %do.end120

do.end120:                                        ; preds = %do.cond119
  br label %while.cond, !llvm.loop !80

while.end:                                        ; preds = %while.cond
  br label %while.cond121

while.cond121:                                    ; preds = %do.end172, %while.end
  %p122 = getelementptr inbounds %struct.mbedtls_mpi, ptr %TV, i32 0, i32 2
  %13 = load ptr, ptr %p122, align 8, !tbaa !13
  %arrayidx123 = getelementptr inbounds i64, ptr %13, i64 0
  %14 = load i64, ptr %arrayidx123, align 8, !tbaa !14
  %and124 = and i64 %14, 1
  %cmp125 = icmp eq i64 %and124, 0
  br i1 %cmp125, label %while.body126, label %while.end173

while.body126:                                    ; preds = %while.cond121
  br label %do.body127

do.body127:                                       ; preds = %while.body126
  %call128 = call i32 @mbedtls_mpi_shift_r(ptr noundef %TV, i64 noundef 1)
  store i32 %call128, ptr %ret, align 4, !tbaa !17
  %cmp129 = icmp ne i32 %call128, 0
  br i1 %cmp129, label %if.then130, label %if.end131

if.then130:                                       ; preds = %do.body127
  br label %cleanup

if.end131:                                        ; preds = %do.body127
  br label %do.cond132

do.cond132:                                       ; preds = %if.end131
  br label %do.end133

do.end133:                                        ; preds = %do.cond132
  %p134 = getelementptr inbounds %struct.mbedtls_mpi, ptr %V1, i32 0, i32 2
  %15 = load ptr, ptr %p134, align 8, !tbaa !13
  %arrayidx135 = getelementptr inbounds i64, ptr %15, i64 0
  %16 = load i64, ptr %arrayidx135, align 8, !tbaa !14
  %and136 = and i64 %16, 1
  %cmp137 = icmp ne i64 %and136, 0
  br i1 %cmp137, label %if.then143, label %lor.lhs.false138

lor.lhs.false138:                                 ; preds = %do.end133
  %p139 = getelementptr inbounds %struct.mbedtls_mpi, ptr %V2, i32 0, i32 2
  %17 = load ptr, ptr %p139, align 8, !tbaa !13
  %arrayidx140 = getelementptr inbounds i64, ptr %17, i64 0
  %18 = load i64, ptr %arrayidx140, align 8, !tbaa !14
  %and141 = and i64 %18, 1
  %cmp142 = icmp ne i64 %and141, 0
  br i1 %cmp142, label %if.then143, label %if.end158

if.then143:                                       ; preds = %lor.lhs.false138, %do.end133
  br label %do.body144

do.body144:                                       ; preds = %if.then143
  %call145 = call i32 @mbedtls_mpi_add_mpi(ptr noundef %V1, ptr noundef %V1, ptr noundef %TB)
  store i32 %call145, ptr %ret, align 4, !tbaa !17
  %cmp146 = icmp ne i32 %call145, 0
  br i1 %cmp146, label %if.then147, label %if.end148

if.then147:                                       ; preds = %do.body144
  br label %cleanup

if.end148:                                        ; preds = %do.body144
  br label %do.cond149

do.cond149:                                       ; preds = %if.end148
  br label %do.end150

do.end150:                                        ; preds = %do.cond149
  br label %do.body151

do.body151:                                       ; preds = %do.end150
  %call152 = call i32 @mbedtls_mpi_sub_mpi(ptr noundef %V2, ptr noundef %V2, ptr noundef %TA)
  store i32 %call152, ptr %ret, align 4, !tbaa !17
  %cmp153 = icmp ne i32 %call152, 0
  br i1 %cmp153, label %if.then154, label %if.end155

if.then154:                                       ; preds = %do.body151
  br label %cleanup

if.end155:                                        ; preds = %do.body151
  br label %do.cond156

do.cond156:                                       ; preds = %if.end155
  br label %do.end157

do.end157:                                        ; preds = %do.cond156
  br label %if.end158

if.end158:                                        ; preds = %do.end157, %lor.lhs.false138
  br label %do.body159

do.body159:                                       ; preds = %if.end158
  %call160 = call i32 @mbedtls_mpi_shift_r(ptr noundef %V1, i64 noundef 1)
  store i32 %call160, ptr %ret, align 4, !tbaa !17
  %cmp161 = icmp ne i32 %call160, 0
  br i1 %cmp161, label %if.then162, label %if.end163

if.then162:                                       ; preds = %do.body159
  br label %cleanup

if.end163:                                        ; preds = %do.body159
  br label %do.cond164

do.cond164:                                       ; preds = %if.end163
  br label %do.end165

do.end165:                                        ; preds = %do.cond164
  br label %do.body166

do.body166:                                       ; preds = %do.end165
  %call167 = call i32 @mbedtls_mpi_shift_r(ptr noundef %V2, i64 noundef 1)
  store i32 %call167, ptr %ret, align 4, !tbaa !17
  %cmp168 = icmp ne i32 %call167, 0
  br i1 %cmp168, label %if.then169, label %if.end170

if.then169:                                       ; preds = %do.body166
  br label %cleanup

if.end170:                                        ; preds = %do.body166
  br label %do.cond171

do.cond171:                                       ; preds = %if.end170
  br label %do.end172

do.end172:                                        ; preds = %do.cond171
  br label %while.cond121, !llvm.loop !81

while.end173:                                     ; preds = %while.cond121
  %call174 = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef %TU, ptr noundef %TV)
  %cmp175 = icmp sge i32 %call174, 0
  br i1 %cmp175, label %if.then176, label %if.else

if.then176:                                       ; preds = %while.end173
  br label %do.body177

do.body177:                                       ; preds = %if.then176
  %call178 = call i32 @mbedtls_mpi_sub_mpi(ptr noundef %TU, ptr noundef %TU, ptr noundef %TV)
  store i32 %call178, ptr %ret, align 4, !tbaa !17
  %cmp179 = icmp ne i32 %call178, 0
  br i1 %cmp179, label %if.then180, label %if.end181

if.then180:                                       ; preds = %do.body177
  br label %cleanup

if.end181:                                        ; preds = %do.body177
  br label %do.cond182

do.cond182:                                       ; preds = %if.end181
  br label %do.end183

do.end183:                                        ; preds = %do.cond182
  br label %do.body184

do.body184:                                       ; preds = %do.end183
  %call185 = call i32 @mbedtls_mpi_sub_mpi(ptr noundef %U1, ptr noundef %U1, ptr noundef %V1)
  store i32 %call185, ptr %ret, align 4, !tbaa !17
  %cmp186 = icmp ne i32 %call185, 0
  br i1 %cmp186, label %if.then187, label %if.end188

if.then187:                                       ; preds = %do.body184
  br label %cleanup

if.end188:                                        ; preds = %do.body184
  br label %do.cond189

do.cond189:                                       ; preds = %if.end188
  br label %do.end190

do.end190:                                        ; preds = %do.cond189
  br label %do.body191

do.body191:                                       ; preds = %do.end190
  %call192 = call i32 @mbedtls_mpi_sub_mpi(ptr noundef %U2, ptr noundef %U2, ptr noundef %V2)
  store i32 %call192, ptr %ret, align 4, !tbaa !17
  %cmp193 = icmp ne i32 %call192, 0
  br i1 %cmp193, label %if.then194, label %if.end195

if.then194:                                       ; preds = %do.body191
  br label %cleanup

if.end195:                                        ; preds = %do.body191
  br label %do.cond196

do.cond196:                                       ; preds = %if.end195
  br label %do.end197

do.end197:                                        ; preds = %do.cond196
  br label %if.end219

if.else:                                          ; preds = %while.end173
  br label %do.body198

do.body198:                                       ; preds = %if.else
  %call199 = call i32 @mbedtls_mpi_sub_mpi(ptr noundef %TV, ptr noundef %TV, ptr noundef %TU)
  store i32 %call199, ptr %ret, align 4, !tbaa !17
  %cmp200 = icmp ne i32 %call199, 0
  br i1 %cmp200, label %if.then201, label %if.end202

if.then201:                                       ; preds = %do.body198
  br label %cleanup

if.end202:                                        ; preds = %do.body198
  br label %do.cond203

do.cond203:                                       ; preds = %if.end202
  br label %do.end204

do.end204:                                        ; preds = %do.cond203
  br label %do.body205

do.body205:                                       ; preds = %do.end204
  %call206 = call i32 @mbedtls_mpi_sub_mpi(ptr noundef %V1, ptr noundef %V1, ptr noundef %U1)
  store i32 %call206, ptr %ret, align 4, !tbaa !17
  %cmp207 = icmp ne i32 %call206, 0
  br i1 %cmp207, label %if.then208, label %if.end209

if.then208:                                       ; preds = %do.body205
  br label %cleanup

if.end209:                                        ; preds = %do.body205
  br label %do.cond210

do.cond210:                                       ; preds = %if.end209
  br label %do.end211

do.end211:                                        ; preds = %do.cond210
  br label %do.body212

do.body212:                                       ; preds = %do.end211
  %call213 = call i32 @mbedtls_mpi_sub_mpi(ptr noundef %V2, ptr noundef %V2, ptr noundef %U2)
  store i32 %call213, ptr %ret, align 4, !tbaa !17
  %cmp214 = icmp ne i32 %call213, 0
  br i1 %cmp214, label %if.then215, label %if.end216

if.then215:                                       ; preds = %do.body212
  br label %cleanup

if.end216:                                        ; preds = %do.body212
  br label %do.cond217

do.cond217:                                       ; preds = %if.end216
  br label %do.end218

do.end218:                                        ; preds = %do.cond217
  br label %if.end219

if.end219:                                        ; preds = %do.end218, %do.end197
  br label %do.cond220

do.cond220:                                       ; preds = %if.end219
  %call221 = call i32 @mbedtls_mpi_cmp_int(ptr noundef %TU, i64 noundef 0)
  %cmp222 = icmp ne i32 %call221, 0
  br i1 %cmp222, label %do.body74, label %do.end223, !llvm.loop !82

do.end223:                                        ; preds = %do.cond220
  br label %while.cond224

while.cond224:                                    ; preds = %do.end234, %do.end223
  %call225 = call i32 @mbedtls_mpi_cmp_int(ptr noundef %V1, i64 noundef 0)
  %cmp226 = icmp slt i32 %call225, 0
  br i1 %cmp226, label %while.body227, label %while.end235

while.body227:                                    ; preds = %while.cond224
  br label %do.body228

do.body228:                                       ; preds = %while.body227
  %19 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %call229 = call i32 @mbedtls_mpi_add_mpi(ptr noundef %V1, ptr noundef %V1, ptr noundef %19)
  store i32 %call229, ptr %ret, align 4, !tbaa !17
  %cmp230 = icmp ne i32 %call229, 0
  br i1 %cmp230, label %if.then231, label %if.end232

if.then231:                                       ; preds = %do.body228
  br label %cleanup

if.end232:                                        ; preds = %do.body228
  br label %do.cond233

do.cond233:                                       ; preds = %if.end232
  br label %do.end234

do.end234:                                        ; preds = %do.cond233
  br label %while.cond224, !llvm.loop !83

while.end235:                                     ; preds = %while.cond224
  br label %while.cond236

while.cond236:                                    ; preds = %do.end246, %while.end235
  %20 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %call237 = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef %V1, ptr noundef %20)
  %cmp238 = icmp sge i32 %call237, 0
  br i1 %cmp238, label %while.body239, label %while.end247

while.body239:                                    ; preds = %while.cond236
  br label %do.body240

do.body240:                                       ; preds = %while.body239
  %21 = load ptr, ptr %N.addr, align 8, !tbaa !4
  %call241 = call i32 @mbedtls_mpi_sub_mpi(ptr noundef %V1, ptr noundef %V1, ptr noundef %21)
  store i32 %call241, ptr %ret, align 4, !tbaa !17
  %cmp242 = icmp ne i32 %call241, 0
  br i1 %cmp242, label %if.then243, label %if.end244

if.then243:                                       ; preds = %do.body240
  br label %cleanup

if.end244:                                        ; preds = %do.body240
  br label %do.cond245

do.cond245:                                       ; preds = %if.end244
  br label %do.end246

do.end246:                                        ; preds = %do.cond245
  br label %while.cond236, !llvm.loop !84

while.end247:                                     ; preds = %while.cond236
  br label %do.body248

do.body248:                                       ; preds = %while.end247
  %22 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %call249 = call i32 @mbedtls_mpi_copy(ptr noundef %22, ptr noundef %V1)
  store i32 %call249, ptr %ret, align 4, !tbaa !17
  %cmp250 = icmp ne i32 %call249, 0
  br i1 %cmp250, label %if.then251, label %if.end252

if.then251:                                       ; preds = %do.body248
  br label %cleanup

if.end252:                                        ; preds = %do.body248
  br label %do.cond253

do.cond253:                                       ; preds = %if.end252
  br label %do.end254

do.end254:                                        ; preds = %do.cond253
  br label %cleanup

cleanup:                                          ; preds = %do.end254, %if.then251, %if.then243, %if.then231, %if.then215, %if.then208, %if.then201, %if.then194, %if.then187, %if.then180, %if.then169, %if.then162, %if.then154, %if.then147, %if.then130, %if.then117, %if.then110, %if.then102, %if.then95, %if.then79, %if.then70, %if.then63, %if.then56, %if.then49, %if.then42, %if.then35, %if.then28, %if.then21, %if.then16, %if.then10
  call void @mbedtls_mpi_free(ptr noundef %TA)
  call void @mbedtls_mpi_free(ptr noundef %TU)
  call void @mbedtls_mpi_free(ptr noundef %U1)
  call void @mbedtls_mpi_free(ptr noundef %U2)
  call void @mbedtls_mpi_free(ptr noundef %G)
  call void @mbedtls_mpi_free(ptr noundef %TB)
  call void @mbedtls_mpi_free(ptr noundef %TV)
  call void @mbedtls_mpi_free(ptr noundef %V1)
  call void @mbedtls_mpi_free(ptr noundef %V2)
  %23 = load i32, ptr %ret, align 4, !tbaa !17
  store i32 %23, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup255

cleanup255:                                       ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %V2) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %V1) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %TV) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %TB) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %U2) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %U1) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %TU) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %TA) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %G) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @_ZL26mpi_uint_bigendian_to_hostm(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8, !tbaa !14
  %0 = load i64, ptr %x.addr, align 8, !tbaa !14
  %1 = call i64 @llvm.bswap.i64(i64 %0)
  ret i64 %1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

declare void @_Z31mbedtls_ct_mpi_uint_cond_assignmPmPKmh(i64 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) #8

declare i32 @mbedtls_mpi_safe_cond_assign(ptr noundef, ptr noundef, i8 noundef zeroext) #8

declare noundef i32 @_Z23mbedtls_ct_size_bool_eqmm(i64 noundef, i64 noundef) #8

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTS11mbedtls_mpi", !10, i64 0, !11, i64 8, !5, i64 16}
!10 = !{!"int", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !11, i64 8}
!13 = !{!9, !5, i64 16}
!14 = !{!11, !11, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!10, !10, i64 0}
!18 = distinct !{!18, !16}
!19 = !{!6, !6, i64 0}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16}
!51 = distinct !{!51, !16}
!52 = distinct !{!52, !16}
!53 = distinct !{!53, !16}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !16}
!56 = distinct !{!56, !16}
!57 = !{!58, !58, i64 0}
!58 = !{!"__int128", !6, i64 0}
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !16}
!61 = distinct !{!61, !16}
!62 = distinct !{!62, !16}
!63 = distinct !{!63, !16}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, !16}
!71 = distinct !{!71, !16}
!72 = distinct !{!72, !16}
!73 = distinct !{!73, !16}
!74 = distinct !{!74, !16}
!75 = distinct !{!75, !16}
!76 = distinct !{!76, !16}
!77 = distinct !{!77, !16}
!78 = distinct !{!78, !16}
!79 = distinct !{!79, !16}
!80 = distinct !{!80, !16}
!81 = distinct !{!81, !16}
!82 = distinct !{!82, !16}
!83 = distinct !{!83, !16}
!84 = distinct !{!84, !16}
