; ModuleID = '<stdin>'
source_filename = "../../third_party/ffmpeg/libavformat/seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVFormatContext = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, i64, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, %struct.AVIOInterruptCB, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.AVIOInterruptCB = type { ptr, ptr }
%struct.AVStream = type { ptr, i32, i32, ptr, ptr, %struct.AVRational, i64, i64, i64, i32, i32, %struct.AVRational, ptr, %struct.AVRational, %struct.AVPacket, ptr, i32, i32, %struct.AVRational, i32 }
%struct.AVPacket = type { ptr, i64, i64, ptr, i32, i32, i32, ptr, i32, i64, i64, ptr, ptr, %struct.AVRational }
%struct.AVRational = type { i32, i32 }
%struct.FFStream = type { %struct.AVStream, i32, ptr, i32, ptr, i32, %struct.anon, i32, i32, ptr, ptr, ptr, i32, i32, i64, i64, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, i32, i32, [17 x i64], [17 x i8], [17 x i64], i64, i8, i8, i32, %struct.AVRational, %struct.AVProbeData, ptr, i64, i32, i32, i32, ptr, i32, i32, i64, i64, ptr }
%struct.anon = type { ptr, i32 }
%struct.AVProbeData = type { ptr, ptr, i32, ptr }
%struct.AVIndexEntry = type { i64, i64, i32, i32 }
%struct.AVIOContext = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, i64, i64 }
%struct.FFIOContext = type { %struct.AVIOContext, ptr, i32, i32, i64, i64, i64, i64, i32, i32, i32, i64 }
%struct.AVInputFormat = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FFFormatContext = type { %struct.AVFormatContext, i32, i32, ptr, %struct.PacketList, i64, %struct.PacketList, %struct.PacketList, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, ptr, i32, i32, i32 }
%struct.PacketList = type { ptr, ptr }
%struct.AVCodecParameters = type { i32, i32, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i32, i32, %struct.AVRational, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.AVChannelLayout, %struct.AVRational }
%struct.AVChannelLayout = type { i32, i32, %union.anon, ptr }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"cache\00", align 1

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @avpriv_update_cur_dts(ptr noundef %s, ptr noundef %ref_st, i64 noundef %timestamp) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %ref_st.addr = alloca ptr, align 8
  %timestamp.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %st = alloca ptr, align 8
  %sti = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %ref_st, ptr %ref_st.addr, align 8
  store i64 %timestamp, ptr %timestamp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 -1431655766, ptr %i, align 4, !annotation !2
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %s.addr, align 8
  %nb_streams = getelementptr inbounds %struct.AVFormatContext, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %nb_streams, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %st) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %st, align 8, !annotation !2
  %3 = load ptr, ptr %s.addr, align 8
  %streams = getelementptr inbounds %struct.AVFormatContext, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %streams, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  store ptr %6, ptr %st, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sti) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %sti, align 8, !annotation !2
  %7 = load ptr, ptr %st, align 8
  %call = call ptr @ffstream(ptr noundef %7)
  store ptr %call, ptr %sti, align 8
  %8 = load i64, ptr %timestamp.addr, align 8
  %9 = load ptr, ptr %st, align 8
  %time_base = getelementptr inbounds %struct.AVStream, ptr %9, i32 0, i32 5
  %den = getelementptr inbounds %struct.AVRational, ptr %time_base, i32 0, i32 1
  %10 = load i32, ptr %den, align 4
  %conv = sext i32 %10 to i64
  %11 = load ptr, ptr %ref_st.addr, align 8
  %time_base1 = getelementptr inbounds %struct.AVStream, ptr %11, i32 0, i32 5
  %num = getelementptr inbounds %struct.AVRational, ptr %time_base1, i32 0, i32 0
  %12 = load i32, ptr %num, align 8
  %conv2 = sext i32 %12 to i64
  %mul = mul nsw i64 %conv, %conv2
  %13 = load ptr, ptr %st, align 8
  %time_base3 = getelementptr inbounds %struct.AVStream, ptr %13, i32 0, i32 5
  %num4 = getelementptr inbounds %struct.AVRational, ptr %time_base3, i32 0, i32 0
  %14 = load i32, ptr %num4, align 8
  %conv5 = sext i32 %14 to i64
  %15 = load ptr, ptr %ref_st.addr, align 8
  %time_base6 = getelementptr inbounds %struct.AVStream, ptr %15, i32 0, i32 5
  %den7 = getelementptr inbounds %struct.AVRational, ptr %time_base6, i32 0, i32 1
  %16 = load i32, ptr %den7, align 4
  %conv8 = sext i32 %16 to i64
  %mul9 = mul nsw i64 %conv5, %conv8
  %call10 = call i64 @av_rescale(i64 noundef %8, i64 noundef %mul, i64 noundef %mul9) #9
  %17 = load ptr, ptr %sti, align 8
  %cur_dts = getelementptr inbounds %struct.FFStream, ptr %17, i32 0, i32 46
  store i64 %call10, ptr %cur_dts, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sti) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %st) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !3

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: alwaysinline nounwind null_pointer_is_valid ssp
define internal ptr @ffstream(ptr noundef %st) #2 {
entry:
  %st.addr = alloca ptr, align 8
  store ptr %st, ptr %st.addr, align 8
  %0 = load ptr, ptr %st.addr, align 8
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(none)
declare i64 @av_rescale(i64 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @ff_reduce_index(ptr noundef %s, i32 noundef %stream_index) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %stream_index.addr = alloca i32, align 4
  %st = alloca ptr, align 8
  %sti = alloca ptr, align 8
  %max_entries = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %stream_index, ptr %stream_index.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %st) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %st, align 8, !annotation !2
  %0 = load ptr, ptr %s.addr, align 8
  %streams = getelementptr inbounds %struct.AVFormatContext, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %streams, align 8
  %2 = load i32, ptr %stream_index.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %st, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sti) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %sti, align 8, !annotation !2
  %4 = load ptr, ptr %st, align 8
  %call = call ptr @ffstream(ptr noundef %4)
  store ptr %call, ptr %sti, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_entries) #8
  store i32 -1431655766, ptr %max_entries, align 4, !annotation !2
  %5 = load ptr, ptr %s.addr, align 8
  %max_index_size = getelementptr inbounds %struct.AVFormatContext, ptr %5, i32 0, i32 24
  %6 = load i32, ptr %max_index_size, align 4
  %conv = zext i32 %6 to i64
  %div = udiv i64 %conv, 24
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, ptr %max_entries, align 4
  %7 = load ptr, ptr %sti, align 8
  %nb_index_entries = getelementptr inbounds %struct.FFStream, ptr %7, i32 0, i32 12
  %8 = load i32, ptr %nb_index_entries, align 8
  %9 = load i32, ptr %max_entries, align 4
  %cmp = icmp uge i32 %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 -1431655766, ptr %i, align 4, !annotation !2
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, ptr %i, align 4
  %mul = mul nsw i32 2, %10
  %11 = load ptr, ptr %sti, align 8
  %nb_index_entries3 = getelementptr inbounds %struct.FFStream, ptr %11, i32 0, i32 12
  %12 = load i32, ptr %nb_index_entries3, align 8
  %cmp4 = icmp slt i32 %mul, %12
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %sti, align 8
  %index_entries = getelementptr inbounds %struct.FFStream, ptr %13, i32 0, i32 11
  %14 = load ptr, ptr %index_entries, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds %struct.AVIndexEntry, ptr %14, i64 %idxprom6
  %16 = load ptr, ptr %sti, align 8
  %index_entries8 = getelementptr inbounds %struct.FFStream, ptr %16, i32 0, i32 11
  %17 = load ptr, ptr %index_entries8, align 8
  %18 = load i32, ptr %i, align 4
  %mul9 = mul nsw i32 2, %18
  %idxprom10 = sext i32 %mul9 to i64
  %arrayidx11 = getelementptr inbounds %struct.AVIndexEntry, ptr %17, i64 %idxprom10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx7, ptr align 8 %arrayidx11, i64 24, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %20 = load i32, ptr %i, align 4
  %21 = load ptr, ptr %sti, align 8
  %nb_index_entries12 = getelementptr inbounds %struct.FFStream, ptr %21, i32 0, i32 12
  store i32 %20, ptr %nb_index_entries12, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_entries) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sti) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %st) #8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @ff_add_index_entry(ptr noundef %index_entries, ptr noundef %nb_index_entries, ptr noundef %index_entries_allocated_size, i64 noundef %pos, i64 noundef %timestamp, i32 noundef %size, i32 noundef %distance, i32 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %index_entries.addr = alloca ptr, align 8
  %nb_index_entries.addr = alloca ptr, align 8
  %index_entries_allocated_size.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %timestamp.addr = alloca i64, align 8
  %size.addr = alloca i32, align 4
  %distance.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %entries = alloca ptr, align 8
  %ie = alloca ptr, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %index_entries, ptr %index_entries.addr, align 8
  store ptr %nb_index_entries, ptr %nb_index_entries.addr, align 8
  store ptr %index_entries_allocated_size, ptr %index_entries_allocated_size.addr, align 8
  store i64 %pos, ptr %pos.addr, align 8
  store i64 %timestamp, ptr %timestamp.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store i32 %distance, ptr %distance.addr, align 4
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %entries) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %entries, align 8, !annotation !2
  call void @llvm.lifetime.start.p0(i64 8, ptr %ie) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %ie, align 8, !annotation !2
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #8
  store i32 -1431655766, ptr %index, align 4, !annotation !2
  %0 = load ptr, ptr %nb_index_entries.addr, align 8
  %1 = load i32, ptr %0, align 4
  %add = add i32 %1, 1
  %conv = zext i32 %add to i64
  %cmp = icmp uge i64 %conv, 178956970
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %timestamp.addr, align 8
  %cmp2 = icmp eq i64 %2, -9223372036854775808
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = load i32, ptr %size.addr, align 4
  %cmp6 = icmp slt i32 %3, 0
  br i1 %cmp6, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %4 = load i32, ptr %size.addr, align 4
  %cmp8 = icmp sgt i32 %4, 1073741823
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %if.end5
  store i32 -22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %5 = load i64, ptr %timestamp.addr, align 8
  %call = call i32 @is_relative(i64 noundef %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end11
  %6 = load i64, ptr %timestamp.addr, align 8
  %sub = sub nsw i64 %6, 9223090561878065151
  store i64 %sub, ptr %timestamp.addr, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end11
  %7 = load ptr, ptr %index_entries.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %index_entries_allocated_size.addr, align 8
  %10 = load ptr, ptr %nb_index_entries.addr, align 8
  %11 = load i32, ptr %10, align 4
  %add14 = add nsw i32 %11, 1
  %conv15 = sext i32 %add14 to i64
  %mul = mul i64 %conv15, 24
  %call16 = call ptr @av_fast_realloc(ptr noundef %8, ptr noundef %9, i64 noundef %mul)
  store ptr %call16, ptr %entries, align 8
  %12 = load ptr, ptr %entries, align 8
  %tobool17 = icmp ne ptr %12, null
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end13
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %13 = load ptr, ptr %entries, align 8
  %14 = load ptr, ptr %index_entries.addr, align 8
  store ptr %13, ptr %14, align 8
  %15 = load ptr, ptr %index_entries.addr, align 8
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %nb_index_entries.addr, align 8
  %18 = load i32, ptr %17, align 4
  %19 = load i64, ptr %timestamp.addr, align 8
  %call20 = call i32 @ff_index_search_timestamp(ptr noundef %16, i32 noundef %18, i64 noundef %19, i32 noundef 4)
  store i32 %call20, ptr %index, align 4
  %20 = load i32, ptr %index, align 4
  %cmp21 = icmp slt i32 %20, 0
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end19
  %21 = load ptr, ptr %nb_index_entries.addr, align 8
  %22 = load i32, ptr %21, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %21, align 4
  store i32 %22, ptr %index, align 4
  %23 = load ptr, ptr %entries, align 8
  %24 = load i32, ptr %index, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds %struct.AVIndexEntry, ptr %23, i64 %idxprom
  store ptr %arrayidx, ptr %ie, align 8
  br label %do.body

do.body:                                          ; preds = %if.then23
  %25 = load i32, ptr %index, align 4
  %cmp24 = icmp eq i32 %25, 0
  br i1 %cmp24, label %if.end32, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %do.body
  %26 = load ptr, ptr %ie, align 8
  %arrayidx27 = getelementptr inbounds %struct.AVIndexEntry, ptr %26, i64 -1
  %timestamp28 = getelementptr inbounds %struct.AVIndexEntry, ptr %arrayidx27, i32 0, i32 1
  %27 = load i64, ptr %timestamp28, align 8
  %28 = load i64, ptr %timestamp.addr, align 8
  %cmp29 = icmp slt i64 %27, %28
  br i1 %cmp29, label %if.end32, label %if.then31

if.then31:                                        ; preds = %lor.lhs.false26
  call void @abort() #10
  unreachable

if.end32:                                         ; preds = %lor.lhs.false26, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end32
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end61

if.else:                                          ; preds = %if.end19
  %29 = load ptr, ptr %entries, align 8
  %30 = load i32, ptr %index, align 4
  %idxprom33 = sext i32 %30 to i64
  %arrayidx34 = getelementptr inbounds %struct.AVIndexEntry, ptr %29, i64 %idxprom33
  store ptr %arrayidx34, ptr %ie, align 8
  %31 = load ptr, ptr %ie, align 8
  %timestamp35 = getelementptr inbounds %struct.AVIndexEntry, ptr %31, i32 0, i32 1
  %32 = load i64, ptr %timestamp35, align 8
  %33 = load i64, ptr %timestamp.addr, align 8
  %cmp36 = icmp ne i64 %32, %33
  br i1 %cmp36, label %if.then38, label %if.else51

if.then38:                                        ; preds = %if.else
  %34 = load ptr, ptr %ie, align 8
  %timestamp39 = getelementptr inbounds %struct.AVIndexEntry, ptr %34, i32 0, i32 1
  %35 = load i64, ptr %timestamp39, align 8
  %36 = load i64, ptr %timestamp.addr, align 8
  %cmp40 = icmp sle i64 %35, %36
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.then38
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %if.then38
  %37 = load ptr, ptr %entries, align 8
  %38 = load i32, ptr %index, align 4
  %idx.ext = sext i32 %38 to i64
  %add.ptr = getelementptr inbounds %struct.AVIndexEntry, ptr %37, i64 %idx.ext
  %add.ptr44 = getelementptr inbounds %struct.AVIndexEntry, ptr %add.ptr, i64 1
  %39 = load ptr, ptr %entries, align 8
  %40 = load i32, ptr %index, align 4
  %idx.ext45 = sext i32 %40 to i64
  %add.ptr46 = getelementptr inbounds %struct.AVIndexEntry, ptr %39, i64 %idx.ext45
  %41 = load ptr, ptr %nb_index_entries.addr, align 8
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr %index, align 4
  %sub47 = sub nsw i32 %42, %43
  %conv48 = sext i32 %sub47 to i64
  %mul49 = mul i64 24, %conv48
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %add.ptr44, ptr align 8 %add.ptr46, i64 %mul49, i1 false)
  %44 = load ptr, ptr %nb_index_entries.addr, align 8
  %45 = load i32, ptr %44, align 4
  %inc50 = add nsw i32 %45, 1
  store i32 %inc50, ptr %44, align 4
  br label %if.end60

if.else51:                                        ; preds = %if.else
  %46 = load ptr, ptr %ie, align 8
  %pos52 = getelementptr inbounds %struct.AVIndexEntry, ptr %46, i32 0, i32 0
  %47 = load i64, ptr %pos52, align 8
  %48 = load i64, ptr %pos.addr, align 8
  %cmp53 = icmp eq i64 %47, %48
  br i1 %cmp53, label %land.lhs.true, label %if.end59

land.lhs.true:                                    ; preds = %if.else51
  %49 = load i32, ptr %distance.addr, align 4
  %50 = load ptr, ptr %ie, align 8
  %min_distance = getelementptr inbounds %struct.AVIndexEntry, ptr %50, i32 0, i32 3
  %51 = load i32, ptr %min_distance, align 4
  %cmp55 = icmp slt i32 %49, %51
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %land.lhs.true
  %52 = load ptr, ptr %ie, align 8
  %min_distance58 = getelementptr inbounds %struct.AVIndexEntry, ptr %52, i32 0, i32 3
  %53 = load i32, ptr %min_distance58, align 4
  store i32 %53, ptr %distance.addr, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %land.lhs.true, %if.else51
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end43
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %do.end
  %54 = load i64, ptr %pos.addr, align 8
  %55 = load ptr, ptr %ie, align 8
  %pos62 = getelementptr inbounds %struct.AVIndexEntry, ptr %55, i32 0, i32 0
  store i64 %54, ptr %pos62, align 8
  %56 = load i64, ptr %timestamp.addr, align 8
  %57 = load ptr, ptr %ie, align 8
  %timestamp63 = getelementptr inbounds %struct.AVIndexEntry, ptr %57, i32 0, i32 1
  store i64 %56, ptr %timestamp63, align 8
  %58 = load i32, ptr %distance.addr, align 4
  %59 = load ptr, ptr %ie, align 8
  %min_distance64 = getelementptr inbounds %struct.AVIndexEntry, ptr %59, i32 0, i32 3
  store i32 %58, ptr %min_distance64, align 4
  %60 = load i32, ptr %size.addr, align 4
  %61 = load ptr, ptr %ie, align 8
  %size65 = getelementptr inbounds %struct.AVIndexEntry, ptr %61, i32 0, i32 2
  %bf.load = load i32, ptr %size65, align 8
  %bf.value = and i32 %60, 1073741823
  %bf.shl = shl i32 %bf.value, 2
  %bf.clear = and i32 %bf.load, 3
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %size65, align 8
  %bf.result.shl = shl i32 %bf.value, 2
  %bf.result.ashr = ashr i32 %bf.result.shl, 2
  %62 = load i32, ptr %flags.addr, align 4
  %63 = load ptr, ptr %ie, align 8
  %flags66 = getelementptr inbounds %struct.AVIndexEntry, ptr %63, i32 0, i32 2
  %bf.load67 = load i32, ptr %flags66, align 8
  %bf.value68 = and i32 %62, 3
  %bf.clear69 = and i32 %bf.load67, -4
  %bf.set70 = or i32 %bf.clear69, %bf.value68
  store i32 %bf.set70, ptr %flags66, align 8
  %bf.result.shl71 = shl i32 %bf.value68, 30
  %bf.result.ashr72 = ashr i32 %bf.result.shl71, 30
  %64 = load i32, ptr %index, align 4
  store i32 %64, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then42, %if.then18, %if.then10, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ie) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %entries) #8
  %65 = load i32, ptr %retval, align 4
  ret i32 %65
}

