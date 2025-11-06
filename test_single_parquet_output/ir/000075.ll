; ModuleID = '<stdin>'
source_filename = "../../third_party/opus/src/celt/vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exp_rotation.SPREAD_FACTOR = internal constant [3 x i32] [i32 15, i32 10, i32 5], align 4
@.str = private unnamed_addr constant [59 x i8] c"assertion failed: K>0\0Aalg_quant() needs at least one pulse\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"../../third_party/opus/src/celt/vq.c\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"assertion failed: N>1\0Aalg_quant() needs at least two dimensions\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"assertion failed: K>0\0Aalg_unquant() needs at least one pulse\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"assertion failed: N>1\0Aalg_unquant() needs at least two dimensions\00", align 1

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @exp_rotation(ptr noundef %X, i32 noundef %len, i32 noundef %dir, i32 noundef %stride, i32 noundef %K, i32 noundef %spread) #0 {
entry:
  %X.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %stride.addr = alloca i32, align 4
  %K.addr = alloca i32, align 4
  %spread.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca float, align 4
  %s = alloca float, align 4
  %gain = alloca float, align 4
  %theta = alloca float, align 4
  %stride2 = alloca i32, align 4
  %factor = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 %dir, ptr %dir.addr, align 4
  store i32 %stride, ptr %stride.addr, align 4
  store i32 %K, ptr %K.addr, align 4
  store i32 %spread, ptr %spread.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 -1431655766, ptr %i, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #9
  store float 0xFFFFFFFFE0000000, ptr %c, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #9
  store float 0xFFFFFFFFE0000000, ptr %s, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %gain) #9
  store float 0xFFFFFFFFE0000000, ptr %gain, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %theta) #9
  store float 0xFFFFFFFFE0000000, ptr %theta, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %stride2) #9
  store i32 -1431655766, ptr %stride2, align 4, !annotation !3
  store i32 0, ptr %stride2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %factor) #9
  store i32 -1431655766, ptr %factor, align 4, !annotation !3
  %0 = load i32, ptr %K.addr, align 4
  %mul = mul nsw i32 2, %0
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp sge i32 %mul, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %spread.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, ptr %spread.addr, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [3 x i32], ptr @exp_rotation.SPREAD_FACTOR, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  store i32 %4, ptr %factor, align 4
  %5 = load i32, ptr %len.addr, align 4
  %conv = sitofp i32 %5 to float
  %mul2 = fmul float 1.000000e+00, %conv
  %6 = load i32, ptr %len.addr, align 4
  %7 = load i32, ptr %factor, align 4
  %8 = load i32, ptr %K.addr, align 4
  %mul3 = mul nsw i32 %7, %8
  %add = add nsw i32 %6, %mul3
  %conv4 = sitofp i32 %add to float
  %div = fdiv float %mul2, %conv4
  store float %div, ptr %gain, align 4
  %9 = load float, ptr %gain, align 4
  %10 = load float, ptr %gain, align 4
  %mul5 = fmul float %9, %10
  %mul6 = fmul float 5.000000e-01, %mul5
  store float %mul6, ptr %theta, align 4
  %11 = load float, ptr %theta, align 4
  %mul7 = fmul float 0x3FF921FB60000000, %11
  %conv8 = fpext float %mul7 to double
  %call = call double @cos(double noundef %conv8) #9
  %conv9 = fptrunc double %call to float
  store float %conv9, ptr %c, align 4
  %12 = load float, ptr %theta, align 4
  %sub10 = fsub float 1.000000e+00, %12
  %mul11 = fmul float 0x3FF921FB60000000, %sub10
  %conv12 = fpext float %mul11 to double
  %call13 = call double @cos(double noundef %conv12) #9
  %conv14 = fptrunc double %call13 to float
  store float %conv14, ptr %s, align 4
  %13 = load i32, ptr %len.addr, align 4
  %14 = load i32, ptr %stride.addr, align 4
  %mul15 = mul nsw i32 8, %14
  %cmp16 = icmp sge i32 %13, %mul15
  br i1 %cmp16, label %if.then18, label %if.end25

if.then18:                                        ; preds = %if.end
  store i32 1, ptr %stride2, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then18
  %15 = load i32, ptr %stride2, align 4
  %16 = load i32, ptr %stride2, align 4
  %mul19 = mul nsw i32 %15, %16
  %17 = load i32, ptr %stride2, align 4
  %add20 = add nsw i32 %mul19, %17
  %18 = load i32, ptr %stride.addr, align 4
  %mul21 = mul nsw i32 %add20, %18
  %19 = load i32, ptr %stride.addr, align 4
  %shr = ashr i32 %19, 2
  %add22 = add nsw i32 %mul21, %shr
  %20 = load i32, ptr %len.addr, align 4
  %cmp23 = icmp slt i32 %add22, %20
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, ptr %stride2, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %stride2, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %if.end25

if.end25:                                         ; preds = %while.end, %if.end
  %22 = load i32, ptr %len.addr, align 4
  %23 = load i32, ptr %stride.addr, align 4
  %call26 = call i32 @celt_udiv(i32 noundef %22, i32 noundef %23)
  store i32 %call26, ptr %len.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end25
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %stride.addr, align 4
  %cmp27 = icmp slt i32 %24, %25
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, ptr %dir.addr, align 4
  %cmp29 = icmp slt i32 %26, 0
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %for.body
  %27 = load i32, ptr %stride2, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then31
  %28 = load ptr, ptr %X.addr, align 8
  %29 = load i32, ptr %i, align 4
  %30 = load i32, ptr %len.addr, align 4
  %mul33 = mul nsw i32 %29, %30
  %idx.ext = sext i32 %mul33 to i64
  %add.ptr = getelementptr inbounds float, ptr %28, i64 %idx.ext
  %31 = load i32, ptr %len.addr, align 4
  %32 = load i32, ptr %stride2, align 4
  %33 = load float, ptr %s, align 4
  %34 = load float, ptr %c, align 4
  call void @exp_rotation1(ptr noundef %add.ptr, i32 noundef %31, i32 noundef %32, float noundef %33, float noundef %34)
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then31
  %35 = load ptr, ptr %X.addr, align 8
  %36 = load i32, ptr %i, align 4
  %37 = load i32, ptr %len.addr, align 4
  %mul35 = mul nsw i32 %36, %37
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds float, ptr %35, i64 %idx.ext36
  %38 = load i32, ptr %len.addr, align 4
  %39 = load float, ptr %c, align 4
  %40 = load float, ptr %s, align 4
  call void @exp_rotation1(ptr noundef %add.ptr37, i32 noundef %38, i32 noundef 1, float noundef %39, float noundef %40)
  br label %if.end48

if.else:                                          ; preds = %for.body
  %41 = load ptr, ptr %X.addr, align 8
  %42 = load i32, ptr %i, align 4
  %43 = load i32, ptr %len.addr, align 4
  %mul38 = mul nsw i32 %42, %43
  %idx.ext39 = sext i32 %mul38 to i64
  %add.ptr40 = getelementptr inbounds float, ptr %41, i64 %idx.ext39
  %44 = load i32, ptr %len.addr, align 4
  %45 = load float, ptr %c, align 4
  %46 = load float, ptr %s, align 4
  %fneg = fneg float %46
  call void @exp_rotation1(ptr noundef %add.ptr40, i32 noundef %44, i32 noundef 1, float noundef %45, float noundef %fneg)
  %47 = load i32, ptr %stride2, align 4
  %tobool41 = icmp ne i32 %47, 0
  br i1 %tobool41, label %if.then42, label %if.end47

