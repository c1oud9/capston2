; ModuleID = '<stdin>'
source_filename = "../../third_party/libvpx/source/libvpx/vpx_util/vpx_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VPxWorkerInterface = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VPxWorker = type { ptr, i32, ptr, ptr, ptr, i32 }
%struct.VPxWorkerImpl = type { %union.pthread_mutex_t, %union.pthread_cond_t, i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }

@g_worker_interface = internal global %struct.VPxWorkerInterface { ptr @init, ptr @reset, ptr @sync, ptr @launch, ptr @execute, ptr @end }, align 8

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @vpx_set_worker_interface(ptr noundef %winterface) #0 {
entry:
  %retval = alloca i32, align 4
  %winterface.addr = alloca ptr, align 8
  store ptr %winterface, ptr %winterface.addr, align 8
  %0 = load ptr, ptr %winterface.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %winterface.addr, align 8
  %init = getelementptr inbounds %struct.VPxWorkerInterface, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %init, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %winterface.addr, align 8
  %reset = getelementptr inbounds %struct.VPxWorkerInterface, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %reset, align 8
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %winterface.addr, align 8
  %sync = getelementptr inbounds %struct.VPxWorkerInterface, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %sync, align 8
  %cmp5 = icmp eq ptr %6, null
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %7 = load ptr, ptr %winterface.addr, align 8
  %launch = getelementptr inbounds %struct.VPxWorkerInterface, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %launch, align 8
  %cmp7 = icmp eq ptr %8, null
  br i1 %cmp7, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %9 = load ptr, ptr %winterface.addr, align 8
  %execute = getelementptr inbounds %struct.VPxWorkerInterface, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %execute, align 8
  %cmp9 = icmp eq ptr %10, null
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %11 = load ptr, ptr %winterface.addr, align 8
  %end = getelementptr inbounds %struct.VPxWorkerInterface, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %end, align 8
  %cmp11 = icmp eq ptr %12, null
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false10
  %13 = load ptr, ptr %winterface.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 @g_worker_interface, ptr align 8 %13, i64 48, i1 false)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden ptr @vpx_get_worker_interface() #0 {
entry:
  ret ptr @g_worker_interface
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal void @init(ptr noundef %worker) #0 {
entry:
  %worker.addr = alloca ptr, align 8
  store ptr %worker, ptr %worker.addr, align 8
  %0 = load ptr, ptr %worker.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 48, i1 false)
  %1 = load ptr, ptr %worker.addr, align 8
  %status_ = getelementptr inbounds %struct.VPxWorker, ptr %1, i32 0, i32 1
  store i32 0, ptr %status_, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @reset(ptr noundef %worker) #0 {
entry:
  %retval = alloca i32, align 4
  %worker.addr = alloca ptr, align 8
  %ok = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %worker, ptr %worker.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #6
  store i32 -1431655766, ptr %ok, align 4, !annotation !3
  store i32 1, ptr %ok, align 4
  %0 = load ptr, ptr %worker.addr, align 8
  %had_error = getelementptr inbounds %struct.VPxWorker, ptr %0, i32 0, i32 5
  store i32 0, ptr %had_error, align 8
  %1 = load ptr, ptr %worker.addr, align 8
  %status_ = getelementptr inbounds %struct.VPxWorker, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %status_, align 8
  %cmp = icmp ult i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call ptr @vpx_calloc(i64 noundef 1, i64 noundef 96)
  %3 = load ptr, ptr %worker.addr, align 8
  %impl_ = getelementptr inbounds %struct.VPxWorker, ptr %3, i32 0, i32 0
  store ptr %call, ptr %impl_, align 8
  %4 = load ptr, ptr %worker.addr, align 8
  %impl_1 = getelementptr inbounds %struct.VPxWorker, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %impl_1, align 8
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %worker.addr, align 8
  %impl_4 = getelementptr inbounds %struct.VPxWorker, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %impl_4, align 8
  %mutex_ = getelementptr inbounds %struct.VPxWorkerImpl, ptr %7, i32 0, i32 0
  %call5 = call i32 @pthread_mutex_init(ptr noundef %mutex_, ptr noundef null) #6
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  br label %Error