; Function Attrs: alwaysinline nounwind null_pointer_is_valid ssp
define internal i32 @is_relative(i64 noundef %ts) #2 {
entry:
  %ts.addr = alloca i64, align 8
  store i64 %ts, ptr %ts.addr, align 8
  %0 = load i64, ptr %ts.addr, align 8
  %cmp = icmp sgt i64 %0, 9222809086901354495
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare ptr @av_fast_realloc(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @ff_index_search_timestamp(ptr noundef %entries, i32 noundef %nb_entries, i64 noundef %wanted_timestamp, i32 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %entries.addr = alloca ptr, align 8
  %nb_entries.addr = alloca i32, align 4
  %wanted_timestamp.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %m = alloca i32, align 4
  %timestamp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entries, ptr %entries.addr, align 8
  store i32 %nb_entries, ptr %nb_entries.addr, align 4
  store i64 %wanted_timestamp, ptr %wanted_timestamp.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #8
  store i32 -1431655766, ptr %a, align 4, !annotation !2
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #8
  store i32 -1431655766, ptr %b, align 4, !annotation !2
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #8
  store i32 -1431655766, ptr %m, align 4, !annotation !2
  call void @llvm.lifetime.start.p0(i64 8, ptr %timestamp) #8
  store i64 -6148914691236517206, ptr %timestamp, align 8, !annotation !2
  store i32 -1, ptr %a, align 4
  %0 = load i32, ptr %nb_entries.addr, align 4
  store i32 %0, ptr %b, align 4
  %1 = load i32, ptr %b, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %entries.addr, align 8
  %3 = load i32, ptr %b, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.AVIndexEntry, ptr %2, i64 %idxprom
  %timestamp1 = getelementptr inbounds %struct.AVIndexEntry, ptr %arrayidx, i32 0, i32 1
  %4 = load i64, ptr %timestamp1, align 8
  %5 = load i64, ptr %wanted_timestamp.addr, align 8
  %cmp = icmp slt i64 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, ptr %b, align 4
  %sub2 = sub nsw i32 %6, 1
  store i32 %sub2, ptr %a, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end32, %if.end
  %7 = load i32, ptr %b, align 4
  %8 = load i32, ptr %a, align 4
  %sub3 = sub nsw i32 %7, %8
  %cmp4 = icmp sgt i32 %sub3, 1
  br i1 %cmp4, label %while.body, label %while.end33

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr %a, align 4
  %10 = load i32, ptr %b, align 4
  %add = add nsw i32 %9, %10
  %shr = ashr i32 %add, 1
  store i32 %shr, ptr %m, align 4
  br label %while.cond5

while.cond5:                                      ; preds = %if.end23, %while.body
  %11 = load ptr, ptr %entries.addr, align 8
  %12 = load i32, ptr %m, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds %struct.AVIndexEntry, ptr %11, i64 %idxprom6
  %flags8 = getelementptr inbounds %struct.AVIndexEntry, ptr %arrayidx7, i32 0, i32 2
  %bf.load = load i32, ptr %flags8, align 8
  %bf.shl = shl i32 %bf.load, 30
  %bf.ashr = ashr i32 %bf.shl, 30
  %and = and i32 %bf.ashr, 2
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %land.lhs.true10, label %land.end

land.lhs.true10:                                  ; preds = %while.cond5
  %13 = load i32, ptr %m, align 4
  %14 = load i32, ptr %b, align 4
  %cmp11 = icmp slt i32 %13, %14
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true10
  %15 = load i32, ptr %m, align 4
  %16 = load i32, ptr %nb_entries.addr, align 4
  %sub12 = sub nsw i32 %16, 1
  %cmp13 = icmp slt i32 %15, %sub12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true10, %while.cond5
  %17 = phi i1 [ false, %land.lhs.true10 ], [ false, %while.cond5 ], [ %cmp13, %land.rhs ]
  br i1 %17, label %while.body14, label %while.end

while.body14:                                     ; preds = %land.end
  %18 = load i32, ptr %m, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %m, align 4
  %19 = load i32, ptr %m, align 4
  %20 = load i32, ptr %b, align 4
  %cmp15 = icmp eq i32 %19, %20
  br i1 %cmp15, label %land.lhs.true16, label %if.end23

land.lhs.true16:                                  ; preds = %while.body14
  %21 = load ptr, ptr %entries.addr, align 8
  %22 = load i32, ptr %m, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds %struct.AVIndexEntry, ptr %21, i64 %idxprom17
  %timestamp19 = getelementptr inbounds %struct.AVIndexEntry, ptr %arrayidx18, i32 0, i32 1
  %23 = load i64, ptr %timestamp19, align 8
  %24 = load i64, ptr %wanted_timestamp.addr, align 8
  %cmp20 = icmp sge i64 %23, %24
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %land.lhs.true16
  %25 = load i32, ptr %b, align 4
  %sub22 = sub nsw i32 %25, 1
  store i32 %sub22, ptr %m, align 4
  br label %while.end

if.end23:                                         ; preds = %land.lhs.true16, %while.body14
  br label %while.cond5, !llvm.loop !6

while.end:                                        ; preds = %if.then21, %land.end
  %26 = load ptr, ptr %entries.addr, align 8
  %27 = load i32, ptr %m, align 4
  %idxprom24 = sext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds %struct.AVIndexEntry, ptr %26, i64 %idxprom24
  %timestamp26 = getelementptr inbounds %struct.AVIndexEntry, ptr %arrayidx25, i32 0, i32 1
  %28 = load i64, ptr %timestamp26, align 8
  store i64 %28, ptr %timestamp, align 8
  %29 = load i64, ptr %timestamp, align 8
  %30 = load i64, ptr %wanted_timestamp.addr, align 8
  %cmp27 = icmp sge i64 %29, %30
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %while.end
  %31 = load i32, ptr %m, align 4
  store i32 %31, ptr %b, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %while.end
  %32 = load i64, ptr %timestamp, align 8
  %33 = load i64, ptr %wanted_timestamp.addr, align 8
  %cmp30 = icmp sle i64 %32, %33
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end29
  %34 = load i32, ptr %m, align 4
  store i32 %34, ptr %a, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end29
  br label %while.cond, !llvm.loop !7

while.end33:                                      ; preds = %while.cond
  %35 = load i32, ptr %flags.addr, align 4
  %and34 = and i32 %35, 1
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end33
  %36 = load i32, ptr %a, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.end33
  %37 = load i32, ptr %b, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %36, %cond.true ], [ %37, %cond.false ]
  store i32 %cond, ptr %m, align 4
  %38 = load i32, ptr %flags.addr, align 4
  %and36 = and i32 %38, 4
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.end59, label %if.then38

if.then38:                                        ; preds = %cond.end
  br label %while.cond39

while.cond39:                                     ; preds = %while.body53, %if.then38
  %39 = load i32, ptr %m, align 4
  %cmp40 = icmp sge i32 %39, 0
  br i1 %cmp40, label %land.lhs.true41, label %land.end52

land.lhs.true41:                                  ; preds = %while.cond39
  %40 = load i32, ptr %m, align 4
  %41 = load i32, ptr %nb_entries.addr, align 4
  %cmp42 = icmp slt i32 %40, %41
  br i1 %cmp42, label %land.rhs43, label %land.end52

land.rhs43:                                       ; preds = %land.lhs.true41
  %42 = load ptr, ptr %entries.addr, align 8
  %43 = load i32, ptr %m, align 4
  %idxprom44 = sext i32 %43 to i64
  %arrayidx45 = getelementptr inbounds %struct.AVIndexEntry, ptr %42, i64 %idxprom44
  %flags46 = getelementptr inbounds %struct.AVIndexEntry, ptr %arrayidx45, i32 0, i32 2
  %bf.load47 = load i32, ptr %flags46, align 8
  %bf.shl48 = shl i32 %bf.load47, 30
  %bf.ashr49 = ashr i32 %bf.shl48, 30
  %and50 = and i32 %bf.ashr49, 1
  %tobool51 = icmp ne i32 %and50, 0
  %lnot = xor i1 %tobool51, true
  br label %land.end52

land.end52:                                       ; preds = %land.rhs43, %land.lhs.true41, %while.cond39
  %44 = phi i1 [ false, %land.lhs.true41 ], [ false, %while.cond39 ], [ %lnot, %land.rhs43 ]
  br i1 %44, label %while.body53, label %while.end58

while.body53:                                     ; preds = %land.end52
  %45 = load i32, ptr %flags.addr, align 4
  %and54 = and i32 %45, 1
  %tobool55 = icmp ne i32 %and54, 0
  %46 = zext i1 %tobool55 to i64
  %cond56 = select i1 %tobool55, i32 -1, i32 1
  %47 = load i32, ptr %m, align 4
  %add57 = add nsw i32 %47, %cond56
  store i32 %add57, ptr %m, align 4
  br label %while.cond39, !llvm.loop !8

while.end58:                                      ; preds = %land.end52
  br label %if.end59

if.end59:                                         ; preds = %while.end58, %cond.end
  %48 = load i32, ptr %m, align 4
  %49 = load i32, ptr %nb_entries.addr, align 4
  %cmp60 = icmp eq i32 %48, %49
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end59
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end62:                                         ; preds = %if.end59
  %50 = load i32, ptr %m, align 4
  store i32 %50, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then61
  call void @llvm.lifetime.end.p0(i64 8, ptr %timestamp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #8
  %51 = load i32, ptr %retval, align 4
  ret i32 %51
}

; Function Attrs: noreturn nounwind null_pointer_is_valid
declare void @abort() #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @av_add_index_entry(ptr noundef %st, i64 noundef %pos, i64 noundef %timestamp, i32 noundef %size, i32 noundef %distance, i32 noundef %flags) #0 {
entry:
  %st.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %timestamp.addr = alloca i64, align 8
  %size.addr = alloca i32, align 4
  %distance.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %sti = alloca ptr, align 8
  store ptr %st, ptr %st.addr, align 8
  store i64 %pos, ptr %pos.addr, align 8
  store i64 %timestamp, ptr %timestamp.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store i32 %distance, ptr %distance.addr, align 4
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sti) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %sti, align 8, !annotation !2
  %0 = load ptr, ptr %st.addr, align 8
  %call = call ptr @ffstream(ptr noundef %0)
  store ptr %call, ptr %sti, align 8
  %1 = load ptr, ptr %st.addr, align 8
  %2 = load i64, ptr %timestamp.addr, align 8
  %call1 = call i64 @ff_wrap_timestamp(ptr noundef %1, i64 noundef %2)
  store i64 %call1, ptr %timestamp.addr, align 8
  %3 = load ptr, ptr %sti, align 8
  %index_entries = getelementptr inbounds %struct.FFStream, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %sti, align 8
  %nb_index_entries = getelementptr inbounds %struct.FFStream, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %sti, align 8
  %index_entries_allocated_size = getelementptr inbounds %struct.FFStream, ptr %5, i32 0, i32 13
  %6 = load i64, ptr %pos.addr, align 8
  %7 = load i64, ptr %timestamp.addr, align 8
  %8 = load i32, ptr %size.addr, align 4
  %9 = load i32, ptr %distance.addr, align 4
  %10 = load i32, ptr %flags.addr, align 4
  %call2 = call i32 @ff_add_index_entry(ptr noundef %index_entries, ptr noundef %nb_index_entries, ptr noundef %index_entries_allocated_size, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10)
  call void @llvm.lifetime.end.p0(i64 8, ptr %sti) #8
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare i64 @ff_wrap_timestamp(ptr noundef, i64 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @ff_configure_buffers_for_index(ptr noundef %s, i64 noundef %time_tolerance) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %time_tolerance.addr = alloca i64, align 8
  %pos_delta = alloca i64, align 8
  %skip = alloca i64, align 8
  %proto = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ist1 = alloca i32, align 4
  %st1 = alloca ptr, align 8
  %sti1 = alloca ptr, align 8
  %ist2 = alloca i32, align 4
  %st2 = alloca ptr, align 8
  %sti2 = alloca ptr, align 8
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %e1 = alloca ptr, align 8
  %e1_pts = alloca i64, align 8
  %.compoundliteral = alloca %struct.AVRational, align 4
  %e2 = alloca ptr, align 8
  %e2_pts = alloca i64, align 8
  %.compoundliteral57 = alloca %struct.AVRational, align 4
  %cur_delta = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  store i64 %time_tolerance, ptr %time_tolerance.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos_delta) #8
  store i64 -6148914691236517206, ptr %pos_delta, align 8, !annotation !2
  store i64 0, ptr %pos_delta, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %skip) #8
  store i64 -6148914691236517206, ptr %skip, align 8, !annotation !2
  store i64 0, ptr %skip, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %proto) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %proto, align 8, !annotation !2
  %0 = load ptr, ptr %s.addr, align 8
  %url = getelementptr inbounds %struct.AVFormatContext, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %url, align 8
  %call = call ptr @avio_find_protocol_name(ptr noundef %1)
  store ptr %call, ptr %proto, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %ctx, align 8, !annotation !2
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i64, ptr %time_tolerance.addr, align 8
  %cmp = icmp sge i64 %2, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @abort() #10
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %proto, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %do.end
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %do.end
  %4 = load ptr, ptr %proto, align 8
  %tobool3 = icmp ne ptr %4, null
  br i1 %tobool3, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end2
  %5 = load ptr, ptr %proto, align 8
  %call4 = call i32 @strcmp(ptr noundef %5, ptr noundef @.str) #11
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true6, label %if.then12

land.lhs.true6:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %proto, align 8
  %call7 = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.1) #11
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true9, label %if.then12

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %7 = load ptr, ptr %proto, align 8
  %call10 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.2) #11
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %land.lhs.true9, %land.lhs.true6, %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup147

if.end13:                                         ; preds = %land.lhs.true9, %if.end2
  call void @llvm.lifetime.start.p0(i64 4, ptr %ist1) #8
  store i32 -1431655766, ptr %ist1, align 4, !annotation !2
  store i32 0, ptr %ist1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc106, %if.end13
  %8 = load i32, ptr %ist1, align 4
  %9 = load ptr, ptr %s.addr, align 8
  %nb_streams = getelementptr inbounds %struct.AVFormatContext, ptr %9, i32 0, i32 6
  %10 = load i32, ptr %nb_streams, align 4
  %cmp14 = icmp ult i32 %8, %10
  br i1 %cmp14, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 4, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ist1) #8
  br label %for.end109

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %st1) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %st1, align 8, !annotation !2
  %11 = load ptr, ptr %s.addr, align 8
  %streams = getelementptr inbounds %struct.AVFormatContext, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %streams, align 8
  %13 = load i32, ptr %ist1, align 4
  %idxprom = zext i32 %13 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 %idxprom
  %14 = load ptr, ptr %arrayidx, align 8
  store ptr %14, ptr %st1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sti1) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %sti1, align 8, !annotation !2
  %15 = load ptr, ptr %st1, align 8
  %call15 = call ptr @ffstream(ptr noundef %15)
  store ptr %call15, ptr %sti1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ist2) #8
  store i32 -1431655766, ptr %ist2, align 4, !annotation !2
  store i32 0, ptr %ist2, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc102, %for.body
  %16 = load i32, ptr %ist2, align 4
  %17 = load ptr, ptr %s.addr, align 8
  %nb_streams17 = getelementptr inbounds %struct.AVFormatContext, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %nb_streams17, align 4
  %cmp18 = icmp ult i32 %16, %18
  br i1 %cmp18, label %for.body20, label %for.cond.cleanup19

for.cond.cleanup19:                               ; preds = %for.cond16
  store i32 7, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ist2) #8
  br label %for.end105