if.then42:                                        ; preds = %if.else
  %48 = load ptr, ptr %X.addr, align 8
  %49 = load i32, ptr %i, align 4
  %50 = load i32, ptr %len.addr, align 4
  %mul43 = mul nsw i32 %49, %50
  %idx.ext44 = sext i32 %mul43 to i64
  %add.ptr45 = getelementptr inbounds float, ptr %48, i64 %idx.ext44
  %51 = load i32, ptr %len.addr, align 4
  %52 = load i32, ptr %stride2, align 4
  %53 = load float, ptr %s, align 4
  %54 = load float, ptr %c, align 4
  %fneg46 = fneg float %54
  call void @exp_rotation1(ptr noundef %add.ptr45, i32 noundef %51, i32 noundef %52, float noundef %53, float noundef %fneg46)
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.else
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end34
  br label %for.inc

for.inc:                                          ; preds = %if.end48
  %55 = load i32, ptr %i, align 4
  %inc49 = add nsw i32 %55, 1
  store i32 %inc49, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %factor) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %stride2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %theta) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %gain) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind null_pointer_is_valid
declare double @cos(double noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid ssp
define internal i32 @celt_udiv(i32 noundef %n, i32 noundef %d) #3 {
entry:
  %n.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %d, ptr %d.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %1 = load i32, ptr %d.addr, align 4
  %div = udiv i32 %0, %1
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal void @exp_rotation1(ptr noundef %X, i32 noundef %len, i32 noundef %stride, float noundef %c, float noundef %s) #0 {
entry:
  %X.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %stride.addr = alloca i32, align 4
  %c.addr = alloca float, align 4
  %s.addr = alloca float, align 4
  %i = alloca i32, align 4
  %ms = alloca float, align 4
  %Xptr = alloca ptr, align 8
  %x1 = alloca float, align 4
  %x2 = alloca float, align 4
  %x119 = alloca float, align 4
  %x220 = alloca float, align 4
  store ptr %X, ptr %X.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 %stride, ptr %stride.addr, align 4
  store float %c, ptr %c.addr, align 4
  store float %s, ptr %s.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 -1431655766, ptr %i, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ms) #9
  store float 0xFFFFFFFFE0000000, ptr %ms, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Xptr) #9
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %Xptr, align 8, !annotation !3
  %0 = load ptr, ptr %X.addr, align 8
  store ptr %0, ptr %Xptr, align 8
  %1 = load float, ptr %s.addr, align 4
  %fneg = fneg float %1
  store float %fneg, ptr %ms, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %len.addr, align 4
  %4 = load i32, ptr %stride.addr, align 4
  %sub = sub nsw i32 %3, %4
  %cmp = icmp slt i32 %2, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %x1) #9
  store float 0xFFFFFFFFE0000000, ptr %x1, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x2) #9
  store float 0xFFFFFFFFE0000000, ptr %x2, align 4, !annotation !3
  %5 = load ptr, ptr %Xptr, align 8
  %arrayidx = getelementptr inbounds float, ptr %5, i64 0
  %6 = load float, ptr %arrayidx, align 4
  store float %6, ptr %x1, align 4
  %7 = load ptr, ptr %Xptr, align 8
  %8 = load i32, ptr %stride.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx1 = getelementptr inbounds float, ptr %7, i64 %idxprom
  %9 = load float, ptr %arrayidx1, align 4
  store float %9, ptr %x2, align 4
  %10 = load float, ptr %c.addr, align 4
  %11 = load float, ptr %x2, align 4
  %mul = fmul float %10, %11
  %12 = load float, ptr %s.addr, align 4
  %13 = load float, ptr %x1, align 4
  %mul2 = fmul float %12, %13
  %add = fadd float %mul, %mul2
  %14 = load ptr, ptr %Xptr, align 8
  %15 = load i32, ptr %stride.addr, align 4
  %idxprom3 = sext i32 %15 to i64
  %arrayidx4 = getelementptr inbounds float, ptr %14, i64 %idxprom3
  store float %add, ptr %arrayidx4, align 4
  %16 = load float, ptr %c.addr, align 4
  %17 = load float, ptr %x1, align 4
  %mul5 = fmul float %16, %17
  %18 = load float, ptr %ms, align 4
  %19 = load float, ptr %x2, align 4
  %mul6 = fmul float %18, %19
  %add7 = fadd float %mul5, %mul6
  %20 = load ptr, ptr %Xptr, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %Xptr, align 8
  store float %add7, ptr %20, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %x1) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %X.addr, align 8
  %23 = load i32, ptr %len.addr, align 4
  %24 = load i32, ptr %stride.addr, align 4
  %mul8 = mul nsw i32 2, %24
  %sub9 = sub nsw i32 %23, %mul8
  %sub10 = sub nsw i32 %sub9, 1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds float, ptr %22, i64 %idxprom11
  store ptr %arrayidx12, ptr %Xptr, align 8
  %25 = load i32, ptr %len.addr, align 4
  %26 = load i32, ptr %stride.addr, align 4
  %mul13 = mul nsw i32 2, %26
  %sub14 = sub nsw i32 %25, %mul13
  %sub15 = sub nsw i32 %sub14, 1
  store i32 %sub15, ptr %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end
  %27 = load i32, ptr %i, align 4
  %cmp17 = icmp sge i32 %27, 0
  br i1 %cmp17, label %for.body18, label %for.end34

for.body18:                                       ; preds = %for.cond16
  call void @llvm.lifetime.start.p0(i64 4, ptr %x119) #9
  store float 0xFFFFFFFFE0000000, ptr %x119, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x220) #9
  store float 0xFFFFFFFFE0000000, ptr %x220, align 4, !annotation !3
  %28 = load ptr, ptr %Xptr, align 8
  %arrayidx21 = getelementptr inbounds float, ptr %28, i64 0
  %29 = load float, ptr %arrayidx21, align 4
  store float %29, ptr %x119, align 4
  %30 = load ptr, ptr %Xptr, align 8
  %31 = load i32, ptr %stride.addr, align 4
  %idxprom22 = sext i32 %31 to i64
  %arrayidx23 = getelementptr inbounds float, ptr %30, i64 %idxprom22
  %32 = load float, ptr %arrayidx23, align 4
  store float %32, ptr %x220, align 4
  %33 = load float, ptr %c.addr, align 4
  %34 = load float, ptr %x220, align 4
  %mul24 = fmul float %33, %34
  %35 = load float, ptr %s.addr, align 4
  %36 = load float, ptr %x119, align 4
  %mul25 = fmul float %35, %36
  %add26 = fadd float %mul24, %mul25
  %37 = load ptr, ptr %Xptr, align 8
  %38 = load i32, ptr %stride.addr, align 4
  %idxprom27 = sext i32 %38 to i64
  %arrayidx28 = getelementptr inbounds float, ptr %37, i64 %idxprom27
  store float %add26, ptr %arrayidx28, align 4
  %39 = load float, ptr %c.addr, align 4
  %40 = load float, ptr %x119, align 4
  %mul29 = fmul float %39, %40
  %41 = load float, ptr %ms, align 4
  %42 = load float, ptr %x220, align 4
  %mul30 = fmul float %41, %42
  %add31 = fadd float %mul29, %mul30
  %43 = load ptr, ptr %Xptr, align 8
  %incdec.ptr32 = getelementptr inbounds float, ptr %43, i32 -1
  store ptr %incdec.ptr32, ptr %Xptr, align 8
  store float %add31, ptr %43, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x220) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %x119) #9
  br label %for.inc33

for.inc33:                                        ; preds = %for.body18
  %44 = load i32, ptr %i, align 4
  %dec = add nsw i32 %44, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond16, !llvm.loop !8

for.end34:                                        ; preds = %for.cond16
  call void @llvm.lifetime.end.p0(i64 8, ptr %Xptr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %ms) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden float @op_pvq_search_c(ptr noundef %X, ptr noundef %iy, i32 noundef %K, i32 noundef %N, i32 noundef %arch) #0 {