if.end7:                                          ; preds = %if.end
  %8 = load ptr, ptr %worker.addr, align 8
  %impl_8 = getelementptr inbounds %struct.VPxWorker, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %impl_8, align 8
  %condition_ = getelementptr inbounds %struct.VPxWorkerImpl, ptr %9, i32 0, i32 1
  %call9 = call i32 @pthread_cond_init(ptr noundef %condition_, ptr noundef null) #6
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end7
  %10 = load ptr, ptr %worker.addr, align 8
  %impl_12 = getelementptr inbounds %struct.VPxWorker, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %impl_12, align 8
  %mutex_13 = getelementptr inbounds %struct.VPxWorkerImpl, ptr %11, i32 0, i32 0
  %call14 = call i32 @pthread_mutex_destroy(ptr noundef %mutex_13) #6
  br label %Error

if.end15:                                         ; preds = %if.end7
  %12 = load ptr, ptr %worker.addr, align 8
  %impl_16 = getelementptr inbounds %struct.VPxWorker, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %impl_16, align 8
  %mutex_17 = getelementptr inbounds %struct.VPxWorkerImpl, ptr %13, i32 0, i32 0
  %call18 = call i32 @pthread_mutex_lock(ptr noundef %mutex_17) #6
  %14 = load ptr, ptr %worker.addr, align 8
  %impl_19 = getelementptr inbounds %struct.VPxWorker, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %impl_19, align 8
  %thread_ = getelementptr inbounds %struct.VPxWorkerImpl, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %worker.addr, align 8
  %call20 = call i32 @pthread_create(ptr noundef %thread_, ptr noundef null, ptr noundef @thread_loop, ptr noundef %16) #6
  %tobool21 = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool21, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %ok, align 4
  %17 = load i32, ptr %ok, align 4
  %tobool22 = icmp ne i32 %17, 0
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end15
  %18 = load ptr, ptr %worker.addr, align 8
  %status_24 = getelementptr inbounds %struct.VPxWorker, ptr %18, i32 0, i32 1
  store i32 1, ptr %status_24, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end15
  %19 = load ptr, ptr %worker.addr, align 8
  %impl_26 = getelementptr inbounds %struct.VPxWorker, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %impl_26, align 8
  %mutex_27 = getelementptr inbounds %struct.VPxWorkerImpl, ptr %20, i32 0, i32 0
  %call28 = call i32 @pthread_mutex_unlock(ptr noundef %mutex_27) #6
  %21 = load i32, ptr %ok, align 4
  %tobool29 = icmp ne i32 %21, 0
  br i1 %tobool29, label %if.end39, label %if.then30

if.then30:                                        ; preds = %if.end25
  %22 = load ptr, ptr %worker.addr, align 8
  %impl_31 = getelementptr inbounds %struct.VPxWorker, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %impl_31, align 8
  %mutex_32 = getelementptr inbounds %struct.VPxWorkerImpl, ptr %23, i32 0, i32 0
  %call33 = call i32 @pthread_mutex_destroy(ptr noundef %mutex_32) #6
  %24 = load ptr, ptr %worker.addr, align 8
  %impl_34 = getelementptr inbounds %struct.VPxWorker, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %impl_34, align 8
  %condition_35 = getelementptr inbounds %struct.VPxWorkerImpl, ptr %25, i32 0, i32 1
  %call36 = call i32 @pthread_cond_destroy(ptr noundef %condition_35) #6
  br label %Error