for.body20:                                       ; preds = %for.cond16
  call void @llvm.lifetime.start.p0(i64 8, ptr %st2) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %st2, align 8, !annotation !2
  %19 = load ptr, ptr %s.addr, align 8
  %streams21 = getelementptr inbounds %struct.AVFormatContext, ptr %19, i32 0, i32 7
  %20 = load ptr, ptr %streams21, align 8
  %21 = load i32, ptr %ist2, align 4
  %idxprom22 = zext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %20, i64 %idxprom22
  %22 = load ptr, ptr %arrayidx23, align 8
  store ptr %22, ptr %st2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sti2) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %sti2, align 8, !annotation !2
  %23 = load ptr, ptr %st2, align 8
  %call24 = call ptr @ffstream(ptr noundef %23)
  store ptr %call24, ptr %sti2, align 8
  %24 = load i32, ptr %ist1, align 4
  %25 = load i32, ptr %ist2, align 4
  %cmp25 = icmp eq i32 %24, %25
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.body20
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup99

if.end27:                                         ; preds = %for.body20
  call void @llvm.lifetime.start.p0(i64 4, ptr %i1) #8
  store i32 -1431655766, ptr %i1, align 4, !annotation !2
  store i32 0, ptr %i1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #8
  store i32 -1431655766, ptr %i2, align 4, !annotation !2
  store i32 0, ptr %i2, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc94, %if.end27
  %26 = load i32, ptr %i1, align 4
  %27 = load ptr, ptr %sti1, align 8
  %nb_index_entries = getelementptr inbounds %struct.FFStream, ptr %27, i32 0, i32 12
  %28 = load i32, ptr %nb_index_entries, align 8
  %cmp29 = icmp slt i32 %26, %28
  br i1 %cmp29, label %for.body31, label %for.cond.cleanup30

for.cond.cleanup30:                               ; preds = %for.cond28
  store i32 10, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i1) #8
  br label %for.end98

for.body31:                                       ; preds = %for.cond28
  call void @llvm.lifetime.start.p0(i64 8, ptr %e1) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %e1, align 8, !annotation !2
  %29 = load ptr, ptr %sti1, align 8
  %index_entries = getelementptr inbounds %struct.FFStream, ptr %29, i32 0, i32 11
  %30 = load ptr, ptr %index_entries, align 8
  %31 = load i32, ptr %i1, align 4
  %idxprom32 = sext i32 %31 to i64
  %arrayidx33 = getelementptr inbounds %struct.AVIndexEntry, ptr %30, i64 %idxprom32
  store ptr %arrayidx33, ptr %e1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %e1_pts) #8
  store i64 -6148914691236517206, ptr %e1_pts, align 8, !annotation !2
  %32 = load ptr, ptr %e1, align 8
  %timestamp = getelementptr inbounds %struct.AVIndexEntry, ptr %32, i32 0, i32 1
  %33 = load i64, ptr %timestamp, align 8
  %34 = load ptr, ptr %st1, align 8
  %time_base = getelementptr inbounds %struct.AVStream, ptr %34, i32 0, i32 5
  %num = getelementptr inbounds %struct.AVRational, ptr %.compoundliteral, i32 0, i32 0
  store i32 1, ptr %num, align 4
  %den = getelementptr inbounds %struct.AVRational, ptr %.compoundliteral, i32 0, i32 1
  store i32 1000000, ptr %den, align 4
  %35 = load i64, ptr %time_base, align 8
  %36 = load i64, ptr %.compoundliteral, align 4
  %call34 = call i64 @av_rescale_q(i64 noundef %33, i64 %35, i64 %36) #9
  store i64 %call34, ptr %e1_pts, align 8
  %37 = load ptr, ptr %e1, align 8
  %size = getelementptr inbounds %struct.AVIndexEntry, ptr %37, i32 0, i32 2
  %bf.load = load i32, ptr %size, align 8
  %bf.ashr = ashr i32 %bf.load, 2
  %cmp35 = icmp slt i32 %bf.ashr, 8388608
  br i1 %cmp35, label %if.then36, label %if.end46

if.then36:                                        ; preds = %for.body31
  %38 = load i64, ptr %skip, align 8
  %39 = load ptr, ptr %e1, align 8
  %size37 = getelementptr inbounds %struct.AVIndexEntry, ptr %39, i32 0, i32 2
  %bf.load38 = load i32, ptr %size37, align 8
  %bf.ashr39 = ashr i32 %bf.load38, 2
  %conv = sext i32 %bf.ashr39 to i64
  %cmp40 = icmp sgt i64 %38, %conv
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then36
  %40 = load i64, ptr %skip, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then36
  %41 = load ptr, ptr %e1, align 8
  %size42 = getelementptr inbounds %struct.AVIndexEntry, ptr %41, i32 0, i32 2
  %bf.load43 = load i32, ptr %size42, align 8
  %bf.ashr44 = ashr i32 %bf.load43, 2
  %conv45 = sext i32 %bf.ashr44 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %40, %cond.true ], [ %conv45, %cond.false ]
  store i64 %cond, ptr %skip, align 8
  br label %if.end46

if.end46:                                         ; preds = %cond.end, %for.body31
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc, %if.end46
  %42 = load i32, ptr %i2, align 4
  %43 = load ptr, ptr %sti2, align 8
  %nb_index_entries48 = getelementptr inbounds %struct.FFStream, ptr %43, i32 0, i32 12
  %44 = load i32, ptr %nb_index_entries48, align 8
  %cmp49 = icmp slt i32 %42, %44
  br i1 %cmp49, label %for.body51, label %for.end

for.body51:                                       ; preds = %for.cond47
  call void @llvm.lifetime.start.p0(i64 8, ptr %e2) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %e2, align 8, !annotation !2
  %45 = load ptr, ptr %sti2, align 8
  %index_entries52 = getelementptr inbounds %struct.FFStream, ptr %45, i32 0, i32 11
  %46 = load ptr, ptr %index_entries52, align 8
  %47 = load i32, ptr %i2, align 4
  %idxprom53 = sext i32 %47 to i64
  %arrayidx54 = getelementptr inbounds %struct.AVIndexEntry, ptr %46, i64 %idxprom53
  store ptr %arrayidx54, ptr %e2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %e2_pts) #8
  store i64 -6148914691236517206, ptr %e2_pts, align 8, !annotation !2
  %48 = load ptr, ptr %e2, align 8
  %timestamp55 = getelementptr inbounds %struct.AVIndexEntry, ptr %48, i32 0, i32 1
  %49 = load i64, ptr %timestamp55, align 8
  %50 = load ptr, ptr %st2, align 8
  %time_base56 = getelementptr inbounds %struct.AVStream, ptr %50, i32 0, i32 5
  %num58 = getelementptr inbounds %struct.AVRational, ptr %.compoundliteral57, i32 0, i32 0
  store i32 1, ptr %num58, align 4
  %den59 = getelementptr inbounds %struct.AVRational, ptr %.compoundliteral57, i32 0, i32 1
  store i32 1000000, ptr %den59, align 4
  %51 = load i64, ptr %time_base56, align 8
  %52 = load i64, ptr %.compoundliteral57, align 4
  %call60 = call i64 @av_rescale_q(i64 noundef %49, i64 %51, i64 %52) #9
  store i64 %call60, ptr %e2_pts, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_delta) #8
  store i64 -6148914691236517206, ptr %cur_delta, align 8, !annotation !2
  %53 = load i64, ptr %e2_pts, align 8
  %54 = load i64, ptr %e1_pts, align 8
  %cmp61 = icmp slt i64 %53, %54
  br i1 %cmp61, label %if.then65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body51
  %55 = load i64, ptr %e2_pts, align 8
  %56 = load i64, ptr %e1_pts, align 8
  %sub = sub i64 %55, %56
  %57 = load i64, ptr %time_tolerance.addr, align 8
  %cmp63 = icmp ult i64 %sub, %57
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %lor.lhs.false, %for.body51
  store i32 15, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end66:                                         ; preds = %lor.lhs.false
  %58 = load ptr, ptr %e1, align 8
  %pos = getelementptr inbounds %struct.AVIndexEntry, ptr %58, i32 0, i32 0
  %59 = load i64, ptr %pos, align 8
  %60 = load ptr, ptr %e2, align 8
  %pos67 = getelementptr inbounds %struct.AVIndexEntry, ptr %60, i32 0, i32 0
  %61 = load i64, ptr %pos67, align 8
  %sub68 = sub nsw i64 %59, %61
  %cmp69 = icmp sge i64 %sub68, 0
  br i1 %cmp69, label %cond.true71, label %cond.false75

cond.true71:                                      ; preds = %if.end66
  %62 = load ptr, ptr %e1, align 8
  %pos72 = getelementptr inbounds %struct.AVIndexEntry, ptr %62, i32 0, i32 0
  %63 = load i64, ptr %pos72, align 8
  %64 = load ptr, ptr %e2, align 8
  %pos73 = getelementptr inbounds %struct.AVIndexEntry, ptr %64, i32 0, i32 0
  %65 = load i64, ptr %pos73, align 8
  %sub74 = sub nsw i64 %63, %65
  br label %cond.end80

cond.false75:                                     ; preds = %if.end66
  %66 = load ptr, ptr %e1, align 8
  %pos76 = getelementptr inbounds %struct.AVIndexEntry, ptr %66, i32 0, i32 0
  %67 = load i64, ptr %pos76, align 8
  %68 = load ptr, ptr %e2, align 8
  %pos77 = getelementptr inbounds %struct.AVIndexEntry, ptr %68, i32 0, i32 0
  %69 = load i64, ptr %pos77, align 8
  %sub78 = sub nsw i64 %67, %69
  %sub79 = sub nsw i64 0, %sub78
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false75, %cond.true71
  %cond81 = phi i64 [ %sub74, %cond.true71 ], [ %sub79, %cond.false75 ]
  store i64 %cond81, ptr %cur_delta, align 8
  %70 = load i64, ptr %cur_delta, align 8
  %cmp82 = icmp slt i64 %70, 8388608
  br i1 %cmp82, label %if.then84, label %if.end91

if.then84:                                        ; preds = %cond.end80
  %71 = load i64, ptr %pos_delta, align 8
  %72 = load i64, ptr %cur_delta, align 8
  %cmp85 = icmp sgt i64 %71, %72
  br i1 %cmp85, label %cond.true87, label %cond.false88

cond.true87:                                      ; preds = %if.then84
  %73 = load i64, ptr %pos_delta, align 8
  br label %cond.end89

cond.false88:                                     ; preds = %if.then84
  %74 = load i64, ptr %cur_delta, align 8
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false88, %cond.true87
  %cond90 = phi i64 [ %73, %cond.true87 ], [ %74, %cond.false88 ]
  store i64 %cond90, ptr %pos_delta, align 8
  br label %if.end91

if.end91:                                         ; preds = %cond.end89, %cond.end80
  store i32 13, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %if.then65
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_delta) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %e2_pts) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %e2) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 15, label %for.inc
    i32 13, label %for.end
  ]

for.inc:                                          ; preds = %cleanup
  %75 = load i32, ptr %i2, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, ptr %i2, align 4
  br label %for.cond47, !llvm.loop !9

for.end:                                          ; preds = %cleanup, %for.cond47
  call void @llvm.lifetime.end.p0(i64 8, ptr %e1_pts) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %e1) #8
  br label %for.inc94

for.inc94:                                        ; preds = %for.end
  %76 = load i32, ptr %i1, align 4
  %inc95 = add nsw i32 %76, 1
  store i32 %inc95, ptr %i1, align 4
  br label %for.cond28, !llvm.loop !10

for.end98:                                        ; preds = %for.cond.cleanup30
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup99

cleanup99:                                        ; preds = %for.end98, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %sti2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %st2) #8
  %cleanup.dest101 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest101, label %unreachable [
    i32 0, label %cleanup.cont
    i32 9, label %for.inc102
  ]

cleanup.cont:                                     ; preds = %cleanup99
  br label %for.inc102

for.inc102:                                       ; preds = %cleanup.cont, %cleanup99
  %77 = load i32, ptr %ist2, align 4
  %inc103 = add i32 %77, 1
  store i32 %inc103, ptr %ist2, align 4
  br label %for.cond16, !llvm.loop !11

for.end105:                                       ; preds = %for.cond.cleanup19
  call void @llvm.lifetime.end.p0(i64 8, ptr %sti1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %st1) #8
  br label %for.inc106

for.inc106:                                       ; preds = %for.end105
  %78 = load i32, ptr %ist1, align 4
  %inc107 = add i32 %78, 1
  store i32 %inc107, ptr %ist1, align 4
  br label %for.cond, !llvm.loop !12

for.end109:                                       ; preds = %for.cond.cleanup
  %79 = load i64, ptr %pos_delta, align 8
  %mul = mul nsw i64 %79, 2
  store i64 %mul, ptr %pos_delta, align 8
  %80 = load ptr, ptr %s.addr, align 8
  %pb = getelementptr inbounds %struct.AVFormatContext, ptr %80, i32 0, i32 4
  %81 = load ptr, ptr %pb, align 8
  %call110 = call ptr @ffiocontext(ptr noundef %81)
  store ptr %call110, ptr %ctx, align 8
  %82 = load ptr, ptr %s.addr, align 8
  %pb111 = getelementptr inbounds %struct.AVFormatContext, ptr %82, i32 0, i32 4
  %83 = load ptr, ptr %pb111, align 8
  %buffer_size = getelementptr inbounds %struct.AVIOContext, ptr %83, i32 0, i32 2
  %84 = load i32, ptr %buffer_size, align 8
  %conv112 = sext i32 %84 to i64
  %85 = load i64, ptr %pos_delta, align 8
  %cmp113 = icmp slt i64 %conv112, %85
  br i1 %cmp113, label %if.then115, label %if.end134

if.then115:                                       ; preds = %for.end109
  %86 = load ptr, ptr %s.addr, align 8
  %pb116 = getelementptr inbounds %struct.AVFormatContext, ptr %86, i32 0, i32 4
  %87 = load ptr, ptr %pb116, align 8
  %88 = load i64, ptr %pos_delta, align 8
  %conv117 = trunc i64 %88 to i32
  %call118 = call i32 @ffio_realloc_buf(ptr noundef %87, i32 noundef %conv117)
  %tobool119 = icmp ne i32 %call118, 0
  br i1 %tobool119, label %if.then120, label %if.end121

if.then120:                                       ; preds = %if.then115
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup147

if.end121:                                        ; preds = %if.then115
  %89 = load ptr, ptr %ctx, align 8
  %short_seek_threshold = getelementptr inbounds %struct.FFIOContext, ptr %89, i32 0, i32 2
  %90 = load i32, ptr %short_seek_threshold, align 8
  %conv122 = sext i32 %90 to i64
  %91 = load i64, ptr %pos_delta, align 8
  %div = sdiv i64 %91, 2
  %cmp123 = icmp sgt i64 %conv122, %div
  br i1 %cmp123, label %cond.true125, label %cond.false128

cond.true125:                                     ; preds = %if.end121
  %92 = load ptr, ptr %ctx, align 8
  %short_seek_threshold126 = getelementptr inbounds %struct.FFIOContext, ptr %92, i32 0, i32 2
  %93 = load i32, ptr %short_seek_threshold126, align 8
  %conv127 = sext i32 %93 to i64
  br label %cond.end130

cond.false128:                                    ; preds = %if.end121
  %94 = load i64, ptr %pos_delta, align 8
  %div129 = sdiv i64 %94, 2
  br label %cond.end130

cond.end130:                                      ; preds = %cond.false128, %cond.true125
  %cond131 = phi i64 [ %conv127, %cond.true125 ], [ %div129, %cond.false128 ]
  %conv132 = trunc i64 %cond131 to i32
  %95 = load ptr, ptr %ctx, align 8
  %short_seek_threshold133 = getelementptr inbounds %struct.FFIOContext, ptr %95, i32 0, i32 2
  store i32 %conv132, ptr %short_seek_threshold133, align 8
  br label %if.end134

if.end134:                                        ; preds = %cond.end130, %for.end109
  %96 = load ptr, ptr %ctx, align 8
  %short_seek_threshold135 = getelementptr inbounds %struct.FFIOContext, ptr %96, i32 0, i32 2
  %97 = load i32, ptr %short_seek_threshold135, align 8
  %conv136 = sext i32 %97 to i64
  %98 = load i64, ptr %skip, align 8
  %cmp137 = icmp sgt i64 %conv136, %98
  br i1 %cmp137, label %cond.true139, label %cond.false142

cond.true139:                                     ; preds = %if.end134
  %99 = load ptr, ptr %ctx, align 8
  %short_seek_threshold140 = getelementptr inbounds %struct.FFIOContext, ptr %99, i32 0, i32 2
  %100 = load i32, ptr %short_seek_threshold140, align 8
  %conv141 = sext i32 %100 to i64
  br label %cond.end143

cond.false142:                                    ; preds = %if.end134
  %101 = load i64, ptr %skip, align 8
  br label %cond.end143

cond.end143:                                      ; preds = %cond.false142, %cond.true139
  %cond144 = phi i64 [ %conv141, %cond.true139 ], [ %101, %cond.false142 ]
  %conv145 = trunc i64 %cond144 to i32
  %102 = load ptr, ptr %ctx, align 8
  %short_seek_threshold146 = getelementptr inbounds %struct.FFIOContext, ptr %102, i32 0, i32 2
  store i32 %conv145, ptr %short_seek_threshold146, align 8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup147