entry:
  %X.addr = alloca ptr, align 8
  %iy.addr = alloca ptr, align 8
  %K.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %arch.addr = alloca i32, align 4
  %y = alloca ptr, align 8
  %signx = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pulsesLeft = alloca i32, align 4
  %sum = alloca float, align 4
  %xy = alloca float, align 4
  %yy = alloca float, align 4
  %rcp = alloca float, align 4
  %tmp = alloca float, align 4
  %Rxy = alloca float, align 4
  %Ryy = alloca float, align 4
  %best_id = alloca i32, align 4
  %best_num = alloca float, align 4
  %best_den = alloca float, align 4
  store ptr %X, ptr %X.addr, align 8
  store ptr %iy, ptr %iy.addr, align 8
  store i32 %K, ptr %K.addr, align 4
  store i32 %N, ptr %N.addr, align 4
  store i32 %arch, ptr %arch.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #9
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %y, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %signx) #9
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %signx, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 -1431655766, ptr %i, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9
  store i32 -1431655766, ptr %j, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %pulsesLeft) #9
  store i32 -1431655766, ptr %pulsesLeft, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #9
  store float 0xFFFFFFFFE0000000, ptr %sum, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %xy) #9
  store float 0xFFFFFFFFE0000000, ptr %xy, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %yy) #9
  store float 0xFFFFFFFFE0000000, ptr %yy, align 4, !annotation !3
  %0 = load i32, ptr %arch.addr, align 4
  %1 = load i32, ptr %N.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 4, %conv
  %2 = alloca i8, i64 %mul, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 -86, i64 %mul, i1 false), !annotation !3
  store ptr %2, ptr %y, align 8
  %3 = load i32, ptr %N.addr, align 4
  %conv1 = sext i32 %3 to i64
  %mul2 = mul i64 4, %conv1
  %4 = alloca i8, i64 %mul2, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 -86, i64 %mul2, i1 false), !annotation !3
  store ptr %4, ptr %signx, align 8
  store float 0.000000e+00, ptr %sum, align 4
  store i32 0, ptr %j, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %5 = load ptr, ptr %X.addr, align 8
  %6 = load i32, ptr %j, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds float, ptr %5, i64 %idxprom
  %7 = load float, ptr %arrayidx, align 4
  %cmp = fcmp olt float %7, 0.000000e+00
  %conv3 = zext i1 %cmp to i32
  %8 = load ptr, ptr %signx, align 8
  %9 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %8, i64 %idxprom4
  store i32 %conv3, ptr %arrayidx5, align 4
  %10 = load ptr, ptr %X.addr, align 8
  %11 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds float, ptr %10, i64 %idxprom6
  %12 = load float, ptr %arrayidx7, align 4
  %conv8 = fpext float %12 to double
  %13 = call double @llvm.fabs.f64(double %conv8)
  %conv9 = fptrunc double %13 to float
  %14 = load ptr, ptr %X.addr, align 8
  %15 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds float, ptr %14, i64 %idxprom10
  store float %conv9, ptr %arrayidx11, align 4
  %16 = load ptr, ptr %iy.addr, align 8
  %17 = load i32, ptr %j, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %16, i64 %idxprom12
  store i32 0, ptr %arrayidx13, align 4
  %18 = load ptr, ptr %y, align 8
  %19 = load i32, ptr %j, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds float, ptr %18, i64 %idxprom14
  store float 0.000000e+00, ptr %arrayidx15, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %20 = load i32, ptr %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %j, align 4
  %21 = load i32, ptr %N.addr, align 4
  %cmp16 = icmp slt i32 %inc, %21
  br i1 %cmp16, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.cond
  store float 0.000000e+00, ptr %yy, align 4
  store float 0.000000e+00, ptr %xy, align 4
  %22 = load i32, ptr %K.addr, align 4
  store i32 %22, ptr %pulsesLeft, align 4
  %23 = load i32, ptr %K.addr, align 4
  %24 = load i32, ptr %N.addr, align 4
  %shr = ashr i32 %24, 1
  %cmp18 = icmp sgt i32 %23, %shr
  br i1 %cmp18, label %if.then, label %if.end80

if.then:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %rcp) #9
  store float 0xFFFFFFFFE0000000, ptr %rcp, align 4, !annotation !3
  store i32 0, ptr %j, align 4
  br label %do.body20

do.body20:                                        ; preds = %do.cond23, %if.then
  %25 = load ptr, ptr %X.addr, align 8
  %26 = load i32, ptr %j, align 4
  %idxprom21 = sext i32 %26 to i64
  %arrayidx22 = getelementptr inbounds float, ptr %25, i64 %idxprom21
  %27 = load float, ptr %arrayidx22, align 4
  %28 = load float, ptr %sum, align 4
  %add = fadd float %28, %27
  store float %add, ptr %sum, align 4
  br label %do.cond23

do.cond23:                                        ; preds = %do.body20
  %29 = load i32, ptr %j, align 4
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, ptr %j, align 4
  %30 = load i32, ptr %N.addr, align 4
  %cmp25 = icmp slt i32 %inc24, %30
  br i1 %cmp25, label %do.body20, label %do.end27, !llvm.loop !10

do.end27:                                         ; preds = %do.cond23
  %31 = load float, ptr %sum, align 4
  %cmp28 = fcmp ogt float %31, 0x3CD203AFA0000000
  br i1 %cmp28, label %land.lhs.true, label %if.then32

land.lhs.true:                                    ; preds = %do.end27
  %32 = load float, ptr %sum, align 4
  %cmp30 = fcmp olt float %32, 6.400000e+01
  br i1 %cmp30, label %if.end, label %if.then32

if.then32:                                        ; preds = %land.lhs.true, %do.end27
  %33 = load ptr, ptr %X.addr, align 8
  %arrayidx33 = getelementptr inbounds float, ptr %33, i64 0
  store float 1.000000e+00, ptr %arrayidx33, align 4
  store i32 1, ptr %j, align 4
  br label %do.body34

do.body34:                                        ; preds = %do.cond37, %if.then32
  %34 = load ptr, ptr %X.addr, align 8
  %35 = load i32, ptr %j, align 4
  %idxprom35 = sext i32 %35 to i64
  %arrayidx36 = getelementptr inbounds float, ptr %34, i64 %idxprom35
  store float 0.000000e+00, ptr %arrayidx36, align 4
  br label %do.cond37

do.cond37:                                        ; preds = %do.body34
  %36 = load i32, ptr %j, align 4
  %inc38 = add nsw i32 %36, 1
  store i32 %inc38, ptr %j, align 4
  %37 = load i32, ptr %N.addr, align 4
  %cmp39 = icmp slt i32 %inc38, %37
  br i1 %cmp39, label %do.body34, label %do.end41, !llvm.loop !11

do.end41:                                         ; preds = %do.cond37
  store float 1.000000e+00, ptr %sum, align 4
  br label %if.end

if.end:                                           ; preds = %do.end41, %land.lhs.true
  %38 = load i32, ptr %K.addr, align 4
  %conv42 = sitofp i32 %38 to float
  %add43 = fadd float %conv42, 0x3FE99999A0000000
  %39 = load float, ptr %sum, align 4
  %div = fdiv float 1.000000e+00, %39
  %mul44 = fmul float %add43, %div
  store float %mul44, ptr %rcp, align 4
  store i32 0, ptr %j, align 4
  br label %do.body45