Error:                                            ; preds = %if.then30, %if.then11, %if.then6
  %26 = load ptr, ptr %worker.addr, align 8
  %impl_37 = getelementptr inbounds %struct.VPxWorker, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %impl_37, align 8
  call void @vpx_free(ptr noundef %27)
  %28 = load ptr, ptr %worker.addr, align 8
  %impl_38 = getelementptr inbounds %struct.VPxWorker, ptr %28, i32 0, i32 0
  store ptr null, ptr %impl_38, align 8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end39:                                         ; preds = %if.end25
  br label %if.end45

if.else:                                          ; preds = %entry
  %29 = load ptr, ptr %worker.addr, align 8
  %status_40 = getelementptr inbounds %struct.VPxWorker, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %status_40, align 8
  %cmp41 = icmp ugt i32 %30, 1
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.else
  %31 = load ptr, ptr %worker.addr, align 8
  %call43 = call i32 @sync(ptr noundef %31)
  store i32 %call43, ptr %ok, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.else
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end39
  %32 = load i32, ptr %ok, align 4
  store i32 %32, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %Error, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #6
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @sync(ptr noundef %worker) #0 {
entry:
  %worker.addr = alloca ptr, align 8
  store ptr %worker, ptr %worker.addr, align 8
  %0 = load ptr, ptr %worker.addr, align 8
  call void @change_state(ptr noundef %0, i32 noundef 1)
  %1 = load ptr, ptr %worker.addr, align 8
  %had_error = getelementptr inbounds %struct.VPxWorker, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %had_error, align 8
  %tobool = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal void @launch(ptr noundef %worker) #0 {