cleanup147:                                       ; preds = %cond.end143, %if.then120, %if.then12
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %proto) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %skip) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos_delta) #8
  %cleanup.dest151 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest151, label %unreachable [
    i32 0, label %cleanup.cont152
    i32 1, label %cleanup.cont152
  ]

cleanup.cont152:                                  ; preds = %cleanup147, %cleanup147
  ret void

unreachable:                                      ; preds = %cleanup147, %cleanup99, %cleanup
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare ptr @avio_find_protocol_name(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) #3

; Function Attrs: alwaysinline nounwind null_pointer_is_valid ssp
define internal ptr @ffiocontext(ptr noundef %ctx) #2 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare i32 @ffio_realloc_buf(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @av_index_search_timestamp(ptr noundef %st, i64 noundef %wanted_timestamp, i32 noundef %flags) #0 {
entry:
  %st.addr = alloca ptr, align 8
  %wanted_timestamp.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %sti = alloca ptr, align 8
  store ptr %st, ptr %st.addr, align 8
  store i64 %wanted_timestamp, ptr %wanted_timestamp.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sti) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %sti, align 8, !annotation !2
  %0 = load ptr, ptr %st.addr, align 8
  %call = call ptr @ffstream(ptr noundef %0)
  store ptr %call, ptr %sti, align 8
  %1 = load ptr, ptr %sti, align 8
  %index_entries = getelementptr inbounds %struct.FFStream, ptr %1, i32 0, i32 11
  %2 = load ptr, ptr %index_entries, align 8
  %3 = load ptr, ptr %sti, align 8
  %nb_index_entries = getelementptr inbounds %struct.FFStream, ptr %3, i32 0, i32 12
  %4 = load i32, ptr %nb_index_entries, align 8
  %5 = load i64, ptr %wanted_timestamp.addr, align 8
  %6 = load i32, ptr %flags.addr, align 4
  %call1 = call i32 @ff_index_search_timestamp(ptr noundef %2, i32 noundef %4, i64 noundef %5, i32 noundef %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr %sti) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @avformat_index_get_entries_count(ptr noundef %st) #0 {
entry:
  %st.addr = alloca ptr, align 8
  store ptr %st, ptr %st.addr, align 8
  %0 = load ptr, ptr %st.addr, align 8
  %call = call ptr @cffstream(ptr noundef %0)
  %nb_index_entries = getelementptr inbounds %struct.FFStream, ptr %call, i32 0, i32 12
  %1 = load i32, ptr %nb_index_entries, align 8
  ret i32 %1
}

; Function Attrs: alwaysinline nounwind null_pointer_is_valid ssp
define internal ptr @cffstream(ptr noundef %st) #2 {
entry:
  %st.addr = alloca ptr, align 8
  store ptr %st, ptr %st.addr, align 8
  %0 = load ptr, ptr %st.addr, align 8
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden ptr @avformat_index_get_entry(ptr noundef %st, i32 noundef %idx) #0 {
entry:
  %retval = alloca ptr, align 8
  %st.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %sti = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %st, ptr %st.addr, align 8
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sti) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %sti, align 8, !annotation !2
  %0 = load ptr, ptr %st.addr, align 8
  %call = call ptr @ffstream(ptr noundef %0)
  store ptr %call, ptr %sti, align 8
  %1 = load i32, ptr %idx.addr, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %idx.addr, align 4
  %3 = load ptr, ptr %sti, align 8
  %nb_index_entries = getelementptr inbounds %struct.FFStream, ptr %3, i32 0, i32 12
  %4 = load i32, ptr %nb_index_entries, align 8
  %cmp1 = icmp sge i32 %2, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %sti, align 8
  %index_entries = getelementptr inbounds %struct.FFStream, ptr %5, i32 0, i32 11
  %6 = load ptr, ptr %index_entries, align 8
  %7 = load i32, ptr %idx.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.AVIndexEntry, ptr %6, i64 %idxprom
  store ptr %arrayidx, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sti) #8
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden ptr @avformat_index_get_entry_from_timestamp(ptr noundef %st, i64 noundef %wanted_timestamp, i32 noundef %flags) #0 {
entry:
  %retval = alloca ptr, align 8
  %st.addr = alloca ptr, align 8
  %wanted_timestamp.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %sti = alloca ptr, align 8
  %idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %st, ptr %st.addr, align 8
  store i64 %wanted_timestamp, ptr %wanted_timestamp.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sti) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %sti, align 8, !annotation !2
  %0 = load ptr, ptr %st.addr, align 8
  %call = call ptr @ffstream(ptr noundef %0)
  store ptr %call, ptr %sti, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #8
  store i32 -1431655766, ptr %idx, align 4, !annotation !2
  %1 = load ptr, ptr %sti, align 8
  %index_entries = getelementptr inbounds %struct.FFStream, ptr %1, i32 0, i32 11
  %2 = load ptr, ptr %index_entries, align 8
  %3 = load ptr, ptr %sti, align 8
  %nb_index_entries = getelementptr inbounds %struct.FFStream, ptr %3, i32 0, i32 12
  %4 = load i32, ptr %nb_index_entries, align 8
  %5 = load i64, ptr %wanted_timestamp.addr, align 8
  %6 = load i32, ptr %flags.addr, align 4
  %call1 = call i32 @ff_index_search_timestamp(ptr noundef %2, i32 noundef %4, i64 noundef %5, i32 noundef %6)
  store i32 %call1, ptr %idx, align 4
  %7 = load i32, ptr %idx, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %sti, align 8
  %index_entries2 = getelementptr inbounds %struct.FFStream, ptr %8, i32 0, i32 11
  %9 = load ptr, ptr %index_entries2, align 8
  %10 = load i32, ptr %idx, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.AVIndexEntry, ptr %9, i64 %idxprom
  store ptr %arrayidx, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sti) #8
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @ff_seek_frame_binary(ptr noundef %s, i32 noundef %stream_index, i64 noundef %target_ts, i32 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %stream_index.addr = alloca i32, align 4
  %target_ts.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %avif = alloca ptr, align 8
  %pos_min = alloca i64, align 8
  %pos_max = alloca i64, align 8
  %pos = alloca i64, align 8
  %pos_limit = alloca i64, align 8
  %ts_min = alloca i64, align 8
  %ts_max = alloca i64, align 8
  %ts = alloca i64, align 8
  %index = alloca i32, align 4
  %ret = alloca i64, align 8
  %st = alloca ptr, align 8
  %sti = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %e = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  store i32 %stream_index, ptr %stream_index.addr, align 4
  store i64 %target_ts, ptr %target_ts.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %avif) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %avif, align 8, !annotation !2
  %0 = load ptr, ptr %s.addr, align 8
  %iformat = getelementptr inbounds %struct.AVFormatContext, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %iformat, align 8
  store ptr %1, ptr %avif, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos_min) #8
  store i64 -6148914691236517206, ptr %pos_min, align 8, !annotation !2
  store i64 0, ptr %pos_min, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos_max) #8
  store i64 -6148914691236517206, ptr %pos_max, align 8, !annotation !2
  store i64 0, ptr %pos_max, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #8
  store i64 -6148914691236517206, ptr %pos, align 8, !annotation !2
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos_limit) #8
  store i64 -6148914691236517206, ptr %pos_limit, align 8, !annotation !2
  call void @llvm.lifetime.start.p0(i64 8, ptr %ts_min) #8
  store i64 -6148914691236517206, ptr %ts_min, align 8, !annotation !2
  call void @llvm.lifetime.start.p0(i64 8, ptr %ts_max) #8
  store i64 -6148914691236517206, ptr %ts_max, align 8, !annotation !2
  call void @llvm.lifetime.start.p0(i64 8, ptr %ts) #8
  store i64 -6148914691236517206, ptr %ts, align 8, !annotation !2
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #8
  store i32 -1431655766, ptr %index, align 4, !annotation !2
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  store i64 -6148914691236517206, ptr %ret, align 8, !annotation !2
  call void @llvm.lifetime.start.p0(i64 8, ptr %st) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %st, align 8, !annotation !2
  call void @llvm.lifetime.start.p0(i64 8, ptr %sti) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %sti, align 8, !annotation !2
  %2 = load i32, ptr %stream_index.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i64 -9223372036854775808, ptr %ts_min, align 8
  store i64 -9223372036854775808, ptr %ts_max, align 8
  store i64 -1, ptr %pos_limit, align 8
  %3 = load ptr, ptr %s.addr, align 8
  %streams = getelementptr inbounds %struct.AVFormatContext, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %streams, align 8
  %5 = load i32, ptr %stream_index.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  store ptr %6, ptr %st, align 8
  %7 = load ptr, ptr %st, align 8
  %call = call ptr @ffstream(ptr noundef %7)
  store ptr %call, ptr %sti, align 8
  %8 = load ptr, ptr %sti, align 8
  %index_entries = getelementptr inbounds %struct.FFStream, ptr %8, i32 0, i32 11
  %9 = load ptr, ptr %index_entries, align 8
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %if.then1, label %if.end31

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %e, align 8, !annotation !2
  %10 = load ptr, ptr %st, align 8
  %11 = load i64, ptr %target_ts.addr, align 8
  %12 = load i32, ptr %flags.addr, align 4
  %or = or i32 %12, 1
  %call2 = call i32 @av_index_search_timestamp(ptr noundef %10, i64 noundef %11, i32 noundef %or)
  store i32 %call2, ptr %index, align 4
  %13 = load i32, ptr %index, align 4
  %cmp3 = icmp sgt i32 %13, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then1
  %14 = load i32, ptr %index, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %index, align 4
  %15 = load ptr, ptr %sti, align 8
  %index_entries4 = getelementptr inbounds %struct.FFStream, ptr %15, i32 0, i32 11
  %16 = load ptr, ptr %index_entries4, align 8
  %17 = load i32, ptr %index, align 4
  %idxprom5 = sext i32 %17 to i64
  %arrayidx6 = getelementptr inbounds %struct.AVIndexEntry, ptr %16, i64 %idxprom5
  store ptr %arrayidx6, ptr %e, align 8
  %18 = load ptr, ptr %e, align 8
  %timestamp = getelementptr inbounds %struct.AVIndexEntry, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %timestamp, align 8
  %20 = load i64, ptr %target_ts.addr, align 8
  %cmp7 = icmp sle i64 %19, %20
  br i1 %cmp7, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %21 = load ptr, ptr %e, align 8
  %pos8 = getelementptr inbounds %struct.AVIndexEntry, ptr %21, i32 0, i32 0
  %22 = load i64, ptr %pos8, align 8
  %23 = load ptr, ptr %e, align 8
  %min_distance = getelementptr inbounds %struct.AVIndexEntry, ptr %23, i32 0, i32 3
  %24 = load i32, ptr %min_distance, align 4
  %conv = sext i32 %24 to i64
  %cmp9 = icmp eq i64 %22, %conv
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %lor.lhs.false, %cond.end
  %25 = load ptr, ptr %e, align 8
  %pos12 = getelementptr inbounds %struct.AVIndexEntry, ptr %25, i32 0, i32 0
  %26 = load i64, ptr %pos12, align 8
  store i64 %26, ptr %pos_min, align 8
  %27 = load ptr, ptr %e, align 8
  %timestamp13 = getelementptr inbounds %struct.AVIndexEntry, ptr %27, i32 0, i32 1
  %28 = load i64, ptr %timestamp13, align 8
  store i64 %28, ptr %ts_min, align 8
  br label %if.end14

if.else:                                          ; preds = %lor.lhs.false
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  %29 = load ptr, ptr %st, align 8
  %30 = load i64, ptr %target_ts.addr, align 8
  %31 = load i32, ptr %flags.addr, align 4
  %and = and i32 %31, -2
  %call15 = call i32 @av_index_search_timestamp(ptr noundef %29, i64 noundef %30, i32 noundef %and)
  store i32 %call15, ptr %index, align 4
  br label %do.body

do.body:                                          ; preds = %if.end14
  %32 = load i32, ptr %index, align 4
  %33 = load ptr, ptr %sti, align 8
  %nb_index_entries = getelementptr inbounds %struct.FFStream, ptr %33, i32 0, i32 12
  %34 = load i32, ptr %nb_index_entries, align 8
  %cmp16 = icmp slt i32 %32, %34
  br i1 %cmp16, label %if.end19, label %if.then18

if.then18:                                        ; preds = %do.body
  call void @abort() #10
  unreachable

if.end19:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end19
  br label %do.end

do.end:                                           ; preds = %do.cond
  %35 = load i32, ptr %index, align 4
  %cmp20 = icmp sge i32 %35, 0
  br i1 %cmp20, label %if.then22, label %if.end30

if.then22:                                        ; preds = %do.end
  %36 = load ptr, ptr %sti, align 8
  %index_entries23 = getelementptr inbounds %struct.FFStream, ptr %36, i32 0, i32 11
  %37 = load ptr, ptr %index_entries23, align 8
  %38 = load i32, ptr %index, align 4
  %idxprom24 = sext i32 %38 to i64
  %arrayidx25 = getelementptr inbounds %struct.AVIndexEntry, ptr %37, i64 %idxprom24
  store ptr %arrayidx25, ptr %e, align 8
  %39 = load ptr, ptr %e, align 8
  %pos26 = getelementptr inbounds %struct.AVIndexEntry, ptr %39, i32 0, i32 0
  %40 = load i64, ptr %pos26, align 8
  store i64 %40, ptr %pos_max, align 8
  %41 = load ptr, ptr %e, align 8
  %timestamp27 = getelementptr inbounds %struct.AVIndexEntry, ptr %41, i32 0, i32 1
  %42 = load i64, ptr %timestamp27, align 8
  store i64 %42, ptr %ts_max, align 8
  %43 = load i64, ptr %pos_max, align 8
  %44 = load ptr, ptr %e, align 8
  %min_distance28 = getelementptr inbounds %struct.AVIndexEntry, ptr %44, i32 0, i32 3
  %45 = load i32, ptr %min_distance28, align 4
  %conv29 = sext i32 %45 to i64
  %sub = sub nsw i64 %43, %conv29
  store i64 %sub, ptr %pos_limit, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then22, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #8
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end
  %46 = load ptr, ptr %s.addr, align 8
  %47 = load i32, ptr %stream_index.addr, align 4
  %48 = load i64, ptr %target_ts.addr, align 8
  %49 = load i64, ptr %pos_min, align 8
  %50 = load i64, ptr %pos_max, align 8
  %51 = load i64, ptr %pos_limit, align 8
  %52 = load i64, ptr %ts_min, align 8
  %53 = load i64, ptr %ts_max, align 8
  %54 = load i32, ptr %flags.addr, align 4
  %55 = load ptr, ptr %avif, align 8
  %read_timestamp = getelementptr inbounds %struct.AVInputFormat, ptr %55, i32 0, i32 15
  %56 = load ptr, ptr %read_timestamp, align 8
  %call32 = call i64 @ff_gen_search(ptr noundef %46, i32 noundef %47, i64 noundef %48, i64 noundef %49, i64 noundef %50, i64 noundef %51, i64 noundef %52, i64 noundef %53, i32 noundef %54, ptr noundef %ts, ptr noundef %56)
  store i64 %call32, ptr %pos, align 8
  %57 = load i64, ptr %pos, align 8
  %cmp33 = icmp slt i64 %57, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end31
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %58 = load ptr, ptr %s.addr, align 8
  %pb = getelementptr inbounds %struct.AVFormatContext, ptr %58, i32 0, i32 4
  %59 = load ptr, ptr %pb, align 8
  %60 = load i64, ptr %pos, align 8
  %call37 = call i64 @avio_seek(ptr noundef %59, i64 noundef %60, i32 noundef 0)
  store i64 %call37, ptr %ret, align 8
  %cmp38 = icmp slt i64 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end36
  %61 = load i64, ptr %ret, align 8
  %conv41 = trunc i64 %61 to i32
  store i32 %conv41, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.end36
  %62 = load ptr, ptr %s.addr, align 8
  call void @ff_read_frame_flush(ptr noundef %62)
  %63 = load ptr, ptr %s.addr, align 8
  %64 = load ptr, ptr %st, align 8
  %65 = load i64, ptr %ts, align 8
  call void @avpriv_update_cur_dts(ptr noundef %63, ptr noundef %64, i64 noundef %65)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then40, %if.then35, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sti) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %st) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ts) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ts_max) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ts_min) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos_limit) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos_max) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos_min) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %avif) #8
  %66 = load i32, ptr %retval, align 4
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i64 @ff_gen_search(ptr noundef %s, i32 noundef %stream_index, i64 noundef %target_ts, i64 noundef %pos_min, i64 noundef %pos_max, i64 noundef %pos_limit, i64 noundef %ts_min, i64 noundef %ts_max, i32 noundef %flags, ptr noundef %ts_ret, ptr noundef %read_timestamp_func) #0 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca ptr, align 8
  %stream_index.addr = alloca i32, align 4
  %target_ts.addr = alloca i64, align 8
  %pos_min.addr = alloca i64, align 8
  %pos_max.addr = alloca i64, align 8
  %pos_limit.addr = alloca i64, align 8
  %ts_min.addr = alloca i64, align 8
  %ts_max.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %ts_ret.addr = alloca ptr, align 8
  %read_timestamp_func.addr = alloca ptr, align 8
  %si = alloca ptr, align 8
  %pos = alloca i64, align 8
  %ts = alloca i64, align 8
  %start_pos = alloca i64, align 8
  %no_change = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %approximate_keyframe_distance = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  store i32 %stream_index, ptr %stream_index.addr, align 4
  store i64 %target_ts, ptr %target_ts.addr, align 8
  store i64 %pos_min, ptr %pos_min.addr, align 8
  store i64 %pos_max, ptr %pos_max.addr, align 8
  store i64 %pos_limit, ptr %pos_limit.addr, align 8
  store i64 %ts_min, ptr %ts_min.addr, align 8
  store i64 %ts_max, ptr %ts_max.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store ptr %ts_ret, ptr %ts_ret.addr, align 8
  store ptr %read_timestamp_func, ptr %read_timestamp_func.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %si) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %si, align 8, !annotation !2
  %0 = load ptr, ptr %s.addr, align 8
  %call = call ptr @ffformatcontext(ptr noundef %0)
  store ptr %call, ptr %si, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #8
  store i64 -6148914691236517206, ptr %pos, align 8, !annotation !2
  call void @llvm.lifetime.start.p0(i64 8, ptr %ts) #8
  store i64 -6148914691236517206, ptr %ts, align 8, !annotation !2
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_pos) #8
  store i64 -6148914691236517206, ptr %start_pos, align 8, !annotation !2
  call void @llvm.lifetime.start.p0(i64 4, ptr %no_change) #8
  store i32 -1431655766, ptr %no_change, align 4, !annotation !2
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 -1431655766, ptr %ret, align 4, !annotation !2
  %1 = load i64, ptr %ts_min.addr, align 8
  %cmp = icmp eq i64 %1, -9223372036854775808
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %si, align 8
  %data_offset = getelementptr inbounds %struct.FFFormatContext, ptr %2, i32 0, i32 5
  %3 = load i64, ptr %data_offset, align 8
  store i64 %3, ptr %pos_min.addr, align 8
  %4 = load ptr, ptr %s.addr, align 8
  %5 = load i32, ptr %stream_index.addr, align 4
  %6 = load ptr, ptr %read_timestamp_func.addr, align 8
  %call1 = call i64 @read_timestamp(ptr noundef %4, i32 noundef %5, ptr noundef %pos_min.addr, i64 noundef 9223372036854775807, ptr noundef %6)
  store i64 %call1, ptr %ts_min.addr, align 8
  %7 = load i64, ptr %ts_min.addr, align 8
  %cmp2 = icmp eq i64 %7, -9223372036854775808
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %8 = load i64, ptr %ts_min.addr, align 8
  %9 = load i64, ptr %target_ts.addr, align 8
  %cmp5 = icmp sge i64 %8, %9
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  %10 = load i64, ptr %ts_min.addr, align 8
  %11 = load ptr, ptr %ts_ret.addr, align 8
  store i64 %10, ptr %11, align 8
  %12 = load i64, ptr %pos_min.addr, align 8
  store i64 %12, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %13 = load i64, ptr %ts_max.addr, align 8
  %cmp8 = icmp eq i64 %13, -9223372036854775808
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end7
  %14 = load ptr, ptr %s.addr, align 8
  %15 = load i32, ptr %stream_index.addr, align 4
  %16 = load ptr, ptr %read_timestamp_func.addr, align 8
  %call10 = call i32 @ff_find_last_ts(ptr noundef %14, i32 noundef %15, ptr noundef %ts_max.addr, ptr noundef %pos_max.addr, ptr noundef %16)
  store i32 %call10, ptr %ret, align 4
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then9
  %17 = load i32, ptr %ret, align 4
  %conv = sext i32 %17 to i64
  store i64 %conv, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  %18 = load i64, ptr %pos_max.addr, align 8
  store i64 %18, ptr %pos_limit.addr, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end7
  %19 = load i64, ptr %ts_max.addr, align 8
  %20 = load i64, ptr %target_ts.addr, align 8
  %cmp15 = icmp sle i64 %19, %20
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  %21 = load i64, ptr %ts_max.addr, align 8
  %22 = load ptr, ptr %ts_ret.addr, align 8
  store i64 %21, ptr %22, align 8
  %23 = load i64, ptr %pos_max.addr, align 8
  store i64 %23, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  br label %do.body