do.body45:                                        ; preds = %do.cond75, %if.end
  %40 = load float, ptr %rcp, align 4
  %41 = load ptr, ptr %X.addr, align 8
  %42 = load i32, ptr %j, align 4
  %idxprom46 = sext i32 %42 to i64
  %arrayidx47 = getelementptr inbounds float, ptr %41, i64 %idxprom46
  %43 = load float, ptr %arrayidx47, align 4
  %mul48 = fmul float %40, %43
  %conv49 = fpext float %mul48 to double
  %44 = call double @llvm.floor.f64(double %conv49)
  %conv50 = fptosi double %44 to i32
  %45 = load ptr, ptr %iy.addr, align 8
  %46 = load i32, ptr %j, align 4
  %idxprom51 = sext i32 %46 to i64
  %arrayidx52 = getelementptr inbounds i32, ptr %45, i64 %idxprom51
  store i32 %conv50, ptr %arrayidx52, align 4
  %47 = load ptr, ptr %iy.addr, align 8
  %48 = load i32, ptr %j, align 4
  %idxprom53 = sext i32 %48 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %47, i64 %idxprom53
  %49 = load i32, ptr %arrayidx54, align 4
  %conv55 = sitofp i32 %49 to float
  %50 = load ptr, ptr %y, align 8
  %51 = load i32, ptr %j, align 4
  %idxprom56 = sext i32 %51 to i64
  %arrayidx57 = getelementptr inbounds float, ptr %50, i64 %idxprom56
  store float %conv55, ptr %arrayidx57, align 4
  %52 = load float, ptr %yy, align 4
  %53 = load ptr, ptr %y, align 8
  %54 = load i32, ptr %j, align 4
  %idxprom58 = sext i32 %54 to i64
  %arrayidx59 = getelementptr inbounds float, ptr %53, i64 %idxprom58
  %55 = load float, ptr %arrayidx59, align 4
  %56 = load ptr, ptr %y, align 8
  %57 = load i32, ptr %j, align 4
  %idxprom60 = sext i32 %57 to i64
  %arrayidx61 = getelementptr inbounds float, ptr %56, i64 %idxprom60
  %58 = load float, ptr %arrayidx61, align 4
  %mul62 = fmul float %55, %58
  %add63 = fadd float %52, %mul62
  store float %add63, ptr %yy, align 4
  %59 = load float, ptr %xy, align 4
  %60 = load ptr, ptr %X.addr, align 8
  %61 = load i32, ptr %j, align 4
  %idxprom64 = sext i32 %61 to i64
  %arrayidx65 = getelementptr inbounds float, ptr %60, i64 %idxprom64
  %62 = load float, ptr %arrayidx65, align 4
  %63 = load ptr, ptr %y, align 8
  %64 = load i32, ptr %j, align 4
  %idxprom66 = sext i32 %64 to i64
  %arrayidx67 = getelementptr inbounds float, ptr %63, i64 %idxprom66
  %65 = load float, ptr %arrayidx67, align 4
  %mul68 = fmul float %62, %65
  %add69 = fadd float %59, %mul68
  store float %add69, ptr %xy, align 4
  %66 = load ptr, ptr %y, align 8
  %67 = load i32, ptr %j, align 4
  %idxprom70 = sext i32 %67 to i64
  %arrayidx71 = getelementptr inbounds float, ptr %66, i64 %idxprom70
  %68 = load float, ptr %arrayidx71, align 4
  %mul72 = fmul float %68, 2.000000e+00
  store float %mul72, ptr %arrayidx71, align 4
  %69 = load ptr, ptr %iy.addr, align 8
  %70 = load i32, ptr %j, align 4
  %idxprom73 = sext i32 %70 to i64
  %arrayidx74 = getelementptr inbounds i32, ptr %69, i64 %idxprom73
  %71 = load i32, ptr %arrayidx74, align 4
  %72 = load i32, ptr %pulsesLeft, align 4
  %sub = sub nsw i32 %72, %71
  store i32 %sub, ptr %pulsesLeft, align 4
  br label %do.cond75

do.cond75:                                        ; preds = %do.body45
  %73 = load i32, ptr %j, align 4
  %inc76 = add nsw i32 %73, 1
  store i32 %inc76, ptr %j, align 4
  %74 = load i32, ptr %N.addr, align 4
  %cmp77 = icmp slt i32 %inc76, %74
  br i1 %cmp77, label %do.body45, label %do.end79, !llvm.loop !12

do.end79:                                         ; preds = %do.cond75
  call void @llvm.lifetime.end.p0(i64 4, ptr %rcp) #9
  br label %if.end80

if.end80:                                         ; preds = %do.end79, %do.end
  %75 = load i32, ptr %pulsesLeft, align 4
  %76 = load i32, ptr %N.addr, align 4
  %add81 = add nsw i32 %76, 3
  %cmp82 = icmp sgt i32 %75, %add81
  br i1 %cmp82, label %if.then84, label %if.end93

if.then84:                                        ; preds = %if.end80
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #9
  store float 0xFFFFFFFFE0000000, ptr %tmp, align 4, !annotation !3
  %77 = load i32, ptr %pulsesLeft, align 4
  %conv85 = sitofp i32 %77 to float
  store float %conv85, ptr %tmp, align 4
  %78 = load float, ptr %yy, align 4
  %79 = load float, ptr %tmp, align 4
  %80 = load float, ptr %tmp, align 4
  %mul86 = fmul float %79, %80
  %add87 = fadd float %78, %mul86
  store float %add87, ptr %yy, align 4
  %81 = load float, ptr %yy, align 4
  %82 = load float, ptr %tmp, align 4
  %83 = load ptr, ptr %y, align 8
  %arrayidx88 = getelementptr inbounds float, ptr %83, i64 0
  %84 = load float, ptr %arrayidx88, align 4
  %mul89 = fmul float %82, %84
  %add90 = fadd float %81, %mul89
  store float %add90, ptr %yy, align 4
  %85 = load i32, ptr %pulsesLeft, align 4
  %86 = load ptr, ptr %iy.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, ptr %86, i64 0
  %87 = load i32, ptr %arrayidx91, align 4
  %add92 = add nsw i32 %87, %85
  store i32 %add92, ptr %arrayidx91, align 4
  store i32 0, ptr %pulsesLeft, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #9
  br label %if.end93

if.end93:                                         ; preds = %if.then84, %if.end80
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end93
  %88 = load i32, ptr %i, align 4
  %89 = load i32, ptr %pulsesLeft, align 4
  %cmp94 = icmp slt i32 %88, %89
  br i1 %cmp94, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %Rxy) #9
  store float 0xFFFFFFFFE0000000, ptr %Rxy, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %Ryy) #9
  store float 0xFFFFFFFFE0000000, ptr %Ryy, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %best_id) #9
  store i32 -1431655766, ptr %best_id, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %best_num) #9
  store float 0xFFFFFFFFE0000000, ptr %best_num, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %best_den) #9
  store float 0xFFFFFFFFE0000000, ptr %best_den, align 4, !annotation !3
  store i32 0, ptr %best_id, align 4
  %90 = load float, ptr %yy, align 4
  %add96 = fadd float %90, 1.000000e+00
  store float %add96, ptr %yy, align 4
  %91 = load float, ptr %xy, align 4
  %92 = load ptr, ptr %X.addr, align 8
  %arrayidx97 = getelementptr inbounds float, ptr %92, i64 0
  %93 = load float, ptr %arrayidx97, align 4
  %add98 = fadd float %91, %93
  store float %add98, ptr %Rxy, align 4
  %94 = load float, ptr %yy, align 4
  %95 = load ptr, ptr %y, align 8
  %arrayidx99 = getelementptr inbounds float, ptr %95, i64 0
  %96 = load float, ptr %arrayidx99, align 4
  %add100 = fadd float %94, %96
  store float %add100, ptr %Ryy, align 4
  %97 = load float, ptr %Rxy, align 4
  %98 = load float, ptr %Rxy, align 4
  %mul101 = fmul float %97, %98
  store float %mul101, ptr %Rxy, align 4
  %99 = load float, ptr %Ryy, align 4
  store float %99, ptr %best_den, align 4
  %100 = load float, ptr %Rxy, align 4
  store float %100, ptr %best_num, align 4
  store i32 1, ptr %j, align 4
  br label %do.body102