entry:
  %worker.addr = alloca ptr, align 8
  store ptr %worker, ptr %worker.addr, align 8
  %0 = load ptr, ptr %worker.addr, align 8
  call void @change_state(ptr noundef %0, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal void @execute(ptr noundef %worker) #0 {
entry:
  %worker.addr = alloca ptr, align 8
  store ptr %worker, ptr %worker.addr, align 8
  %0 = load ptr, ptr %worker.addr, align 8
  %hook = getelementptr inbounds %struct.VPxWorker, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %hook, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %worker.addr, align 8
  %hook1 = getelementptr inbounds %struct.VPxWorker, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %hook1, align 8
  %4 = load ptr, ptr %worker.addr, align 8
  %data1 = getelementptr inbounds %struct.VPxWorker, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %data1, align 8
  %6 = load ptr, ptr %worker.addr, align 8
  %data2 = getelementptr inbounds %struct.VPxWorker, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %data2, align 8
  %call = call i32 %3(ptr noundef %5, ptr noundef %7)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %8 = load ptr, ptr %worker.addr, align 8
  %had_error = getelementptr inbounds %struct.VPxWorker, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %had_error, align 8
  %or = or i32 %9, %lnot.ext
  store i32 %or, ptr %had_error, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal void @end(ptr noundef %worker) #0 {
entry:
  %worker.addr = alloca ptr, align 8
  store ptr %worker, ptr %worker.addr, align 8
  %0 = load ptr, ptr %worker.addr, align 8
  %impl_ = getelementptr inbounds %struct.VPxWorker, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %impl_, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %worker.addr, align 8
  call void @change_state(ptr noundef %2, i32 noundef 0)
  %3 = load ptr, ptr %worker.addr, align 8
  %impl_1 = getelementptr inbounds %struct.VPxWorker, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %impl_1, align 8
  %thread_ = getelementptr inbounds %struct.VPxWorkerImpl, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %thread_, align 8
  %call = call i32 @pthread_join(i64 noundef %5, ptr noundef null)
  %6 = load ptr, ptr %worker.addr, align 8
  %impl_2 = getelementptr inbounds %struct.VPxWorker, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %impl_2, align 8
  %mutex_ = getelementptr inbounds %struct.VPxWorkerImpl, ptr %7, i32 0, i32 0
  %call3 = call i32 @pthread_mutex_destroy(ptr noundef %mutex_) #6
  %8 = load ptr, ptr %worker.addr, align 8
  %impl_4 = getelementptr inbounds %struct.VPxWorker, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %impl_4, align 8
  %condition_ = getelementptr inbounds %struct.VPxWorkerImpl, ptr %9, i32 0, i32 1
  %call5 = call i32 @pthread_cond_destroy(ptr noundef %condition_) #6
  %10 = load ptr, ptr %worker.addr, align 8
  %impl_6 = getelementptr inbounds %struct.VPxWorker, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %impl_6, align 8
  call void @vpx_free(ptr noundef %11)
  %12 = load ptr, ptr %worker.addr, align 8
  %impl_7 = getelementptr inbounds %struct.VPxWorker, ptr %12, i32 0, i32 0
  store ptr null, ptr %impl_7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: null_pointer_is_valid
declare ptr @vpx_calloc(i64 noundef, i64 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid
declare i32 @pthread_mutex_destroy(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid
declare i32 @pthread_mutex_lock(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal ptr @thread_loop(ptr noundef %ptr) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %worker = alloca ptr, align 8
  %done = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %worker) #6
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %worker, align 8, !annotation !3
  %0 = load ptr, ptr %ptr.addr, align 8
  store ptr %0, ptr %worker, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %done) #6
  store i32 -1431655766, ptr %done, align 4, !annotation !3
  store i32 0, ptr %done, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %1 = load i32, ptr %done, align 4
  %tobool = icmp ne i32 %1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end20

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %worker, align 8
  %impl_ = getelementptr inbounds %struct.VPxWorker, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %impl_, align 8
  %mutex_ = getelementptr inbounds %struct.VPxWorkerImpl, ptr %3, i32 0, i32 0
  %call = call i32 @pthread_mutex_lock(ptr noundef %mutex_) #6
  br label %while.cond1

while.cond1:                                      ; preds = %while.body2, %while.body
  %4 = load ptr, ptr %worker, align 8
  %status_ = getelementptr inbounds %struct.VPxWorker, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %status_, align 8
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %while.body2, label %while.end

while.body2:                                      ; preds = %while.cond1
  %6 = load ptr, ptr %worker, align 8
  %impl_3 = getelementptr inbounds %struct.VPxWorker, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %impl_3, align 8
  %condition_ = getelementptr inbounds %struct.VPxWorkerImpl, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %worker, align 8
  %impl_4 = getelementptr inbounds %struct.VPxWorker, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %impl_4, align 8
  %mutex_5 = getelementptr inbounds %struct.VPxWorkerImpl, ptr %9, i32 0, i32 0
  %call6 = call i32 @pthread_cond_wait(ptr noundef %condition_, ptr noundef %mutex_5)
  br label %while.cond1, !llvm.loop !4

while.end:                                        ; preds = %while.cond1
  %10 = load ptr, ptr %worker, align 8
  %status_7 = getelementptr inbounds %struct.VPxWorker, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %status_7, align 8
  %cmp8 = icmp eq i32 %11, 2
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %12 = load ptr, ptr %worker, align 8
  call void @execute(ptr noundef %12)
  %13 = load ptr, ptr %worker, align 8
  %status_9 = getelementptr inbounds %struct.VPxWorker, ptr %13, i32 0, i32 1
  store i32 1, ptr %status_9, align 8
  br label %if.end13

if.else:                                          ; preds = %while.end
  %14 = load ptr, ptr %worker, align 8
  %status_10 = getelementptr inbounds %struct.VPxWorker, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %status_10, align 8
  %cmp11 = icmp eq i32 %15, 0
  br i1 %cmp11, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.else
  store i32 1, ptr %done, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then
  %16 = load ptr, ptr %worker, align 8
  %impl_14 = getelementptr inbounds %struct.VPxWorker, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %impl_14, align 8
  %condition_15 = getelementptr inbounds %struct.VPxWorkerImpl, ptr %17, i32 0, i32 1
  %call16 = call i32 @pthread_cond_signal(ptr noundef %condition_15) #6
  %18 = load ptr, ptr %worker, align 8
  %impl_17 = getelementptr inbounds %struct.VPxWorker, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %impl_17, align 8
  %mutex_18 = getelementptr inbounds %struct.VPxWorkerImpl, ptr %19, i32 0, i32 0
  %call19 = call i32 @pthread_mutex_unlock(ptr noundef %mutex_18) #6
  br label %while.cond, !llvm.loop !6

while.end20:                                      ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %done) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %worker) #6
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid
declare i32 @pthread_mutex_unlock(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid
declare i32 @pthread_cond_destroy(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare void @vpx_free(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: null_pointer_is_valid
declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid
declare i32 @pthread_cond_signal(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal void @change_state(ptr noundef %worker, i32 noundef %new_status) #0 {
entry:
  %worker.addr = alloca ptr, align 8
  %new_status.addr = alloca i32, align 4
  store ptr %worker, ptr %worker.addr, align 8
  store i32 %new_status, ptr %new_status.addr, align 4
  %0 = load ptr, ptr %worker.addr, align 8
  %impl_ = getelementptr inbounds %struct.VPxWorker, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %impl_, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %worker.addr, align 8
  %impl_1 = getelementptr inbounds %struct.VPxWorker, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %impl_1, align 8
  %mutex_ = getelementptr inbounds %struct.VPxWorkerImpl, ptr %3, i32 0, i32 0
  %call = call i32 @pthread_mutex_lock(ptr noundef %mutex_) #6
  %4 = load ptr, ptr %worker.addr, align 8
  %status_ = getelementptr inbounds %struct.VPxWorker, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %status_, align 8
  %cmp2 = icmp uge i32 %5, 1
  br i1 %cmp2, label %if.then3, label %if.end17

if.then3:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then3
  %6 = load ptr, ptr %worker.addr, align 8
  %status_4 = getelementptr inbounds %struct.VPxWorker, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %status_4, align 8
  %cmp5 = icmp ne i32 %7, 1
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %worker.addr, align 8
  %impl_6 = getelementptr inbounds %struct.VPxWorker, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %impl_6, align 8
  %condition_ = getelementptr inbounds %struct.VPxWorkerImpl, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %worker.addr, align 8
  %impl_7 = getelementptr inbounds %struct.VPxWorker, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %impl_7, align 8
  %mutex_8 = getelementptr inbounds %struct.VPxWorkerImpl, ptr %11, i32 0, i32 0
  %call9 = call i32 @pthread_cond_wait(ptr noundef %condition_, ptr noundef %mutex_8)
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %12 = load i32, ptr %new_status.addr, align 4
  %cmp10 = icmp ne i32 %12, 1
  br i1 %cmp10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %while.end
  %13 = load i32, ptr %new_status.addr, align 4
  %14 = load ptr, ptr %worker.addr, align 8
  %status_12 = getelementptr inbounds %struct.VPxWorker, ptr %14, i32 0, i32 1
  store i32 %13, ptr %status_12, align 8
  %15 = load ptr, ptr %worker.addr, align 8
  %impl_13 = getelementptr inbounds %struct.VPxWorker, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %impl_13, align 8
  %condition_14 = getelementptr inbounds %struct.VPxWorkerImpl, ptr %16, i32 0, i32 1
  %call15 = call i32 @pthread_cond_signal(ptr noundef %condition_14) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %while.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %17 = load ptr, ptr %worker.addr, align 8
  %impl_18 = getelementptr inbounds %struct.VPxWorker, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %impl_18, align 8
  %mutex_19 = getelementptr inbounds %struct.VPxWorkerImpl, ptr %18, i32 0, i32 0
  %call20 = call i32 @pthread_mutex_unlock(ptr noundef %mutex_19) #6
  br label %return

return:                                           ; preds = %if.end17, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @pthread_join(i64 noundef, ptr noundef) #4

attributes #0 = { nounwind null_pointer_is_valid ssp "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"auto-init"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