do.body:                                          ; preds = %if.end18
  %24 = load i64, ptr %ts_min.addr, align 8
  %25 = load i64, ptr %ts_max.addr, align 8
  %cmp19 = icmp slt i64 %24, %25
  br i1 %cmp19, label %if.end22, label %if.then21

if.then21:                                        ; preds = %do.body
  call void @abort() #10
  unreachable

if.end22:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end22
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %no_change, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end75, %do.end
  %26 = load i64, ptr %pos_min.addr, align 8
  %27 = load i64, ptr %pos_limit.addr, align 8
  %cmp23 = icmp slt i64 %26, %27
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body25

do.body25:                                        ; preds = %while.body
  %28 = load i64, ptr %pos_limit.addr, align 8
  %29 = load i64, ptr %pos_max.addr, align 8
  %cmp26 = icmp sle i64 %28, %29
  br i1 %cmp26, label %if.end29, label %if.then28

if.then28:                                        ; preds = %do.body25
  call void @abort() #10
  unreachable

if.end29:                                         ; preds = %do.body25
  br label %do.cond30

do.cond30:                                        ; preds = %if.end29
  br label %do.end31

do.end31:                                         ; preds = %do.cond30
  %30 = load i32, ptr %no_change, align 4
  %cmp32 = icmp eq i32 %30, 0
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %do.end31
  call void @llvm.lifetime.start.p0(i64 8, ptr %approximate_keyframe_distance) #8
  store i64 -6148914691236517206, ptr %approximate_keyframe_distance, align 8, !annotation !2
  %31 = load i64, ptr %pos_max.addr, align 8
  %32 = load i64, ptr %pos_limit.addr, align 8
  %sub = sub nsw i64 %31, %32
  store i64 %sub, ptr %approximate_keyframe_distance, align 8
  %33 = load i64, ptr %target_ts.addr, align 8
  %34 = load i64, ptr %ts_min.addr, align 8
  %sub35 = sub nsw i64 %33, %34
  %35 = load i64, ptr %pos_max.addr, align 8
  %36 = load i64, ptr %pos_min.addr, align 8
  %sub36 = sub nsw i64 %35, %36
  %37 = load i64, ptr %ts_max.addr, align 8
  %38 = load i64, ptr %ts_min.addr, align 8
  %sub37 = sub nsw i64 %37, %38
  %call38 = call i64 @av_rescale(i64 noundef %sub35, i64 noundef %sub36, i64 noundef %sub37) #9
  %39 = load i64, ptr %pos_min.addr, align 8
  %add = add nsw i64 %call38, %39
  %40 = load i64, ptr %approximate_keyframe_distance, align 8
  %sub39 = sub nsw i64 %add, %40
  store i64 %sub39, ptr %pos, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %approximate_keyframe_distance) #8
  br label %if.end46

if.else:                                          ; preds = %do.end31
  %41 = load i32, ptr %no_change, align 4
  %cmp40 = icmp eq i32 %41, 1
  br i1 %cmp40, label %if.then42, label %if.else44

if.then42:                                        ; preds = %if.else
  %42 = load i64, ptr %pos_min.addr, align 8
  %43 = load i64, ptr %pos_limit.addr, align 8
  %add43 = add nsw i64 %42, %43
  %shr = ashr i64 %add43, 1
  store i64 %shr, ptr %pos, align 8
  br label %if.end45

if.else44:                                        ; preds = %if.else
  %44 = load i64, ptr %pos_min.addr, align 8
  store i64 %44, ptr %pos, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %if.then42
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then34
  %45 = load i64, ptr %pos, align 8
  %46 = load i64, ptr %pos_min.addr, align 8
  %cmp47 = icmp sle i64 %45, %46
  br i1 %cmp47, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.end46
  %47 = load i64, ptr %pos_min.addr, align 8
  %add50 = add nsw i64 %47, 1
  store i64 %add50, ptr %pos, align 8
  br label %if.end56

if.else51:                                        ; preds = %if.end46
  %48 = load i64, ptr %pos, align 8
  %49 = load i64, ptr %pos_limit.addr, align 8
  %cmp52 = icmp sgt i64 %48, %49
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.else51
  %50 = load i64, ptr %pos_limit.addr, align 8
  store i64 %50, ptr %pos, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.else51
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then49
  %51 = load i64, ptr %pos, align 8
  store i64 %51, ptr %start_pos, align 8
  %52 = load ptr, ptr %s.addr, align 8
  %53 = load i32, ptr %stream_index.addr, align 4
  %54 = load ptr, ptr %read_timestamp_func.addr, align 8
  %call57 = call i64 @read_timestamp(ptr noundef %52, i32 noundef %53, ptr noundef %pos, i64 noundef 9223372036854775807, ptr noundef %54)
  store i64 %call57, ptr %ts, align 8
  %55 = load i64, ptr %pos, align 8
  %56 = load i64, ptr %pos_max.addr, align 8
  %cmp58 = icmp eq i64 %55, %56
  br i1 %cmp58, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.end56
  %57 = load i32, ptr %no_change, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %no_change, align 4
  br label %if.end62

if.else61:                                        ; preds = %if.end56
  store i32 0, ptr %no_change, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.else61, %if.then60
  %58 = load i64, ptr %ts, align 8
  %cmp63 = icmp eq i64 %58, -9223372036854775808
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end62
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end66:                                         ; preds = %if.end62
  %59 = load i64, ptr %target_ts.addr, align 8
  %60 = load i64, ptr %ts, align 8
  %cmp67 = icmp sle i64 %59, %60
  br i1 %cmp67, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.end66
  %61 = load i64, ptr %start_pos, align 8
  %sub70 = sub nsw i64 %61, 1
  store i64 %sub70, ptr %pos_limit.addr, align 8
  %62 = load i64, ptr %pos, align 8
  store i64 %62, ptr %pos_max.addr, align 8
  %63 = load i64, ptr %ts, align 8
  store i64 %63, ptr %ts_max.addr, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end66
  %64 = load i64, ptr %target_ts.addr, align 8
  %65 = load i64, ptr %ts, align 8
  %cmp72 = icmp sge i64 %64, %65
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end71
  %66 = load i64, ptr %pos, align 8
  store i64 %66, ptr %pos_min.addr, align 8
  %67 = load i64, ptr %ts, align 8
  store i64 %67, ptr %ts_min.addr, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end71
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %68 = load i32, ptr %flags.addr, align 4
  %and = and i32 %68, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %69 = load i64, ptr %pos_min.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %70 = load i64, ptr %pos_max.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %69, %cond.true ], [ %70, %cond.false ]
  store i64 %cond, ptr %pos, align 8
  %71 = load i32, ptr %flags.addr, align 4
  %and76 = and i32 %71, 1
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %cond.true78, label %cond.false79

cond.true78:                                      ; preds = %cond.end
  %72 = load i64, ptr %ts_min.addr, align 8
  br label %cond.end80

cond.false79:                                     ; preds = %cond.end
  %73 = load i64, ptr %ts_max.addr, align 8
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false79, %cond.true78
  %cond81 = phi i64 [ %72, %cond.true78 ], [ %73, %cond.false79 ]
  store i64 %cond81, ptr %ts, align 8
  %74 = load i64, ptr %ts, align 8
  %75 = load ptr, ptr %ts_ret.addr, align 8
  store i64 %74, ptr %75, align 8
  %76 = load i64, ptr %pos, align 8
  store i64 %76, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end80, %if.then65, %if.then17, %if.then12, %if.then6, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %no_change) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_pos) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ts) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %si) #8
  %77 = load i64, ptr %retval, align 8
  ret i64 %77
}

; Function Attrs: null_pointer_is_valid
declare i64 @avio_seek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @ff_read_frame_flush(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %si = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %st = alloca ptr, align 8
  %sti = alloca ptr, align 8
  %j = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %si) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %si, align 8, !annotation !2
  %0 = load ptr, ptr %s.addr, align 8
  %call = call ptr @ffformatcontext(ptr noundef %0)
  store ptr %call, ptr %si, align 8
  %1 = load ptr, ptr %s.addr, align 8
  call void @ff_flush_packet_queue(ptr noundef %1)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 -1431655766, ptr %i, align 4, !annotation !2
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %s.addr, align 8
  %nb_streams = getelementptr inbounds %struct.AVFormatContext, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %nb_streams, align 4
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  br label %for.end20

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %st) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %st, align 8, !annotation !2
  %5 = load ptr, ptr %s.addr, align 8
  %streams = getelementptr inbounds %struct.AVFormatContext, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %streams, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  store ptr %8, ptr %st, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sti) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %sti, align 8, !annotation !2
  %9 = load ptr, ptr %st, align 8
  %call1 = call ptr @ffstream(ptr noundef %9)
  store ptr %call1, ptr %sti, align 8
  %10 = load ptr, ptr %sti, align 8
  %parser = getelementptr inbounds %struct.FFStream, ptr %10, i32 0, i32 42
  %11 = load ptr, ptr %parser, align 8
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load ptr, ptr %sti, align 8
  %parser2 = getelementptr inbounds %struct.FFStream, ptr %12, i32 0, i32 42
  %13 = load ptr, ptr %parser2, align 8
  call void @av_parser_close(ptr noundef %13)
  %14 = load ptr, ptr %sti, align 8
  %parser3 = getelementptr inbounds %struct.FFStream, ptr %14, i32 0, i32 42
  store ptr null, ptr %parser3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %15 = load ptr, ptr %sti, align 8
  %last_IP_pts = getelementptr inbounds %struct.FFStream, ptr %15, i32 0, i32 38
  store i64 -9223372036854775808, ptr %last_IP_pts, align 8
  %16 = load ptr, ptr %sti, align 8
  %last_dts_for_order_check = getelementptr inbounds %struct.FFStream, ptr %16, i32 0, i32 31
  store i64 -9223372036854775808, ptr %last_dts_for_order_check, align 8
  %17 = load ptr, ptr %sti, align 8
  %first_dts = getelementptr inbounds %struct.FFStream, ptr %17, i32 0, i32 45
  %18 = load i64, ptr %first_dts, align 8
  %cmp4 = icmp eq i64 %18, -9223372036854775808
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %19 = load ptr, ptr %sti, align 8
  %cur_dts = getelementptr inbounds %struct.FFStream, ptr %19, i32 0, i32 46
  store i64 9223090561878065151, ptr %cur_dts, align 8
  br label %if.end7

if.else:                                          ; preds = %if.end
  %20 = load ptr, ptr %sti, align 8
  %cur_dts6 = getelementptr inbounds %struct.FFStream, ptr %20, i32 0, i32 46
  store i64 -9223372036854775808, ptr %cur_dts6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %21 = load ptr, ptr %s.addr, align 8
  %max_probe_packets = getelementptr inbounds %struct.AVFormatContext, ptr %21, i32 0, i32 71
  %22 = load i32, ptr %max_probe_packets, align 8
  %23 = load ptr, ptr %sti, align 8
  %probe_packets = getelementptr inbounds %struct.FFStream, ptr %23, i32 0, i32 40
  store i32 %22, ptr %probe_packets, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  store i32 -1431655766, ptr %j, align 4, !annotation !2
  store i32 0, ptr %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %if.end7
  %24 = load i32, ptr %j, align 4
  %cmp9 = icmp slt i32 %24, 17
  br i1 %cmp9, label %for.body11, label %for.cond.cleanup10

for.cond.cleanup10:                               ; preds = %for.cond8
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  br label %for.end

for.body11:                                       ; preds = %for.cond8
  %25 = load ptr, ptr %sti, align 8
  %pts_buffer = getelementptr inbounds %struct.FFStream, ptr %25, i32 0, i32 30
  %26 = load i32, ptr %j, align 4
  %idxprom12 = sext i32 %26 to i64
  %arrayidx13 = getelementptr inbounds [17 x i64], ptr %pts_buffer, i64 0, i64 %idxprom12
  store i64 -9223372036854775808, ptr %arrayidx13, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %27 = load i32, ptr %j, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond8, !llvm.loop !14

for.end:                                          ; preds = %for.cond.cleanup10
  %28 = load ptr, ptr %si, align 8
  %inject_global_side_data = getelementptr inbounds %struct.FFFormatContext, ptr %28, i32 0, i32 12
  %29 = load i32, ptr %inject_global_side_data, align 8
  %tobool14 = icmp ne i32 %29, 0
  br i1 %tobool14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %for.end
  %30 = load ptr, ptr %sti, align 8
  %inject_global_side_data16 = getelementptr inbounds %struct.FFStream, ptr %30, i32 0, i32 34
  store i32 1, ptr %inject_global_side_data16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %for.end
  %31 = load ptr, ptr %sti, align 8
  %skip_samples = getelementptr inbounds %struct.FFStream, ptr %31, i32 0, i32 18
  store i32 0, ptr %skip_samples, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sti) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %st) #8
  br label %for.inc18