do.body102:                                       ; preds = %do.cond118, %for.body
  %101 = load float, ptr %xy, align 4
  %102 = load ptr, ptr %X.addr, align 8
  %103 = load i32, ptr %j, align 4
  %idxprom103 = sext i32 %103 to i64
  %arrayidx104 = getelementptr inbounds float, ptr %102, i64 %idxprom103
  %104 = load float, ptr %arrayidx104, align 4
  %add105 = fadd float %101, %104
  store float %add105, ptr %Rxy, align 4
  %105 = load float, ptr %yy, align 4
  %106 = load ptr, ptr %y, align 8
  %107 = load i32, ptr %j, align 4
  %idxprom106 = sext i32 %107 to i64
  %arrayidx107 = getelementptr inbounds float, ptr %106, i64 %idxprom106
  %108 = load float, ptr %arrayidx107, align 4
  %add108 = fadd float %105, %108
  store float %add108, ptr %Ryy, align 4
  %109 = load float, ptr %Rxy, align 4
  %110 = load float, ptr %Rxy, align 4
  %mul109 = fmul float %109, %110
  store float %mul109, ptr %Rxy, align 4
  %111 = load float, ptr %best_den, align 4
  %112 = load float, ptr %Rxy, align 4
  %mul110 = fmul float %111, %112
  %113 = load float, ptr %Ryy, align 4
  %114 = load float, ptr %best_num, align 4
  %mul111 = fmul float %113, %114
  %cmp112 = fcmp ogt float %mul110, %mul111
  %lnot = xor i1 %cmp112, true
  %lnot114 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot114 to i32
  %conv115 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv115, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then116, label %if.end117

if.then116:                                       ; preds = %do.body102
  %115 = load float, ptr %Ryy, align 4
  store float %115, ptr %best_den, align 4
  %116 = load float, ptr %Rxy, align 4
  store float %116, ptr %best_num, align 4
  %117 = load i32, ptr %j, align 4
  store i32 %117, ptr %best_id, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %do.body102
  br label %do.cond118

do.cond118:                                       ; preds = %if.end117
  %118 = load i32, ptr %j, align 4
  %inc119 = add nsw i32 %118, 1
  store i32 %inc119, ptr %j, align 4
  %119 = load i32, ptr %N.addr, align 4
  %cmp120 = icmp slt i32 %inc119, %119
  br i1 %cmp120, label %do.body102, label %do.end122, !llvm.loop !13

do.end122:                                        ; preds = %do.cond118
  %120 = load float, ptr %xy, align 4
  %121 = load ptr, ptr %X.addr, align 8
  %122 = load i32, ptr %best_id, align 4
  %idxprom123 = sext i32 %122 to i64
  %arrayidx124 = getelementptr inbounds float, ptr %121, i64 %idxprom123
  %123 = load float, ptr %arrayidx124, align 4
  %add125 = fadd float %120, %123
  store float %add125, ptr %xy, align 4
  %124 = load float, ptr %yy, align 4
  %125 = load ptr, ptr %y, align 8
  %126 = load i32, ptr %best_id, align 4
  %idxprom126 = sext i32 %126 to i64
  %arrayidx127 = getelementptr inbounds float, ptr %125, i64 %idxprom126
  %127 = load float, ptr %arrayidx127, align 4
  %add128 = fadd float %124, %127
  store float %add128, ptr %yy, align 4
  %128 = load ptr, ptr %y, align 8
  %129 = load i32, ptr %best_id, align 4
  %idxprom129 = sext i32 %129 to i64
  %arrayidx130 = getelementptr inbounds float, ptr %128, i64 %idxprom129
  %130 = load float, ptr %arrayidx130, align 4
  %add131 = fadd float %130, 2.000000e+00
  store float %add131, ptr %arrayidx130, align 4
  %131 = load ptr, ptr %iy.addr, align 8
  %132 = load i32, ptr %best_id, align 4
  %idxprom132 = sext i32 %132 to i64
  %arrayidx133 = getelementptr inbounds i32, ptr %131, i64 %idxprom132
  %133 = load i32, ptr %arrayidx133, align 4
  %inc134 = add nsw i32 %133, 1
  store i32 %inc134, ptr %arrayidx133, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %best_den) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %best_num) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %best_id) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %Ryy) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %Rxy) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end122
  %134 = load i32, ptr %i, align 4
  %inc135 = add nsw i32 %134, 1
  store i32 %inc135, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %do.body136

do.body136:                                       ; preds = %do.cond147, %for.end
  %135 = load ptr, ptr %iy.addr, align 8
  %136 = load i32, ptr %j, align 4
  %idxprom137 = sext i32 %136 to i64
  %arrayidx138 = getelementptr inbounds i32, ptr %135, i64 %idxprom137
  %137 = load i32, ptr %arrayidx138, align 4
  %138 = load ptr, ptr %signx, align 8
  %139 = load i32, ptr %j, align 4
  %idxprom139 = sext i32 %139 to i64
  %arrayidx140 = getelementptr inbounds i32, ptr %138, i64 %idxprom139
  %140 = load i32, ptr %arrayidx140, align 4
  %sub141 = sub nsw i32 0, %140
  %xor = xor i32 %137, %sub141
  %141 = load ptr, ptr %signx, align 8
  %142 = load i32, ptr %j, align 4
  %idxprom142 = sext i32 %142 to i64
  %arrayidx143 = getelementptr inbounds i32, ptr %141, i64 %idxprom142
  %143 = load i32, ptr %arrayidx143, align 4
  %add144 = add nsw i32 %xor, %143
  %144 = load ptr, ptr %iy.addr, align 8
  %145 = load i32, ptr %j, align 4
  %idxprom145 = sext i32 %145 to i64
  %arrayidx146 = getelementptr inbounds i32, ptr %144, i64 %idxprom145
  store i32 %add144, ptr %arrayidx146, align 4
  br label %do.cond147

do.cond147:                                       ; preds = %do.body136
  %146 = load i32, ptr %j, align 4
  %inc148 = add nsw i32 %146, 1
  store i32 %inc148, ptr %j, align 4
  %147 = load i32, ptr %N.addr, align 4
  %cmp149 = icmp slt i32 %inc148, %147
  br i1 %cmp149, label %do.body136, label %do.end151, !llvm.loop !15