for.inc18:                                        ; preds = %if.end17
  %32 = load i32, ptr %i, align 4
  %inc19 = add i32 %32, 1
  store i32 %inc19, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end20:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %si) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @ff_find_last_ts(ptr noundef %s, i32 noundef %stream_index, ptr noundef %ts, ptr noundef %pos, ptr noundef %read_timestamp_func) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %stream_index.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  %read_timestamp_func.addr = alloca ptr, align 8
  %step = alloca i64, align 8
  %limit = alloca i64, align 8
  %ts_max = alloca i64, align 8
  %filesize = alloca i64, align 8
  %pos_max = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp_pos = alloca i64, align 8
  %tmp_ts = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  store i32 %stream_index, ptr %stream_index.addr, align 4
  store ptr %ts, ptr %ts.addr, align 8
  store ptr %pos, ptr %pos.addr, align 8
  store ptr %read_timestamp_func, ptr %read_timestamp_func.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %step) #8
  store i64 -6148914691236517206, ptr %step, align 8, !annotation !2
  store i64 1024, ptr %step, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #8
  store i64 -6148914691236517206, ptr %limit, align 8, !annotation !2
  call void @llvm.lifetime.start.p0(i64 8, ptr %ts_max) #8
  store i64 -6148914691236517206, ptr %ts_max, align 8, !annotation !2
  call void @llvm.lifetime.start.p0(i64 8, ptr %filesize) #8
  store i64 -6148914691236517206, ptr %filesize, align 8, !annotation !2
  %0 = load ptr, ptr %s.addr, align 8
  %pb = getelementptr inbounds %struct.AVFormatContext, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pb, align 8
  %call = call i64 @avio_size(ptr noundef %1)
  store i64 %call, ptr %filesize, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos_max) #8
  store i64 -6148914691236517206, ptr %pos_max, align 8, !annotation !2
  %2 = load i64, ptr %filesize, align 8
  %sub = sub nsw i64 %2, 1
  store i64 %sub, ptr %pos_max, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %3 = load i64, ptr %pos_max, align 8
  store i64 %3, ptr %limit, align 8
  %4 = load i64, ptr %pos_max, align 8
  %5 = load i64, ptr %step, align 8
  %sub1 = sub nsw i64 %4, %5
  %cmp = icmp sgt i64 0, %sub1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %6 = load i64, ptr %pos_max, align 8
  %7 = load i64, ptr %step, align 8
  %sub2 = sub nsw i64 %6, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %sub2, %cond.false ]
  store i64 %cond, ptr %pos_max, align 8
  %8 = load ptr, ptr %s.addr, align 8
  %9 = load i32, ptr %stream_index.addr, align 4
  %10 = load i64, ptr %limit, align 8
  %11 = load ptr, ptr %read_timestamp_func.addr, align 8
  %call3 = call i64 @read_timestamp(ptr noundef %8, i32 noundef %9, ptr noundef %pos_max, i64 noundef %10, ptr noundef %11)
  store i64 %call3, ptr %ts_max, align 8
  %12 = load i64, ptr %step, align 8
  %13 = load i64, ptr %step, align 8
  %add = add nsw i64 %13, %12
  store i64 %add, ptr %step, align 8
  br label %do.cond

do.cond:                                          ; preds = %cond.end
  %14 = load i64, ptr %ts_max, align 8
  %cmp4 = icmp eq i64 %14, -9223372036854775808
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %15 = load i64, ptr %limit, align 8
  %mul = mul nsw i64 2, %15
  %16 = load i64, ptr %step, align 8
  %cmp5 = icmp sgt i64 %mul, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %17 = phi i1 [ false, %do.cond ], [ %cmp5, %land.rhs ]
  br i1 %17, label %do.body, label %do.end, !llvm.loop !16

do.end:                                           ; preds = %land.end
  %18 = load i64, ptr %ts_max, align 8
  %cmp6 = icmp eq i64 %18, -9223372036854775808
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27

if.end:                                           ; preds = %do.end
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_pos) #8
  store i64 -6148914691236517206, ptr %tmp_pos, align 8, !annotation !2
  %19 = load i64, ptr %pos_max, align 8
  %add7 = add nsw i64 %19, 1
  store i64 %add7, ptr %tmp_pos, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_ts) #8
  store i64 -6148914691236517206, ptr %tmp_ts, align 8, !annotation !2
  %20 = load ptr, ptr %s.addr, align 8
  %21 = load i32, ptr %stream_index.addr, align 4
  %22 = load ptr, ptr %read_timestamp_func.addr, align 8
  %call8 = call i64 @read_timestamp(ptr noundef %20, i32 noundef %21, ptr noundef %tmp_pos, i64 noundef 9223372036854775807, ptr noundef %22)
  store i64 %call8, ptr %tmp_ts, align 8
  %23 = load i64, ptr %tmp_ts, align 8
  %cmp9 = icmp eq i64 %23, -9223372036854775808
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.cond
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %for.cond
  br label %do.body12

do.body12:                                        ; preds = %if.end11
  %24 = load i64, ptr %tmp_pos, align 8
  %25 = load i64, ptr %pos_max, align 8
  %cmp13 = icmp sgt i64 %24, %25
  br i1 %cmp13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %do.body12
  call void @abort() #10
  unreachable

if.end15:                                         ; preds = %do.body12
  br label %do.cond16

do.cond16:                                        ; preds = %if.end15
  br label %do.end17

do.end17:                                         ; preds = %do.cond16
  %26 = load i64, ptr %tmp_ts, align 8
  store i64 %26, ptr %ts_max, align 8
  %27 = load i64, ptr %tmp_pos, align 8
  store i64 %27, ptr %pos_max, align 8
  %28 = load i64, ptr %tmp_pos, align 8
  %29 = load i64, ptr %filesize, align 8
  %cmp18 = icmp sge i64 %28, %29
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.end17
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %do.end17
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then19, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_ts) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_pos) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end:                                          ; preds = %cleanup
  %30 = load ptr, ptr %ts.addr, align 8
  %tobool = icmp ne ptr %30, null
  br i1 %tobool, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.end
  %31 = load i64, ptr %ts_max, align 8
  %32 = load ptr, ptr %ts.addr, align 8
  store i64 %31, ptr %32, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.end
  %33 = load ptr, ptr %pos.addr, align 8
  %tobool24 = icmp ne ptr %33, null
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end23
  %34 = load i64, ptr %pos_max, align 8
  %35 = load ptr, ptr %pos.addr, align 8
  store i64 %34, ptr %35, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27

cleanup27:                                        ; preds = %if.end26, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos_max) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %filesize) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ts_max) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %step) #8
  %36 = load i32, ptr %retval, align 4
  ret i32 %36

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare i64 @avio_size(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i64 @read_timestamp(ptr noundef %s, i32 noundef %stream_index, ptr noundef %ppos, i64 noundef %pos_limit, ptr noundef %read_timestamp) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %stream_index.addr = alloca i32, align 4
  %ppos.addr = alloca ptr, align 8
  %pos_limit.addr = alloca i64, align 8
  %read_timestamp.addr = alloca ptr, align 8
  %ts = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  store i32 %stream_index, ptr %stream_index.addr, align 4
  store ptr %ppos, ptr %ppos.addr, align 8
  store i64 %pos_limit, ptr %pos_limit.addr, align 8
  store ptr %read_timestamp, ptr %read_timestamp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ts) #8
  store i64 -6148914691236517206, ptr %ts, align 8, !annotation !2
  %0 = load ptr, ptr %read_timestamp.addr, align 8
  %1 = load ptr, ptr %s.addr, align 8
  %2 = load i32, ptr %stream_index.addr, align 4
  %3 = load ptr, ptr %ppos.addr, align 8
  %4 = load i64, ptr %pos_limit.addr, align 8
  %call = call i64 %0(ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4)
  store i64 %call, ptr %ts, align 8
  %5 = load i32, ptr %stream_index.addr, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %s.addr, align 8
  %streams = getelementptr inbounds %struct.AVFormatContext, ptr %6, i32 0, i32 7
  %7 = load ptr, ptr %streams, align 8
  %8 = load i32, ptr %stream_index.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = load i64, ptr %ts, align 8
  %call1 = call i64 @ff_wrap_timestamp(ptr noundef %9, i64 noundef %10)
  store i64 %call1, ptr %ts, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i64, ptr %ts, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ts) #8
  ret i64 %11
}

; Function Attrs: alwaysinline nounwind null_pointer_is_valid ssp
define internal ptr @ffformatcontext(ptr noundef %s) #2 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @av_seek_frame(ptr noundef %s, i32 noundef %stream_index, i64 noundef %timestamp, i32 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %stream_index.addr = alloca i32, align 4
  %timestamp.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %min_ts = alloca i64, align 8
  %max_ts = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %stream_index, ptr %stream_index.addr, align 4
  store i64 %timestamp, ptr %timestamp.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 -1431655766, ptr %ret, align 4, !annotation !2
  %0 = load ptr, ptr %s.addr, align 8
  %iformat = getelementptr inbounds %struct.AVFormatContext, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %iformat, align 8
  %read_seek2 = getelementptr inbounds %struct.AVInputFormat, ptr %1, i32 0, i32 18
  %2 = load ptr, ptr %read_seek2, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8
  %iformat1 = getelementptr inbounds %struct.AVFormatContext, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %iformat1, align 8
  %read_seek = getelementptr inbounds %struct.AVInputFormat, ptr %4, i32 0, i32 14
  %5 = load ptr, ptr %read_seek, align 8
  %tobool2 = icmp ne ptr %5, null
  br i1 %tobool2, label %if.end6, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %min_ts) #8
  store i64 -6148914691236517206, ptr %min_ts, align 8, !annotation !2
  store i64 -9223372036854775808, ptr %min_ts, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_ts) #8
  store i64 -6148914691236517206, ptr %max_ts, align 8, !annotation !2
  store i64 9223372036854775807, ptr %max_ts, align 8
  %6 = load i32, ptr %flags.addr, align 4
  %and = and i32 %6, 1
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %7 = load i64, ptr %timestamp.addr, align 8
  store i64 %7, ptr %max_ts, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load i64, ptr %timestamp.addr, align 8
  store i64 %8, ptr %min_ts, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %9 = load ptr, ptr %s.addr, align 8
  %10 = load i32, ptr %stream_index.addr, align 4
  %11 = load i64, ptr %min_ts, align 8
  %12 = load i64, ptr %timestamp.addr, align 8
  %13 = load i64, ptr %max_ts, align 8
  %14 = load i32, ptr %flags.addr, align 4
  %and5 = and i32 %14, -2
  %call = call i32 @avformat_seek_file(ptr noundef %9, i32 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i32 noundef %and5)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_ts) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %min_ts) #8
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true, %entry
  %15 = load ptr, ptr %s.addr, align 8
  %16 = load i32, ptr %stream_index.addr, align 4
  %17 = load i64, ptr %timestamp.addr, align 8
  %18 = load i32, ptr %flags.addr, align 4
  %call7 = call i32 @seek_frame_internal(ptr noundef %15, i32 noundef %16, i64 noundef %17, i32 noundef %18)
  store i32 %call7, ptr %ret, align 4
  %19 = load i32, ptr %ret, align 4
  %cmp = icmp sge i32 %19, 0
  br i1 %cmp, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %20 = load ptr, ptr %s.addr, align 8
  %call9 = call i32 @avformat_queue_attached_pictures(ptr noundef %20)
  store i32 %call9, ptr %ret, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6
  %21 = load i32, ptr %ret, align 4
  store i32 %21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @avformat_seek_file(ptr noundef %s, i32 noundef %stream_index, i64 noundef %min_ts, i64 noundef %ts, i64 noundef %max_ts, i32 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %stream_index.addr = alloca i32, align 4
  %min_ts.addr = alloca i64, align 8
  %ts.addr = alloca i64, align 8
  %max_ts.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %time_base = alloca %struct.AVRational, align 4
  %.compoundliteral = alloca %struct.AVRational, align 4
  %dir = alloca i32, align 4
  %ret47 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %stream_index, ptr %stream_index.addr, align 4
  store i64 %min_ts, ptr %min_ts.addr, align 8
  store i64 %ts, ptr %ts.addr, align 8
  store i64 %max_ts, ptr %max_ts.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  %0 = load i64, ptr %min_ts.addr, align 8
  %1 = load i64, ptr %ts.addr, align 8
  %cmp = icmp sgt i64 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %max_ts.addr, align 8
  %3 = load i64, ptr %ts.addr, align 8
  %cmp1 = icmp slt i64 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, ptr %stream_index.addr, align 4
  %cmp2 = icmp slt i32 %4, -1
  br i1 %cmp2, label %if.then5, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %5 = load i32, ptr %stream_index.addr, align 4
  %6 = load ptr, ptr %s.addr, align 8
  %nb_streams = getelementptr inbounds %struct.AVFormatContext, ptr %6, i32 0, i32 6
  %7 = load i32, ptr %nb_streams, align 4
  %cmp4 = icmp sge i32 %5, %7
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false3, %if.end
  store i32 -22, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %lor.lhs.false3
  %8 = load ptr, ptr %s.addr, align 8
  %seek2any = getelementptr inbounds %struct.AVFormatContext, ptr %8, i32 0, i32 48
  %9 = load i32, ptr %seek2any, align 4
  %cmp7 = icmp sgt i32 %9, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %10 = load i32, ptr %flags.addr, align 4
  %or = or i32 %10, 4
  store i32 %or, ptr %flags.addr, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %11 = load i32, ptr %flags.addr, align 4
  %and = and i32 %11, -2
  store i32 %and, ptr %flags.addr, align 4
  %12 = load ptr, ptr %s.addr, align 8
  %iformat = getelementptr inbounds %struct.AVFormatContext, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %iformat, align 8
  %read_seek2 = getelementptr inbounds %struct.AVInputFormat, ptr %13, i32 0, i32 18
  %14 = load ptr, ptr %read_seek2, align 8
  %tobool = icmp ne ptr %14, null
  br i1 %tobool, label %if.then10, label %if.end35

if.then10:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 -1431655766, ptr %ret, align 4, !annotation !2
  %15 = load ptr, ptr %s.addr, align 8
  call void @ff_read_frame_flush(ptr noundef %15)
  %16 = load i32, ptr %stream_index.addr, align 4
  %cmp11 = icmp eq i32 %16, -1
  br i1 %cmp11, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.then10
  %17 = load ptr, ptr %s.addr, align 8
  %nb_streams12 = getelementptr inbounds %struct.AVFormatContext, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %nb_streams12, align 4
  %cmp13 = icmp eq i32 %18, 1
  br i1 %cmp13, label %if.then14, label %if.end26

if.then14:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %time_base) #8
  %19 = getelementptr inbounds %struct.AVRational, ptr %time_base, i32 0, i32 0
  store i32 -1431655766, ptr %19, align 4, !annotation !2
  %20 = getelementptr inbounds %struct.AVRational, ptr %time_base, i32 0, i32 1
  store i32 -1431655766, ptr %20, align 4, !annotation !2
  %21 = load ptr, ptr %s.addr, align 8
  %streams = getelementptr inbounds %struct.AVFormatContext, ptr %21, i32 0, i32 7
  %22 = load ptr, ptr %streams, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %22, i64 0
  %23 = load ptr, ptr %arrayidx, align 8
  %time_base15 = getelementptr inbounds %struct.AVStream, ptr %23, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %time_base, ptr align 8 %time_base15, i64 8, i1 false)
  %24 = load i64, ptr %ts.addr, align 8
  %num = getelementptr inbounds %struct.AVRational, ptr %.compoundliteral, i32 0, i32 0
  store i32 1, ptr %num, align 4
  %den = getelementptr inbounds %struct.AVRational, ptr %.compoundliteral, i32 0, i32 1
  store i32 1000000, ptr %den, align 4
  %25 = load i64, ptr %.compoundliteral, align 4
  %26 = load i64, ptr %time_base, align 4
  %call = call i64 @av_rescale_q(i64 noundef %24, i64 %25, i64 %26) #9
  store i64 %call, ptr %ts.addr, align 8
  %27 = load i64, ptr %min_ts.addr, align 8
  %den16 = getelementptr inbounds %struct.AVRational, ptr %time_base, i32 0, i32 1
  %28 = load i32, ptr %den16, align 4
  %conv = sext i32 %28 to i64
  %num17 = getelementptr inbounds %struct.AVRational, ptr %time_base, i32 0, i32 0
  %29 = load i32, ptr %num17, align 4
  %conv18 = sext i32 %29 to i64
  %mul = mul nsw i64 %conv18, 1000000
  %call19 = call i64 @av_rescale_rnd(i64 noundef %27, i64 noundef %conv, i64 noundef %mul, i32 noundef 8195) #9
  store i64 %call19, ptr %min_ts.addr, align 8
  %30 = load i64, ptr %max_ts.addr, align 8
  %den20 = getelementptr inbounds %struct.AVRational, ptr %time_base, i32 0, i32 1
  %31 = load i32, ptr %den20, align 4
  %conv21 = sext i32 %31 to i64
  %num22 = getelementptr inbounds %struct.AVRational, ptr %time_base, i32 0, i32 0
  %32 = load i32, ptr %num22, align 4
  %conv23 = sext i32 %32 to i64
  %mul24 = mul nsw i64 %conv23, 1000000
  %call25 = call i64 @av_rescale_rnd(i64 noundef %30, i64 noundef %conv21, i64 noundef %mul24, i32 noundef 8194) #9
  store i64 %call25, ptr %max_ts.addr, align 8
  store i32 0, ptr %stream_index.addr, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %time_base) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then14, %land.lhs.true, %if.then10
  %33 = load ptr, ptr %s.addr, align 8
  %iformat27 = getelementptr inbounds %struct.AVFormatContext, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %iformat27, align 8
  %read_seek228 = getelementptr inbounds %struct.AVInputFormat, ptr %34, i32 0, i32 18
  %35 = load ptr, ptr %read_seek228, align 8
  %36 = load ptr, ptr %s.addr, align 8
  %37 = load i32, ptr %stream_index.addr, align 4
  %38 = load i64, ptr %min_ts.addr, align 8
  %39 = load i64, ptr %ts.addr, align 8
  %40 = load i64, ptr %max_ts.addr, align 8
  %41 = load i32, ptr %flags.addr, align 4
  %call29 = call i32 %35(ptr noundef %36, i32 noundef %37, i64 noundef %38, i64 noundef %39, i64 noundef %40, i32 noundef %41)
  store i32 %call29, ptr %ret, align 4
  %42 = load i32, ptr %ret, align 4
  %cmp30 = icmp sge i32 %42, 0
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end26
  %43 = load ptr, ptr %s.addr, align 8
  %call33 = call i32 @avformat_queue_attached_pictures(ptr noundef %43)
  store i32 %call33, ptr %ret, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end26
  %44 = load i32, ptr %ret, align 4
  store i32 %44, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  br label %return

if.end35:                                         ; preds = %if.end9
  %45 = load ptr, ptr %s.addr, align 8
  %iformat36 = getelementptr inbounds %struct.AVFormatContext, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %iformat36, align 8
  %read_timestamp = getelementptr inbounds %struct.AVInputFormat, ptr %46, i32 0, i32 15
  %47 = load ptr, ptr %read_timestamp, align 8
  %tobool37 = icmp ne ptr %47, null
  br i1 %tobool37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end35
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35
  %48 = load ptr, ptr %s.addr, align 8
  %iformat40 = getelementptr inbounds %struct.AVFormatContext, ptr %48, i32 0, i32 1
  %49 = load ptr, ptr %iformat40, align 8
  %read_seek = getelementptr inbounds %struct.AVInputFormat, ptr %49, i32 0, i32 14
  %50 = load ptr, ptr %read_seek, align 8
  %tobool41 = icmp ne ptr %50, null
  br i1 %tobool41, label %if.then43, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.end39
  br i1 true, label %if.then43, label %if.end70

if.then43:                                        ; preds = %lor.lhs.false42, %if.end39
  call void @llvm.lifetime.start.p0(i64 4, ptr %dir) #8
  store i32 -1431655766, ptr %dir, align 4, !annotation !2
  %51 = load i64, ptr %ts.addr, align 8
  %52 = load i64, ptr %min_ts.addr, align 8
  %sub = sub i64 %51, %52
  %53 = load i64, ptr %max_ts.addr, align 8
  %54 = load i64, ptr %ts.addr, align 8
  %sub44 = sub i64 %53, %54
  %cmp45 = icmp ugt i64 %sub, %sub44
  %55 = zext i1 %cmp45 to i64
  %cond = select i1 %cmp45, i32 1, i32 0
  store i32 %cond, ptr %dir, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret47) #8
  store i32 -1431655766, ptr %ret47, align 4, !annotation !2
  %56 = load ptr, ptr %s.addr, align 8
  %57 = load i32, ptr %stream_index.addr, align 4
  %58 = load i64, ptr %ts.addr, align 8
  %59 = load i32, ptr %flags.addr, align 4
  %60 = load i32, ptr %dir, align 4
  %or48 = or i32 %59, %60
  %call49 = call i32 @av_seek_frame(ptr noundef %56, i32 noundef %57, i64 noundef %58, i32 noundef %or48)
  store i32 %call49, ptr %ret47, align 4
  %61 = load i32, ptr %ret47, align 4
  %cmp50 = icmp slt i32 %61, 0
  br i1 %cmp50, label %land.lhs.true52, label %if.end69

land.lhs.true52:                                  ; preds = %if.then43
  %62 = load i64, ptr %ts.addr, align 8
  %63 = load i64, ptr %min_ts.addr, align 8
  %cmp53 = icmp ne i64 %62, %63
  br i1 %cmp53, label %land.lhs.true55, label %if.end69

land.lhs.true55:                                  ; preds = %land.lhs.true52
  %64 = load i64, ptr %max_ts.addr, align 8
  %65 = load i64, ptr %ts.addr, align 8
  %cmp56 = icmp ne i64 %64, %65
  br i1 %cmp56, label %if.then58, label %if.end69

if.then58:                                        ; preds = %land.lhs.true55
  %66 = load ptr, ptr %s.addr, align 8
  %67 = load i32, ptr %stream_index.addr, align 4
  %68 = load i32, ptr %dir, align 4
  %tobool59 = icmp ne i32 %68, 0
  br i1 %tobool59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then58
  %69 = load i64, ptr %max_ts.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then58
  %70 = load i64, ptr %min_ts.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond60 = phi i64 [ %69, %cond.true ], [ %70, %cond.false ]
  %71 = load i32, ptr %flags.addr, align 4
  %72 = load i32, ptr %dir, align 4
  %or61 = or i32 %71, %72
  %call62 = call i32 @av_seek_frame(ptr noundef %66, i32 noundef %67, i64 noundef %cond60, i32 noundef %or61)
  store i32 %call62, ptr %ret47, align 4
  %73 = load i32, ptr %ret47, align 4
  %cmp63 = icmp sge i32 %73, 0
  br i1 %cmp63, label %if.then65, label %if.end68

if.then65:                                        ; preds = %cond.end
  %74 = load ptr, ptr %s.addr, align 8
  %75 = load i32, ptr %stream_index.addr, align 4
  %76 = load i64, ptr %ts.addr, align 8
  %77 = load i32, ptr %flags.addr, align 4
  %78 = load i32, ptr %dir, align 4
  %xor = xor i32 %78, 1
  %or66 = or i32 %77, %xor
  %call67 = call i32 @av_seek_frame(ptr noundef %74, i32 noundef %75, i64 noundef %76, i32 noundef %or66)
  store i32 %call67, ptr %ret47, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %cond.end
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %land.lhs.true55, %land.lhs.true52, %if.then43
  %79 = load i32, ptr %ret47, align 4
  store i32 %79, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret47) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %dir) #8
  br label %return

if.end70:                                         ; preds = %lor.lhs.false42
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end70, %if.end69, %if.end34, %if.then5, %if.then
  %80 = load i32, ptr %retval, align 4
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @seek_frame_internal(ptr noundef %s, i32 noundef %stream_index, i64 noundef %timestamp, i32 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %stream_index.addr = alloca i32, align 4
  %timestamp.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %st = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %stream_index, ptr %stream_index.addr, align 4
  store i64 %timestamp, ptr %timestamp.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %st) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %st, align 8, !annotation !2
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 -1431655766, ptr %ret, align 4, !annotation !2
  %0 = load i32, ptr %flags.addr, align 4
  %and = and i32 %0, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8
  %iformat = getelementptr inbounds %struct.AVFormatContext, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %iformat, align 8
  %flags1 = getelementptr inbounds %struct.AVInputFormat, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %flags1, align 8
  %and2 = and i32 %3, 32768
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %s.addr, align 8
  call void @ff_read_frame_flush(ptr noundef %4)
  %5 = load ptr, ptr %s.addr, align 8
  %6 = load i32, ptr %stream_index.addr, align 4
  %7 = load i64, ptr %timestamp.addr, align 8
  %8 = load i32, ptr %flags.addr, align 4
  %call = call i32 @seek_frame_byte(ptr noundef %5, i32 noundef %6, i64 noundef %7, i32 noundef %8)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %entry
  %9 = load i32, ptr %stream_index.addr, align 4
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then6, label %if.end14

if.then6:                                         ; preds = %if.end5
  %10 = load ptr, ptr %s.addr, align 8
  %call7 = call i32 @av_find_default_stream_index(ptr noundef %10)
  store i32 %call7, ptr %stream_index.addr, align 4
  %11 = load i32, ptr %stream_index.addr, align 4
  %cmp8 = icmp slt i32 %11, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  %12 = load ptr, ptr %s.addr, align 8
  %streams = getelementptr inbounds %struct.AVFormatContext, ptr %12, i32 0, i32 7
  %13 = load ptr, ptr %streams, align 8
  %14 = load i32, ptr %stream_index.addr, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %13, i64 %idxprom
  %15 = load ptr, ptr %arrayidx, align 8
  store ptr %15, ptr %st, align 8
  %16 = load i64, ptr %timestamp.addr, align 8
  %17 = load ptr, ptr %st, align 8
  %time_base = getelementptr inbounds %struct.AVStream, ptr %17, i32 0, i32 5
  %den = getelementptr inbounds %struct.AVRational, ptr %time_base, i32 0, i32 1
  %18 = load i32, ptr %den, align 4
  %conv = sext i32 %18 to i64
  %19 = load ptr, ptr %st, align 8
  %time_base11 = getelementptr inbounds %struct.AVStream, ptr %19, i32 0, i32 5
  %num = getelementptr inbounds %struct.AVRational, ptr %time_base11, i32 0, i32 0
  %20 = load i32, ptr %num, align 8
  %conv12 = sext i32 %20 to i64
  %mul = mul nsw i64 1000000, %conv12
  %call13 = call i64 @av_rescale(i64 noundef %16, i64 noundef %conv, i64 noundef %mul) #9
  store i64 %call13, ptr %timestamp.addr, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end10, %if.end5
  %21 = load ptr, ptr %s.addr, align 8
  %iformat15 = getelementptr inbounds %struct.AVFormatContext, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %iformat15, align 8
  %read_seek = getelementptr inbounds %struct.AVInputFormat, ptr %22, i32 0, i32 14
  %23 = load ptr, ptr %read_seek, align 8
  %tobool16 = icmp ne ptr %23, null
  br i1 %tobool16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %24 = load ptr, ptr %s.addr, align 8
  call void @ff_read_frame_flush(ptr noundef %24)
  %25 = load ptr, ptr %s.addr, align 8
  %iformat18 = getelementptr inbounds %struct.AVFormatContext, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %iformat18, align 8
  %read_seek19 = getelementptr inbounds %struct.AVInputFormat, ptr %26, i32 0, i32 14
  %27 = load ptr, ptr %read_seek19, align 8
  %28 = load ptr, ptr %s.addr, align 8
  %29 = load i32, ptr %stream_index.addr, align 4
  %30 = load i64, ptr %timestamp.addr, align 8
  %31 = load i32, ptr %flags.addr, align 4
  %call20 = call i32 %27(ptr noundef %28, i32 noundef %29, i64 noundef %30, i32 noundef %31)
  store i32 %call20, ptr %ret, align 4
  br label %if.end21

if.else:                                          ; preds = %if.end14
  store i32 -1, ptr %ret, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then17
  %32 = load i32, ptr %ret, align 4
  %cmp22 = icmp sge i32 %32, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %33 = load ptr, ptr %s.addr, align 8
  %iformat26 = getelementptr inbounds %struct.AVFormatContext, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %iformat26, align 8
  %read_timestamp = getelementptr inbounds %struct.AVInputFormat, ptr %34, i32 0, i32 15
  %35 = load ptr, ptr %read_timestamp, align 8
  %tobool27 = icmp ne ptr %35, null
  br i1 %tobool27, label %land.lhs.true, label %if.else34

land.lhs.true:                                    ; preds = %if.end25
  %36 = load ptr, ptr %s.addr, align 8
  %iformat28 = getelementptr inbounds %struct.AVFormatContext, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %iformat28, align 8
  %flags29 = getelementptr inbounds %struct.AVInputFormat, ptr %37, i32 0, i32 2
  %38 = load i32, ptr %flags29, align 8
  %and30 = and i32 %38, 8192
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.else34, label %if.then32

if.then32:                                        ; preds = %land.lhs.true
  %39 = load ptr, ptr %s.addr, align 8
  call void @ff_read_frame_flush(ptr noundef %39)
  %40 = load ptr, ptr %s.addr, align 8
  %41 = load i32, ptr %stream_index.addr, align 4
  %42 = load i64, ptr %timestamp.addr, align 8
  %43 = load i32, ptr %flags.addr, align 4
  %call33 = call i32 @ff_seek_frame_binary(ptr noundef %40, i32 noundef %41, i64 noundef %42, i32 noundef %43)
  store i32 %call33, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else34:                                        ; preds = %land.lhs.true, %if.end25
  %44 = load ptr, ptr %s.addr, align 8
  %iformat35 = getelementptr inbounds %struct.AVFormatContext, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %iformat35, align 8
  %flags36 = getelementptr inbounds %struct.AVInputFormat, ptr %45, i32 0, i32 2
  %46 = load i32, ptr %flags36, align 8
  %and37 = and i32 %46, 16384
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.else41, label %if.then39