do.end151:                                        ; preds = %do.cond147
  %148 = load float, ptr %yy, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %yy) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %xy) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %pulsesLeft) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %signx) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #9
  ret float %148
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @alg_quant(ptr noundef %X, i32 noundef %N, i32 noundef %K, i32 noundef %spread, i32 noundef %B, ptr noundef %enc, float noundef %gain, i32 noundef %resynth, i32 noundef %arch) #0 {
entry:
  %X.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %K.addr = alloca i32, align 4
  %spread.addr = alloca i32, align 4
  %B.addr = alloca i32, align 4
  %enc.addr = alloca ptr, align 8
  %gain.addr = alloca float, align 4
  %resynth.addr = alloca i32, align 4
  %arch.addr = alloca i32, align 4
  %iy = alloca ptr, align 8
  %yy = alloca float, align 4
  %collapse_mask = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  store i32 %K, ptr %K.addr, align 4
  store i32 %spread, ptr %spread.addr, align 4
  store i32 %B, ptr %B.addr, align 4
  store ptr %enc, ptr %enc.addr, align 8
  store float %gain, ptr %gain.addr, align 4
  store i32 %resynth, ptr %resynth.addr, align 4
  store i32 %arch, ptr %arch.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %iy) #9
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %iy, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %yy) #9
  store float 0xFFFFFFFFE0000000, ptr %yy, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %collapse_mask) #9
  store i32 -1431655766, ptr %collapse_mask, align 4, !annotation !3
  %0 = load i32, ptr %K.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @celt_fatal(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 338) #10
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %N.addr, align 4
  %cmp1 = icmp sgt i32 %1, 1
  br i1 %cmp1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @celt_fatal(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 339) #10
  unreachable

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr %N.addr, align 4
  %add = add nsw i32 %2, 3
  %conv = sext i32 %add to i64
  %mul = mul i64 4, %conv
  %3 = alloca i8, i64 %mul, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 -86, i64 %mul, i1 false), !annotation !3
  store ptr %3, ptr %iy, align 8
  %4 = load ptr, ptr %X.addr, align 8
  %5 = load i32, ptr %N.addr, align 4
  %6 = load i32, ptr %B.addr, align 4
  %7 = load i32, ptr %K.addr, align 4
  %8 = load i32, ptr %spread.addr, align 4
  call void @exp_rotation(ptr noundef %4, i32 noundef %5, i32 noundef 1, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  %9 = load ptr, ptr %X.addr, align 8
  %10 = load ptr, ptr %iy, align 8
  %11 = load i32, ptr %K.addr, align 4
  %12 = load i32, ptr %N.addr, align 4
  %13 = load i32, ptr %arch.addr, align 4
  %call = call float @op_pvq_search_sse2(ptr noundef %9, ptr noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13)
  store float %call, ptr %yy, align 4
  %14 = load ptr, ptr %iy, align 8
  %15 = load i32, ptr %N.addr, align 4
  %16 = load i32, ptr %K.addr, align 4
  %17 = load ptr, ptr %enc.addr, align 8
  call void @encode_pulses(ptr noundef %14, i32 noundef %15, i32 noundef %16, ptr noundef %17)
  %18 = load i32, ptr %resynth.addr, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end3
  %19 = load ptr, ptr %iy, align 8
  %20 = load ptr, ptr %X.addr, align 8
  %21 = load i32, ptr %N.addr, align 4
  %22 = load float, ptr %yy, align 4
  %23 = load float, ptr %gain.addr, align 4
  call void @normalise_residual(ptr noundef %19, ptr noundef %20, i32 noundef %21, float noundef %22, float noundef %23)
  %24 = load ptr, ptr %X.addr, align 8
  %25 = load i32, ptr %N.addr, align 4
  %26 = load i32, ptr %B.addr, align 4
  %27 = load i32, ptr %K.addr, align 4
  %28 = load i32, ptr %spread.addr, align 4
  call void @exp_rotation(ptr noundef %24, i32 noundef %25, i32 noundef -1, i32 noundef %26, i32 noundef %27, i32 noundef %28)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end3
  %29 = load ptr, ptr %iy, align 8
  %30 = load i32, ptr %N.addr, align 4
  %31 = load i32, ptr %B.addr, align 4
  %call6 = call i32 @extract_collapse_mask(ptr noundef %29, i32 noundef %30, i32 noundef %31)
  store i32 %call6, ptr %collapse_mask, align 4
  %32 = load i32, ptr %collapse_mask, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %collapse_mask) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %yy) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %iy) #9
  ret i32 %32
}

; Function Attrs: noreturn null_pointer_is_valid
declare void @celt_fatal(ptr noundef, ptr noundef, i32 noundef) #7

; Function Attrs: null_pointer_is_valid
declare float @op_pvq_search_sse2(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #8

; Function Attrs: null_pointer_is_valid
declare void @encode_pulses(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #8

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal void @normalise_residual(ptr noalias noundef %iy, ptr noalias noundef %X, i32 noundef %N, float noundef %Ryy, float noundef %gain) #0 {
entry:
  %iy.addr = alloca ptr, align 8
  %X.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %Ryy.addr = alloca float, align 4
  %gain.addr = alloca float, align 4
  %i = alloca i32, align 4
  %t = alloca float, align 4
  %g = alloca float, align 4
  store ptr %iy, ptr %iy.addr, align 8
  store ptr %X, ptr %X.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  store float %Ryy, ptr %Ryy.addr, align 4
  store float %gain, ptr %gain.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 -1431655766, ptr %i, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #9
  store float 0xFFFFFFFFE0000000, ptr %t, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %g) #9
  store float 0xFFFFFFFFE0000000, ptr %g, align 4, !annotation !3
  %0 = load float, ptr %Ryy.addr, align 4
  store float %0, ptr %t, align 4
  %1 = load float, ptr %t, align 4
  %conv = fpext float %1 to double
  %call = call double @sqrt(double noundef %conv) #9
  %conv1 = fptrunc double %call to float
  %div = fdiv float 1.000000e+00, %conv1
  %2 = load float, ptr %gain.addr, align 4
  %mul = fmul float %div, %2
  store float %mul, ptr %g, align 4
  store i32 0, ptr %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load float, ptr %g, align 4
  %4 = load ptr, ptr %iy.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4
  %conv2 = sitofp i32 %6 to float
  %mul3 = fmul float %3, %conv2
  %7 = load ptr, ptr %X.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds float, ptr %7, i64 %idxprom4
  store float %mul3, ptr %arrayidx5, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  %10 = load i32, ptr %N.addr, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !16

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %g) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @extract_collapse_mask(ptr noundef %iy, i32 noundef %N, i32 noundef %B) #0 {
entry:
  %retval = alloca i32, align 4
  %iy.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %B.addr = alloca i32, align 4
  %collapse_mask = alloca i32, align 4
  %N0 = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %iy, ptr %iy.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  store i32 %B, ptr %B.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %collapse_mask) #9
  store i32 -1431655766, ptr %collapse_mask, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %N0) #9
  store i32 -1431655766, ptr %N0, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 -1431655766, ptr %i, align 4, !annotation !3
  %0 = load i32, ptr %B.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %N.addr, align 4
  %2 = load i32, ptr %B.addr, align 4
  %call = call i32 @celt_udiv(i32 noundef %1, i32 noundef %2)
  store i32 %call, ptr %N0, align 4
  store i32 0, ptr %collapse_mask, align 4
  store i32 0, ptr %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond5, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9
  store i32 -1431655766, ptr %j, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #9
  store i32 -1431655766, ptr %tmp, align 4, !annotation !3
  store i32 0, ptr %tmp, align 4
  store i32 0, ptr %j, align 4
  br label %do.body1

do.body1:                                         ; preds = %do.cond, %do.body
  %3 = load ptr, ptr %iy.addr, align 8
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %N0, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul, %6
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  %8 = load i32, ptr %tmp, align 4
  %or = or i32 %8, %7
  store i32 %or, ptr %tmp, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body1
  %9 = load i32, ptr %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4
  %10 = load i32, ptr %N0, align 4
  %cmp2 = icmp slt i32 %inc, %10
  br i1 %cmp2, label %do.body1, label %do.end, !llvm.loop !17

do.end:                                           ; preds = %do.cond
  %11 = load i32, ptr %tmp, align 4
  %cmp3 = icmp ne i32 %11, 0
  %conv = zext i1 %cmp3 to i32
  %12 = load i32, ptr %i, align 4
  %shl = shl i32 %conv, %12
  %13 = load i32, ptr %collapse_mask, align 4
  %or4 = or i32 %13, %shl
  store i32 %or4, ptr %collapse_mask, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9
  br label %do.cond5

do.cond5:                                         ; preds = %do.end
  %14 = load i32, ptr %i, align 4
  %inc6 = add nsw i32 %14, 1
  store i32 %inc6, ptr %i, align 4
  %15 = load i32, ptr %B.addr, align 4
  %cmp7 = icmp slt i32 %inc6, %15
  br i1 %cmp7, label %do.body, label %do.end9, !llvm.loop !18