if.then39:                                        ; preds = %if.else34
  %47 = load ptr, ptr %s.addr, align 8
  call void @ff_read_frame_flush(ptr noundef %47)
  %48 = load ptr, ptr %s.addr, align 8
  %49 = load i32, ptr %stream_index.addr, align 4
  %50 = load i64, ptr %timestamp.addr, align 8
  %51 = load i32, ptr %flags.addr, align 4
  %call40 = call i32 @seek_frame_generic(ptr noundef %48, i32 noundef %49, i64 noundef %50, i32 noundef %51)
  store i32 %call40, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else41:                                        ; preds = %if.else34
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else41, %if.then39, %if.then32, %if.then24, %if.then9, %if.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %st) #8
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare i32 @avformat_queue_attached_pictures(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(none)
declare i64 @av_rescale_rnd(i64 noundef, i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @ff_flush_packet_queue(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare void @av_parser_close(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @avformat_flush(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  call void @ff_read_frame_flush(ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @ff_rescale_interval(i64 %tb_in.coerce, i64 %tb_out.coerce, ptr noundef %min_ts, ptr noundef %ts, ptr noundef %max_ts) #0 {
entry:
  %tb_in = alloca %struct.AVRational, align 4
  %tb_out = alloca %struct.AVRational, align 4
  %min_ts.addr = alloca ptr, align 8
  %ts.addr = alloca ptr, align 8
  %max_ts.addr = alloca ptr, align 8
  store i64 %tb_in.coerce, ptr %tb_in, align 4
  store i64 %tb_out.coerce, ptr %tb_out, align 4
  store ptr %min_ts, ptr %min_ts.addr, align 8
  store ptr %ts, ptr %ts.addr, align 8
  store ptr %max_ts, ptr %max_ts.addr, align 8
  %0 = load ptr, ptr %ts.addr, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i64, ptr %tb_in, align 4
  %3 = load i64, ptr %tb_out, align 4
  %call = call i64 @av_rescale_q(i64 noundef %1, i64 %2, i64 %3) #9
  %4 = load ptr, ptr %ts.addr, align 8
  store i64 %call, ptr %4, align 8
  %5 = load ptr, ptr %min_ts.addr, align 8
  %6 = load i64, ptr %5, align 8
  %7 = load i64, ptr %tb_in, align 4
  %8 = load i64, ptr %tb_out, align 4
  %call1 = call i64 @av_rescale_q_rnd(i64 noundef %6, i64 %7, i64 %8, i32 noundef 8195) #9
  %9 = load ptr, ptr %min_ts.addr, align 8
  store i64 %call1, ptr %9, align 8
  %10 = load ptr, ptr %max_ts.addr, align 8
  %11 = load i64, ptr %10, align 8
  %12 = load i64, ptr %tb_in, align 4
  %13 = load i64, ptr %tb_out, align 4
  %call2 = call i64 @av_rescale_q_rnd(i64 noundef %11, i64 %12, i64 %13, i32 noundef 8194) #9
  %14 = load ptr, ptr %max_ts.addr, align 8
  store i64 %call2, ptr %14, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(none)
declare i64 @av_rescale_q_rnd(i64 noundef, i64, i64, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @seek_frame_byte(ptr noundef %s, i32 noundef %stream_index, i64 noundef %pos, i32 noundef %flags) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %stream_index.addr = alloca i32, align 4
  %pos.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %si = alloca ptr, align 8
  %pos_min = alloca i64, align 8
  %pos_max = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  store i32 %stream_index, ptr %stream_index.addr, align 4
  store i64 %pos, ptr %pos.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %si) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %si, align 8, !annotation !2
  %0 = load ptr, ptr %s.addr, align 8
  %call = call ptr @ffformatcontext(ptr noundef %0)
  store ptr %call, ptr %si, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos_min) #8
  store i64 -6148914691236517206, ptr %pos_min, align 8, !annotation !2
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos_max) #8
  store i64 -6148914691236517206, ptr %pos_max, align 8, !annotation !2
  %1 = load ptr, ptr %si, align 8
  %data_offset = getelementptr inbounds %struct.FFFormatContext, ptr %1, i32 0, i32 5
  %2 = load i64, ptr %data_offset, align 8
  store i64 %2, ptr %pos_min, align 8
  %3 = load ptr, ptr %s.addr, align 8
  %pb = getelementptr inbounds %struct.AVFormatContext, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %pb, align 8
  %call1 = call i64 @avio_size(ptr noundef %4)
  %sub = sub nsw i64 %call1, 1
  store i64 %sub, ptr %pos_max, align 8
  %5 = load i64, ptr %pos.addr, align 8
  %6 = load i64, ptr %pos_min, align 8
  %cmp = icmp slt i64 %5, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i64, ptr %pos_min, align 8
  store i64 %7, ptr %pos.addr, align 8
  br label %if.end4

if.else:                                          ; preds = %entry
  %8 = load i64, ptr %pos.addr, align 8
  %9 = load i64, ptr %pos_max, align 8
  %cmp2 = icmp sgt i64 %8, %9
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %10 = load i64, ptr %pos_max, align 8
  store i64 %10, ptr %pos.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %11 = load ptr, ptr %s.addr, align 8
  %pb5 = getelementptr inbounds %struct.AVFormatContext, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %pb5, align 8
  %13 = load i64, ptr %pos.addr, align 8
  %call6 = call i64 @avio_seek(ptr noundef %12, i64 noundef %13, i32 noundef 0)
  %14 = load ptr, ptr %s.addr, align 8
  %io_repositioned = getelementptr inbounds %struct.AVFormatContext, ptr %14, i32 0, i32 54
  store i32 1, ptr %io_repositioned, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos_max) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos_min) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %si) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare i32 @av_find_default_stream_index(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @seek_frame_generic(ptr noundef %s, i32 noundef %stream_index, i64 noundef %timestamp, i32 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %stream_index.addr = alloca i32, align 4
  %timestamp.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %si = alloca ptr, align 8
  %st = alloca ptr, align 8
  %sti = alloca ptr, align 8
  %ie = alloca ptr, align 8
  %index = alloca i32, align 4
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %pkt = alloca ptr, align 8
  %nonkey = alloca i32, align 4
  %read_status = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %stream_index, ptr %stream_index.addr, align 4
  store i64 %timestamp, ptr %timestamp.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %si) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %si, align 8, !annotation !2
  %0 = load ptr, ptr %s.addr, align 8
  %call = call ptr @ffformatcontext(ptr noundef %0)
  store ptr %call, ptr %si, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %st) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %st, align 8, !annotation !2
  %1 = load ptr, ptr %s.addr, align 8
  %streams = getelementptr inbounds %struct.AVFormatContext, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %streams, align 8
  %3 = load i32, ptr %stream_index.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  store ptr %4, ptr %st, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sti) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %sti, align 8, !annotation !2
  %5 = load ptr, ptr %st, align 8
  %call1 = call ptr @ffstream(ptr noundef %5)
  store ptr %call1, ptr %sti, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ie) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %ie, align 8, !annotation !2
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #8
  store i32 -1431655766, ptr %index, align 4, !annotation !2
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  store i64 -6148914691236517206, ptr %ret, align 8, !annotation !2
  %6 = load ptr, ptr %st, align 8
  %7 = load i64, ptr %timestamp.addr, align 8
  %8 = load i32, ptr %flags.addr, align 4
  %call2 = call i32 @av_index_search_timestamp(ptr noundef %6, i64 noundef %7, i32 noundef %8)
  store i32 %call2, ptr %index, align 4
  %9 = load i32, ptr %index, align 4
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load ptr, ptr %sti, align 8
  %nb_index_entries = getelementptr inbounds %struct.FFStream, ptr %10, i32 0, i32 12
  %11 = load i32, ptr %nb_index_entries, align 8
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %12 = load i64, ptr %timestamp.addr, align 8
  %13 = load ptr, ptr %sti, align 8
  %index_entries = getelementptr inbounds %struct.FFStream, ptr %13, i32 0, i32 11
  %14 = load ptr, ptr %index_entries, align 8
  %arrayidx4 = getelementptr inbounds %struct.AVIndexEntry, ptr %14, i64 0
  %timestamp5 = getelementptr inbounds %struct.AVIndexEntry, ptr %arrayidx4, i32 0, i32 1
  %15 = load i64, ptr %timestamp5, align 8
  %cmp6 = icmp slt i64 %12, %15
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup100

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %16 = load i32, ptr %index, align 4
  %cmp7 = icmp slt i32 %16, 0
  br i1 %cmp7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %17 = load i32, ptr %index, align 4
  %18 = load ptr, ptr %sti, align 8
  %nb_index_entries8 = getelementptr inbounds %struct.FFStream, ptr %18, i32 0, i32 12
  %19 = load i32, ptr %nb_index_entries8, align 8
  %sub = sub nsw i32 %19, 1
  %cmp9 = icmp eq i32 %17, %sub
  br i1 %cmp9, label %if.then10, label %if.end72

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pkt) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %pkt, align 8, !annotation !2
  %20 = load ptr, ptr %si, align 8
  %pkt11 = getelementptr inbounds %struct.FFFormatContext, ptr %20, i32 0, i32 9
  %21 = load ptr, ptr %pkt11, align 8
  store ptr %21, ptr %pkt, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nonkey) #8
  store i32 -1431655766, ptr %nonkey, align 4, !annotation !2
  store i32 0, ptr %nonkey, align 4
  %22 = load ptr, ptr %sti, align 8
  %nb_index_entries12 = getelementptr inbounds %struct.FFStream, ptr %22, i32 0, i32 12
  %23 = load i32, ptr %nb_index_entries12, align 8
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then10
  br label %do.body

do.body:                                          ; preds = %if.then14
  %24 = load ptr, ptr %sti, align 8
  %index_entries15 = getelementptr inbounds %struct.FFStream, ptr %24, i32 0, i32 11
  %25 = load ptr, ptr %index_entries15, align 8
  %tobool16 = icmp ne ptr %25, null
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %do.body
  call void @abort() #10
  unreachable

if.end18:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end18
  br label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load ptr, ptr %sti, align 8
  %index_entries19 = getelementptr inbounds %struct.FFStream, ptr %26, i32 0, i32 11
  %27 = load ptr, ptr %index_entries19, align 8
  %28 = load ptr, ptr %sti, align 8
  %nb_index_entries20 = getelementptr inbounds %struct.FFStream, ptr %28, i32 0, i32 12
  %29 = load i32, ptr %nb_index_entries20, align 8
  %sub21 = sub nsw i32 %29, 1
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds %struct.AVIndexEntry, ptr %27, i64 %idxprom22
  store ptr %arrayidx23, ptr %ie, align 8
  %30 = load ptr, ptr %s.addr, align 8
  %pb = getelementptr inbounds %struct.AVFormatContext, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %pb, align 8
  %32 = load ptr, ptr %ie, align 8
  %pos = getelementptr inbounds %struct.AVIndexEntry, ptr %32, i32 0, i32 0
  %33 = load i64, ptr %pos, align 8
  %call24 = call i64 @avio_seek(ptr noundef %31, i64 noundef %33, i32 noundef 0)
  store i64 %call24, ptr %ret, align 8
  %cmp25 = icmp slt i64 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %do.end
  %34 = load i64, ptr %ret, align 8
  %conv = trunc i64 %34 to i32
  store i32 %conv, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68

if.end27:                                         ; preds = %do.end
  %35 = load ptr, ptr %s.addr, align 8
  %io_repositioned = getelementptr inbounds %struct.AVFormatContext, ptr %35, i32 0, i32 54
  store i32 1, ptr %io_repositioned, align 8
  %36 = load ptr, ptr %s.addr, align 8
  %37 = load ptr, ptr %st, align 8
  %38 = load ptr, ptr %ie, align 8
  %timestamp28 = getelementptr inbounds %struct.AVIndexEntry, ptr %38, i32 0, i32 1
  %39 = load i64, ptr %timestamp28, align 8
  call void @avpriv_update_cur_dts(ptr noundef %36, ptr noundef %37, i64 noundef %39)
  br label %if.end37

if.else:                                          ; preds = %if.then10
  %40 = load ptr, ptr %s.addr, align 8
  %pb29 = getelementptr inbounds %struct.AVFormatContext, ptr %40, i32 0, i32 4
  %41 = load ptr, ptr %pb29, align 8
  %42 = load ptr, ptr %si, align 8
  %data_offset = getelementptr inbounds %struct.FFFormatContext, ptr %42, i32 0, i32 5
  %43 = load i64, ptr %data_offset, align 8
  %call30 = call i64 @avio_seek(ptr noundef %41, i64 noundef %43, i32 noundef 0)
  store i64 %call30, ptr %ret, align 8
  %cmp31 = icmp slt i64 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.else
  %44 = load i64, ptr %ret, align 8
  %conv34 = trunc i64 %44 to i32
  store i32 %conv34, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68

if.end35:                                         ; preds = %if.else
  %45 = load ptr, ptr %s.addr, align 8
  %io_repositioned36 = getelementptr inbounds %struct.AVFormatContext, ptr %45, i32 0, i32 54
  store i32 1, ptr %io_repositioned36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %if.end27
  %46 = load ptr, ptr %pkt, align 8
  call void @av_packet_unref(ptr noundef %46)
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %if.end37
  call void @llvm.lifetime.start.p0(i64 4, ptr %read_status) #8
  store i32 -1431655766, ptr %read_status, align 4, !annotation !2
  br label %do.body38

do.body38:                                        ; preds = %do.cond40, %for.cond
  %47 = load ptr, ptr %s.addr, align 8
  %48 = load ptr, ptr %pkt, align 8
  %call39 = call i32 @av_read_frame(ptr noundef %47, ptr noundef %48)
  store i32 %call39, ptr %read_status, align 4
  br label %do.cond40

do.cond40:                                        ; preds = %do.body38
  %49 = load i32, ptr %read_status, align 4
  %cmp41 = icmp eq i32 %49, -11
  br i1 %cmp41, label %do.body38, label %do.end43, !llvm.loop !17

do.end43:                                         ; preds = %do.cond40
  %50 = load i32, ptr %read_status, align 4
  %cmp44 = icmp slt i32 %50, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %do.end43
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %do.end43
  %51 = load i32, ptr %stream_index.addr, align 4
  %52 = load ptr, ptr %pkt, align 8
  %stream_index48 = getelementptr inbounds %struct.AVPacket, ptr %52, i32 0, i32 5
  %53 = load i32, ptr %stream_index48, align 4
  %cmp49 = icmp eq i32 %51, %53
  br i1 %cmp49, label %land.lhs.true51, label %if.end66

land.lhs.true51:                                  ; preds = %if.end47
  %54 = load ptr, ptr %pkt, align 8
  %dts = getelementptr inbounds %struct.AVPacket, ptr %54, i32 0, i32 2
  %55 = load i64, ptr %dts, align 8
  %56 = load i64, ptr %timestamp.addr, align 8
  %cmp52 = icmp sgt i64 %55, %56
  br i1 %cmp52, label %if.then54, label %if.end66

if.then54:                                        ; preds = %land.lhs.true51
  %57 = load ptr, ptr %pkt, align 8
  %flags55 = getelementptr inbounds %struct.AVPacket, ptr %57, i32 0, i32 6
  %58 = load i32, ptr %flags55, align 8
  %and = and i32 %58, 1
  %tobool56 = icmp ne i32 %and, 0
  br i1 %tobool56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.then54
  %59 = load ptr, ptr %pkt, align 8
  call void @av_packet_unref(ptr noundef %59)
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end58:                                         ; preds = %if.then54
  %60 = load i32, ptr %nonkey, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, ptr %nonkey, align 4
  %cmp59 = icmp sgt i32 %60, 1000
  br i1 %cmp59, label %land.lhs.true61, label %if.end65

land.lhs.true61:                                  ; preds = %if.end58
  %61 = load ptr, ptr %st, align 8
  %codecpar = getelementptr inbounds %struct.AVStream, ptr %61, i32 0, i32 3
  %62 = load ptr, ptr %codecpar, align 8
  %codec_id = getelementptr inbounds %struct.AVCodecParameters, ptr %62, i32 0, i32 1
  %63 = load i32, ptr %codec_id, align 4
  %cmp62 = icmp ne i32 %63, 132
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %land.lhs.true61
  %64 = load ptr, ptr %pkt, align 8
  call void @av_packet_unref(ptr noundef %64)
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end65:                                         ; preds = %land.lhs.true61, %if.end58
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %land.lhs.true51, %if.end47
  %65 = load ptr, ptr %pkt, align 8
  call void @av_packet_unref(ptr noundef %65)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then64, %if.then57, %if.then46
  call void @llvm.lifetime.end.p0(i64 4, ptr %read_status) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end:                                          ; preds = %cleanup
  %66 = load ptr, ptr %st, align 8
  %67 = load i64, ptr %timestamp.addr, align 8
  %68 = load i32, ptr %flags.addr, align 4
  %call67 = call i32 @av_index_search_timestamp(ptr noundef %66, i64 noundef %67, i32 noundef %68)
  store i32 %call67, ptr %index, align 4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup68

cleanup68:                                        ; preds = %for.end, %if.then33, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %nonkey) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pkt) #8
  %cleanup.dest70 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest70, label %cleanup100 [
    i32 0, label %cleanup.cont71
  ]

cleanup.cont71:                                   ; preds = %cleanup68
  br label %if.end72

if.end72:                                         ; preds = %cleanup.cont71, %lor.lhs.false
  %69 = load i32, ptr %index, align 4
  %cmp73 = icmp slt i32 %69, 0
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end72
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup100

if.end76:                                         ; preds = %if.end72
  %70 = load ptr, ptr %s.addr, align 8
  call void @ff_read_frame_flush(ptr noundef %70)
  %71 = load ptr, ptr %s.addr, align 8
  %iformat = getelementptr inbounds %struct.AVFormatContext, ptr %71, i32 0, i32 1
  %72 = load ptr, ptr %iformat, align 8
  %read_seek = getelementptr inbounds %struct.AVInputFormat, ptr %72, i32 0, i32 14
  %73 = load ptr, ptr %read_seek, align 8
  %tobool77 = icmp ne ptr %73, null
  br i1 %tobool77, label %if.then78, label %if.end86

if.then78:                                        ; preds = %if.end76
  %74 = load ptr, ptr %s.addr, align 8
  %iformat79 = getelementptr inbounds %struct.AVFormatContext, ptr %74, i32 0, i32 1
  %75 = load ptr, ptr %iformat79, align 8
  %read_seek80 = getelementptr inbounds %struct.AVInputFormat, ptr %75, i32 0, i32 14
  %76 = load ptr, ptr %read_seek80, align 8
  %77 = load ptr, ptr %s.addr, align 8
  %78 = load i32, ptr %stream_index.addr, align 4
  %79 = load i64, ptr %timestamp.addr, align 8
  %80 = load i32, ptr %flags.addr, align 4
  %call81 = call i32 %76(ptr noundef %77, i32 noundef %78, i64 noundef %79, i32 noundef %80)
  %cmp82 = icmp sge i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.then78
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup100

if.end85:                                         ; preds = %if.then78
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.end76
  %81 = load ptr, ptr %sti, align 8
  %index_entries87 = getelementptr inbounds %struct.FFStream, ptr %81, i32 0, i32 11
  %82 = load ptr, ptr %index_entries87, align 8
  %83 = load i32, ptr %index, align 4
  %idxprom88 = sext i32 %83 to i64
  %arrayidx89 = getelementptr inbounds %struct.AVIndexEntry, ptr %82, i64 %idxprom88
  store ptr %arrayidx89, ptr %ie, align 8
  %84 = load ptr, ptr %s.addr, align 8
  %pb90 = getelementptr inbounds %struct.AVFormatContext, ptr %84, i32 0, i32 4
  %85 = load ptr, ptr %pb90, align 8
  %86 = load ptr, ptr %ie, align 8
  %pos91 = getelementptr inbounds %struct.AVIndexEntry, ptr %86, i32 0, i32 0
  %87 = load i64, ptr %pos91, align 8
  %call92 = call i64 @avio_seek(ptr noundef %85, i64 noundef %87, i32 noundef 0)
  store i64 %call92, ptr %ret, align 8
  %cmp93 = icmp slt i64 %call92, 0
  br i1 %cmp93, label %if.then95, label %if.end97

if.then95:                                        ; preds = %if.end86
  %88 = load i64, ptr %ret, align 8
  %conv96 = trunc i64 %88 to i32
  store i32 %conv96, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup100

if.end97:                                         ; preds = %if.end86
  %89 = load ptr, ptr %s.addr, align 8
  %io_repositioned98 = getelementptr inbounds %struct.AVFormatContext, ptr %89, i32 0, i32 54
  store i32 1, ptr %io_repositioned98, align 8
  %90 = load ptr, ptr %s.addr, align 8
  %91 = load ptr, ptr %st, align 8
  %92 = load ptr, ptr %ie, align 8
  %timestamp99 = getelementptr inbounds %struct.AVIndexEntry, ptr %92, i32 0, i32 1
  %93 = load i64, ptr %timestamp99, align 8
  call void @avpriv_update_cur_dts(ptr noundef %90, ptr noundef %91, i64 noundef %93)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup100

cleanup100:                                       ; preds = %if.end97, %if.then95, %if.then84, %if.then75, %cleanup68, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ie) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sti) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %st) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %si) #8
  %94 = load i32, ptr %retval, align 4
  ret i32 %94

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare void @av_packet_unref(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare i32 @av_read_frame(ptr noundef, ptr noundef) #5

attributes #0 = { nounwind null_pointer_is_valid ssp "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind null_pointer_is_valid ssp "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind null_pointer_is_valid willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { null_pointer_is_valid "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind null_pointer_is_valid "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind null_pointer_is_valid willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{!"auto-init"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