do.end9:                                          ; preds = %do.cond5
  %16 = load i32, ptr %collapse_mask, align 4
  store i32 %16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %N0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %collapse_mask) #9
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @alg_unquant(ptr noundef %X, i32 noundef %N, i32 noundef %K, i32 noundef %spread, i32 noundef %B, ptr noundef %dec, float noundef %gain) #0 {
entry:
  %X.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %K.addr = alloca i32, align 4
  %spread.addr = alloca i32, align 4
  %B.addr = alloca i32, align 4
  %dec.addr = alloca ptr, align 8
  %gain.addr = alloca float, align 4
  %Ryy = alloca float, align 4
  %collapse_mask = alloca i32, align 4
  %iy = alloca ptr, align 8
  store ptr %X, ptr %X.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  store i32 %K, ptr %K.addr, align 4
  store i32 %spread, ptr %spread.addr, align 4
  store i32 %B, ptr %B.addr, align 4
  store ptr %dec, ptr %dec.addr, align 8
  store float %gain, ptr %gain.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %Ryy) #9
  store float 0xFFFFFFFFE0000000, ptr %Ryy, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %collapse_mask) #9
  store i32 -1431655766, ptr %collapse_mask, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %iy) #9
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %iy, align 8, !annotation !3
  %0 = load i32, ptr %K.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @celt_fatal(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 371) #10
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %N.addr, align 4
  %cmp1 = icmp sgt i32 %1, 1
  br i1 %cmp1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @celt_fatal(ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 372) #10
  unreachable

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr %N.addr, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 4, %conv
  %3 = alloca i8, i64 %mul, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 -86, i64 %mul, i1 false), !annotation !3
  store ptr %3, ptr %iy, align 8
  %4 = load ptr, ptr %iy, align 8
  %5 = load i32, ptr %N.addr, align 4
  %6 = load i32, ptr %K.addr, align 4
  %7 = load ptr, ptr %dec.addr, align 8
  %call = call float @decode_pulses(ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7)
  store float %call, ptr %Ryy, align 4
  %8 = load ptr, ptr %iy, align 8
  %9 = load ptr, ptr %X.addr, align 8
  %10 = load i32, ptr %N.addr, align 4
  %11 = load float, ptr %Ryy, align 4
  %12 = load float, ptr %gain.addr, align 4
  call void @normalise_residual(ptr noundef %8, ptr noundef %9, i32 noundef %10, float noundef %11, float noundef %12)
  %13 = load ptr, ptr %X.addr, align 8
  %14 = load i32, ptr %N.addr, align 4
  %15 = load i32, ptr %B.addr, align 4
  %16 = load i32, ptr %K.addr, align 4
  %17 = load i32, ptr %spread.addr, align 4
  call void @exp_rotation(ptr noundef %13, i32 noundef %14, i32 noundef -1, i32 noundef %15, i32 noundef %16, i32 noundef %17)
  %18 = load ptr, ptr %iy, align 8
  %19 = load i32, ptr %N.addr, align 4
  %20 = load i32, ptr %B.addr, align 4
  %call4 = call i32 @extract_collapse_mask(ptr noundef %18, i32 noundef %19, i32 noundef %20)
  store i32 %call4, ptr %collapse_mask, align 4
  %21 = load i32, ptr %collapse_mask, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %iy) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %collapse_mask) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %Ryy) #9
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare float @decode_pulses(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #8

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @renormalise_vector(ptr noundef %X, i32 noundef %N, float noundef %gain, i32 noundef %arch) #0 {
entry:
  %X.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %gain.addr = alloca float, align 4
  %arch.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %E = alloca float, align 4
  %g = alloca float, align 4
  %t = alloca float, align 4
  %xptr = alloca ptr, align 8
  store ptr %X, ptr %X.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  store float %gain, ptr %gain.addr, align 4
  store i32 %arch, ptr %arch.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 -1431655766, ptr %i, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %E) #9
  store float 0xFFFFFFFFE0000000, ptr %E, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %g) #9
  store float 0xFFFFFFFFE0000000, ptr %g, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #9
  store float 0xFFFFFFFFE0000000, ptr %t, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %xptr) #9
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %xptr, align 8, !annotation !3
  %0 = load i32, ptr %arch.addr, align 4
  %1 = load ptr, ptr %X.addr, align 8
  %2 = load ptr, ptr %X.addr, align 8
  %3 = load i32, ptr %N.addr, align 4
  %call = call float @celt_inner_prod_sse(ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %add = fadd float 0x3CD203AFA0000000, %call
  store float %add, ptr %E, align 4
  %4 = load float, ptr %E, align 4
  store float %4, ptr %t, align 4
  %5 = load float, ptr %t, align 4
  %conv = fpext float %5 to double
  %call1 = call double @sqrt(double noundef %conv) #9
  %conv2 = fptrunc double %call1 to float
  %div = fdiv float 1.000000e+00, %conv2
  %6 = load float, ptr %gain.addr, align 4
  %mul = fmul float %div, %6
  store float %mul, ptr %g, align 4
  %7 = load ptr, ptr %X.addr, align 8
  store ptr %7, ptr %xptr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %N.addr, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load float, ptr %g, align 4
  %11 = load ptr, ptr %xptr, align 8
  %12 = load float, ptr %11, align 4
  %mul4 = fmul float %10, %12
  %13 = load ptr, ptr %xptr, align 8
  store float %mul4, ptr %13, align 4
  %14 = load ptr, ptr %xptr, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %xptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %xptr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %g) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %E) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare float @celt_inner_prod_sse(ptr noundef, ptr noundef, i32 noundef) #8

; Function Attrs: nounwind null_pointer_is_valid
declare double @sqrt(double noundef) #2

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @stereo_itheta(ptr noundef %X, ptr noundef %Y, i32 noundef %stereo, i32 noundef %N, i32 noundef %arch) #0 {
entry:
  %X.addr = alloca ptr, align 8
  %Y.addr = alloca ptr, align 8
  %stereo.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %arch.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %itheta = alloca i32, align 4
  %mid = alloca float, align 4
  %side = alloca float, align 4
  %Emid = alloca float, align 4
  %Eside = alloca float, align 4
  %m = alloca float, align 4
  %s = alloca float, align 4
  store ptr %X, ptr %X.addr, align 8
  store ptr %Y, ptr %Y.addr, align 8
  store i32 %stereo, ptr %stereo.addr, align 4
  store i32 %N, ptr %N.addr, align 4
  store i32 %arch, ptr %arch.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 -1431655766, ptr %i, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %itheta) #9
  store i32 -1431655766, ptr %itheta, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %mid) #9
  store float 0xFFFFFFFFE0000000, ptr %mid, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %side) #9
  store float 0xFFFFFFFFE0000000, ptr %side, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %Emid) #9
  store float 0xFFFFFFFFE0000000, ptr %Emid, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %Eside) #9
  store float 0xFFFFFFFFE0000000, ptr %Eside, align 4, !annotation !3
  store float 0x3CD203AFA0000000, ptr %Eside, align 4
  store float 0x3CD203AFA0000000, ptr %Emid, align 4
  %0 = load i32, ptr %stereo.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %N.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #9
  store float 0xFFFFFFFFE0000000, ptr %m, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #9
  store float 0xFFFFFFFFE0000000, ptr %s, align 4, !annotation !3
  %3 = load ptr, ptr %X.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds float, ptr %3, i64 %idxprom
  %5 = load float, ptr %arrayidx, align 4
  %6 = load ptr, ptr %Y.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds float, ptr %6, i64 %idxprom1
  %8 = load float, ptr %arrayidx2, align 4
  %add = fadd float %5, %8
  store float %add, ptr %m, align 4
  %9 = load ptr, ptr %X.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds float, ptr %9, i64 %idxprom3
  %11 = load float, ptr %arrayidx4, align 4
  %12 = load ptr, ptr %Y.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds float, ptr %12, i64 %idxprom5
  %14 = load float, ptr %arrayidx6, align 4
  %sub = fsub float %11, %14
  store float %sub, ptr %s, align 4
  %15 = load float, ptr %Emid, align 4
  %16 = load float, ptr %m, align 4
  %17 = load float, ptr %m, align 4
  %mul = fmul float %16, %17
  %add7 = fadd float %15, %mul
  store float %add7, ptr %Emid, align 4
  %18 = load float, ptr %Eside, align 4
  %19 = load float, ptr %s, align 4
  %20 = load float, ptr %s, align 4
  %mul8 = fmul float %19, %20
  %add9 = fadd float %18, %mul8
  store float %add9, ptr %Eside, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load i32, ptr %arch.addr, align 4
  %23 = load ptr, ptr %X.addr, align 8
  %24 = load ptr, ptr %X.addr, align 8
  %25 = load i32, ptr %N.addr, align 4
  %call = call float @celt_inner_prod_sse(ptr noundef %23, ptr noundef %24, i32 noundef %25)
  %26 = load float, ptr %Emid, align 4
  %add10 = fadd float %26, %call
  store float %add10, ptr %Emid, align 4
  %27 = load i32, ptr %arch.addr, align 4
  %28 = load ptr, ptr %Y.addr, align 8
  %29 = load ptr, ptr %Y.addr, align 8
  %30 = load i32, ptr %N.addr, align 4
  %call11 = call float @celt_inner_prod_sse(ptr noundef %28, ptr noundef %29, i32 noundef %30)
  %31 = load float, ptr %Eside, align 4
  %add12 = fadd float %31, %call11
  store float %add12, ptr %Eside, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %32 = load float, ptr %Emid, align 4
  %conv = fpext float %32 to double
  %call13 = call double @sqrt(double noundef %conv) #9
  %conv14 = fptrunc double %call13 to float
  store float %conv14, ptr %mid, align 4
  %33 = load float, ptr %Eside, align 4
  %conv15 = fpext float %33 to double
  %call16 = call double @sqrt(double noundef %conv15) #9
  %conv17 = fptrunc double %call16 to float
  store float %conv17, ptr %side, align 4
  %34 = load float, ptr %side, align 4
  %35 = load float, ptr %mid, align 4
  %call18 = call float @fast_atan2f(float noundef %34, float noundef %35)
  %mul19 = fmul float 0x40C45F30E0000000, %call18
  %add20 = fadd float 5.000000e-01, %mul19
  %conv21 = fpext float %add20 to double
  %36 = call double @llvm.floor.f64(double %conv21)
  %conv22 = fptosi double %36 to i32
  store i32 %conv22, ptr %itheta, align 4
  %37 = load i32, ptr %itheta, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %Eside) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %Emid) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %side) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %mid) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %itheta) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  ret i32 %37
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid ssp
define internal float @fast_atan2f(float noundef %y, float noundef %x) #3 {
entry:
  %retval = alloca float, align 4
  %y.addr = alloca float, align 4
  %x.addr = alloca float, align 4
  %x2 = alloca float, align 4
  %y2 = alloca float, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %den = alloca float, align 4
  %den15 = alloca float, align 4
  store float %y, ptr %y.addr, align 4
  store float %x, ptr %x.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x2) #9
  store float 0xFFFFFFFFE0000000, ptr %x2, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %y2) #9
  store float 0xFFFFFFFFE0000000, ptr %y2, align 4, !annotation !3
  %0 = load float, ptr %x.addr, align 4
  %1 = load float, ptr %x.addr, align 4
  %mul = fmul float %0, %1
  store float %mul, ptr %x2, align 4
  %2 = load float, ptr %y.addr, align 4
  %3 = load float, ptr %y.addr, align 4
  %mul1 = fmul float %2, %3
  store float %mul1, ptr %y2, align 4
  %4 = load float, ptr %x2, align 4
  %5 = load float, ptr %y2, align 4
  %add = fadd float %4, %5
  %cmp = fcmp olt float %add, 0x3C32725DE0000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0.000000e+00, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load float, ptr %x2, align 4
  %7 = load float, ptr %y2, align 4
  %cmp2 = fcmp olt float %6, %7
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %den) #9
  store float 0xFFFFFFFFE0000000, ptr %den, align 4, !annotation !3
  %8 = load float, ptr %y2, align 4
  %9 = load float, ptr %x2, align 4
  %mul4 = fmul float 0x3FE5B62420000000, %9
  %add5 = fadd float %8, %mul4
  %10 = load float, ptr %y2, align 4
  %11 = load float, ptr %x2, align 4
  %mul6 = fmul float 0x3FB6012CA0000000, %11
  %add7 = fadd float %10, %mul6
  %mul8 = fmul float %add5, %add7
  store float %mul8, ptr %den, align 4
  %12 = load float, ptr %x.addr, align 4
  %fneg = fneg float %12
  %13 = load float, ptr %y.addr, align 4
  %mul9 = fmul float %fneg, %13
  %14 = load float, ptr %y2, align 4
  %15 = load float, ptr %x2, align 4
  %mul10 = fmul float 0x3FDB9F00A0000000, %15
  %add11 = fadd float %14, %mul10
  %mul12 = fmul float %mul9, %add11
  %16 = load float, ptr %den, align 4
  %div = fdiv float %mul12, %16
  %17 = load float, ptr %y.addr, align 4
  %cmp13 = fcmp olt float %17, 0.000000e+00
  %18 = zext i1 %cmp13 to i64
  %cond = select i1 %cmp13, float 0xBFF921FB60000000, float 0x3FF921FB60000000
  %add14 = fadd float %div, %cond
  store float %add14, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %den) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %den15) #9
  store float 0xFFFFFFFFE0000000, ptr %den15, align 4, !annotation !3
  %19 = load float, ptr %x2, align 4
  %20 = load float, ptr %y2, align 4
  %mul16 = fmul float 0x3FE5B62420000000, %20
  %add17 = fadd float %19, %mul16
  %21 = load float, ptr %x2, align 4
  %22 = load float, ptr %y2, align 4
  %mul18 = fmul float 0x3FB6012CA0000000, %22
  %add19 = fadd float %21, %mul18
  %mul20 = fmul float %add17, %add19
  store float %mul20, ptr %den15, align 4
  %23 = load float, ptr %x.addr, align 4
  %24 = load float, ptr %y.addr, align 4
  %mul21 = fmul float %23, %24
  %25 = load float, ptr %x2, align 4
  %26 = load float, ptr %y2, align 4
  %mul22 = fmul float 0x3FDB9F00A0000000, %26
  %add23 = fadd float %25, %mul22
  %mul24 = fmul float %mul21, %add23
  %27 = load float, ptr %den15, align 4
  %div25 = fdiv float %mul24, %27
  %28 = load float, ptr %y.addr, align 4
  %cmp26 = fcmp olt float %28, 0.000000e+00
  %29 = zext i1 %cmp26 to i64
  %cond27 = select i1 %cmp26, float 0xBFF921FB60000000, float 0x3FF921FB60000000
  %add28 = fadd float %div25, %cond27
  %30 = load float, ptr %x.addr, align 4
  %31 = load float, ptr %y.addr, align 4
  %mul29 = fmul float %30, %31
  %cmp30 = fcmp olt float %mul29, 0.000000e+00
  %32 = zext i1 %cmp30 to i64
  %cond31 = select i1 %cmp30, float 0xBFF921FB60000000, float 0x3FF921FB60000000
  %sub = fsub float %add28, %cond31
  store float %sub, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %den15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %y2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %x2) #9
  %33 = load float, ptr %retval, align 4
  ret float %33
}

attributes #0 = { nounwind null_pointer_is_valid ssp "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid ssp "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"auto-init"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
