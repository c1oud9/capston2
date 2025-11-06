; ModuleID = '<stdin>'
source_filename = "../../third_party/libsrtp/srtp/srtp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srtp_debug_module_t = type { i32, ptr }
%union.v128_t = type { [2 x i64] }
%struct.srtp_stream_ctx_t_ = type { i32, ptr, i32, %struct.srtp_rdbx_t, i32, %struct.srtp_rdb_t, i32, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.srtp_rdbx_t = type { i64, %struct.bitvector_t }
%struct.bitvector_t = type { i32, ptr }
%struct.srtp_rdb_t = type { i32, %union.v128_t }
%struct.srtp_session_keys_t = type { ptr, ptr, ptr, ptr, ptr, [12 x i8], [12 x i8], ptr, i32, ptr }
%struct.srtp_auth_t = type { ptr, ptr, i32, i32, i32 }
%struct.srtp_auth_type_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.srtp_policy_t = type { %struct.srtp_ssrc_t, %struct.srtp_crypto_policy_t, %struct.srtp_crypto_policy_t, ptr, ptr, i64, ptr, i64, i32, ptr, i32, ptr }
%struct.srtp_ssrc_t = type { i32, i32 }
%struct.srtp_crypto_policy_t = type { i32, i32, i32, i32, i32, i32 }
%struct.srtp_master_key_t = type { ptr, ptr, i32 }
%struct.srtp_kdf_t = type { ptr }
%struct.srtp_cipher_t = type { ptr, ptr, i32, i32 }
%struct.srtp_cipher_type_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.srtp_event_data_t = type { ptr, i32, i32 }
%struct.srtp_hdr_t = type { i16, i16, i32, i32 }
%struct.srtp_ctx_t_ = type { ptr, ptr, ptr }
%struct.srtp_hdr_xtnd_t = type { i16, i16 }
%struct.srtcp_hdr_t = type { i16, i16, i32 }

@.str = private unnamed_addr constant [5 x i8] c"srtp\00", align 1
@mod_srtp = hidden global %struct.srtp_debug_module_t { i32 0, ptr @.str }, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"860492290f7d1f25e2bd45da6471bfd4cd4d7add\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%u.%u.%u\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: cloning stream (SSRC: 0x%08x)\0A\00", align 1
@__const.srtp_stream_init_all_master_keys.single_master_key = private unnamed_addr constant { ptr, ptr, i32, [4 x i8] } { ptr inttoptr (i64 -6148914691236517206 to ptr), ptr inttoptr (i64 -6148914691236517206 to ptr), i32 -1431655766, [4 x i8] c"\AA\AA\AA\AA" }, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"%s: srtp key len: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%s: srtcp key len: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"%s: base key len: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%s: kdf key len: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"%s: rtp salt len: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%s: cipher key: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"%s: found rtp_salt_len > 0, generating salt\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"%s: cipher salt: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"%s: extensions cipher key: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"%s: found rtp_xtn_hdr_salt_len > 0, generating salt\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"%s: extensions cipher salt: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"%s: auth key:   %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"%s: rtcp salt len: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"%s: found rtcp_salt_len > 0, generating rtcp salt\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"%s: rtcp cipher key: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"%s: rtcp cipher salt: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"%s: rtcp auth key:   %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"%s: initializing stream (SSRC: 0x%08x)\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"srtp: in stream 0x%x: \00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"\09SSRC collision\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"\09key usage soft limit reached\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"\09key usage hard limit reached\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"\09packet index limit reached\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"\09unknown event reported to handler\0A\00", align 1
@srtp_event_handler = internal global ptr @srtp_event_reporter, align 8
@.str.28 = private unnamed_addr constant [27 x i8] c"%s: function srtp_protect\0A\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"%s: estimated packet index: %016lx\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"%s: keystream prefix: %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"%s: srtp auth tag:    %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"%s: function srtp_unprotect\0A\00", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"%s: using provisional stream (SSRC: 0x%08x)\0A\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"%s: estimated u_packet index: %016lx\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"%s: computed auth tag:    %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"%s: packet auth tag:      %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"%s: srtcp index: %x\0A\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"%s: srtcp auth tag:    %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"%s: srtcp using provisional stream (SSRC: 0x%08x)\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"%s: srtcp computed tag:       %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"%s: srtcp tag from packet:    %s\0A\00", align 1
@srtp_log_handler = internal global ptr null, align 8
@srtp_log_handler_data = internal global ptr null, align 8
@.str.42 = private unnamed_addr constant [32 x i8] c"%s: function srtp_protect_aead\0A\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"%s: Pre-salted RTP IV = %s\0A\0A\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"%s: RTP SALT = %s\0A\0A\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"%s: function srtp_unprotect_aead\0A\00", align 1
@__const.update_template_streams.old_rtcp_rdb = private unnamed_addr constant { i32, [4 x i8], %union.v128_t } { i32 -1431655766, [4 x i8] c"\AA\AA\AA\AA", %union.v128_t { [2 x i64] [i64 -6148914691236517206, i64 -6148914691236517206] } }, align 8
@__const.update_stream.old_rtcp_rdb = private unnamed_addr constant { i32, [4 x i8], %union.v128_t } { i32 -1431655766, [4 x i8] c"\AA\AA\AA\AA", %union.v128_t { [2 x i64] [i64 -6148914691236517206, i64 -6148914691236517206] } }, align 8
@.str.46 = private unnamed_addr constant [30 x i8] c"%s: Pre-salted RTCP IV = %s\0A\0A\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"%s: RTCP SALT = %s\0A\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden ptr @srtp_get_version_string() #0 {
entry:
  ret ptr @.str.1
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_get_version() #0 {
entry:
  %retval = alloca i32, align 4
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  %micro = alloca i32, align 4
  %rv = alloca i32, align 4
  %parse_rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %major) #8
  store i32 -1431655766, ptr %major, align 4, !annotation !3
  store i32 0, ptr %major, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #8
  store i32 -1431655766, ptr %minor, align 4, !annotation !3
  store i32 0, ptr %minor, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %micro) #8
  store i32 -1431655766, ptr %micro, align 4, !annotation !3
  store i32 0, ptr %micro, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8
  store i32 -1431655766, ptr %rv, align 4, !annotation !3
  store i32 0, ptr %rv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %parse_rv) #8
  store i32 -1431655766, ptr %parse_rv, align 4, !annotation !3
  %call = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %major, ptr noundef %minor, ptr noundef %micro) #8
  store i32 %call, ptr %parse_rv, align 4
  %0 = load i32, ptr %parse_rv, align 4
  %cmp = icmp ne i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %major, align 4
  %and = and i32 %1, 255
  %shl = shl i32 %and, 24
  %2 = load i32, ptr %rv, align 4
  %or = or i32 %2, %shl
  store i32 %or, ptr %rv, align 4
  %3 = load i32, ptr %minor, align 4
  %and1 = and i32 %3, 255
  %shl2 = shl i32 %and1, 16
  %4 = load i32, ptr %rv, align 4
  %or3 = or i32 %4, %shl2
  store i32 %or3, ptr %rv, align 4
  %5 = load i32, ptr %micro, align 4
  %and4 = and i32 %5, 255
  %6 = load i32, ptr %rv, align 4
  %or5 = or i32 %6, %and4
  store i32 %or5, ptr %rv, align 4
  %7 = load i32, ptr %rv, align 4
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %parse_rv) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %micro) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %major) #8
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind null_pointer_is_valid
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_stream_dealloc(ptr noundef %stream, ptr noundef %stream_template) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca ptr, align 8
  %stream_template.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %session_keys = alloca ptr, align 8
  %template_session_keys = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %stream, ptr %stream.addr, align 8
  store ptr %stream_template, ptr %stream_template.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 -1431655766, ptr %i, align 4, !annotation !3
  store i32 0, ptr %i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %session_keys) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %session_keys, align 8, !annotation !3
  store ptr null, ptr %session_keys, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %template_session_keys) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %template_session_keys, align 8, !annotation !3
  store ptr null, ptr %template_session_keys, align 8
  %0 = load ptr, ptr %stream.addr, align 8
  %session_keys1 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %session_keys1, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end115

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %stream.addr, align 8
  %num_master_keys = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %num_master_keys, align 8
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %stream.addr, align 8
  %session_keys2 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %session_keys2, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.srtp_session_keys_t, ptr %6, i64 %idxprom
  store ptr %arrayidx, ptr %session_keys, align 8
  %8 = load ptr, ptr %stream_template.addr, align 8
  %tobool3 = icmp ne ptr %8, null
  br i1 %tobool3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %9 = load ptr, ptr %stream.addr, align 8
  %num_master_keys4 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %num_master_keys4, align 8
  %11 = load ptr, ptr %stream_template.addr, align 8
  %num_master_keys5 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %num_master_keys5, align 8
  %cmp6 = icmp eq i32 %10, %12
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true
  %13 = load ptr, ptr %stream_template.addr, align 8
  %session_keys8 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %session_keys8, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom9 = zext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %14, i64 %idxprom9
  store ptr %arrayidx10, ptr %template_session_keys, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body
  store ptr null, ptr %template_session_keys, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %16 = load ptr, ptr %template_session_keys, align 8
  %tobool11 = icmp ne ptr %16, null
  br i1 %tobool11, label %land.lhs.true12, label %if.else16

land.lhs.true12:                                  ; preds = %if.end
  %17 = load ptr, ptr %session_keys, align 8
  %rtp_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %rtp_cipher, align 8
  %19 = load ptr, ptr %template_session_keys, align 8
  %rtp_cipher13 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %rtp_cipher13, align 8
  %cmp14 = icmp eq ptr %18, %20
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %land.lhs.true12
  br label %if.end25

if.else16:                                        ; preds = %land.lhs.true12, %if.end
  %21 = load ptr, ptr %session_keys, align 8
  %rtp_cipher17 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %rtp_cipher17, align 8
  %tobool18 = icmp ne ptr %22, null
  br i1 %tobool18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.else16
  %23 = load ptr, ptr %session_keys, align 8
  %rtp_cipher20 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %rtp_cipher20, align 8
  %call = call i32 @srtp_cipher_dealloc(ptr noundef %24)
  store i32 %call, ptr %status, align 4
  %25 = load i32, ptr %status, align 4
  %tobool21 = icmp ne i32 %25, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then19
  %26 = load i32, ptr %status, align 4
  store i32 %26, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.then19
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.else16
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then15
  %27 = load ptr, ptr %template_session_keys, align 8
  %tobool26 = icmp ne ptr %27, null
  br i1 %tobool26, label %land.lhs.true27, label %if.else31

land.lhs.true27:                                  ; preds = %if.end25
  %28 = load ptr, ptr %session_keys, align 8
  %rtp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %rtp_auth, align 8
  %30 = load ptr, ptr %template_session_keys, align 8
  %rtp_auth28 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %rtp_auth28, align 8
  %cmp29 = icmp eq ptr %29, %31
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %land.lhs.true27
  br label %if.end42

if.else31:                                        ; preds = %land.lhs.true27, %if.end25
  %32 = load ptr, ptr %session_keys, align 8
  %rtp_auth32 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %rtp_auth32, align 8
  %tobool33 = icmp ne ptr %33, null
  br i1 %tobool33, label %if.then34, label %if.end41

if.then34:                                        ; preds = %if.else31
  %34 = load ptr, ptr %session_keys, align 8
  %rtp_auth35 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %34, i32 0, i32 2
  %35 = load ptr, ptr %rtp_auth35, align 8
  %type = getelementptr inbounds %struct.srtp_auth_t, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %type, align 8
  %dealloc = getelementptr inbounds %struct.srtp_auth_type_t, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %dealloc, align 8
  %38 = load ptr, ptr %session_keys, align 8
  %rtp_auth36 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %rtp_auth36, align 8
  %call37 = call i32 %37(ptr noundef %39)
  store i32 %call37, ptr %status, align 4
  %40 = load i32, ptr %status, align 4
  %tobool38 = icmp ne i32 %40, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then34
  %41 = load i32, ptr %status, align 4
  store i32 %41, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.then34
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.else31
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then30
  %42 = load ptr, ptr %template_session_keys, align 8
  %tobool43 = icmp ne ptr %42, null
  br i1 %tobool43, label %land.lhs.true44, label %if.else48

land.lhs.true44:                                  ; preds = %if.end42
  %43 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %rtp_xtn_hdr_cipher, align 8
  %45 = load ptr, ptr %template_session_keys, align 8
  %rtp_xtn_hdr_cipher45 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %rtp_xtn_hdr_cipher45, align 8
  %cmp46 = icmp eq ptr %44, %46
  br i1 %cmp46, label %if.then47, label %if.else48

if.then47:                                        ; preds = %land.lhs.true44
  br label %if.end58

if.else48:                                        ; preds = %land.lhs.true44, %if.end42
  %47 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher49 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %rtp_xtn_hdr_cipher49, align 8
  %tobool50 = icmp ne ptr %48, null
  br i1 %tobool50, label %if.then51, label %if.end57

if.then51:                                        ; preds = %if.else48
  %49 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher52 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %rtp_xtn_hdr_cipher52, align 8
  %call53 = call i32 @srtp_cipher_dealloc(ptr noundef %50)
  store i32 %call53, ptr %status, align 4
  %51 = load i32, ptr %status, align 4
  %tobool54 = icmp ne i32 %51, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then51
  %52 = load i32, ptr %status, align 4
  store i32 %52, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %if.then51
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.else48
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then47
  %53 = load ptr, ptr %template_session_keys, align 8
  %tobool59 = icmp ne ptr %53, null
  br i1 %tobool59, label %land.lhs.true60, label %if.else64

land.lhs.true60:                                  ; preds = %if.end58
  %54 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %54, i32 0, i32 3
  %55 = load ptr, ptr %rtcp_cipher, align 8
  %56 = load ptr, ptr %template_session_keys, align 8
  %rtcp_cipher61 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %56, i32 0, i32 3
  %57 = load ptr, ptr %rtcp_cipher61, align 8
  %cmp62 = icmp eq ptr %55, %57
  br i1 %cmp62, label %if.then63, label %if.else64

if.then63:                                        ; preds = %land.lhs.true60
  br label %if.end74

if.else64:                                        ; preds = %land.lhs.true60, %if.end58
  %58 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher65 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %58, i32 0, i32 3
  %59 = load ptr, ptr %rtcp_cipher65, align 8
  %tobool66 = icmp ne ptr %59, null
  br i1 %tobool66, label %if.then67, label %if.end73

if.then67:                                        ; preds = %if.else64
  %60 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher68 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %60, i32 0, i32 3
  %61 = load ptr, ptr %rtcp_cipher68, align 8
  %call69 = call i32 @srtp_cipher_dealloc(ptr noundef %61)
  store i32 %call69, ptr %status, align 4
  %62 = load i32, ptr %status, align 4
  %tobool70 = icmp ne i32 %62, 0
  br i1 %tobool70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.then67
  %63 = load i32, ptr %status, align 4
  store i32 %63, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end72:                                         ; preds = %if.then67
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.else64
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then63
  %64 = load ptr, ptr %template_session_keys, align 8
  %tobool75 = icmp ne ptr %64, null
  br i1 %tobool75, label %land.lhs.true76, label %if.else80

land.lhs.true76:                                  ; preds = %if.end74
  %65 = load ptr, ptr %session_keys, align 8
  %rtcp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %65, i32 0, i32 4
  %66 = load ptr, ptr %rtcp_auth, align 8
  %67 = load ptr, ptr %template_session_keys, align 8
  %rtcp_auth77 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %67, i32 0, i32 4
  %68 = load ptr, ptr %rtcp_auth77, align 8
  %cmp78 = icmp eq ptr %66, %68
  br i1 %cmp78, label %if.then79, label %if.else80

if.then79:                                        ; preds = %land.lhs.true76
  br label %if.end93

if.else80:                                        ; preds = %land.lhs.true76, %if.end74
  %69 = load ptr, ptr %session_keys, align 8
  %rtcp_auth81 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %69, i32 0, i32 4
  %70 = load ptr, ptr %rtcp_auth81, align 8
  %tobool82 = icmp ne ptr %70, null
  br i1 %tobool82, label %if.then83, label %if.end92

if.then83:                                        ; preds = %if.else80
  %71 = load ptr, ptr %session_keys, align 8
  %rtcp_auth84 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %71, i32 0, i32 4
  %72 = load ptr, ptr %rtcp_auth84, align 8
  %type85 = getelementptr inbounds %struct.srtp_auth_t, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %type85, align 8
  %dealloc86 = getelementptr inbounds %struct.srtp_auth_type_t, ptr %73, i32 0, i32 1
  %74 = load ptr, ptr %dealloc86, align 8
  %75 = load ptr, ptr %session_keys, align 8
  %rtcp_auth87 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %75, i32 0, i32 4
  %76 = load ptr, ptr %rtcp_auth87, align 8
  %call88 = call i32 %74(ptr noundef %76)
  store i32 %call88, ptr %status, align 4
  %77 = load i32, ptr %status, align 4
  %tobool89 = icmp ne i32 %77, 0
  br i1 %tobool89, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.then83
  %78 = load i32, ptr %status, align 4
  store i32 %78, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end91:                                         ; preds = %if.then83
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.else80
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then79
  %79 = load ptr, ptr %session_keys, align 8
  %salt = getelementptr inbounds %struct.srtp_session_keys_t, ptr %79, i32 0, i32 5
  %arraydecay = getelementptr inbounds [12 x i8], ptr %salt, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay, i64 noundef 12)
  %80 = load ptr, ptr %session_keys, align 8
  %c_salt = getelementptr inbounds %struct.srtp_session_keys_t, ptr %80, i32 0, i32 6
  %arraydecay94 = getelementptr inbounds [12 x i8], ptr %c_salt, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay94, i64 noundef 12)
  %81 = load ptr, ptr %session_keys, align 8
  %mki_id = getelementptr inbounds %struct.srtp_session_keys_t, ptr %81, i32 0, i32 7
  %82 = load ptr, ptr %mki_id, align 8
  %tobool95 = icmp ne ptr %82, null
  br i1 %tobool95, label %if.then96, label %if.end100

if.then96:                                        ; preds = %if.end93
  %83 = load ptr, ptr %session_keys, align 8
  %mki_id97 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %83, i32 0, i32 7
  %84 = load ptr, ptr %mki_id97, align 8
  %85 = load ptr, ptr %session_keys, align 8
  %mki_size = getelementptr inbounds %struct.srtp_session_keys_t, ptr %85, i32 0, i32 8
  %86 = load i32, ptr %mki_size, align 8
  %conv = zext i32 %86 to i64
  call void @octet_string_set_to_zero(ptr noundef %84, i64 noundef %conv)
  %87 = load ptr, ptr %session_keys, align 8
  %mki_id98 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %87, i32 0, i32 7
  %88 = load ptr, ptr %mki_id98, align 8
  call void @srtp_crypto_free(ptr noundef %88)
  %89 = load ptr, ptr %session_keys, align 8
  %mki_id99 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %89, i32 0, i32 7
  store ptr null, ptr %mki_id99, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.then96, %if.end93
  %90 = load ptr, ptr %template_session_keys, align 8
  %tobool101 = icmp ne ptr %90, null
  br i1 %tobool101, label %land.lhs.true102, label %if.else107

land.lhs.true102:                                 ; preds = %if.end100
  %91 = load ptr, ptr %session_keys, align 8
  %limit = getelementptr inbounds %struct.srtp_session_keys_t, ptr %91, i32 0, i32 9
  %92 = load ptr, ptr %limit, align 8
  %93 = load ptr, ptr %template_session_keys, align 8
  %limit103 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %93, i32 0, i32 9
  %94 = load ptr, ptr %limit103, align 8
  %cmp104 = icmp eq ptr %92, %94
  br i1 %cmp104, label %if.then106, label %if.else107

if.then106:                                       ; preds = %land.lhs.true102
  br label %if.end113

if.else107:                                       ; preds = %land.lhs.true102, %if.end100
  %95 = load ptr, ptr %session_keys, align 8
  %limit108 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %95, i32 0, i32 9
  %96 = load ptr, ptr %limit108, align 8
  %tobool109 = icmp ne ptr %96, null
  br i1 %tobool109, label %if.then110, label %if.end112

if.then110:                                       ; preds = %if.else107
  %97 = load ptr, ptr %session_keys, align 8
  %limit111 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %97, i32 0, i32 9
  %98 = load ptr, ptr %limit111, align 8
  call void @srtp_crypto_free(ptr noundef %98)
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.else107
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.then106
  br label %for.inc

for.inc:                                          ; preds = %if.end113
  %99 = load i32, ptr %i, align 4
  %inc = add i32 %99, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %100 = load ptr, ptr %stream.addr, align 8
  %session_keys114 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %100, i32 0, i32 1
  %101 = load ptr, ptr %session_keys114, align 8
  call void @srtp_crypto_free(ptr noundef %101)
  br label %if.end115

if.end115:                                        ; preds = %for.end, %entry
  %102 = load ptr, ptr %stream.addr, align 8
  %rtp_rdbx = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %102, i32 0, i32 3
  %call116 = call i32 @srtp_rdbx_dealloc(ptr noundef %rtp_rdbx)
  store i32 %call116, ptr %status, align 4
  %103 = load i32, ptr %status, align 4
  %tobool117 = icmp ne i32 %103, 0
  br i1 %tobool117, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.end115
  %104 = load i32, ptr %status, align 4
  store i32 %104, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end119:                                        ; preds = %if.end115
  %105 = load ptr, ptr %stream_template.addr, align 8
  %tobool120 = icmp ne ptr %105, null
  br i1 %tobool120, label %land.lhs.true121, label %if.else126

land.lhs.true121:                                 ; preds = %if.end119
  %106 = load ptr, ptr %stream.addr, align 8
  %enc_xtn_hdr = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %106, i32 0, i32 10
  %107 = load ptr, ptr %enc_xtn_hdr, align 8
  %108 = load ptr, ptr %stream_template.addr, align 8
  %enc_xtn_hdr122 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %108, i32 0, i32 10
  %109 = load ptr, ptr %enc_xtn_hdr122, align 8
  %cmp123 = icmp eq ptr %107, %109
  br i1 %cmp123, label %if.then125, label %if.else126

if.then125:                                       ; preds = %land.lhs.true121
  br label %if.end132

if.else126:                                       ; preds = %land.lhs.true121, %if.end119
  %110 = load ptr, ptr %stream.addr, align 8
  %enc_xtn_hdr127 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %110, i32 0, i32 10
  %111 = load ptr, ptr %enc_xtn_hdr127, align 8
  %tobool128 = icmp ne ptr %111, null
  br i1 %tobool128, label %if.then129, label %if.end131

if.then129:                                       ; preds = %if.else126
  %112 = load ptr, ptr %stream.addr, align 8
  %enc_xtn_hdr130 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %112, i32 0, i32 10
  %113 = load ptr, ptr %enc_xtn_hdr130, align 8
  call void @srtp_crypto_free(ptr noundef %113)
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %if.else126
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.then125
  %114 = load ptr, ptr %stream.addr, align 8
  call void @srtp_crypto_free(ptr noundef %114)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end132, %if.then118, %if.then90, %if.then71, %if.then55, %if.then39, %if.then22
  call void @llvm.lifetime.end.p0(i64 8, ptr %template_session_keys) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %session_keys) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  %115 = load i32, ptr %retval, align 4
  ret i32 %115
}

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_cipher_dealloc(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @octet_string_set_to_zero(ptr noundef, i64 noundef) #3

; Function Attrs: null_pointer_is_valid
declare void @srtp_crypto_free(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_rdbx_dealloc(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_stream_alloc(ptr noundef %str_ptr, ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %str_ptr.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %str = alloca ptr, align 8
  %stat = alloca i32, align 4
  %i = alloca i32, align 4
  %session_keys = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %enc_xtn_hdr_cipher_type = alloca i32, align 4
  %enc_xtn_hdr_cipher_key_len = alloca i32, align 4
  store ptr %str_ptr, ptr %str_ptr.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %str, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %stat) #8
  store i32 -1431655766, ptr %stat, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 -1431655766, ptr %i, align 4, !annotation !3
  store i32 0, ptr %i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %session_keys) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %session_keys, align 8, !annotation !3
  store ptr null, ptr %session_keys, align 8
  %call = call ptr @srtp_crypto_alloc(i64 noundef 128)
  store ptr %call, ptr %str, align 8
  %0 = load ptr, ptr %str, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup130

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %str, align 8
  %2 = load ptr, ptr %str_ptr.addr, align 8
  store ptr %1, ptr %2, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %key = getelementptr inbounds %struct.srtp_policy_t, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %key, align 8
  %cmp1 = icmp ne ptr %4, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %str, align 8
  %num_master_keys = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %5, i32 0, i32 2
  store i32 1, ptr %num_master_keys, align 8
  br label %if.end5

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %p.addr, align 8
  %num_master_keys3 = getelementptr inbounds %struct.srtp_policy_t, ptr %6, i32 0, i32 5
  %7 = load i64, ptr %num_master_keys3, align 8
  %conv = trunc i64 %7 to i32
  %8 = load ptr, ptr %str, align 8
  %num_master_keys4 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %8, i32 0, i32 2
  store i32 %conv, ptr %num_master_keys4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %9 = load ptr, ptr %str, align 8
  %num_master_keys6 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %num_master_keys6, align 8
  %conv7 = zext i32 %10 to i64
  %mul = mul i64 88, %conv7
  %call8 = call ptr @srtp_crypto_alloc(i64 noundef %mul)
  %11 = load ptr, ptr %str, align 8
  %session_keys9 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %11, i32 0, i32 1
  store ptr %call8, ptr %session_keys9, align 8
  %12 = load ptr, ptr %str, align 8
  %session_keys10 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %session_keys10, align 8
  %cmp11 = icmp eq ptr %13, null
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end5
  %14 = load ptr, ptr %str, align 8
  %call14 = call i32 @srtp_stream_dealloc(ptr noundef %14, ptr noundef null)
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup130

if.end15:                                         ; preds = %if.end5
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end15
  %15 = load i32, ptr %i, align 4
  %16 = load ptr, ptr %str, align 8
  %num_master_keys16 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %num_master_keys16, align 8
  %cmp17 = icmp ult i32 %15, %17
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %str, align 8
  %session_keys19 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %session_keys19, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom = zext i32 %20 to i64
  %arrayidx = getelementptr inbounds %struct.srtp_session_keys_t, ptr %19, i64 %idxprom
  store ptr %arrayidx, ptr %session_keys, align 8
  %21 = load ptr, ptr %p.addr, align 8
  %rtp = getelementptr inbounds %struct.srtp_policy_t, ptr %21, i32 0, i32 1
  %cipher_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %rtp, i32 0, i32 0
  %22 = load i32, ptr %cipher_type, align 8
  %23 = load ptr, ptr %session_keys, align 8
  %rtp_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %p.addr, align 8
  %rtp20 = getelementptr inbounds %struct.srtp_policy_t, ptr %24, i32 0, i32 1
  %cipher_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %rtp20, i32 0, i32 1
  %25 = load i32, ptr %cipher_key_len, align 4
  %26 = load ptr, ptr %p.addr, align 8
  %rtp21 = getelementptr inbounds %struct.srtp_policy_t, ptr %26, i32 0, i32 1
  %auth_tag_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %rtp21, i32 0, i32 4
  %27 = load i32, ptr %auth_tag_len, align 8
  %call22 = call i32 @srtp_crypto_kernel_alloc_cipher(i32 noundef %22, ptr noundef %rtp_cipher, i32 noundef %25, i32 noundef %27)
  store i32 %call22, ptr %stat, align 4
  %28 = load i32, ptr %stat, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then23, label %if.end25

if.then23:                                        ; preds = %for.body
  %29 = load ptr, ptr %str, align 8
  %call24 = call i32 @srtp_stream_dealloc(ptr noundef %29, ptr noundef null)
  %30 = load i32, ptr %stat, align 4
  store i32 %30, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup130

if.end25:                                         ; preds = %for.body
  %31 = load ptr, ptr %p.addr, align 8
  %rtp26 = getelementptr inbounds %struct.srtp_policy_t, ptr %31, i32 0, i32 1
  %auth_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %rtp26, i32 0, i32 2
  %32 = load i32, ptr %auth_type, align 8
  %33 = load ptr, ptr %session_keys, align 8
  %rtp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %p.addr, align 8
  %rtp27 = getelementptr inbounds %struct.srtp_policy_t, ptr %34, i32 0, i32 1
  %auth_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %rtp27, i32 0, i32 3
  %35 = load i32, ptr %auth_key_len, align 4
  %36 = load ptr, ptr %p.addr, align 8
  %rtp28 = getelementptr inbounds %struct.srtp_policy_t, ptr %36, i32 0, i32 1
  %auth_tag_len29 = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %rtp28, i32 0, i32 4
  %37 = load i32, ptr %auth_tag_len29, align 8
  %call30 = call i32 @srtp_crypto_kernel_alloc_auth(i32 noundef %32, ptr noundef %rtp_auth, i32 noundef %35, i32 noundef %37)
  store i32 %call30, ptr %stat, align 4
  %38 = load i32, ptr %stat, align 4
  %tobool31 = icmp ne i32 %38, 0
  br i1 %tobool31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end25
  %39 = load ptr, ptr %str, align 8
  %call33 = call i32 @srtp_stream_dealloc(ptr noundef %39, ptr noundef null)
  %40 = load i32, ptr %stat, align 4
  store i32 %40, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup130

if.end34:                                         ; preds = %if.end25
  %41 = load ptr, ptr %p.addr, align 8
  %rtcp = getelementptr inbounds %struct.srtp_policy_t, ptr %41, i32 0, i32 2
  %cipher_type35 = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %rtcp, i32 0, i32 0
  %42 = load i32, ptr %cipher_type35, align 8
  %43 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %43, i32 0, i32 3
  %44 = load ptr, ptr %p.addr, align 8
  %rtcp36 = getelementptr inbounds %struct.srtp_policy_t, ptr %44, i32 0, i32 2
  %cipher_key_len37 = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %rtcp36, i32 0, i32 1
  %45 = load i32, ptr %cipher_key_len37, align 4
  %46 = load ptr, ptr %p.addr, align 8
  %rtcp38 = getelementptr inbounds %struct.srtp_policy_t, ptr %46, i32 0, i32 2
  %auth_tag_len39 = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %rtcp38, i32 0, i32 4
  %47 = load i32, ptr %auth_tag_len39, align 8
  %call40 = call i32 @srtp_crypto_kernel_alloc_cipher(i32 noundef %42, ptr noundef %rtcp_cipher, i32 noundef %45, i32 noundef %47)
  store i32 %call40, ptr %stat, align 4
  %48 = load i32, ptr %stat, align 4
  %tobool41 = icmp ne i32 %48, 0
  br i1 %tobool41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end34
  %49 = load ptr, ptr %str, align 8
  %call43 = call i32 @srtp_stream_dealloc(ptr noundef %49, ptr noundef null)
  %50 = load i32, ptr %stat, align 4
  store i32 %50, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup130

if.end44:                                         ; preds = %if.end34
  %51 = load ptr, ptr %p.addr, align 8
  %rtcp45 = getelementptr inbounds %struct.srtp_policy_t, ptr %51, i32 0, i32 2
  %auth_type46 = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %rtcp45, i32 0, i32 2
  %52 = load i32, ptr %auth_type46, align 8
  %53 = load ptr, ptr %session_keys, align 8
  %rtcp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %53, i32 0, i32 4
  %54 = load ptr, ptr %p.addr, align 8
  %rtcp47 = getelementptr inbounds %struct.srtp_policy_t, ptr %54, i32 0, i32 2
  %auth_key_len48 = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %rtcp47, i32 0, i32 3
  %55 = load i32, ptr %auth_key_len48, align 4
  %56 = load ptr, ptr %p.addr, align 8
  %rtcp49 = getelementptr inbounds %struct.srtp_policy_t, ptr %56, i32 0, i32 2
  %auth_tag_len50 = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %rtcp49, i32 0, i32 4
  %57 = load i32, ptr %auth_tag_len50, align 8
  %call51 = call i32 @srtp_crypto_kernel_alloc_auth(i32 noundef %52, ptr noundef %rtcp_auth, i32 noundef %55, i32 noundef %57)
  store i32 %call51, ptr %stat, align 4
  %58 = load i32, ptr %stat, align 4
  %tobool52 = icmp ne i32 %58, 0
  br i1 %tobool52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end44
  %59 = load ptr, ptr %str, align 8
  %call54 = call i32 @srtp_stream_dealloc(ptr noundef %59, ptr noundef null)
  %60 = load i32, ptr %stat, align 4
  store i32 %60, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup130

if.end55:                                         ; preds = %if.end44
  %61 = load ptr, ptr %session_keys, align 8
  %mki_id = getelementptr inbounds %struct.srtp_session_keys_t, ptr %61, i32 0, i32 7
  store ptr null, ptr %mki_id, align 8
  %call56 = call ptr @srtp_crypto_alloc(i64 noundef 16)
  %62 = load ptr, ptr %session_keys, align 8
  %limit = getelementptr inbounds %struct.srtp_session_keys_t, ptr %62, i32 0, i32 9
  store ptr %call56, ptr %limit, align 8
  %63 = load ptr, ptr %session_keys, align 8
  %limit57 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %63, i32 0, i32 9
  %64 = load ptr, ptr %limit57, align 8
  %cmp58 = icmp eq ptr %64, null
  br i1 %cmp58, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.end55
  %65 = load ptr, ptr %str, align 8
  %call61 = call i32 @srtp_stream_dealloc(ptr noundef %65, ptr noundef null)
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup130

if.end62:                                         ; preds = %if.end55
  br label %for.inc

for.inc:                                          ; preds = %if.end62
  %66 = load i32, ptr %i, align 4
  %inc = add i32 %66, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %67 = load ptr, ptr %str, align 8
  %ekt = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %67, i32 0, i32 9
  %68 = load ptr, ptr %p.addr, align 8
  %ekt63 = getelementptr inbounds %struct.srtp_policy_t, ptr %68, i32 0, i32 6
  %69 = load ptr, ptr %ekt63, align 8
  %call64 = call i32 @srtp_ekt_alloc(ptr noundef %ekt, ptr noundef %69)
  store i32 %call64, ptr %stat, align 4
  %70 = load i32, ptr %stat, align 4
  %tobool65 = icmp ne i32 %70, 0
  br i1 %tobool65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %for.end
  %71 = load ptr, ptr %str, align 8
  %call67 = call i32 @srtp_stream_dealloc(ptr noundef %71, ptr noundef null)
  %72 = load i32, ptr %stat, align 4
  store i32 %72, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup130

if.end68:                                         ; preds = %for.end
  %73 = load ptr, ptr %p.addr, align 8
  %enc_xtn_hdr = getelementptr inbounds %struct.srtp_policy_t, ptr %73, i32 0, i32 9
  %74 = load ptr, ptr %enc_xtn_hdr, align 8
  %tobool69 = icmp ne ptr %74, null
  br i1 %tobool69, label %land.lhs.true, label %if.else114

land.lhs.true:                                    ; preds = %if.end68
  %75 = load ptr, ptr %p.addr, align 8
  %enc_xtn_hdr_count = getelementptr inbounds %struct.srtp_policy_t, ptr %75, i32 0, i32 10
  %76 = load i32, ptr %enc_xtn_hdr_count, align 8
  %cmp70 = icmp sgt i32 %76, 0
  br i1 %cmp70, label %if.then72, label %if.else114

if.then72:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %enc_xtn_hdr_cipher_type) #8
  store i32 -1431655766, ptr %enc_xtn_hdr_cipher_type, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %enc_xtn_hdr_cipher_key_len) #8
  store i32 -1431655766, ptr %enc_xtn_hdr_cipher_key_len, align 4, !annotation !3
  %77 = load ptr, ptr %p.addr, align 8
  %enc_xtn_hdr_count73 = getelementptr inbounds %struct.srtp_policy_t, ptr %77, i32 0, i32 10
  %78 = load i32, ptr %enc_xtn_hdr_count73, align 8
  %conv74 = sext i32 %78 to i64
  %mul75 = mul i64 %conv74, 4
  %call76 = call ptr @srtp_crypto_alloc(i64 noundef %mul75)
  %79 = load ptr, ptr %str, align 8
  %enc_xtn_hdr77 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %79, i32 0, i32 10
  store ptr %call76, ptr %enc_xtn_hdr77, align 8
  %80 = load ptr, ptr %str, align 8
  %enc_xtn_hdr78 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %80, i32 0, i32 10
  %81 = load ptr, ptr %enc_xtn_hdr78, align 8
  %tobool79 = icmp ne ptr %81, null
  br i1 %tobool79, label %if.end82, label %if.then80

if.then80:                                        ; preds = %if.then72
  %82 = load ptr, ptr %str, align 8
  %call81 = call i32 @srtp_stream_dealloc(ptr noundef %82, ptr noundef null)
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end82:                                         ; preds = %if.then72
  %83 = load ptr, ptr %str, align 8
  %enc_xtn_hdr83 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %83, i32 0, i32 10
  %84 = load ptr, ptr %enc_xtn_hdr83, align 8
  %85 = load ptr, ptr %p.addr, align 8
  %enc_xtn_hdr84 = getelementptr inbounds %struct.srtp_policy_t, ptr %85, i32 0, i32 9
  %86 = load ptr, ptr %enc_xtn_hdr84, align 8
  %87 = load ptr, ptr %p.addr, align 8
  %enc_xtn_hdr_count85 = getelementptr inbounds %struct.srtp_policy_t, ptr %87, i32 0, i32 10
  %88 = load i32, ptr %enc_xtn_hdr_count85, align 8
  %conv86 = sext i32 %88 to i64
  %mul87 = mul i64 %conv86, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %84, ptr align 4 %86, i64 %mul87, i1 false)
  %89 = load ptr, ptr %p.addr, align 8
  %enc_xtn_hdr_count88 = getelementptr inbounds %struct.srtp_policy_t, ptr %89, i32 0, i32 10
  %90 = load i32, ptr %enc_xtn_hdr_count88, align 8
  %91 = load ptr, ptr %str, align 8
  %enc_xtn_hdr_count89 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %91, i32 0, i32 11
  store i32 %90, ptr %enc_xtn_hdr_count89, align 8
  %92 = load ptr, ptr %p.addr, align 8
  %rtp90 = getelementptr inbounds %struct.srtp_policy_t, ptr %92, i32 0, i32 1
  %cipher_type91 = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %rtp90, i32 0, i32 0
  %93 = load i32, ptr %cipher_type91, align 8
  switch i32 %93, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb92
  ]

sw.bb:                                            ; preds = %if.end82
  store i32 1, ptr %enc_xtn_hdr_cipher_type, align 4
  store i32 30, ptr %enc_xtn_hdr_cipher_key_len, align 4
  br label %sw.epilog

sw.bb92:                                          ; preds = %if.end82
  store i32 5, ptr %enc_xtn_hdr_cipher_type, align 4
  store i32 46, ptr %enc_xtn_hdr_cipher_key_len, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end82
  %94 = load ptr, ptr %p.addr, align 8
  %rtp93 = getelementptr inbounds %struct.srtp_policy_t, ptr %94, i32 0, i32 1
  %cipher_type94 = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %rtp93, i32 0, i32 0
  %95 = load i32, ptr %cipher_type94, align 8
  store i32 %95, ptr %enc_xtn_hdr_cipher_type, align 4
  %96 = load ptr, ptr %p.addr, align 8
  %rtp95 = getelementptr inbounds %struct.srtp_policy_t, ptr %96, i32 0, i32 1
  %cipher_key_len96 = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %rtp95, i32 0, i32 1
  %97 = load i32, ptr %cipher_key_len96, align 4
  store i32 %97, ptr %enc_xtn_hdr_cipher_key_len, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb92, %sw.bb
  store i32 0, ptr %i, align 4
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc110, %sw.epilog
  %98 = load i32, ptr %i, align 4
  %99 = load ptr, ptr %str, align 8
  %num_master_keys98 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %99, i32 0, i32 2
  %100 = load i32, ptr %num_master_keys98, align 8
  %cmp99 = icmp ult i32 %98, %100
  br i1 %cmp99, label %for.body101, label %for.end112

for.body101:                                      ; preds = %for.cond97
  %101 = load ptr, ptr %str, align 8
  %session_keys102 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %101, i32 0, i32 1
  %102 = load ptr, ptr %session_keys102, align 8
  %103 = load i32, ptr %i, align 4
  %idxprom103 = zext i32 %103 to i64
  %arrayidx104 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %102, i64 %idxprom103
  store ptr %arrayidx104, ptr %session_keys, align 8
  %104 = load i32, ptr %enc_xtn_hdr_cipher_type, align 4
  %105 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %105, i32 0, i32 1
  %106 = load i32, ptr %enc_xtn_hdr_cipher_key_len, align 4
  %call105 = call i32 @srtp_crypto_kernel_alloc_cipher(i32 noundef %104, ptr noundef %rtp_xtn_hdr_cipher, i32 noundef %106, i32 noundef 0)
  store i32 %call105, ptr %stat, align 4
  %107 = load i32, ptr %stat, align 4
  %tobool106 = icmp ne i32 %107, 0
  br i1 %tobool106, label %if.then107, label %if.end109

if.then107:                                       ; preds = %for.body101
  %108 = load ptr, ptr %str, align 8
  %call108 = call i32 @srtp_stream_dealloc(ptr noundef %108, ptr noundef null)
  %109 = load i32, ptr %stat, align 4
  store i32 %109, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end109:                                        ; preds = %for.body101
  br label %for.inc110

for.inc110:                                       ; preds = %if.end109
  %110 = load i32, ptr %i, align 4
  %inc111 = add i32 %110, 1
  store i32 %inc111, ptr %i, align 4
  br label %for.cond97, !llvm.loop !7

for.end112:                                       ; preds = %for.cond97
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end112, %if.then107, %if.then80
  call void @llvm.lifetime.end.p0(i64 4, ptr %enc_xtn_hdr_cipher_key_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %enc_xtn_hdr_cipher_type) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup130 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end129

if.else114:                                       ; preds = %land.lhs.true, %if.end68
  store i32 0, ptr %i, align 4
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc124, %if.else114
  %111 = load i32, ptr %i, align 4
  %112 = load ptr, ptr %str, align 8
  %num_master_keys116 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %112, i32 0, i32 2
  %113 = load i32, ptr %num_master_keys116, align 8
  %cmp117 = icmp ult i32 %111, %113
  br i1 %cmp117, label %for.body119, label %for.end126

for.body119:                                      ; preds = %for.cond115
  %114 = load ptr, ptr %str, align 8
  %session_keys120 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %114, i32 0, i32 1
  %115 = load ptr, ptr %session_keys120, align 8
  %116 = load i32, ptr %i, align 4
  %idxprom121 = zext i32 %116 to i64
  %arrayidx122 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %115, i64 %idxprom121
  store ptr %arrayidx122, ptr %session_keys, align 8
  %117 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher123 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %117, i32 0, i32 1
  store ptr null, ptr %rtp_xtn_hdr_cipher123, align 8
  br label %for.inc124

for.inc124:                                       ; preds = %for.body119
  %118 = load i32, ptr %i, align 4
  %inc125 = add i32 %118, 1
  store i32 %inc125, ptr %i, align 4
  br label %for.cond115, !llvm.loop !8

for.end126:                                       ; preds = %for.cond115
  %119 = load ptr, ptr %str, align 8
  %enc_xtn_hdr127 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %119, i32 0, i32 10
  store ptr null, ptr %enc_xtn_hdr127, align 8
  %120 = load ptr, ptr %str, align 8
  %enc_xtn_hdr_count128 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %120, i32 0, i32 11
  store i32 0, ptr %enc_xtn_hdr_count128, align 8
  br label %if.end129

if.end129:                                        ; preds = %for.end126, %cleanup.cont
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup130

cleanup130:                                       ; preds = %if.end129, %cleanup, %if.then66, %if.then60, %if.then53, %if.then42, %if.then32, %if.then23, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %session_keys) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %stat) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #8
  %121 = load i32, ptr %retval, align 4
  ret i32 %121
}

; Function Attrs: null_pointer_is_valid
declare ptr @srtp_crypto_alloc(i64 noundef) #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_crypto_kernel_alloc_cipher(i32 noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_crypto_kernel_alloc_auth(i32 noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_ekt_alloc(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_stream_clone(ptr noundef %stream_template, i32 noundef %ssrc, ptr noundef %str_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %stream_template.addr = alloca ptr, align 8
  %ssrc.addr = alloca i32, align 4
  %str_ptr.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %str = alloca ptr, align 8
  %i = alloca i32, align 4
  %session_keys = alloca ptr, align 8
  %template_session_keys = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %stream_template, ptr %stream_template.addr, align 8
  store i32 %ssrc, ptr %ssrc.addr, align 4
  store ptr %str_ptr, ptr %str_ptr.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %str, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 -1431655766, ptr %i, align 4, !annotation !3
  store i32 0, ptr %i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %session_keys) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %session_keys, align 8, !annotation !3
  store ptr null, ptr %session_keys, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %template_session_keys) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %template_session_keys, align 8, !annotation !3
  store ptr null, ptr %template_session_keys, align 8
  %0 = load i32, ptr @mod_srtp, align 8
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %2 = load i32, ptr %ssrc.addr, align 4
  %call = call i32 @__bswap_32(i32 noundef %2)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.3, ptr noundef %1, i32 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call ptr @srtp_crypto_alloc(i64 noundef 128)
  store ptr %call1, ptr %str, align 8
  %3 = load ptr, ptr %str, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %str, align 8
  %5 = load ptr, ptr %str_ptr.addr, align 8
  store ptr %4, ptr %5, align 8
  %6 = load ptr, ptr %stream_template.addr, align 8
  %num_master_keys = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %num_master_keys, align 8
  %8 = load ptr, ptr %str, align 8
  %num_master_keys4 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %8, i32 0, i32 2
  store i32 %7, ptr %num_master_keys4, align 8
  %9 = load ptr, ptr %str, align 8
  %num_master_keys5 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %num_master_keys5, align 8
  %conv = zext i32 %10 to i64
  %mul = mul i64 88, %conv
  %call6 = call ptr @srtp_crypto_alloc(i64 noundef %mul)
  %11 = load ptr, ptr %str, align 8
  %session_keys7 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %11, i32 0, i32 1
  store ptr %call6, ptr %session_keys7, align 8
  %12 = load ptr, ptr %str, align 8
  %session_keys8 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %session_keys8, align 8
  %cmp9 = icmp eq ptr %13, null
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end3
  %14 = load ptr, ptr %str_ptr.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %stream_template.addr, align 8
  %call12 = call i32 @srtp_stream_dealloc(ptr noundef %15, ptr noundef %16)
  %17 = load ptr, ptr %str_ptr.addr, align 8
  store ptr null, ptr %17, align 8
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %18 = load i32, ptr %i, align 4
  %19 = load ptr, ptr %stream_template.addr, align 8
  %num_master_keys14 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %num_master_keys14, align 8
  %cmp15 = icmp ult i32 %18, %20
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %str, align 8
  %session_keys17 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %session_keys17, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom = zext i32 %23 to i64
  %arrayidx = getelementptr inbounds %struct.srtp_session_keys_t, ptr %22, i64 %idxprom
  store ptr %arrayidx, ptr %session_keys, align 8
  %24 = load ptr, ptr %stream_template.addr, align 8
  %session_keys18 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %session_keys18, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom19 = zext i32 %26 to i64
  %arrayidx20 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %25, i64 %idxprom19
  store ptr %arrayidx20, ptr %template_session_keys, align 8
  %27 = load ptr, ptr %template_session_keys, align 8
  %rtp_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %rtp_cipher, align 8
  %29 = load ptr, ptr %session_keys, align 8
  %rtp_cipher21 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %29, i32 0, i32 0
  store ptr %28, ptr %rtp_cipher21, align 8
  %30 = load ptr, ptr %template_session_keys, align 8
  %rtp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %rtp_auth, align 8
  %32 = load ptr, ptr %session_keys, align 8
  %rtp_auth22 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %32, i32 0, i32 2
  store ptr %31, ptr %rtp_auth22, align 8
  %33 = load ptr, ptr %template_session_keys, align 8
  %rtp_xtn_hdr_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %rtp_xtn_hdr_cipher, align 8
  %35 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher23 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %35, i32 0, i32 1
  store ptr %34, ptr %rtp_xtn_hdr_cipher23, align 8
  %36 = load ptr, ptr %template_session_keys, align 8
  %rtcp_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %36, i32 0, i32 3
  %37 = load ptr, ptr %rtcp_cipher, align 8
  %38 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher24 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %38, i32 0, i32 3
  store ptr %37, ptr %rtcp_cipher24, align 8
  %39 = load ptr, ptr %template_session_keys, align 8
  %rtcp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %39, i32 0, i32 4
  %40 = load ptr, ptr %rtcp_auth, align 8
  %41 = load ptr, ptr %session_keys, align 8
  %rtcp_auth25 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %41, i32 0, i32 4
  store ptr %40, ptr %rtcp_auth25, align 8
  %42 = load ptr, ptr %template_session_keys, align 8
  %mki_size = getelementptr inbounds %struct.srtp_session_keys_t, ptr %42, i32 0, i32 8
  %43 = load i32, ptr %mki_size, align 8
  %44 = load ptr, ptr %session_keys, align 8
  %mki_size26 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %44, i32 0, i32 8
  store i32 %43, ptr %mki_size26, align 8
  %45 = load ptr, ptr %template_session_keys, align 8
  %mki_size27 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %45, i32 0, i32 8
  %46 = load i32, ptr %mki_size27, align 8
  %cmp28 = icmp eq i32 %46, 0
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %for.body
  %47 = load ptr, ptr %session_keys, align 8
  %mki_id = getelementptr inbounds %struct.srtp_session_keys_t, ptr %47, i32 0, i32 7
  store ptr null, ptr %mki_id, align 8
  br label %if.end45

if.else:                                          ; preds = %for.body
  %48 = load ptr, ptr %template_session_keys, align 8
  %mki_size31 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %48, i32 0, i32 8
  %49 = load i32, ptr %mki_size31, align 8
  %conv32 = zext i32 %49 to i64
  %call33 = call ptr @srtp_crypto_alloc(i64 noundef %conv32)
  %50 = load ptr, ptr %session_keys, align 8
  %mki_id34 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %50, i32 0, i32 7
  store ptr %call33, ptr %mki_id34, align 8
  %51 = load ptr, ptr %session_keys, align 8
  %mki_id35 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %51, i32 0, i32 7
  %52 = load ptr, ptr %mki_id35, align 8
  %cmp36 = icmp eq ptr %52, null
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.else
  %53 = load ptr, ptr %str_ptr.addr, align 8
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %stream_template.addr, align 8
  %call39 = call i32 @srtp_stream_dealloc(ptr noundef %54, ptr noundef %55)
  %56 = load ptr, ptr %str_ptr.addr, align 8
  store ptr null, ptr %56, align 8
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.else
  %57 = load ptr, ptr %session_keys, align 8
  %mki_id41 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %57, i32 0, i32 7
  %58 = load ptr, ptr %mki_id41, align 8
  %59 = load ptr, ptr %template_session_keys, align 8
  %mki_id42 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %59, i32 0, i32 7
  %60 = load ptr, ptr %mki_id42, align 8
  %61 = load ptr, ptr %session_keys, align 8
  %mki_size43 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %61, i32 0, i32 8
  %62 = load i32, ptr %mki_size43, align 8
  %conv44 = zext i32 %62 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %58, ptr align 1 %60, i64 %conv44, i1 false)
  br label %if.end45

if.end45:                                         ; preds = %if.end40, %if.then30
  %63 = load ptr, ptr %session_keys, align 8
  %salt = getelementptr inbounds %struct.srtp_session_keys_t, ptr %63, i32 0, i32 5
  %arraydecay = getelementptr inbounds [12 x i8], ptr %salt, i64 0, i64 0
  %64 = load ptr, ptr %template_session_keys, align 8
  %salt46 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %64, i32 0, i32 5
  %arraydecay47 = getelementptr inbounds [12 x i8], ptr %salt46, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 8 %arraydecay47, i64 12, i1 false)
  %65 = load ptr, ptr %session_keys, align 8
  %c_salt = getelementptr inbounds %struct.srtp_session_keys_t, ptr %65, i32 0, i32 6
  %arraydecay48 = getelementptr inbounds [12 x i8], ptr %c_salt, i64 0, i64 0
  %66 = load ptr, ptr %template_session_keys, align 8
  %c_salt49 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %66, i32 0, i32 6
  %arraydecay50 = getelementptr inbounds [12 x i8], ptr %c_salt49, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay48, ptr align 4 %arraydecay50, i64 12, i1 false)
  %67 = load ptr, ptr %template_session_keys, align 8
  %limit = getelementptr inbounds %struct.srtp_session_keys_t, ptr %67, i32 0, i32 9
  %68 = load ptr, ptr %limit, align 8
  %69 = load ptr, ptr %session_keys, align 8
  %limit51 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %69, i32 0, i32 9
  %call52 = call i32 @srtp_key_limit_clone(ptr noundef %68, ptr noundef %limit51)
  store i32 %call52, ptr %status, align 4
  %70 = load i32, ptr %status, align 4
  %tobool53 = icmp ne i32 %70, 0
  br i1 %tobool53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end45
  %71 = load ptr, ptr %str_ptr.addr, align 8
  %72 = load ptr, ptr %71, align 8
  %73 = load ptr, ptr %stream_template.addr, align 8
  %call55 = call i32 @srtp_stream_dealloc(ptr noundef %72, ptr noundef %73)
  %74 = load ptr, ptr %str_ptr.addr, align 8
  store ptr null, ptr %74, align 8
  %75 = load i32, ptr %status, align 4
  store i32 %75, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %if.end45
  br label %for.inc

for.inc:                                          ; preds = %if.end56
  %76 = load i32, ptr %i, align 4
  %inc = add i32 %76, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %77 = load ptr, ptr %str, align 8
  %rtp_rdbx = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %77, i32 0, i32 3
  %78 = load ptr, ptr %stream_template.addr, align 8
  %rtp_rdbx57 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %78, i32 0, i32 3
  %call58 = call i64 @srtp_rdbx_get_window_size(ptr noundef %rtp_rdbx57)
  %call59 = call i32 @srtp_rdbx_init(ptr noundef %rtp_rdbx, i64 noundef %call58)
  store i32 %call59, ptr %status, align 4
  %79 = load i32, ptr %status, align 4
  %tobool60 = icmp ne i32 %79, 0
  br i1 %tobool60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %for.end
  %80 = load ptr, ptr %str_ptr.addr, align 8
  %81 = load ptr, ptr %80, align 8
  %82 = load ptr, ptr %stream_template.addr, align 8
  %call62 = call i32 @srtp_stream_dealloc(ptr noundef %81, ptr noundef %82)
  %83 = load ptr, ptr %str_ptr.addr, align 8
  store ptr null, ptr %83, align 8
  %84 = load i32, ptr %status, align 4
  store i32 %84, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end63:                                         ; preds = %for.end
  %85 = load ptr, ptr %str, align 8
  %rtcp_rdb = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %85, i32 0, i32 5
  %call64 = call i32 @srtp_rdb_init(ptr noundef %rtcp_rdb)
  %86 = load ptr, ptr %stream_template.addr, align 8
  %allow_repeat_tx = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %86, i32 0, i32 8
  %87 = load i32, ptr %allow_repeat_tx, align 8
  %88 = load ptr, ptr %str, align 8
  %allow_repeat_tx65 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %88, i32 0, i32 8
  store i32 %87, ptr %allow_repeat_tx65, align 8
  %89 = load i32, ptr %ssrc.addr, align 4
  %90 = load ptr, ptr %str, align 8
  %ssrc66 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %90, i32 0, i32 0
  store i32 %89, ptr %ssrc66, align 8
  %91 = load ptr, ptr %str, align 8
  %pending_roc = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %91, i32 0, i32 12
  store i32 0, ptr %pending_roc, align 4
  %92 = load ptr, ptr %stream_template.addr, align 8
  %direction = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %92, i32 0, i32 7
  %93 = load i32, ptr %direction, align 4
  %94 = load ptr, ptr %str, align 8
  %direction67 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %94, i32 0, i32 7
  store i32 %93, ptr %direction67, align 4
  %95 = load ptr, ptr %stream_template.addr, align 8
  %rtp_services = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %95, i32 0, i32 4
  %96 = load i32, ptr %rtp_services, align 8
  %97 = load ptr, ptr %str, align 8
  %rtp_services68 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %97, i32 0, i32 4
  store i32 %96, ptr %rtp_services68, align 8
  %98 = load ptr, ptr %stream_template.addr, align 8
  %rtcp_services = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %98, i32 0, i32 6
  %99 = load i32, ptr %rtcp_services, align 8
  %100 = load ptr, ptr %str, align 8
  %rtcp_services69 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %100, i32 0, i32 6
  store i32 %99, ptr %rtcp_services69, align 8
  %101 = load ptr, ptr %stream_template.addr, align 8
  %ekt = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %101, i32 0, i32 9
  %102 = load ptr, ptr %ekt, align 8
  %103 = load ptr, ptr %str, align 8
  %ekt70 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %103, i32 0, i32 9
  store ptr %102, ptr %ekt70, align 8
  %104 = load ptr, ptr %stream_template.addr, align 8
  %enc_xtn_hdr = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %104, i32 0, i32 10
  %105 = load ptr, ptr %enc_xtn_hdr, align 8
  %106 = load ptr, ptr %str, align 8
  %enc_xtn_hdr71 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %106, i32 0, i32 10
  store ptr %105, ptr %enc_xtn_hdr71, align 8
  %107 = load ptr, ptr %stream_template.addr, align 8
  %enc_xtn_hdr_count = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %107, i32 0, i32 11
  %108 = load i32, ptr %enc_xtn_hdr_count, align 8
  %109 = load ptr, ptr %str, align 8
  %enc_xtn_hdr_count72 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %109, i32 0, i32 11
  store i32 %108, ptr %enc_xtn_hdr_count72, align 8
  %110 = load ptr, ptr %str, align 8
  %next = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %110, i32 0, i32 13
  store ptr null, ptr %next, align 8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.then61, %if.then54, %if.then38, %if.then11, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %template_session_keys) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %session_keys) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  %111 = load i32, ptr %retval, align 4
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare void @srtp_err_report(i32 noundef, ptr noundef, ...) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid ssp
define internal i32 @__bswap_32(i32 noundef %__bsx) #5 {
entry:
  %__bsx.addr = alloca i32, align 4
  store i32 %__bsx, ptr %__bsx.addr, align 4
  %0 = load i32, ptr %__bsx.addr, align 4
  %and = and i32 %0, -16777216
  %shr = lshr i32 %and, 24
  %1 = load i32, ptr %__bsx.addr, align 4
  %and1 = and i32 %1, 16711680
  %shr2 = lshr i32 %and1, 8
  %or = or i32 %shr, %shr2
  %2 = load i32, ptr %__bsx.addr, align 4
  %and3 = and i32 %2, 65280
  %shl = shl i32 %and3, 8
  %or4 = or i32 %or, %shl
  %3 = load i32, ptr %__bsx.addr, align 4
  %and5 = and i32 %3, 255
  %shl6 = shl i32 %and5, 24
  %or7 = or i32 %or4, %shl6
  ret i32 %or7
}

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_key_limit_clone(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_rdbx_init(ptr noundef, i64 noundef) #3

; Function Attrs: null_pointer_is_valid
declare i64 @srtp_rdbx_get_window_size(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_rdb_init(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_validate_policy_master_keys(ptr noundef %policy) #0 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 -6148914691236517206, ptr %i, align 8, !annotation !3
  store i64 0, ptr %i, align 8
  %0 = load ptr, ptr %policy.addr, align 8
  %key = getelementptr inbounds %struct.srtp_policy_t, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %key, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %policy.addr, align 8
  %num_master_keys = getelementptr inbounds %struct.srtp_policy_t, ptr %2, i32 0, i32 5
  %3 = load i64, ptr %num_master_keys, align 8
  %cmp1 = icmp ule i64 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %policy.addr, align 8
  %num_master_keys3 = getelementptr inbounds %struct.srtp_policy_t, ptr %4, i32 0, i32 5
  %5 = load i64, ptr %num_master_keys3, align 8
  %cmp4 = icmp ugt i64 %5, 16
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %6 = load i64, ptr %i, align 8
  %7 = load ptr, ptr %policy.addr, align 8
  %num_master_keys7 = getelementptr inbounds %struct.srtp_policy_t, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %num_master_keys7, align 8
  %cmp8 = icmp ult i64 %6, %8
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %policy.addr, align 8
  %keys = getelementptr inbounds %struct.srtp_policy_t, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %keys, align 8
  %11 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %11
  %12 = load ptr, ptr %arrayidx, align 8
  %key9 = getelementptr inbounds %struct.srtp_master_key_t, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %key9, align 8
  %cmp10 = icmp eq ptr %13, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %14 = load ptr, ptr %policy.addr, align 8
  %keys13 = getelementptr inbounds %struct.srtp_policy_t, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %keys13, align 8
  %16 = load i64, ptr %i, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %15, i64 %16
  %17 = load ptr, ptr %arrayidx14, align 8
  %mki_size = getelementptr inbounds %struct.srtp_master_key_t, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %mki_size, align 8
  %cmp15 = icmp ugt i32 %18, 128
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %19 = load i64, ptr %i, align 8
  %inc = add i64 %19, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %if.end18

if.end18:                                         ; preds = %for.end, %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then11, %if.then5, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden ptr @srtp_get_session_keys_with_mki_index(ptr noundef %stream, i32 noundef %use_mki, i32 noundef %mki_index) #0 {
entry:
  %retval = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  %use_mki.addr = alloca i32, align 4
  %mki_index.addr = alloca i32, align 4
  store ptr %stream, ptr %stream.addr, align 8
  store i32 %use_mki, ptr %use_mki.addr, align 4
  store i32 %mki_index, ptr %mki_index.addr, align 4
  %0 = load i32, ptr %use_mki.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %mki_index.addr, align 4
  %2 = load ptr, ptr %stream.addr, align 8
  %num_master_keys = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %num_master_keys, align 8
  %cmp = icmp uge i32 %1, %3
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %stream.addr, align 8
  %session_keys = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %session_keys, align 8
  %6 = load i32, ptr %mki_index.addr, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.srtp_session_keys_t, ptr %5, i64 %idxprom
  store ptr %arrayidx, ptr %retval, align 8
  br label %return

if.end2:                                          ; preds = %entry
  %7 = load ptr, ptr %stream.addr, align 8
  %session_keys3 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %session_keys3, align 8
  %arrayidx4 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %8, i64 0
  store ptr %arrayidx4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end2, %if.end, %if.then1
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_inject_mki(ptr noundef %mki_tag_location, ptr noundef %session_keys, i32 noundef %use_mki) #0 {
entry:
  %mki_tag_location.addr = alloca ptr, align 8
  %session_keys.addr = alloca ptr, align 8
  %use_mki.addr = alloca i32, align 4
  %mki_size = alloca i32, align 4
  store ptr %mki_tag_location, ptr %mki_tag_location.addr, align 8
  store ptr %session_keys, ptr %session_keys.addr, align 8
  store i32 %use_mki, ptr %use_mki.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mki_size) #8
  store i32 -1431655766, ptr %mki_size, align 4, !annotation !3
  store i32 0, ptr %mki_size, align 4
  %0 = load i32, ptr %use_mki.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %session_keys.addr, align 8
  %mki_size1 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %1, i32 0, i32 8
  %2 = load i32, ptr %mki_size1, align 8
  store i32 %2, ptr %mki_size, align 4
  %3 = load i32, ptr %mki_size, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %mki_tag_location.addr, align 8
  %5 = load ptr, ptr %session_keys.addr, align 8
  %mki_id = getelementptr inbounds %struct.srtp_session_keys_t, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %mki_id, align 8
  %7 = load i32, ptr %mki_size, align 4
  %conv = zext i32 %7 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %6, i64 %conv, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %8 = load i32, ptr %mki_size, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mki_size) #8
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_stream_init_all_master_keys(ptr noundef %srtp, ptr noundef %key, ptr noundef %keys, i32 noundef %max_master_keys) #0 {
entry:
  %retval = alloca i32, align 4
  %srtp.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %keys.addr = alloca ptr, align 8
  %max_master_keys.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %single_master_key = alloca %struct.srtp_master_key_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %srtp, ptr %srtp.addr, align 8
  store ptr %key, ptr %key.addr, align 8
  store ptr %keys, ptr %keys.addr, align 8
  store i32 %max_master_keys, ptr %max_master_keys.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 -1431655766, ptr %i, align 4, !annotation !3
  store i32 0, ptr %i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  store i32 0, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr %single_master_key) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %single_master_key, ptr align 8 @__const.srtp_stream_init_all_master_keys.single_master_key, i64 24, i1 false), !annotation !3
  %0 = load ptr, ptr %key.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %srtp.addr, align 8
  %num_master_keys = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %1, i32 0, i32 2
  store i32 1, ptr %num_master_keys, align 8
  %2 = load ptr, ptr %key.addr, align 8
  %key1 = getelementptr inbounds %struct.srtp_master_key_t, ptr %single_master_key, i32 0, i32 0
  store ptr %2, ptr %key1, align 8
  %mki_id = getelementptr inbounds %struct.srtp_master_key_t, ptr %single_master_key, i32 0, i32 1
  store ptr null, ptr %mki_id, align 8
  %mki_size = getelementptr inbounds %struct.srtp_master_key_t, ptr %single_master_key, i32 0, i32 2
  store i32 0, ptr %mki_size, align 8
  %3 = load ptr, ptr %srtp.addr, align 8
  %call = call i32 @srtp_stream_init_keys(ptr noundef %3, ptr noundef %single_master_key, i32 noundef 0)
  store i32 %call, ptr %status, align 4
  br label %if.end8

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %max_master_keys.addr, align 4
  %5 = load ptr, ptr %srtp.addr, align 8
  %num_master_keys2 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %5, i32 0, i32 2
  store i32 %4, ptr %num_master_keys2, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %srtp.addr, align 8
  %num_master_keys3 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %num_master_keys3, align 8
  %cmp4 = icmp ult i32 %6, %8
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load i32, ptr %i, align 4
  %cmp5 = icmp ult i32 %9, 16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %11 = load ptr, ptr %srtp.addr, align 8
  %12 = load ptr, ptr %keys.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = zext i32 %13 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 %idxprom
  %14 = load ptr, ptr %arrayidx, align 8
  %15 = load i32, ptr %i, align 4
  %call6 = call i32 @srtp_stream_init_keys(ptr noundef %11, ptr noundef %14, i32 noundef %15)
  store i32 %call6, ptr %status, align 4
  %16 = load i32, ptr %status, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then7, label %if.end

if.then7:                                         ; preds = %for.body
  %17 = load i32, ptr %status, align 4
  store i32 %17, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, ptr %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %land.end
  br label %if.end8

if.end8:                                          ; preds = %for.end, %if.then
  %19 = load i32, ptr %status, align 4
  store i32 %19, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7
  call void @llvm.lifetime.end.p0(i64 24, ptr %single_master_key) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_stream_init_keys(ptr noundef %srtp, ptr noundef %master_key, i32 noundef %current_mki_index) #0 {
entry:
  %retval = alloca i32, align 4
  %srtp.addr = alloca ptr, align 8
  %master_key.addr = alloca ptr, align 8
  %current_mki_index.addr = alloca i32, align 4
  %stat = alloca i32, align 4
  %kdf = alloca %struct.srtp_kdf_t, align 8
  %tmp_key = alloca [256 x i8], align 16
  %kdf_keylen = alloca i32, align 4
  %rtp_keylen = alloca i32, align 4
  %rtcp_keylen = alloca i32, align 4
  %rtp_base_key_len = alloca i32, align 4
  %rtp_salt_len = alloca i32, align 4
  %rtcp_base_key_len = alloca i32, align 4
  %rtcp_salt_len = alloca i32, align 4
  %session_keys = alloca ptr, align 8
  %key = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %rtp_xtn_hdr_keylen = alloca i32, align 4
  %rtp_xtn_hdr_base_key_len = alloca i32, align 4
  %rtp_xtn_hdr_salt_len = alloca i32, align 4
  %tmp_kdf = alloca %struct.srtp_kdf_t, align 8
  %xtn_hdr_kdf = alloca ptr, align 8
  %tmp_xtn_hdr_key = alloca [256 x i8], align 16
  store ptr %srtp, ptr %srtp.addr, align 8
  store ptr %master_key, ptr %master_key.addr, align 8
  store i32 %current_mki_index, ptr %current_mki_index.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %stat) #8
  store i32 -1431655766, ptr %stat, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %kdf) #8
  %0 = getelementptr inbounds %struct.srtp_kdf_t, ptr %kdf, i32 0, i32 0
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %0, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 256, ptr %tmp_key) #8
  call void @llvm.memset.p0.i64(ptr align 16 %tmp_key, i8 -86, i64 256, i1 false), !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %kdf_keylen) #8
  store i32 -1431655766, ptr %kdf_keylen, align 4, !annotation !3
  store i32 30, ptr %kdf_keylen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rtp_keylen) #8
  store i32 -1431655766, ptr %rtp_keylen, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %rtcp_keylen) #8
  store i32 -1431655766, ptr %rtcp_keylen, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %rtp_base_key_len) #8
  store i32 -1431655766, ptr %rtp_base_key_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %rtp_salt_len) #8
  store i32 -1431655766, ptr %rtp_salt_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %rtcp_base_key_len) #8
  store i32 -1431655766, ptr %rtcp_base_key_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %rtcp_salt_len) #8
  store i32 -1431655766, ptr %rtcp_salt_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %session_keys) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %session_keys, align 8, !annotation !3
  store ptr null, ptr %session_keys, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %key, align 8, !annotation !3
  %1 = load ptr, ptr %master_key.addr, align 8
  %key1 = getelementptr inbounds %struct.srtp_master_key_t, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %key1, align 8
  store ptr %2, ptr %key, align 8
  %3 = load ptr, ptr %srtp.addr, align 8
  %session_keys2 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %session_keys2, align 8
  %5 = load i32, ptr %current_mki_index.addr, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.srtp_session_keys_t, ptr %4, i64 %idxprom
  store ptr %arrayidx, ptr %session_keys, align 8
  %6 = load ptr, ptr %session_keys, align 8
  %limit = getelementptr inbounds %struct.srtp_session_keys_t, ptr %6, i32 0, i32 9
  %7 = load ptr, ptr %limit, align 8
  %call = call i32 @srtp_key_limit_set(ptr noundef %7, i64 noundef 281474976710655)
  %8 = load ptr, ptr %master_key.addr, align 8
  %mki_size = getelementptr inbounds %struct.srtp_master_key_t, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %mki_size, align 8
  %cmp = icmp ne i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %master_key.addr, align 8
  %mki_size3 = getelementptr inbounds %struct.srtp_master_key_t, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %mki_size3, align 8
  %conv = zext i32 %11 to i64
  %call4 = call ptr @srtp_crypto_alloc(i64 noundef %conv)
  %12 = load ptr, ptr %session_keys, align 8
  %mki_id = getelementptr inbounds %struct.srtp_session_keys_t, ptr %12, i32 0, i32 7
  store ptr %call4, ptr %mki_id, align 8
  %13 = load ptr, ptr %session_keys, align 8
  %mki_id5 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %13, i32 0, i32 7
  %14 = load ptr, ptr %mki_id5, align 8
  %cmp6 = icmp eq ptr %14, null
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup304

if.end:                                           ; preds = %if.then
  %15 = load ptr, ptr %session_keys, align 8
  %mki_id9 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %15, i32 0, i32 7
  %16 = load ptr, ptr %mki_id9, align 8
  %17 = load ptr, ptr %master_key.addr, align 8
  %mki_id10 = getelementptr inbounds %struct.srtp_master_key_t, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %mki_id10, align 8
  %19 = load ptr, ptr %master_key.addr, align 8
  %mki_size11 = getelementptr inbounds %struct.srtp_master_key_t, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %mki_size11, align 8
  %conv12 = zext i32 %20 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %18, i64 %conv12, i1 false)
  br label %if.end14

if.else:                                          ; preds = %entry
  %21 = load ptr, ptr %session_keys, align 8
  %mki_id13 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %21, i32 0, i32 7
  store ptr null, ptr %mki_id13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end
  %22 = load ptr, ptr %master_key.addr, align 8
  %mki_size15 = getelementptr inbounds %struct.srtp_master_key_t, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %mki_size15, align 8
  %24 = load ptr, ptr %session_keys, align 8
  %mki_size16 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %24, i32 0, i32 8
  store i32 %23, ptr %mki_size16, align 8
  %25 = load ptr, ptr %session_keys, align 8
  %rtp_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %rtp_cipher, align 8
  %call17 = call i32 @srtp_cipher_get_key_length(ptr noundef %26)
  store i32 %call17, ptr %rtp_keylen, align 4
  %27 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %rtcp_cipher, align 8
  %call18 = call i32 @srtp_cipher_get_key_length(ptr noundef %28)
  store i32 %call18, ptr %rtcp_keylen, align 4
  %29 = load ptr, ptr %session_keys, align 8
  %rtp_cipher19 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %rtp_cipher19, align 8
  %type = getelementptr inbounds %struct.srtp_cipher_t, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %type, align 8
  %32 = load i32, ptr %rtp_keylen, align 4
  %call20 = call i32 @base_key_length(ptr noundef %31, i32 noundef %32)
  store i32 %call20, ptr %rtp_base_key_len, align 4
  %33 = load i32, ptr %rtp_keylen, align 4
  %34 = load i32, ptr %rtp_base_key_len, align 4
  %sub = sub nsw i32 %33, %34
  store i32 %sub, ptr %rtp_salt_len, align 4
  %35 = load i32, ptr %rtp_keylen, align 4
  %36 = load i32, ptr %kdf_keylen, align 4
  %cmp21 = icmp sgt i32 %35, %36
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end14
  store i32 46, ptr %kdf_keylen, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end14
  %37 = load i32, ptr %rtcp_keylen, align 4
  %38 = load i32, ptr %kdf_keylen, align 4
  %cmp25 = icmp sgt i32 %37, %38
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  store i32 46, ptr %kdf_keylen, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %39 = load i32, ptr @mod_srtp, align 8
  %tobool = icmp ne i32 %39, 0
  br i1 %tobool, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end28
  %40 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %41 = load i32, ptr %rtp_keylen, align 4
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.4, ptr noundef %40, i32 noundef %41)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end28
  %42 = load i32, ptr @mod_srtp, align 8
  %tobool31 = icmp ne i32 %42, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end30
  %43 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %44 = load i32, ptr %rtcp_keylen, align 4
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.5, ptr noundef %43, i32 noundef %44)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30
  %45 = load i32, ptr @mod_srtp, align 8
  %tobool34 = icmp ne i32 %45, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end33
  %46 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %47 = load i32, ptr %rtp_base_key_len, align 4
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.6, ptr noundef %46, i32 noundef %47)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33
  %48 = load i32, ptr @mod_srtp, align 8
  %tobool37 = icmp ne i32 %48, 0
  br i1 %tobool37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end36
  %49 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %50 = load i32, ptr %kdf_keylen, align 4
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.7, ptr noundef %49, i32 noundef %50)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end36
  %51 = load i32, ptr @mod_srtp, align 8
  %tobool40 = icmp ne i32 %51, 0
  br i1 %tobool40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end39
  %52 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %53 = load i32, ptr %rtp_salt_len, align 4
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.8, ptr noundef %52, i32 noundef %53)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end39
  %arraydecay = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 256, i1 false)
  %arraydecay43 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %54 = load ptr, ptr %key, align 8
  %55 = load i32, ptr %rtp_base_key_len, align 4
  %56 = load i32, ptr %rtp_salt_len, align 4
  %add = add nsw i32 %55, %56
  %conv44 = sext i32 %add to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay43, ptr align 1 %54, i64 %conv44, i1 false)
  %arraydecay45 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %57 = load i32, ptr %kdf_keylen, align 4
  %call46 = call i32 @srtp_kdf_init(ptr noundef %kdf, ptr noundef %arraydecay45, i32 noundef %57)
  store i32 %call46, ptr %stat, align 4
  %58 = load i32, ptr %stat, align 4
  %tobool47 = icmp ne i32 %58, 0
  br i1 %tobool47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end42
  %arraydecay49 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay49, i64 noundef 256)
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup304

if.end50:                                         ; preds = %if.end42
  %arraydecay51 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %59 = load i32, ptr %rtp_base_key_len, align 4
  %call52 = call i32 @srtp_kdf_generate(ptr noundef %kdf, i32 noundef 0, ptr noundef %arraydecay51, i32 noundef %59)
  store i32 %call52, ptr %stat, align 4
  %60 = load i32, ptr %stat, align 4
  %tobool53 = icmp ne i32 %60, 0
  br i1 %tobool53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end50
  %arraydecay55 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay55, i64 noundef 256)
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup304

if.end56:                                         ; preds = %if.end50
  %61 = load i32, ptr @mod_srtp, align 8
  %tobool57 = icmp ne i32 %61, 0
  br i1 %tobool57, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end56
  %62 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %arraydecay59 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %63 = load i32, ptr %rtp_base_key_len, align 4
  %call60 = call ptr @srtp_octet_string_hex_string(ptr noundef %arraydecay59, i32 noundef %63)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.9, ptr noundef %62, ptr noundef %call60)
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end56
  %64 = load i32, ptr %rtp_salt_len, align 4
  %cmp62 = icmp sgt i32 %64, 0
  br i1 %cmp62, label %if.then64, label %if.end78

if.then64:                                        ; preds = %if.end61
  %65 = load i32, ptr @mod_srtp, align 8
  %tobool65 = icmp ne i32 %65, 0
  br i1 %tobool65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.then64
  %66 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.10, ptr noundef %66)
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.then64
  %arraydecay68 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %67 = load i32, ptr %rtp_base_key_len, align 4
  %idx.ext = sext i32 %67 to i64
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay68, i64 %idx.ext
  %68 = load i32, ptr %rtp_salt_len, align 4
  %call69 = call i32 @srtp_kdf_generate(ptr noundef %kdf, i32 noundef 2, ptr noundef %add.ptr, i32 noundef %68)
  store i32 %call69, ptr %stat, align 4
  %69 = load i32, ptr %stat, align 4
  %tobool70 = icmp ne i32 %69, 0
  br i1 %tobool70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.end67
  %arraydecay72 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay72, i64 noundef 256)
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup304

if.end73:                                         ; preds = %if.end67
  %70 = load ptr, ptr %session_keys, align 8
  %salt = getelementptr inbounds %struct.srtp_session_keys_t, ptr %70, i32 0, i32 5
  %arraydecay74 = getelementptr inbounds [12 x i8], ptr %salt, i64 0, i64 0
  %arraydecay75 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %71 = load i32, ptr %rtp_base_key_len, align 4
  %idx.ext76 = sext i32 %71 to i64
  %add.ptr77 = getelementptr inbounds i8, ptr %arraydecay75, i64 %idx.ext76
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay74, ptr align 1 %add.ptr77, i64 12, i1 false)
  br label %if.end78

if.end78:                                         ; preds = %if.end73, %if.end61
  %72 = load i32, ptr %rtp_salt_len, align 4
  %cmp79 = icmp sgt i32 %72, 0
  br i1 %cmp79, label %if.then81, label %if.end89

if.then81:                                        ; preds = %if.end78
  %73 = load i32, ptr @mod_srtp, align 8
  %tobool82 = icmp ne i32 %73, 0
  br i1 %tobool82, label %if.then83, label %if.end88

if.then83:                                        ; preds = %if.then81
  %74 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %arraydecay84 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %75 = load i32, ptr %rtp_base_key_len, align 4
  %idx.ext85 = sext i32 %75 to i64
  %add.ptr86 = getelementptr inbounds i8, ptr %arraydecay84, i64 %idx.ext85
  %76 = load i32, ptr %rtp_salt_len, align 4
  %call87 = call ptr @srtp_octet_string_hex_string(ptr noundef %add.ptr86, i32 noundef %76)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.11, ptr noundef %74, ptr noundef %call87)
  br label %if.end88

if.end88:                                         ; preds = %if.then83, %if.then81
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end78
  %77 = load ptr, ptr %session_keys, align 8
  %rtp_cipher90 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %rtp_cipher90, align 8
  %arraydecay91 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %call92 = call i32 @srtp_cipher_init(ptr noundef %78, ptr noundef %arraydecay91)
  store i32 %call92, ptr %stat, align 4
  %79 = load i32, ptr %stat, align 4
  %tobool93 = icmp ne i32 %79, 0
  br i1 %tobool93, label %if.then94, label %if.end96

if.then94:                                        ; preds = %if.end89
  %arraydecay95 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay95, i64 noundef 256)
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup304

if.end96:                                         ; preds = %if.end89
  %80 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %80, i32 0, i32 1
  %81 = load ptr, ptr %rtp_xtn_hdr_cipher, align 8
  %tobool97 = icmp ne ptr %81, null
  br i1 %tobool97, label %if.then98, label %if.end192

if.then98:                                        ; preds = %if.end96
  call void @llvm.lifetime.start.p0(i64 4, ptr %rtp_xtn_hdr_keylen) #8
  store i32 -1431655766, ptr %rtp_xtn_hdr_keylen, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %rtp_xtn_hdr_base_key_len) #8
  store i32 -1431655766, ptr %rtp_xtn_hdr_base_key_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %rtp_xtn_hdr_salt_len) #8
  store i32 -1431655766, ptr %rtp_xtn_hdr_salt_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_kdf) #8
  %82 = getelementptr inbounds %struct.srtp_kdf_t, ptr %tmp_kdf, i32 0, i32 0
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %82, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %xtn_hdr_kdf) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %xtn_hdr_kdf, align 8, !annotation !3
  %83 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher99 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %83, i32 0, i32 1
  %84 = load ptr, ptr %rtp_xtn_hdr_cipher99, align 8
  %type100 = getelementptr inbounds %struct.srtp_cipher_t, ptr %84, i32 0, i32 0
  %85 = load ptr, ptr %type100, align 8
  %86 = load ptr, ptr %session_keys, align 8
  %rtp_cipher101 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %rtp_cipher101, align 8
  %type102 = getelementptr inbounds %struct.srtp_cipher_t, ptr %87, i32 0, i32 0
  %88 = load ptr, ptr %type102, align 8
  %cmp103 = icmp ne ptr %85, %88
  br i1 %cmp103, label %if.then105, label %if.else130

if.then105:                                       ; preds = %if.then98
  call void @llvm.lifetime.start.p0(i64 256, ptr %tmp_xtn_hdr_key) #8
  call void @llvm.memset.p0.i64(ptr align 16 %tmp_xtn_hdr_key, i8 -86, i64 256, i1 false), !annotation !3
  %89 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher106 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %89, i32 0, i32 1
  %90 = load ptr, ptr %rtp_xtn_hdr_cipher106, align 8
  %call107 = call i32 @srtp_cipher_get_key_length(ptr noundef %90)
  store i32 %call107, ptr %rtp_xtn_hdr_keylen, align 4
  %91 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher108 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %91, i32 0, i32 1
  %92 = load ptr, ptr %rtp_xtn_hdr_cipher108, align 8
  %type109 = getelementptr inbounds %struct.srtp_cipher_t, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %type109, align 8
  %94 = load i32, ptr %rtp_xtn_hdr_keylen, align 4
  %call110 = call i32 @base_key_length(ptr noundef %93, i32 noundef %94)
  store i32 %call110, ptr %rtp_xtn_hdr_base_key_len, align 4
  %95 = load i32, ptr %rtp_xtn_hdr_keylen, align 4
  %96 = load i32, ptr %rtp_xtn_hdr_base_key_len, align 4
  %sub111 = sub nsw i32 %95, %96
  store i32 %sub111, ptr %rtp_xtn_hdr_salt_len, align 4
  %97 = load i32, ptr %rtp_xtn_hdr_salt_len, align 4
  %98 = load i32, ptr %rtp_salt_len, align 4
  %cmp112 = icmp sgt i32 %97, %98
  br i1 %cmp112, label %if.then114, label %if.end118

if.then114:                                       ; preds = %if.then105
  %99 = load ptr, ptr %session_keys, align 8
  %rtp_cipher115 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %99, i32 0, i32 0
  %100 = load ptr, ptr %rtp_cipher115, align 8
  %type116 = getelementptr inbounds %struct.srtp_cipher_t, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %type116, align 8
  %id = getelementptr inbounds %struct.srtp_cipher_type_t, ptr %101, i32 0, i32 10
  %102 = load i32, ptr %id, align 8
  switch i32 %102, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then114, %if.then114
  %103 = load i32, ptr %rtp_salt_len, align 4
  store i32 %103, ptr %rtp_xtn_hdr_salt_len, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then114
  %arraydecay117 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay117, i64 noundef 256)
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  br label %if.end118

if.end118:                                        ; preds = %sw.epilog, %if.then105
  %arraydecay119 = getelementptr inbounds [256 x i8], ptr %tmp_xtn_hdr_key, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay119, i8 0, i64 256, i1 false)
  %arraydecay120 = getelementptr inbounds [256 x i8], ptr %tmp_xtn_hdr_key, i64 0, i64 0
  %104 = load ptr, ptr %key, align 8
  %105 = load i32, ptr %rtp_xtn_hdr_base_key_len, align 4
  %106 = load i32, ptr %rtp_xtn_hdr_salt_len, align 4
  %add121 = add nsw i32 %105, %106
  %conv122 = sext i32 %add121 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay120, ptr align 1 %104, i64 %conv122, i1 false)
  store ptr %tmp_kdf, ptr %xtn_hdr_kdf, align 8
  %107 = load ptr, ptr %xtn_hdr_kdf, align 8
  %arraydecay123 = getelementptr inbounds [256 x i8], ptr %tmp_xtn_hdr_key, i64 0, i64 0
  %108 = load i32, ptr %kdf_keylen, align 4
  %call124 = call i32 @srtp_kdf_init(ptr noundef %107, ptr noundef %arraydecay123, i32 noundef %108)
  store i32 %call124, ptr %stat, align 4
  %arraydecay125 = getelementptr inbounds [256 x i8], ptr %tmp_xtn_hdr_key, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay125, i64 noundef 256)
  %109 = load i32, ptr %stat, align 4
  %tobool126 = icmp ne i32 %109, 0
  br i1 %tobool126, label %if.then127, label %if.end129

if.then127:                                       ; preds = %if.end118
  %arraydecay128 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay128, i64 noundef 256)
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end129:                                        ; preds = %if.end118
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end129, %if.then127, %sw.default
  call void @llvm.lifetime.end.p0(i64 256, ptr %tmp_xtn_hdr_key) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup185 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end131

if.else130:                                       ; preds = %if.then98
  %110 = load i32, ptr %rtp_keylen, align 4
  store i32 %110, ptr %rtp_xtn_hdr_keylen, align 4
  %111 = load i32, ptr %rtp_base_key_len, align 4
  store i32 %111, ptr %rtp_xtn_hdr_base_key_len, align 4
  %112 = load i32, ptr %rtp_salt_len, align 4
  store i32 %112, ptr %rtp_xtn_hdr_salt_len, align 4
  store ptr %kdf, ptr %xtn_hdr_kdf, align 8
  br label %if.end131

if.end131:                                        ; preds = %if.else130, %cleanup.cont
  %113 = load ptr, ptr %xtn_hdr_kdf, align 8
  %arraydecay132 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %114 = load i32, ptr %rtp_xtn_hdr_base_key_len, align 4
  %call133 = call i32 @srtp_kdf_generate(ptr noundef %113, i32 noundef 6, ptr noundef %arraydecay132, i32 noundef %114)
  store i32 %call133, ptr %stat, align 4
  %115 = load i32, ptr %stat, align 4
  %tobool134 = icmp ne i32 %115, 0
  br i1 %tobool134, label %if.then135, label %if.end137

if.then135:                                       ; preds = %if.end131
  %arraydecay136 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay136, i64 noundef 256)
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup185

if.end137:                                        ; preds = %if.end131
  %116 = load i32, ptr @mod_srtp, align 8
  %tobool138 = icmp ne i32 %116, 0
  br i1 %tobool138, label %if.then139, label %if.end142

if.then139:                                       ; preds = %if.end137
  %117 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %arraydecay140 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %118 = load i32, ptr %rtp_xtn_hdr_base_key_len, align 4
  %call141 = call ptr @srtp_octet_string_hex_string(ptr noundef %arraydecay140, i32 noundef %118)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.12, ptr noundef %117, ptr noundef %call141)
  br label %if.end142

if.end142:                                        ; preds = %if.then139, %if.end137
  %119 = load i32, ptr %rtp_xtn_hdr_salt_len, align 4
  %cmp143 = icmp sgt i32 %119, 0
  br i1 %cmp143, label %if.then145, label %if.end157

if.then145:                                       ; preds = %if.end142
  %120 = load i32, ptr @mod_srtp, align 8
  %tobool146 = icmp ne i32 %120, 0
  br i1 %tobool146, label %if.then147, label %if.end148

if.then147:                                       ; preds = %if.then145
  %121 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.13, ptr noundef %121)
  br label %if.end148

if.end148:                                        ; preds = %if.then147, %if.then145
  %122 = load ptr, ptr %xtn_hdr_kdf, align 8
  %arraydecay149 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %123 = load i32, ptr %rtp_xtn_hdr_base_key_len, align 4
  %idx.ext150 = sext i32 %123 to i64
  %add.ptr151 = getelementptr inbounds i8, ptr %arraydecay149, i64 %idx.ext150
  %124 = load i32, ptr %rtp_xtn_hdr_salt_len, align 4
  %call152 = call i32 @srtp_kdf_generate(ptr noundef %122, i32 noundef 7, ptr noundef %add.ptr151, i32 noundef %124)
  store i32 %call152, ptr %stat, align 4
  %125 = load i32, ptr %stat, align 4
  %tobool153 = icmp ne i32 %125, 0
  br i1 %tobool153, label %if.then154, label %if.end156

if.then154:                                       ; preds = %if.end148
  %arraydecay155 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay155, i64 noundef 256)
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup185

if.end156:                                        ; preds = %if.end148
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.end142
  %126 = load i32, ptr %rtp_xtn_hdr_salt_len, align 4
  %cmp158 = icmp sgt i32 %126, 0
  br i1 %cmp158, label %if.then160, label %if.end168

if.then160:                                       ; preds = %if.end157
  %127 = load i32, ptr @mod_srtp, align 8
  %tobool161 = icmp ne i32 %127, 0
  br i1 %tobool161, label %if.then162, label %if.end167

if.then162:                                       ; preds = %if.then160
  %128 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %arraydecay163 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %129 = load i32, ptr %rtp_xtn_hdr_base_key_len, align 4
  %idx.ext164 = sext i32 %129 to i64
  %add.ptr165 = getelementptr inbounds i8, ptr %arraydecay163, i64 %idx.ext164
  %130 = load i32, ptr %rtp_xtn_hdr_salt_len, align 4
  %call166 = call ptr @srtp_octet_string_hex_string(ptr noundef %add.ptr165, i32 noundef %130)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.14, ptr noundef %128, ptr noundef %call166)
  br label %if.end167

if.end167:                                        ; preds = %if.then162, %if.then160
  br label %if.end168

if.end168:                                        ; preds = %if.end167, %if.end157
  %131 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher169 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %131, i32 0, i32 1
  %132 = load ptr, ptr %rtp_xtn_hdr_cipher169, align 8
  %arraydecay170 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %call171 = call i32 @srtp_cipher_init(ptr noundef %132, ptr noundef %arraydecay170)
  store i32 %call171, ptr %stat, align 4
  %133 = load i32, ptr %stat, align 4
  %tobool172 = icmp ne i32 %133, 0
  br i1 %tobool172, label %if.then173, label %if.end175

if.then173:                                       ; preds = %if.end168
  %arraydecay174 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay174, i64 noundef 256)
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup185

if.end175:                                        ; preds = %if.end168
  %134 = load ptr, ptr %xtn_hdr_kdf, align 8
  %cmp176 = icmp ne ptr %134, %kdf
  br i1 %cmp176, label %if.then178, label %if.end184

if.then178:                                       ; preds = %if.end175
  %135 = load ptr, ptr %xtn_hdr_kdf, align 8
  %call179 = call i32 @srtp_kdf_clear(ptr noundef %135)
  store i32 %call179, ptr %stat, align 4
  %136 = load i32, ptr %stat, align 4
  %tobool180 = icmp ne i32 %136, 0
  br i1 %tobool180, label %if.then181, label %if.end183

if.then181:                                       ; preds = %if.then178
  %arraydecay182 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay182, i64 noundef 256)
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup185

if.end183:                                        ; preds = %if.then178
  br label %if.end184

if.end184:                                        ; preds = %if.end183, %if.end175
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup185

cleanup185:                                       ; preds = %if.end184, %if.then181, %if.then173, %if.then154, %if.then135, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %xtn_hdr_kdf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_kdf) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %rtp_xtn_hdr_salt_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %rtp_xtn_hdr_base_key_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %rtp_xtn_hdr_keylen) #8
  %cleanup.dest190 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest190, label %cleanup304 [
    i32 0, label %cleanup.cont191
  ]

cleanup.cont191:                                  ; preds = %cleanup185
  br label %if.end192

if.end192:                                        ; preds = %cleanup.cont191, %if.end96
  %arraydecay193 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %137 = load ptr, ptr %session_keys, align 8
  %rtp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %137, i32 0, i32 2
  %138 = load ptr, ptr %rtp_auth, align 8
  %call194 = call i32 @srtp_auth_get_key_length(ptr noundef %138)
  %call195 = call i32 @srtp_kdf_generate(ptr noundef %kdf, i32 noundef 1, ptr noundef %arraydecay193, i32 noundef %call194)
  store i32 %call195, ptr %stat, align 4
  %139 = load i32, ptr %stat, align 4
  %tobool196 = icmp ne i32 %139, 0
  br i1 %tobool196, label %if.then197, label %if.end199

if.then197:                                       ; preds = %if.end192
  %arraydecay198 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay198, i64 noundef 256)
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup304

if.end199:                                        ; preds = %if.end192
  %140 = load i32, ptr @mod_srtp, align 8
  %tobool200 = icmp ne i32 %140, 0
  br i1 %tobool200, label %if.then201, label %if.end206

if.then201:                                       ; preds = %if.end199
  %141 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %arraydecay202 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %142 = load ptr, ptr %session_keys, align 8
  %rtp_auth203 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %142, i32 0, i32 2
  %143 = load ptr, ptr %rtp_auth203, align 8
  %call204 = call i32 @srtp_auth_get_key_length(ptr noundef %143)
  %call205 = call ptr @srtp_octet_string_hex_string(ptr noundef %arraydecay202, i32 noundef %call204)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.15, ptr noundef %141, ptr noundef %call205)
  br label %if.end206

if.end206:                                        ; preds = %if.then201, %if.end199
  %144 = load ptr, ptr %session_keys, align 8
  %rtp_auth207 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %144, i32 0, i32 2
  %145 = load ptr, ptr %rtp_auth207, align 8
  %type208 = getelementptr inbounds %struct.srtp_auth_t, ptr %145, i32 0, i32 0
  %146 = load ptr, ptr %type208, align 8
  %init = getelementptr inbounds %struct.srtp_auth_type_t, ptr %146, i32 0, i32 2
  %147 = load ptr, ptr %init, align 8
  %148 = load ptr, ptr %session_keys, align 8
  %rtp_auth209 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %148, i32 0, i32 2
  %149 = load ptr, ptr %rtp_auth209, align 8
  %state = getelementptr inbounds %struct.srtp_auth_t, ptr %149, i32 0, i32 1
  %150 = load ptr, ptr %state, align 8
  %arraydecay210 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %151 = load ptr, ptr %session_keys, align 8
  %rtp_auth211 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %151, i32 0, i32 2
  %152 = load ptr, ptr %rtp_auth211, align 8
  %key_len = getelementptr inbounds %struct.srtp_auth_t, ptr %152, i32 0, i32 3
  %153 = load i32, ptr %key_len, align 4
  %call212 = call i32 %147(ptr noundef %150, ptr noundef %arraydecay210, i32 noundef %153)
  store i32 %call212, ptr %stat, align 4
  %154 = load i32, ptr %stat, align 4
  %tobool213 = icmp ne i32 %154, 0
  br i1 %tobool213, label %if.then214, label %if.end216

if.then214:                                       ; preds = %if.end206
  %arraydecay215 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay215, i64 noundef 256)
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup304

if.end216:                                        ; preds = %if.end206
  %155 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher217 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %155, i32 0, i32 3
  %156 = load ptr, ptr %rtcp_cipher217, align 8
  %type218 = getelementptr inbounds %struct.srtp_cipher_t, ptr %156, i32 0, i32 0
  %157 = load ptr, ptr %type218, align 8
  %158 = load i32, ptr %rtcp_keylen, align 4
  %call219 = call i32 @base_key_length(ptr noundef %157, i32 noundef %158)
  store i32 %call219, ptr %rtcp_base_key_len, align 4
  %159 = load i32, ptr %rtcp_keylen, align 4
  %160 = load i32, ptr %rtcp_base_key_len, align 4
  %sub220 = sub nsw i32 %159, %160
  store i32 %sub220, ptr %rtcp_salt_len, align 4
  %161 = load i32, ptr @mod_srtp, align 8
  %tobool221 = icmp ne i32 %161, 0
  br i1 %tobool221, label %if.then222, label %if.end223

if.then222:                                       ; preds = %if.end216
  %162 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %163 = load i32, ptr %rtcp_salt_len, align 4
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.16, ptr noundef %162, i32 noundef %163)
  br label %if.end223

if.end223:                                        ; preds = %if.then222, %if.end216
  %arraydecay224 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %164 = load i32, ptr %rtcp_base_key_len, align 4
  %call225 = call i32 @srtp_kdf_generate(ptr noundef %kdf, i32 noundef 3, ptr noundef %arraydecay224, i32 noundef %164)
  store i32 %call225, ptr %stat, align 4
  %165 = load i32, ptr %stat, align 4
  %tobool226 = icmp ne i32 %165, 0
  br i1 %tobool226, label %if.then227, label %if.end229

if.then227:                                       ; preds = %if.end223
  %arraydecay228 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay228, i64 noundef 256)
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup304

if.end229:                                        ; preds = %if.end223
  %166 = load i32, ptr %rtcp_salt_len, align 4
  %cmp230 = icmp sgt i32 %166, 0
  br i1 %cmp230, label %if.then232, label %if.end248

if.then232:                                       ; preds = %if.end229
  %167 = load i32, ptr @mod_srtp, align 8
  %tobool233 = icmp ne i32 %167, 0
  br i1 %tobool233, label %if.then234, label %if.end235

if.then234:                                       ; preds = %if.then232
  %168 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.17, ptr noundef %168)
  br label %if.end235

if.end235:                                        ; preds = %if.then234, %if.then232
  %arraydecay236 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %169 = load i32, ptr %rtcp_base_key_len, align 4
  %idx.ext237 = sext i32 %169 to i64
  %add.ptr238 = getelementptr inbounds i8, ptr %arraydecay236, i64 %idx.ext237
  %170 = load i32, ptr %rtcp_salt_len, align 4
  %call239 = call i32 @srtp_kdf_generate(ptr noundef %kdf, i32 noundef 5, ptr noundef %add.ptr238, i32 noundef %170)
  store i32 %call239, ptr %stat, align 4
  %171 = load i32, ptr %stat, align 4
  %tobool240 = icmp ne i32 %171, 0
  br i1 %tobool240, label %if.then241, label %if.end243

if.then241:                                       ; preds = %if.end235
  %arraydecay242 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay242, i64 noundef 256)
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup304

if.end243:                                        ; preds = %if.end235
  %172 = load ptr, ptr %session_keys, align 8
  %c_salt = getelementptr inbounds %struct.srtp_session_keys_t, ptr %172, i32 0, i32 6
  %arraydecay244 = getelementptr inbounds [12 x i8], ptr %c_salt, i64 0, i64 0
  %arraydecay245 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %173 = load i32, ptr %rtcp_base_key_len, align 4
  %idx.ext246 = sext i32 %173 to i64
  %add.ptr247 = getelementptr inbounds i8, ptr %arraydecay245, i64 %idx.ext246
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay244, ptr align 1 %add.ptr247, i64 12, i1 false)
  br label %if.end248

if.end248:                                        ; preds = %if.end243, %if.end229
  %174 = load i32, ptr @mod_srtp, align 8
  %tobool249 = icmp ne i32 %174, 0
  br i1 %tobool249, label %if.then250, label %if.end253

if.then250:                                       ; preds = %if.end248
  %175 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %arraydecay251 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %176 = load i32, ptr %rtcp_base_key_len, align 4
  %call252 = call ptr @srtp_octet_string_hex_string(ptr noundef %arraydecay251, i32 noundef %176)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.18, ptr noundef %175, ptr noundef %call252)
  br label %if.end253

if.end253:                                        ; preds = %if.then250, %if.end248
  %177 = load i32, ptr %rtcp_salt_len, align 4
  %cmp254 = icmp sgt i32 %177, 0
  br i1 %cmp254, label %if.then256, label %if.end264

if.then256:                                       ; preds = %if.end253
  %178 = load i32, ptr @mod_srtp, align 8
  %tobool257 = icmp ne i32 %178, 0
  br i1 %tobool257, label %if.then258, label %if.end263

if.then258:                                       ; preds = %if.then256
  %179 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %arraydecay259 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %180 = load i32, ptr %rtcp_base_key_len, align 4
  %idx.ext260 = sext i32 %180 to i64
  %add.ptr261 = getelementptr inbounds i8, ptr %arraydecay259, i64 %idx.ext260
  %181 = load i32, ptr %rtcp_salt_len, align 4
  %call262 = call ptr @srtp_octet_string_hex_string(ptr noundef %add.ptr261, i32 noundef %181)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.19, ptr noundef %179, ptr noundef %call262)
  br label %if.end263

if.end263:                                        ; preds = %if.then258, %if.then256
  br label %if.end264

if.end264:                                        ; preds = %if.end263, %if.end253
  %182 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher265 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %182, i32 0, i32 3
  %183 = load ptr, ptr %rtcp_cipher265, align 8
  %arraydecay266 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %call267 = call i32 @srtp_cipher_init(ptr noundef %183, ptr noundef %arraydecay266)
  store i32 %call267, ptr %stat, align 4
  %184 = load i32, ptr %stat, align 4
  %tobool268 = icmp ne i32 %184, 0
  br i1 %tobool268, label %if.then269, label %if.end271

if.then269:                                       ; preds = %if.end264
  %arraydecay270 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay270, i64 noundef 256)
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup304

if.end271:                                        ; preds = %if.end264
  %arraydecay272 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %185 = load ptr, ptr %session_keys, align 8
  %rtcp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %185, i32 0, i32 4
  %186 = load ptr, ptr %rtcp_auth, align 8
  %call273 = call i32 @srtp_auth_get_key_length(ptr noundef %186)
  %call274 = call i32 @srtp_kdf_generate(ptr noundef %kdf, i32 noundef 4, ptr noundef %arraydecay272, i32 noundef %call273)
  store i32 %call274, ptr %stat, align 4
  %187 = load i32, ptr %stat, align 4
  %tobool275 = icmp ne i32 %187, 0
  br i1 %tobool275, label %if.then276, label %if.end278

if.then276:                                       ; preds = %if.end271
  %arraydecay277 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay277, i64 noundef 256)
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup304

if.end278:                                        ; preds = %if.end271
  %188 = load i32, ptr @mod_srtp, align 8
  %tobool279 = icmp ne i32 %188, 0
  br i1 %tobool279, label %if.then280, label %if.end285

if.then280:                                       ; preds = %if.end278
  %189 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %arraydecay281 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %190 = load ptr, ptr %session_keys, align 8
  %rtcp_auth282 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %190, i32 0, i32 4
  %191 = load ptr, ptr %rtcp_auth282, align 8
  %call283 = call i32 @srtp_auth_get_key_length(ptr noundef %191)
  %call284 = call ptr @srtp_octet_string_hex_string(ptr noundef %arraydecay281, i32 noundef %call283)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.20, ptr noundef %189, ptr noundef %call284)
  br label %if.end285

if.end285:                                        ; preds = %if.then280, %if.end278
  %192 = load ptr, ptr %session_keys, align 8
  %rtcp_auth286 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %192, i32 0, i32 4
  %193 = load ptr, ptr %rtcp_auth286, align 8
  %type287 = getelementptr inbounds %struct.srtp_auth_t, ptr %193, i32 0, i32 0
  %194 = load ptr, ptr %type287, align 8
  %init288 = getelementptr inbounds %struct.srtp_auth_type_t, ptr %194, i32 0, i32 2
  %195 = load ptr, ptr %init288, align 8
  %196 = load ptr, ptr %session_keys, align 8
  %rtcp_auth289 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %196, i32 0, i32 4
  %197 = load ptr, ptr %rtcp_auth289, align 8
  %state290 = getelementptr inbounds %struct.srtp_auth_t, ptr %197, i32 0, i32 1
  %198 = load ptr, ptr %state290, align 8
  %arraydecay291 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  %199 = load ptr, ptr %session_keys, align 8
  %rtcp_auth292 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %199, i32 0, i32 4
  %200 = load ptr, ptr %rtcp_auth292, align 8
  %key_len293 = getelementptr inbounds %struct.srtp_auth_t, ptr %200, i32 0, i32 3
  %201 = load i32, ptr %key_len293, align 4
  %call294 = call i32 %195(ptr noundef %198, ptr noundef %arraydecay291, i32 noundef %201)
  store i32 %call294, ptr %stat, align 4
  %202 = load i32, ptr %stat, align 4
  %tobool295 = icmp ne i32 %202, 0
  br i1 %tobool295, label %if.then296, label %if.end298

if.then296:                                       ; preds = %if.end285
  %arraydecay297 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay297, i64 noundef 256)
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup304

if.end298:                                        ; preds = %if.end285
  %call299 = call i32 @srtp_kdf_clear(ptr noundef %kdf)
  store i32 %call299, ptr %stat, align 4
  %arraydecay300 = getelementptr inbounds [256 x i8], ptr %tmp_key, i64 0, i64 0
  call void @octet_string_set_to_zero(ptr noundef %arraydecay300, i64 noundef 256)
  %203 = load i32, ptr %stat, align 4
  %tobool301 = icmp ne i32 %203, 0
  br i1 %tobool301, label %if.then302, label %if.end303

if.then302:                                       ; preds = %if.end298
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup304

if.end303:                                        ; preds = %if.end298
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup304

cleanup304:                                       ; preds = %if.end303, %if.then302, %if.then296, %if.then276, %if.then269, %if.then241, %if.then227, %if.then214, %if.then197, %cleanup185, %if.then94, %if.then71, %if.then54, %if.then48, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %session_keys) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %rtcp_salt_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %rtcp_base_key_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %rtp_salt_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %rtp_base_key_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %rtcp_keylen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %rtp_keylen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %kdf_keylen) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr %tmp_key) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %kdf) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %stat) #8
  %204 = load i32, ptr %retval, align 4
  ret i32 %204
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_key_limit_set(ptr noundef, i64 noundef) #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_cipher_get_key_length(ptr noundef) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid ssp
define internal i32 @base_key_length(ptr noundef %cipher, i32 noundef %key_length) #5 {
entry:
  %retval = alloca i32, align 4
  %cipher.addr = alloca ptr, align 8
  %key_length.addr = alloca i32, align 4
  store ptr %cipher, ptr %cipher.addr, align 8
  store i32 %key_length, ptr %key_length.addr, align 4
  %0 = load ptr, ptr %cipher.addr, align 8
  %id = getelementptr inbounds %struct.srtp_cipher_type_t, ptr %0, i32 0, i32 10
  %1 = load i32, ptr %id, align 8
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb1
    i32 7, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %2 = load i32, ptr %key_length.addr, align 4
  %sub = sub nsw i32 %2, 14
  store i32 %sub, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %3 = load i32, ptr %key_length.addr, align 4
  %sub2 = sub nsw i32 %3, 12
  store i32 %sub2, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  %4 = load i32, ptr %key_length.addr, align 4
  %sub4 = sub nsw i32 %4, 12
  store i32 %sub4, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %5 = load i32, ptr %key_length.addr, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @srtp_kdf_init(ptr noundef %kdf, ptr noundef %key, i32 noundef %key_len) #0 {
entry:
  %retval = alloca i32, align 4
  %kdf.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %key_len.addr = alloca i32, align 4
  %cipher_id = alloca i32, align 4
  %stat = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kdf, ptr %kdf.addr, align 8
  store ptr %key, ptr %key.addr, align 8
  store i32 %key_len, ptr %key_len.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cipher_id) #8
  store i32 -1431655766, ptr %cipher_id, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %stat) #8
  store i32 -1431655766, ptr %stat, align 4, !annotation !3
  %0 = load i32, ptr %key_len.addr, align 4
  switch i32 %0, label %sw.default [
    i32 46, label %sw.bb
    i32 38, label %sw.bb1
    i32 30, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store i32 5, ptr %cipher_id, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 4, ptr %cipher_id, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 1, ptr %cipher_id, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %cipher_id, align 4
  %2 = load ptr, ptr %kdf.addr, align 8
  %cipher = getelementptr inbounds %struct.srtp_kdf_t, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %key_len.addr, align 4
  %call = call i32 @srtp_crypto_kernel_alloc_cipher(i32 noundef %1, ptr noundef %cipher, i32 noundef %3, i32 noundef 0)
  store i32 %call, ptr %stat, align 4
  %4 = load i32, ptr %stat, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %5 = load i32, ptr %stat, align 4
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %6 = load ptr, ptr %kdf.addr, align 8
  %cipher3 = getelementptr inbounds %struct.srtp_kdf_t, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %cipher3, align 8
  %8 = load ptr, ptr %key.addr, align 8
  %call4 = call i32 @srtp_cipher_init(ptr noundef %7, ptr noundef %8)
  store i32 %call4, ptr %stat, align 4
  %9 = load i32, ptr %stat, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %10 = load ptr, ptr %kdf.addr, align 8
  %cipher7 = getelementptr inbounds %struct.srtp_kdf_t, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %cipher7, align 8
  %call8 = call i32 @srtp_cipher_dealloc(ptr noundef %11)
  %12 = load i32, ptr %stat, align 4
  store i32 %12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6, %if.then, %sw.default
  call void @llvm.lifetime.end.p0(i64 4, ptr %stat) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %cipher_id) #8
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @srtp_kdf_generate(ptr noundef %kdf, i32 noundef %label, ptr noundef %key, i32 noundef %length) #0 {
entry:
  %retval = alloca i32, align 4
  %kdf.addr = alloca ptr, align 8
  %label.addr = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %nonce = alloca %union.v128_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kdf, ptr %kdf.addr, align 8
  store i32 %label, ptr %label.addr, align 4
  store ptr %key, ptr %key.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 16, ptr %nonce) #8
  %0 = getelementptr inbounds %union.v128_t, ptr %nonce, i32 0, i32 0
  %1 = getelementptr inbounds [2 x i64], ptr %0, i64 0, i64 0
  store i64 -6148914691236517206, ptr %1, align 8, !annotation !3
  %2 = getelementptr inbounds [2 x i64], ptr %0, i64 0, i64 1
  store i64 -6148914691236517206, ptr %2, align 8, !annotation !3
  %arrayidx = getelementptr inbounds [4 x i32], ptr %nonce, i64 0, i64 0
  store i32 0, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds [4 x i32], ptr %nonce, i64 0, i64 1
  store i32 0, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [4 x i32], ptr %nonce, i64 0, i64 2
  store i32 0, ptr %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds [4 x i32], ptr %nonce, i64 0, i64 3
  store i32 0, ptr %arrayidx3, align 4
  %3 = load i32, ptr %label.addr, align 4
  %conv = trunc i32 %3 to i8
  %arrayidx4 = getelementptr inbounds [16 x i8], ptr %nonce, i64 0, i64 7
  store i8 %conv, ptr %arrayidx4, align 1
  %4 = load ptr, ptr %kdf.addr, align 8
  %cipher = getelementptr inbounds %struct.srtp_kdf_t, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %cipher, align 8
  %call = call i32 @srtp_cipher_set_iv(ptr noundef %5, ptr noundef %nonce, i32 noundef 0)
  store i32 %call, ptr %status, align 4
  %6 = load i32, ptr %status, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %status, align 4
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %key.addr, align 8
  %9 = load i32, ptr %length.addr, align 4
  %conv5 = zext i32 %9 to i64
  call void @octet_string_set_to_zero(ptr noundef %8, i64 noundef %conv5)
  %10 = load ptr, ptr %kdf.addr, align 8
  %cipher6 = getelementptr inbounds %struct.srtp_kdf_t, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %cipher6, align 8
  %12 = load ptr, ptr %key.addr, align 8
  %call7 = call i32 @srtp_cipher_encrypt(ptr noundef %11, ptr noundef %12, ptr noundef %length.addr)
  store i32 %call7, ptr %status, align 4
  %13 = load i32, ptr %status, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %14 = load i32, ptr %status, align 4
  store i32 %14, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %nonce) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare ptr @srtp_octet_string_hex_string(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_cipher_init(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @srtp_kdf_clear(ptr noundef %kdf) #0 {
entry:
  %retval = alloca i32, align 4
  %kdf.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kdf, ptr %kdf.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  %0 = load ptr, ptr %kdf.addr, align 8
  %cipher = getelementptr inbounds %struct.srtp_kdf_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %cipher, align 8
  %call = call i32 @srtp_cipher_dealloc(ptr noundef %1)
  store i32 %call, ptr %status, align 4
  %2 = load i32, ptr %status, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %status, align 4
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %kdf.addr, align 8
  %cipher1 = getelementptr inbounds %struct.srtp_kdf_t, ptr %4, i32 0, i32 0
  store ptr null, ptr %cipher1, align 8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_auth_get_key_length(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_stream_init(ptr noundef %srtp, ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %srtp.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %srtp, ptr %srtp.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8
  store i32 -1431655766, ptr %err, align 4, !annotation !3
  %0 = load i32, ptr @mod_srtp, align 8
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %2 = load ptr, ptr %p.addr, align 8
  %ssrc = getelementptr inbounds %struct.srtp_policy_t, ptr %2, i32 0, i32 0
  %value = getelementptr inbounds %struct.srtp_ssrc_t, ptr %ssrc, i32 0, i32 1
  %3 = load i32, ptr %value, align 4
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.21, ptr noundef %1, i32 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %p.addr, align 8
  %window_size = getelementptr inbounds %struct.srtp_policy_t, ptr %4, i32 0, i32 7
  %5 = load i64, ptr %window_size, align 8
  %cmp = icmp ne i64 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %p.addr, align 8
  %window_size1 = getelementptr inbounds %struct.srtp_policy_t, ptr %6, i32 0, i32 7
  %7 = load i64, ptr %window_size1, align 8
  %cmp2 = icmp ult i64 %7, 64
  br i1 %cmp2, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load ptr, ptr %p.addr, align 8
  %window_size3 = getelementptr inbounds %struct.srtp_policy_t, ptr %8, i32 0, i32 7
  %9 = load i64, ptr %window_size3, align 8
  %cmp4 = icmp uge i64 %9, 32768
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false, %land.lhs.true
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false, %if.end
  %10 = load ptr, ptr %p.addr, align 8
  %window_size7 = getelementptr inbounds %struct.srtp_policy_t, ptr %10, i32 0, i32 7
  %11 = load i64, ptr %window_size7, align 8
  %cmp8 = icmp ne i64 %11, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  %12 = load ptr, ptr %srtp.addr, align 8
  %rtp_rdbx = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %p.addr, align 8
  %window_size10 = getelementptr inbounds %struct.srtp_policy_t, ptr %13, i32 0, i32 7
  %14 = load i64, ptr %window_size10, align 8
  %call = call i32 @srtp_rdbx_init(ptr noundef %rtp_rdbx, i64 noundef %14)
  store i32 %call, ptr %err, align 4
  br label %if.end13

if.else:                                          ; preds = %if.end6
  %15 = load ptr, ptr %srtp.addr, align 8
  %rtp_rdbx11 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %15, i32 0, i32 3
  %call12 = call i32 @srtp_rdbx_init(ptr noundef %rtp_rdbx11, i64 noundef 128)
  store i32 %call12, ptr %err, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  %16 = load i32, ptr %err, align 4
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  %17 = load i32, ptr %err, align 4
  store i32 %17, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %18 = load ptr, ptr %p.addr, align 8
  %ssrc17 = getelementptr inbounds %struct.srtp_policy_t, ptr %18, i32 0, i32 0
  %value18 = getelementptr inbounds %struct.srtp_ssrc_t, ptr %ssrc17, i32 0, i32 1
  %19 = load i32, ptr %value18, align 4
  %call19 = call i32 @__bswap_32(i32 noundef %19)
  %20 = load ptr, ptr %srtp.addr, align 8
  %ssrc20 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %20, i32 0, i32 0
  store i32 %call19, ptr %ssrc20, align 8
  %21 = load ptr, ptr %srtp.addr, align 8
  %pending_roc = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %21, i32 0, i32 12
  store i32 0, ptr %pending_roc, align 4
  %22 = load ptr, ptr %p.addr, align 8
  %rtp = getelementptr inbounds %struct.srtp_policy_t, ptr %22, i32 0, i32 1
  %sec_serv = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %rtp, i32 0, i32 5
  %23 = load i32, ptr %sec_serv, align 4
  %24 = load ptr, ptr %srtp.addr, align 8
  %rtp_services = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %24, i32 0, i32 4
  store i32 %23, ptr %rtp_services, align 8
  %25 = load ptr, ptr %p.addr, align 8
  %rtcp = getelementptr inbounds %struct.srtp_policy_t, ptr %25, i32 0, i32 2
  %sec_serv21 = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %rtcp, i32 0, i32 5
  %26 = load i32, ptr %sec_serv21, align 4
  %27 = load ptr, ptr %srtp.addr, align 8
  %rtcp_services = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %27, i32 0, i32 6
  store i32 %26, ptr %rtcp_services, align 8
  %28 = load ptr, ptr %srtp.addr, align 8
  %direction = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %28, i32 0, i32 7
  store i32 0, ptr %direction, align 4
  %29 = load ptr, ptr %srtp.addr, align 8
  %rtcp_rdb = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %29, i32 0, i32 5
  %call22 = call i32 @srtp_rdb_init(ptr noundef %rtcp_rdb)
  %30 = load ptr, ptr %p.addr, align 8
  %allow_repeat_tx = getelementptr inbounds %struct.srtp_policy_t, ptr %30, i32 0, i32 8
  %31 = load i32, ptr %allow_repeat_tx, align 8
  %cmp23 = icmp ne i32 %31, 0
  br i1 %cmp23, label %land.lhs.true24, label %if.end30

land.lhs.true24:                                  ; preds = %if.end16
  %32 = load ptr, ptr %p.addr, align 8
  %allow_repeat_tx25 = getelementptr inbounds %struct.srtp_policy_t, ptr %32, i32 0, i32 8
  %33 = load i32, ptr %allow_repeat_tx25, align 8
  %cmp26 = icmp ne i32 %33, 1
  br i1 %cmp26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %land.lhs.true24
  %34 = load ptr, ptr %srtp.addr, align 8
  %rtp_rdbx28 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %34, i32 0, i32 3
  %call29 = call i32 @srtp_rdbx_dealloc(ptr noundef %rtp_rdbx28)
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true24, %if.end16
  %35 = load ptr, ptr %p.addr, align 8
  %allow_repeat_tx31 = getelementptr inbounds %struct.srtp_policy_t, ptr %35, i32 0, i32 8
  %36 = load i32, ptr %allow_repeat_tx31, align 8
  %37 = load ptr, ptr %srtp.addr, align 8
  %allow_repeat_tx32 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %37, i32 0, i32 8
  store i32 %36, ptr %allow_repeat_tx32, align 8
  %38 = load ptr, ptr %srtp.addr, align 8
  %39 = load ptr, ptr %p.addr, align 8
  %key = getelementptr inbounds %struct.srtp_policy_t, ptr %39, i32 0, i32 3
  %40 = load ptr, ptr %key, align 8
  %41 = load ptr, ptr %p.addr, align 8
  %keys = getelementptr inbounds %struct.srtp_policy_t, ptr %41, i32 0, i32 4
  %42 = load ptr, ptr %keys, align 8
  %43 = load ptr, ptr %p.addr, align 8
  %num_master_keys = getelementptr inbounds %struct.srtp_policy_t, ptr %43, i32 0, i32 5
  %44 = load i64, ptr %num_master_keys, align 8
  %conv = trunc i64 %44 to i32
  %call33 = call i32 @srtp_stream_init_all_master_keys(ptr noundef %38, ptr noundef %40, ptr noundef %42, i32 noundef %conv)
  store i32 %call33, ptr %err, align 4
  %45 = load i32, ptr %err, align 4
  %tobool34 = icmp ne i32 %45, 0
  br i1 %tobool34, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end30
  %46 = load ptr, ptr %srtp.addr, align 8
  %rtp_rdbx36 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %46, i32 0, i32 3
  %call37 = call i32 @srtp_rdbx_dealloc(ptr noundef %rtp_rdbx36)
  %47 = load i32, ptr %err, align 4
  store i32 %47, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  %48 = load ptr, ptr %srtp.addr, align 8
  %ekt = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %48, i32 0, i32 9
  %49 = load ptr, ptr %ekt, align 8
  %50 = load ptr, ptr %p.addr, align 8
  %ekt39 = getelementptr inbounds %struct.srtp_policy_t, ptr %50, i32 0, i32 6
  %51 = load ptr, ptr %ekt39, align 8
  %call40 = call i32 @srtp_ekt_stream_init_from_policy(ptr noundef %49, ptr noundef %51)
  store i32 %call40, ptr %err, align 4
  %52 = load i32, ptr %err, align 4
  %tobool41 = icmp ne i32 %52, 0
  br i1 %tobool41, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end38
  %53 = load ptr, ptr %srtp.addr, align 8
  %rtp_rdbx43 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %53, i32 0, i32 3
  %call44 = call i32 @srtp_rdbx_dealloc(ptr noundef %rtp_rdbx43)
  %54 = load i32, ptr %err, align 4
  store i32 %54, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then42, %if.then35, %if.then27, %if.then15, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_ekt_stream_init_from_policy(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_event_reporter(ptr noundef %data) #0 {
entry:
  %data.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  %0 = load ptr, ptr %data.addr, align 8
  %ssrc = getelementptr inbounds %struct.srtp_event_data_t, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %ssrc, align 8
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 1, ptr noundef @.str.22, i32 noundef %1)
  %2 = load ptr, ptr %data.addr, align 8
  %event = getelementptr inbounds %struct.srtp_event_data_t, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %event, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 1, ptr noundef @.str.23)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 1, ptr noundef @.str.24)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 1, ptr noundef @.str.25)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 1, ptr noundef @.str.26)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 1, ptr noundef @.str.27)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_install_event_handler(ptr noundef %func) #0 {
entry:
  %func.addr = alloca ptr, align 8
  store ptr %func, ptr %func.addr, align 8
  %0 = load ptr, ptr %func.addr, align 8
  store ptr %0, ptr @srtp_event_handler, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden ptr @srtp_get_session_keys(ptr noundef %stream, ptr noundef %hdr, ptr noundef %pkt_octet_len, ptr noundef %mki_size) #0 {
entry:
  %retval = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  %hdr.addr = alloca ptr, align 8
  %pkt_octet_len.addr = alloca ptr, align 8
  %mki_size.addr = alloca ptr, align 8
  %base_mki_start_location = alloca i32, align 4
  %mki_start_location = alloca i32, align 4
  %tag_len = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %stream, ptr %stream.addr, align 8
  store ptr %hdr, ptr %hdr.addr, align 8
  store ptr %pkt_octet_len, ptr %pkt_octet_len.addr, align 8
  store ptr %mki_size, ptr %mki_size.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %base_mki_start_location) #8
  store i32 -1431655766, ptr %base_mki_start_location, align 4, !annotation !3
  %0 = load ptr, ptr %pkt_octet_len.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %base_mki_start_location, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mki_start_location) #8
  store i32 -1431655766, ptr %mki_start_location, align 4, !annotation !3
  store i32 0, ptr %mki_start_location, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag_len) #8
  store i32 -1431655766, ptr %tag_len, align 4, !annotation !3
  store i32 0, ptr %tag_len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 -1431655766, ptr %i, align 4, !annotation !3
  store i32 0, ptr %i, align 4
  %2 = load ptr, ptr %stream.addr, align 8
  %session_keys = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %session_keys, align 8
  %arrayidx = getelementptr inbounds %struct.srtp_session_keys_t, ptr %3, i64 0
  %rtp_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %arrayidx, i32 0, i32 0
  %4 = load ptr, ptr %rtp_cipher, align 8
  %algorithm = getelementptr inbounds %struct.srtp_cipher_t, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %algorithm, align 4
  %cmp = icmp eq i32 %5, 6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %stream.addr, align 8
  %session_keys1 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %session_keys1, align 8
  %arrayidx2 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %7, i64 0
  %rtp_cipher3 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %arrayidx2, i32 0, i32 0
  %8 = load ptr, ptr %rtp_cipher3, align 8
  %algorithm4 = getelementptr inbounds %struct.srtp_cipher_t, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %algorithm4, align 4
  %cmp5 = icmp eq i32 %9, 7
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %tag_len, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %10 = load ptr, ptr %stream.addr, align 8
  %session_keys6 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %session_keys6, align 8
  %arrayidx7 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %11, i64 0
  %rtp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %arrayidx7, i32 0, i32 2
  %12 = load ptr, ptr %rtp_auth, align 8
  %call = call i32 @srtp_auth_get_tag_length(ptr noundef %12)
  store i32 %call, ptr %tag_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, ptr %tag_len, align 4
  %14 = load i32, ptr %base_mki_start_location, align 4
  %cmp8 = icmp ugt i32 %13, %14
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %15 = load ptr, ptr %mki_size.addr, align 8
  store i32 0, ptr %15, align 4
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %16 = load i32, ptr %tag_len, align 4
  %17 = load i32, ptr %base_mki_start_location, align 4
  %sub = sub i32 %17, %16
  store i32 %sub, ptr %base_mki_start_location, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %18 = load i32, ptr %i, align 4
  %19 = load ptr, ptr %stream.addr, align 8
  %num_master_keys = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %num_master_keys, align 8
  %cmp11 = icmp ult i32 %18, %20
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %stream.addr, align 8
  %session_keys12 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %session_keys12, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom = zext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %22, i64 %idxprom
  %mki_size14 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %arrayidx13, i32 0, i32 8
  %24 = load i32, ptr %mki_size14, align 8
  %cmp15 = icmp ne i32 %24, 0
  br i1 %cmp15, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %for.body
  %25 = load ptr, ptr %stream.addr, align 8
  %session_keys16 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %session_keys16, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom17 = zext i32 %27 to i64
  %arrayidx18 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %26, i64 %idxprom17
  %mki_size19 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %arrayidx18, i32 0, i32 8
  %28 = load i32, ptr %mki_size19, align 8
  %29 = load i32, ptr %base_mki_start_location, align 4
  %cmp20 = icmp ule i32 %28, %29
  br i1 %cmp20, label %if.then21, label %if.end38

if.then21:                                        ; preds = %land.lhs.true
  %30 = load ptr, ptr %stream.addr, align 8
  %session_keys22 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %session_keys22, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom23 = zext i32 %32 to i64
  %arrayidx24 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %31, i64 %idxprom23
  %mki_size25 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %arrayidx24, i32 0, i32 8
  %33 = load i32, ptr %mki_size25, align 8
  %34 = load ptr, ptr %mki_size.addr, align 8
  store i32 %33, ptr %34, align 4
  %35 = load i32, ptr %base_mki_start_location, align 4
  %36 = load ptr, ptr %mki_size.addr, align 8
  %37 = load i32, ptr %36, align 4
  %sub26 = sub i32 %35, %37
  store i32 %sub26, ptr %mki_start_location, align 4
  %38 = load ptr, ptr %hdr.addr, align 8
  %39 = load i32, ptr %mki_start_location, align 4
  %idx.ext = zext i32 %39 to i64
  %add.ptr = getelementptr inbounds i8, ptr %38, i64 %idx.ext
  %40 = load ptr, ptr %stream.addr, align 8
  %session_keys27 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %session_keys27, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom28 = zext i32 %42 to i64
  %arrayidx29 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %41, i64 %idxprom28
  %mki_id = getelementptr inbounds %struct.srtp_session_keys_t, ptr %arrayidx29, i32 0, i32 7
  %43 = load ptr, ptr %mki_id, align 8
  %44 = load ptr, ptr %mki_size.addr, align 8
  %45 = load i32, ptr %44, align 4
  %conv = zext i32 %45 to i64
  %call30 = call i32 @memcmp(ptr noundef %add.ptr, ptr noundef %43, i64 noundef %conv) #9
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.end37

if.then33:                                        ; preds = %if.then21
  %46 = load ptr, ptr %stream.addr, align 8
  %session_keys34 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %46, i32 0, i32 1
  %47 = load ptr, ptr %session_keys34, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom35 = zext i32 %48 to i64
  %arrayidx36 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %47, i64 %idxprom35
  store ptr %arrayidx36, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %if.then21
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end38
  %49 = load i32, ptr %i, align 4
  %inc = add i32 %49, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %50 = load ptr, ptr %mki_size.addr, align 8
  store i32 0, ptr %50, align 4
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then33, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %mki_start_location) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %base_mki_start_location) #8
  %51 = load ptr, ptr %retval, align 8
  ret ptr %51
}

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_auth_get_tag_length(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_protect(ptr noundef %ctx, ptr noundef %rtp_hdr, ptr noundef %pkt_octet_len) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %rtp_hdr.addr = alloca ptr, align 8
  %pkt_octet_len.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %rtp_hdr, ptr %rtp_hdr.addr, align 8
  store ptr %pkt_octet_len, ptr %pkt_octet_len.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %1 = load ptr, ptr %rtp_hdr.addr, align 8
  %2 = load ptr, ptr %pkt_octet_len.addr, align 8
  %call = call i32 @srtp_protect_mki(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_protect_mki(ptr noundef %ctx, ptr noundef %rtp_hdr, ptr noundef %pkt_octet_len, i32 noundef %use_mki, i32 noundef %mki_index) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %rtp_hdr.addr = alloca ptr, align 8
  %pkt_octet_len.addr = alloca ptr, align 8
  %use_mki.addr = alloca i32, align 4
  %mki_index.addr = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %enc_start = alloca ptr, align 8
  %auth_start = alloca ptr, align 8
  %enc_octet_len = alloca i32, align 4
  %est = alloca i64, align 8
  %delta = alloca i32, align 4
  %auth_tag = alloca ptr, align 8
  %status = alloca i32, align 4
  %tag_len = alloca i32, align 4
  %stream = alloca ptr, align 8
  %prefix_len = alloca i32, align 4
  %xtn_hdr = alloca ptr, align 8
  %mki_size = alloca i32, align 4
  %session_keys = alloca ptr, align 8
  %mki_location = alloca ptr, align 8
  %advance_packet_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %new_stream = alloca ptr, align 8
  %data = alloca %struct.srtp_event_data_t, align 8
  %data50 = alloca %struct.srtp_event_data_t, align 8
  %data60 = alloca %struct.srtp_event_data_t, align 8
  %iv = alloca %union.v128_t, align 8
  %iv176 = alloca %union.v128_t, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %rtp_hdr, ptr %rtp_hdr.addr, align 8
  store ptr %pkt_octet_len, ptr %pkt_octet_len.addr, align 8
  store i32 %use_mki, ptr %use_mki.addr, align 4
  store i32 %mki_index, ptr %mki_index.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %hdr, align 8, !annotation !3
  %0 = load ptr, ptr %rtp_hdr.addr, align 8
  store ptr %0, ptr %hdr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %enc_start) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %enc_start, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %auth_start) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %auth_start, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %enc_octet_len) #8
  store i32 -1431655766, ptr %enc_octet_len, align 4, !annotation !3
  store i32 0, ptr %enc_octet_len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %est) #8
  store i64 -6148914691236517206, ptr %est, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %delta) #8
  store i32 -1431655766, ptr %delta, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %auth_tag) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %auth_tag, align 8, !annotation !3
  store ptr null, ptr %auth_tag, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag_len) #8
  store i32 -1431655766, ptr %tag_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %stream) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %stream, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %prefix_len) #8
  store i32 -1431655766, ptr %prefix_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %xtn_hdr) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %xtn_hdr, align 8, !annotation !3
  store ptr null, ptr %xtn_hdr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %mki_size) #8
  store i32 -1431655766, ptr %mki_size, align 4, !annotation !3
  store i32 0, ptr %mki_size, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %session_keys) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %session_keys, align 8, !annotation !3
  store ptr null, ptr %session_keys, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %mki_location) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %mki_location, align 8, !annotation !3
  store ptr null, ptr %mki_location, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %advance_packet_index) #8
  store i32 -1431655766, ptr %advance_packet_index, align 4, !annotation !3
  store i32 0, ptr %advance_packet_index, align 4
  %1 = load i32, ptr @mod_srtp, align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.28, ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %rtp_hdr.addr, align 8
  %4 = load ptr, ptr %pkt_octet_len.addr, align 8
  %call = call i32 @srtp_validate_rtp_header(ptr noundef %3, ptr noundef %4)
  store i32 %call, ptr %status, align 4
  %5 = load i32, ptr %status, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load i32, ptr %status, align 4
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %pkt_octet_len.addr, align 8
  %8 = load i32, ptr %7, align 4
  %cmp = icmp slt i32 %8, 12
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end3
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

if.end5:                                          ; preds = %if.end3
  %9 = load ptr, ptr %ctx.addr, align 8
  %10 = load ptr, ptr %hdr, align 8
  %ssrc = getelementptr inbounds %struct.srtp_hdr_t, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %ssrc, align 4
  %call6 = call ptr @srtp_get_stream(ptr noundef %9, i32 noundef %11)
  store ptr %call6, ptr %stream, align 8
  %12 = load ptr, ptr %stream, align 8
  %cmp7 = icmp eq ptr %12, null
  br i1 %cmp7, label %if.then8, label %if.end19

if.then8:                                         ; preds = %if.end5
  %13 = load ptr, ptr %ctx.addr, align 8
  %stream_template = getelementptr inbounds %struct.srtp_ctx_t_, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %stream_template, align 8
  %cmp9 = icmp ne ptr %14, null
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then8
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_stream) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %new_stream, align 8, !annotation !3
  %15 = load ptr, ptr %ctx.addr, align 8
  %stream_template11 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %stream_template11, align 8
  %17 = load ptr, ptr %hdr, align 8
  %ssrc12 = getelementptr inbounds %struct.srtp_hdr_t, ptr %17, i32 0, i32 3
  %18 = load i32, ptr %ssrc12, align 4
  %call13 = call i32 @srtp_stream_clone(ptr noundef %16, i32 noundef %18, ptr noundef %new_stream)
  store i32 %call13, ptr %status, align 4
  %19 = load i32, ptr %status, align 4
  %tobool14 = icmp ne i32 %19, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then10
  %20 = load i32, ptr %status, align 4
  store i32 %20, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.then10
  %21 = load ptr, ptr %ctx.addr, align 8
  %stream_list = getelementptr inbounds %struct.srtp_ctx_t_, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %stream_list, align 8
  %23 = load ptr, ptr %new_stream, align 8
  %next = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %23, i32 0, i32 13
  store ptr %22, ptr %next, align 8
  %24 = load ptr, ptr %new_stream, align 8
  %25 = load ptr, ptr %ctx.addr, align 8
  %stream_list17 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %25, i32 0, i32 0
  store ptr %24, ptr %stream_list17, align 8
  %26 = load ptr, ptr %new_stream, align 8
  %direction = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %26, i32 0, i32 7
  store i32 1, ptr %direction, align 4
  %27 = load ptr, ptr %new_stream, align 8
  store ptr %27, ptr %stream, align 8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_stream) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup273 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end18

if.else:                                          ; preds = %if.then8
  store i32 13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

if.end18:                                         ; preds = %cleanup.cont
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end5
  %28 = load ptr, ptr %stream, align 8
  %direction20 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %28, i32 0, i32 7
  %29 = load i32, ptr %direction20, align 4
  %cmp21 = icmp ne i32 %29, 1
  br i1 %cmp21, label %if.then22, label %if.end35

if.then22:                                        ; preds = %if.end19
  %30 = load ptr, ptr %stream, align 8
  %direction23 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %30, i32 0, i32 7
  %31 = load i32, ptr %direction23, align 4
  %cmp24 = icmp eq i32 %31, 0
  br i1 %cmp24, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.then22
  %32 = load ptr, ptr %stream, align 8
  %direction26 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %32, i32 0, i32 7
  store i32 1, ptr %direction26, align 4
  br label %if.end34

if.else27:                                        ; preds = %if.then22
  %33 = load ptr, ptr @srtp_event_handler, align 8
  %tobool28 = icmp ne ptr %33, null
  br i1 %tobool28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.else27
  call void @llvm.lifetime.start.p0(i64 16, ptr %data) #8
  %34 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 0
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %34, align 8, !annotation !3
  %35 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 1
  store i32 -1431655766, ptr %35, align 8, !annotation !3
  %36 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 2
  store i32 -1431655766, ptr %36, align 4, !annotation !3
  %37 = load ptr, ptr %ctx.addr, align 8
  %session = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 0
  store ptr %37, ptr %session, align 8
  %38 = load ptr, ptr %stream, align 8
  %ssrc30 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %38, i32 0, i32 0
  %39 = load i32, ptr %ssrc30, align 8
  %call31 = call i32 @__bswap_32(i32 noundef %39)
  %ssrc32 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 1
  store i32 %call31, ptr %ssrc32, align 8
  %event = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 2
  store i32 0, ptr %event, align 4
  %40 = load ptr, ptr @srtp_event_handler, align 8
  call void %40(ptr noundef %data)
  call void @llvm.lifetime.end.p0(i64 16, ptr %data) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.else27
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then25
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end19
  %41 = load ptr, ptr %stream, align 8
  %42 = load i32, ptr %use_mki.addr, align 4
  %43 = load i32, ptr %mki_index.addr, align 4
  %call36 = call ptr @srtp_get_session_keys_with_mki_index(ptr noundef %41, i32 noundef %42, i32 noundef %43)
  store ptr %call36, ptr %session_keys, align 8
  %44 = load ptr, ptr %session_keys, align 8
  %cmp37 = icmp eq ptr %44, null
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end35
  store i32 25, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

if.end39:                                         ; preds = %if.end35
  %45 = load ptr, ptr %session_keys, align 8
  %rtp_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %rtp_cipher, align 8
  %algorithm = getelementptr inbounds %struct.srtp_cipher_t, ptr %46, i32 0, i32 3
  %47 = load i32, ptr %algorithm, align 4
  %cmp40 = icmp eq i32 %47, 6
  br i1 %cmp40, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end39
  %48 = load ptr, ptr %session_keys, align 8
  %rtp_cipher41 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %rtp_cipher41, align 8
  %algorithm42 = getelementptr inbounds %struct.srtp_cipher_t, ptr %49, i32 0, i32 3
  %50 = load i32, ptr %algorithm42, align 4
  %cmp43 = icmp eq i32 %50, 7
  br i1 %cmp43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %lor.lhs.false, %if.end39
  %51 = load ptr, ptr %ctx.addr, align 8
  %52 = load ptr, ptr %stream, align 8
  %53 = load ptr, ptr %rtp_hdr.addr, align 8
  %54 = load ptr, ptr %pkt_octet_len.addr, align 8
  %55 = load ptr, ptr %session_keys, align 8
  %56 = load i32, ptr %use_mki.addr, align 4
  %call45 = call i32 @srtp_protect_aead(ptr noundef %51, ptr noundef %52, ptr noundef %53, ptr noundef %54, ptr noundef %55, i32 noundef %56)
  store i32 %call45, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

if.end46:                                         ; preds = %lor.lhs.false
  %57 = load ptr, ptr %session_keys, align 8
  %limit = getelementptr inbounds %struct.srtp_session_keys_t, ptr %57, i32 0, i32 9
  %58 = load ptr, ptr %limit, align 8
  %call47 = call i32 @srtp_key_limit_update(ptr noundef %58)
  switch i32 %call47, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
    i32 2, label %sw.bb57
  ]

sw.bb:                                            ; preds = %if.end46
  %59 = load ptr, ptr @srtp_event_handler, align 8
  %tobool48 = icmp ne ptr %59, null
  br i1 %tobool48, label %if.then49, label %if.end56

if.then49:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 16, ptr %data50) #8
  %60 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data50, i32 0, i32 0
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %60, align 8, !annotation !3
  %61 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data50, i32 0, i32 1
  store i32 -1431655766, ptr %61, align 8, !annotation !3
  %62 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data50, i32 0, i32 2
  store i32 -1431655766, ptr %62, align 4, !annotation !3
  %63 = load ptr, ptr %ctx.addr, align 8
  %session51 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data50, i32 0, i32 0
  store ptr %63, ptr %session51, align 8
  %64 = load ptr, ptr %stream, align 8
  %ssrc52 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %64, i32 0, i32 0
  %65 = load i32, ptr %ssrc52, align 8
  %call53 = call i32 @__bswap_32(i32 noundef %65)
  %ssrc54 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data50, i32 0, i32 1
  store i32 %call53, ptr %ssrc54, align 8
  %event55 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data50, i32 0, i32 2
  store i32 1, ptr %event55, align 4
  %66 = load ptr, ptr @srtp_event_handler, align 8
  call void %66(ptr noundef %data50)
  call void @llvm.lifetime.end.p0(i64 16, ptr %data50) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %sw.bb
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end46
  %67 = load ptr, ptr @srtp_event_handler, align 8
  %tobool58 = icmp ne ptr %67, null
  br i1 %tobool58, label %if.then59, label %if.end66

if.then59:                                        ; preds = %sw.bb57
  call void @llvm.lifetime.start.p0(i64 16, ptr %data60) #8
  %68 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data60, i32 0, i32 0
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %68, align 8, !annotation !3
  %69 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data60, i32 0, i32 1
  store i32 -1431655766, ptr %69, align 8, !annotation !3
  %70 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data60, i32 0, i32 2
  store i32 -1431655766, ptr %70, align 4, !annotation !3
  %71 = load ptr, ptr %ctx.addr, align 8
  %session61 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data60, i32 0, i32 0
  store ptr %71, ptr %session61, align 8
  %72 = load ptr, ptr %stream, align 8
  %ssrc62 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %72, i32 0, i32 0
  %73 = load i32, ptr %ssrc62, align 8
  %call63 = call i32 @__bswap_32(i32 noundef %73)
  %ssrc64 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data60, i32 0, i32 1
  store i32 %call63, ptr %ssrc64, align 8
  %event65 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data60, i32 0, i32 2
  store i32 2, ptr %event65, align 4
  %74 = load ptr, ptr @srtp_event_handler, align 8
  call void %74(ptr noundef %data60)
  call void @llvm.lifetime.end.p0(i64 16, ptr %data60) #8
  br label %if.end66

if.end66:                                         ; preds = %if.then59, %sw.bb57
  store i32 15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

sw.default:                                       ; preds = %if.end46
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end56, %if.end46
  %75 = load ptr, ptr %session_keys, align 8
  %rtp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %75, i32 0, i32 2
  %76 = load ptr, ptr %rtp_auth, align 8
  %call67 = call i32 @srtp_auth_get_tag_length(ptr noundef %76)
  store i32 %call67, ptr %tag_len, align 4
  %77 = load ptr, ptr %stream, align 8
  %rtp_services = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %77, i32 0, i32 4
  %78 = load i32, ptr %rtp_services, align 8
  %and = and i32 %78, 1
  %tobool68 = icmp ne i32 %and, 0
  br i1 %tobool68, label %if.then69, label %if.else95

if.then69:                                        ; preds = %sw.epilog
  %79 = load ptr, ptr %hdr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %79, i64 3
  %80 = load ptr, ptr %hdr, align 8
  %bf.load = load i16, ptr %80, align 4
  %bf.clear = and i16 %bf.load, 15
  %bf.cast = trunc i16 %bf.clear to i8
  %conv = zext i8 %bf.cast to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr70 = getelementptr inbounds i32, ptr %add.ptr, i64 %idx.ext
  store ptr %add.ptr70, ptr %enc_start, align 8
  %81 = load ptr, ptr %hdr, align 8
  %bf.load71 = load i16, ptr %81, align 4
  %bf.lshr = lshr i16 %bf.load71, 4
  %bf.clear72 = and i16 %bf.lshr, 1
  %bf.cast73 = trunc i16 %bf.clear72 to i8
  %conv74 = zext i8 %bf.cast73 to i32
  %cmp75 = icmp eq i32 %conv74, 1
  br i1 %cmp75, label %if.then77, label %if.end82

if.then77:                                        ; preds = %if.then69
  %82 = load ptr, ptr %enc_start, align 8
  store ptr %82, ptr %xtn_hdr, align 8
  %83 = load ptr, ptr %xtn_hdr, align 8
  %length = getelementptr inbounds %struct.srtp_hdr_xtnd_t, ptr %83, i32 0, i32 1
  %84 = load i16, ptr %length, align 2
  %call78 = call zeroext i16 @__bswap_16(i16 noundef zeroext %84)
  %conv79 = zext i16 %call78 to i32
  %add = add nsw i32 %conv79, 1
  %85 = load ptr, ptr %enc_start, align 8
  %idx.ext80 = sext i32 %add to i64
  %add.ptr81 = getelementptr inbounds i32, ptr %85, i64 %idx.ext80
  store ptr %add.ptr81, ptr %enc_start, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.then69
  %86 = load ptr, ptr %enc_start, align 8
  %87 = load ptr, ptr %hdr, align 8
  %88 = load ptr, ptr %pkt_octet_len.addr, align 8
  %89 = load i32, ptr %88, align 4
  %idx.ext83 = sext i32 %89 to i64
  %add.ptr84 = getelementptr inbounds i8, ptr %87, i64 %idx.ext83
  %cmp85 = icmp ule ptr %86, %add.ptr84
  br i1 %cmp85, label %if.end88, label %if.then87

if.then87:                                        ; preds = %if.end82
  store i32 21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

if.end88:                                         ; preds = %if.end82
  %90 = load ptr, ptr %pkt_octet_len.addr, align 8
  %91 = load i32, ptr %90, align 4
  %conv89 = sext i32 %91 to i64
  %92 = load ptr, ptr %enc_start, align 8
  %93 = load ptr, ptr %hdr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %92 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %93 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %conv89, %sub.ptr.sub
  %conv90 = trunc i64 %sub to i32
  store i32 %conv90, ptr %enc_octet_len, align 4
  %94 = load i32, ptr %enc_octet_len, align 4
  %cmp91 = icmp slt i32 %94, 0
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end88
  store i32 21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

if.end94:                                         ; preds = %if.end88
  br label %if.end96

if.else95:                                        ; preds = %sw.epilog
  store ptr null, ptr %enc_start, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.else95, %if.end94
  %95 = load ptr, ptr %hdr, align 8
  %96 = load ptr, ptr %pkt_octet_len.addr, align 8
  %97 = load i32, ptr %96, align 4
  %idx.ext97 = sext i32 %97 to i64
  %add.ptr98 = getelementptr inbounds i8, ptr %95, i64 %idx.ext97
  store ptr %add.ptr98, ptr %mki_location, align 8
  %98 = load ptr, ptr %mki_location, align 8
  %99 = load ptr, ptr %session_keys, align 8
  %100 = load i32, ptr %use_mki.addr, align 4
  %call99 = call i32 @srtp_inject_mki(ptr noundef %98, ptr noundef %99, i32 noundef %100)
  store i32 %call99, ptr %mki_size, align 4
  %101 = load ptr, ptr %stream, align 8
  %rtp_services100 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %101, i32 0, i32 4
  %102 = load i32, ptr %rtp_services100, align 8
  %and101 = and i32 %102, 2
  %tobool102 = icmp ne i32 %and101, 0
  br i1 %tobool102, label %if.then103, label %if.else108

if.then103:                                       ; preds = %if.end96
  %103 = load ptr, ptr %hdr, align 8
  store ptr %103, ptr %auth_start, align 8
  %104 = load ptr, ptr %hdr, align 8
  %105 = load ptr, ptr %pkt_octet_len.addr, align 8
  %106 = load i32, ptr %105, align 4
  %idx.ext104 = sext i32 %106 to i64
  %add.ptr105 = getelementptr inbounds i8, ptr %104, i64 %idx.ext104
  %107 = load i32, ptr %mki_size, align 4
  %idx.ext106 = zext i32 %107 to i64
  %add.ptr107 = getelementptr inbounds i8, ptr %add.ptr105, i64 %idx.ext106
  store ptr %add.ptr107, ptr %auth_tag, align 8
  br label %if.end109

if.else108:                                       ; preds = %if.end96
  store ptr null, ptr %auth_start, align 8
  store ptr null, ptr %auth_tag, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.else108, %if.then103
  %108 = load ptr, ptr %hdr, align 8
  %109 = load ptr, ptr %stream, align 8
  %call110 = call i32 @srtp_get_est_pkt_index(ptr noundef %108, ptr noundef %109, ptr noundef %est, ptr noundef %delta)
  store i32 %call110, ptr %status, align 4
  %110 = load i32, ptr %status, align 4
  %tobool111 = icmp ne i32 %110, 0
  br i1 %tobool111, label %land.lhs.true, label %if.end115

land.lhs.true:                                    ; preds = %if.end109
  %111 = load i32, ptr %status, align 4
  %cmp112 = icmp ne i32 %111, 27
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %land.lhs.true
  %112 = load i32, ptr %status, align 4
  store i32 %112, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

if.end115:                                        ; preds = %land.lhs.true, %if.end109
  %113 = load i32, ptr %status, align 4
  %cmp116 = icmp eq i32 %113, 27
  br i1 %cmp116, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.end115
  store i32 1, ptr %advance_packet_index, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %if.end115
  %114 = load i32, ptr %advance_packet_index, align 4
  %tobool120 = icmp ne i32 %114, 0
  br i1 %tobool120, label %if.then121, label %if.else128

if.then121:                                       ; preds = %if.end119
  %115 = load ptr, ptr %stream, align 8
  %rtp_rdbx = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %115, i32 0, i32 3
  %116 = load i64, ptr %est, align 8
  %shr = lshr i64 %116, 16
  %conv122 = trunc i64 %shr to i32
  %117 = load i64, ptr %est, align 8
  %and123 = and i64 %117, 65535
  %conv124 = trunc i64 %and123 to i16
  %call125 = call i32 @srtp_rdbx_set_roc_seq(ptr noundef %rtp_rdbx, i32 noundef %conv122, i16 noundef zeroext %conv124)
  %118 = load ptr, ptr %stream, align 8
  %pending_roc = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %118, i32 0, i32 12
  store i32 0, ptr %pending_roc, align 4
  %119 = load ptr, ptr %stream, align 8
  %rtp_rdbx126 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %119, i32 0, i32 3
  %call127 = call i32 @srtp_rdbx_add_index(ptr noundef %rtp_rdbx126, i32 noundef 0)
  br label %if.end142

if.else128:                                       ; preds = %if.end119
  %120 = load ptr, ptr %stream, align 8
  %rtp_rdbx129 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %120, i32 0, i32 3
  %121 = load i32, ptr %delta, align 4
  %call130 = call i32 @srtp_rdbx_check(ptr noundef %rtp_rdbx129, i32 noundef %121)
  store i32 %call130, ptr %status, align 4
  %122 = load i32, ptr %status, align 4
  %tobool131 = icmp ne i32 %122, 0
  br i1 %tobool131, label %if.then132, label %if.end139

if.then132:                                       ; preds = %if.else128
  %123 = load i32, ptr %status, align 4
  %cmp133 = icmp ne i32 %123, 9
  br i1 %cmp133, label %if.then137, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %if.then132
  %124 = load ptr, ptr %stream, align 8
  %allow_repeat_tx = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %124, i32 0, i32 8
  %125 = load i32, ptr %allow_repeat_tx, align 8
  %tobool136 = icmp ne i32 %125, 0
  br i1 %tobool136, label %if.end138, label %if.then137

if.then137:                                       ; preds = %lor.lhs.false135, %if.then132
  %126 = load i32, ptr %status, align 4
  store i32 %126, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

if.end138:                                        ; preds = %lor.lhs.false135
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.else128
  %127 = load ptr, ptr %stream, align 8
  %rtp_rdbx140 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %127, i32 0, i32 3
  %128 = load i32, ptr %delta, align 4
  %call141 = call i32 @srtp_rdbx_add_index(ptr noundef %rtp_rdbx140, i32 noundef %128)
  br label %if.end142

if.end142:                                        ; preds = %if.end139, %if.then121
  %129 = load i32, ptr @mod_srtp, align 8
  %tobool143 = icmp ne i32 %129, 0
  br i1 %tobool143, label %if.then144, label %if.end145

if.then144:                                       ; preds = %if.end142
  %130 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %131 = load i64, ptr %est, align 8
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.29, ptr noundef %130, i64 noundef %131)
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %if.end142
  %132 = load ptr, ptr %session_keys, align 8
  %rtp_cipher146 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %132, i32 0, i32 0
  %133 = load ptr, ptr %rtp_cipher146, align 8
  %type = getelementptr inbounds %struct.srtp_cipher_t, ptr %133, i32 0, i32 0
  %134 = load ptr, ptr %type, align 8
  %id = getelementptr inbounds %struct.srtp_cipher_type_t, ptr %134, i32 0, i32 10
  %135 = load i32, ptr %id, align 8
  %cmp147 = icmp eq i32 %135, 1
  br i1 %cmp147, label %if.then161, label %lor.lhs.false149

lor.lhs.false149:                                 ; preds = %if.end145
  %136 = load ptr, ptr %session_keys, align 8
  %rtp_cipher150 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %136, i32 0, i32 0
  %137 = load ptr, ptr %rtp_cipher150, align 8
  %type151 = getelementptr inbounds %struct.srtp_cipher_t, ptr %137, i32 0, i32 0
  %138 = load ptr, ptr %type151, align 8
  %id152 = getelementptr inbounds %struct.srtp_cipher_type_t, ptr %138, i32 0, i32 10
  %139 = load i32, ptr %id152, align 8
  %cmp153 = icmp eq i32 %139, 4
  br i1 %cmp153, label %if.then161, label %lor.lhs.false155

lor.lhs.false155:                                 ; preds = %lor.lhs.false149
  %140 = load ptr, ptr %session_keys, align 8
  %rtp_cipher156 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %140, i32 0, i32 0
  %141 = load ptr, ptr %rtp_cipher156, align 8
  %type157 = getelementptr inbounds %struct.srtp_cipher_t, ptr %141, i32 0, i32 0
  %142 = load ptr, ptr %type157, align 8
  %id158 = getelementptr inbounds %struct.srtp_cipher_type_t, ptr %142, i32 0, i32 10
  %143 = load i32, ptr %id158, align 8
  %cmp159 = icmp eq i32 %143, 5
  br i1 %cmp159, label %if.then161, label %if.else175

if.then161:                                       ; preds = %lor.lhs.false155, %lor.lhs.false149, %if.end145
  call void @llvm.lifetime.start.p0(i64 16, ptr %iv) #8
  %144 = getelementptr inbounds %union.v128_t, ptr %iv, i32 0, i32 0
  %145 = getelementptr inbounds [2 x i64], ptr %144, i64 0, i64 0
  store i64 -6148914691236517206, ptr %145, align 8, !annotation !3
  %146 = getelementptr inbounds [2 x i64], ptr %144, i64 0, i64 1
  store i64 -6148914691236517206, ptr %146, align 8, !annotation !3
  %arrayidx = getelementptr inbounds [4 x i32], ptr %iv, i64 0, i64 0
  store i32 0, ptr %arrayidx, align 8
  %147 = load ptr, ptr %hdr, align 8
  %ssrc162 = getelementptr inbounds %struct.srtp_hdr_t, ptr %147, i32 0, i32 3
  %148 = load i32, ptr %ssrc162, align 4
  %arrayidx163 = getelementptr inbounds [4 x i32], ptr %iv, i64 0, i64 1
  store i32 %148, ptr %arrayidx163, align 4
  %149 = load i64, ptr %est, align 8
  %shl = shl i64 %149, 16
  %call164 = call i64 @be64_to_cpu(i64 noundef %shl)
  %arrayidx165 = getelementptr inbounds [2 x i64], ptr %iv, i64 0, i64 1
  store i64 %call164, ptr %arrayidx165, align 8
  %150 = load ptr, ptr %session_keys, align 8
  %rtp_cipher166 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %150, i32 0, i32 0
  %151 = load ptr, ptr %rtp_cipher166, align 8
  %call167 = call i32 @srtp_cipher_set_iv(ptr noundef %151, ptr noundef %iv, i32 noundef 0)
  store i32 %call167, ptr %status, align 4
  %152 = load i32, ptr %status, align 4
  %tobool168 = icmp ne i32 %152, 0
  br i1 %tobool168, label %if.end174, label %land.lhs.true169

land.lhs.true169:                                 ; preds = %if.then161
  %153 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %153, i32 0, i32 1
  %154 = load ptr, ptr %rtp_xtn_hdr_cipher, align 8
  %tobool170 = icmp ne ptr %154, null
  br i1 %tobool170, label %if.then171, label %if.end174

if.then171:                                       ; preds = %land.lhs.true169
  %155 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher172 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %155, i32 0, i32 1
  %156 = load ptr, ptr %rtp_xtn_hdr_cipher172, align 8
  %call173 = call i32 @srtp_cipher_set_iv(ptr noundef %156, ptr noundef %iv, i32 noundef 0)
  store i32 %call173, ptr %status, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then171, %land.lhs.true169, %if.then161
  call void @llvm.lifetime.end.p0(i64 16, ptr %iv) #8
  br label %if.end190

if.else175:                                       ; preds = %lor.lhs.false155
  call void @llvm.lifetime.start.p0(i64 16, ptr %iv176) #8
  %157 = getelementptr inbounds %union.v128_t, ptr %iv176, i32 0, i32 0
  %158 = getelementptr inbounds [2 x i64], ptr %157, i64 0, i64 0
  store i64 -6148914691236517206, ptr %158, align 8, !annotation !3
  %159 = getelementptr inbounds [2 x i64], ptr %157, i64 0, i64 1
  store i64 -6148914691236517206, ptr %159, align 8, !annotation !3
  %arrayidx177 = getelementptr inbounds [2 x i64], ptr %iv176, i64 0, i64 0
  store i64 0, ptr %arrayidx177, align 8
  %160 = load i64, ptr %est, align 8
  %call178 = call i64 @be64_to_cpu(i64 noundef %160)
  %arrayidx179 = getelementptr inbounds [2 x i64], ptr %iv176, i64 0, i64 1
  store i64 %call178, ptr %arrayidx179, align 8
  %161 = load ptr, ptr %session_keys, align 8
  %rtp_cipher180 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %161, i32 0, i32 0
  %162 = load ptr, ptr %rtp_cipher180, align 8
  %call181 = call i32 @srtp_cipher_set_iv(ptr noundef %162, ptr noundef %iv176, i32 noundef 0)
  store i32 %call181, ptr %status, align 4
  %163 = load i32, ptr %status, align 4
  %tobool182 = icmp ne i32 %163, 0
  br i1 %tobool182, label %if.end189, label %land.lhs.true183

land.lhs.true183:                                 ; preds = %if.else175
  %164 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher184 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %164, i32 0, i32 1
  %165 = load ptr, ptr %rtp_xtn_hdr_cipher184, align 8
  %tobool185 = icmp ne ptr %165, null
  br i1 %tobool185, label %if.then186, label %if.end189

if.then186:                                       ; preds = %land.lhs.true183
  %166 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher187 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %166, i32 0, i32 1
  %167 = load ptr, ptr %rtp_xtn_hdr_cipher187, align 8
  %call188 = call i32 @srtp_cipher_set_iv(ptr noundef %167, ptr noundef %iv176, i32 noundef 0)
  store i32 %call188, ptr %status, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.then186, %land.lhs.true183, %if.else175
  call void @llvm.lifetime.end.p0(i64 16, ptr %iv176) #8
  br label %if.end190

if.end190:                                        ; preds = %if.end189, %if.end174
  %168 = load i32, ptr %status, align 4
  %tobool191 = icmp ne i32 %168, 0
  br i1 %tobool191, label %if.then192, label %if.end193

if.then192:                                       ; preds = %if.end190
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

if.end193:                                        ; preds = %if.end190
  %169 = load i64, ptr %est, align 8
  %shl194 = shl i64 %169, 16
  %call195 = call i64 @be64_to_cpu(i64 noundef %shl194)
  store i64 %call195, ptr %est, align 8
  %170 = load ptr, ptr %auth_start, align 8
  %tobool196 = icmp ne ptr %170, null
  br i1 %tobool196, label %if.then197, label %if.end212

if.then197:                                       ; preds = %if.end193
  %171 = load ptr, ptr %session_keys, align 8
  %rtp_auth198 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %171, i32 0, i32 2
  %172 = load ptr, ptr %rtp_auth198, align 8
  %call199 = call i32 @srtp_auth_get_prefix_length(ptr noundef %172)
  store i32 %call199, ptr %prefix_len, align 4
  %173 = load i32, ptr %prefix_len, align 4
  %tobool200 = icmp ne i32 %173, 0
  br i1 %tobool200, label %if.then201, label %if.end211

if.then201:                                       ; preds = %if.then197
  %174 = load ptr, ptr %session_keys, align 8
  %rtp_cipher202 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %174, i32 0, i32 0
  %175 = load ptr, ptr %rtp_cipher202, align 8
  %176 = load ptr, ptr %auth_tag, align 8
  %call203 = call i32 @srtp_cipher_output(ptr noundef %175, ptr noundef %176, ptr noundef %prefix_len)
  store i32 %call203, ptr %status, align 4
  %177 = load i32, ptr %status, align 4
  %tobool204 = icmp ne i32 %177, 0
  br i1 %tobool204, label %if.then205, label %if.end206

if.then205:                                       ; preds = %if.then201
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

if.end206:                                        ; preds = %if.then201
  %178 = load i32, ptr @mod_srtp, align 8
  %tobool207 = icmp ne i32 %178, 0
  br i1 %tobool207, label %if.then208, label %if.end210

if.then208:                                       ; preds = %if.end206
  %179 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %180 = load ptr, ptr %auth_tag, align 8
  %181 = load i32, ptr %prefix_len, align 4
  %call209 = call ptr @srtp_octet_string_hex_string(ptr noundef %180, i32 noundef %181)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.30, ptr noundef %179, ptr noundef %call209)
  br label %if.end210

if.end210:                                        ; preds = %if.then208, %if.end206
  br label %if.end211

if.end211:                                        ; preds = %if.end210, %if.then197
  br label %if.end212

if.end212:                                        ; preds = %if.end211, %if.end193
  %182 = load ptr, ptr %xtn_hdr, align 8
  %tobool213 = icmp ne ptr %182, null
  br i1 %tobool213, label %land.lhs.true214, label %if.end222

land.lhs.true214:                                 ; preds = %if.end212
  %183 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher215 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %183, i32 0, i32 1
  %184 = load ptr, ptr %rtp_xtn_hdr_cipher215, align 8
  %tobool216 = icmp ne ptr %184, null
  br i1 %tobool216, label %if.then217, label %if.end222

if.then217:                                       ; preds = %land.lhs.true214
  %185 = load ptr, ptr %stream, align 8
  %186 = load ptr, ptr %xtn_hdr, align 8
  %187 = load ptr, ptr %session_keys, align 8
  %call218 = call i32 @srtp_process_header_encryption(ptr noundef %185, ptr noundef %186, ptr noundef %187)
  store i32 %call218, ptr %status, align 4
  %188 = load i32, ptr %status, align 4
  %tobool219 = icmp ne i32 %188, 0
  br i1 %tobool219, label %if.then220, label %if.end221

if.then220:                                       ; preds = %if.then217
  %189 = load i32, ptr %status, align 4
  store i32 %189, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

if.end221:                                        ; preds = %if.then217
  br label %if.end222

if.end222:                                        ; preds = %if.end221, %land.lhs.true214, %if.end212
  %190 = load ptr, ptr %enc_start, align 8
  %tobool223 = icmp ne ptr %190, null
  br i1 %tobool223, label %if.then224, label %if.end230

if.then224:                                       ; preds = %if.end222
  %191 = load ptr, ptr %session_keys, align 8
  %rtp_cipher225 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %191, i32 0, i32 0
  %192 = load ptr, ptr %rtp_cipher225, align 8
  %193 = load ptr, ptr %enc_start, align 8
  %call226 = call i32 @srtp_cipher_encrypt(ptr noundef %192, ptr noundef %193, ptr noundef %enc_octet_len)
  store i32 %call226, ptr %status, align 4
  %194 = load i32, ptr %status, align 4
  %tobool227 = icmp ne i32 %194, 0
  br i1 %tobool227, label %if.then228, label %if.end229

if.then228:                                       ; preds = %if.then224
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

if.end229:                                        ; preds = %if.then224
  br label %if.end230

if.end230:                                        ; preds = %if.end229, %if.end222
  %195 = load ptr, ptr %auth_start, align 8
  %tobool231 = icmp ne ptr %195, null
  br i1 %tobool231, label %if.then232, label %if.end264

if.then232:                                       ; preds = %if.end230
  %196 = load ptr, ptr %session_keys, align 8
  %rtp_auth233 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %196, i32 0, i32 2
  %197 = load ptr, ptr %rtp_auth233, align 8
  %type234 = getelementptr inbounds %struct.srtp_auth_t, ptr %197, i32 0, i32 0
  %198 = load ptr, ptr %type234, align 8
  %start = getelementptr inbounds %struct.srtp_auth_type_t, ptr %198, i32 0, i32 5
  %199 = load ptr, ptr %start, align 8
  %200 = load ptr, ptr %session_keys, align 8
  %rtp_auth235 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %200, i32 0, i32 2
  %201 = load ptr, ptr %rtp_auth235, align 8
  %state = getelementptr inbounds %struct.srtp_auth_t, ptr %201, i32 0, i32 1
  %202 = load ptr, ptr %state, align 8
  %call236 = call i32 %199(ptr noundef %202)
  store i32 %call236, ptr %status, align 4
  %203 = load i32, ptr %status, align 4
  %tobool237 = icmp ne i32 %203, 0
  br i1 %tobool237, label %if.then238, label %if.end239

if.then238:                                       ; preds = %if.then232
  %204 = load i32, ptr %status, align 4
  store i32 %204, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

if.end239:                                        ; preds = %if.then232
  %205 = load ptr, ptr %session_keys, align 8
  %rtp_auth240 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %205, i32 0, i32 2
  %206 = load ptr, ptr %rtp_auth240, align 8
  %type241 = getelementptr inbounds %struct.srtp_auth_t, ptr %206, i32 0, i32 0
  %207 = load ptr, ptr %type241, align 8
  %update = getelementptr inbounds %struct.srtp_auth_type_t, ptr %207, i32 0, i32 4
  %208 = load ptr, ptr %update, align 8
  %209 = load ptr, ptr %session_keys, align 8
  %rtp_auth242 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %209, i32 0, i32 2
  %210 = load ptr, ptr %rtp_auth242, align 8
  %state243 = getelementptr inbounds %struct.srtp_auth_t, ptr %210, i32 0, i32 1
  %211 = load ptr, ptr %state243, align 8
  %212 = load ptr, ptr %auth_start, align 8
  %213 = load ptr, ptr %pkt_octet_len.addr, align 8
  %214 = load i32, ptr %213, align 4
  %call244 = call i32 %208(ptr noundef %211, ptr noundef %212, i32 noundef %214)
  store i32 %call244, ptr %status, align 4
  %215 = load i32, ptr %status, align 4
  %tobool245 = icmp ne i32 %215, 0
  br i1 %tobool245, label %if.then246, label %if.end247

if.then246:                                       ; preds = %if.end239
  %216 = load i32, ptr %status, align 4
  store i32 %216, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

if.end247:                                        ; preds = %if.end239
  %217 = load i32, ptr @mod_srtp, align 8
  %tobool248 = icmp ne i32 %217, 0
  br i1 %tobool248, label %if.then249, label %if.end250

if.then249:                                       ; preds = %if.end247
  %218 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %219 = load i64, ptr %est, align 8
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.29, ptr noundef %218, i64 noundef %219)
  br label %if.end250

if.end250:                                        ; preds = %if.then249, %if.end247
  %220 = load ptr, ptr %session_keys, align 8
  %rtp_auth251 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %220, i32 0, i32 2
  %221 = load ptr, ptr %rtp_auth251, align 8
  %type252 = getelementptr inbounds %struct.srtp_auth_t, ptr %221, i32 0, i32 0
  %222 = load ptr, ptr %type252, align 8
  %compute = getelementptr inbounds %struct.srtp_auth_type_t, ptr %222, i32 0, i32 3
  %223 = load ptr, ptr %compute, align 8
  %224 = load ptr, ptr %session_keys, align 8
  %rtp_auth253 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %224, i32 0, i32 2
  %225 = load ptr, ptr %rtp_auth253, align 8
  %state254 = getelementptr inbounds %struct.srtp_auth_t, ptr %225, i32 0, i32 1
  %226 = load ptr, ptr %state254, align 8
  %227 = load ptr, ptr %session_keys, align 8
  %rtp_auth255 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %227, i32 0, i32 2
  %228 = load ptr, ptr %rtp_auth255, align 8
  %out_len = getelementptr inbounds %struct.srtp_auth_t, ptr %228, i32 0, i32 2
  %229 = load i32, ptr %out_len, align 8
  %230 = load ptr, ptr %auth_tag, align 8
  %call256 = call i32 %223(ptr noundef %226, ptr noundef %est, i32 noundef 4, i32 noundef %229, ptr noundef %230)
  store i32 %call256, ptr %status, align 4
  %231 = load i32, ptr @mod_srtp, align 8
  %tobool257 = icmp ne i32 %231, 0
  br i1 %tobool257, label %if.then258, label %if.end260

if.then258:                                       ; preds = %if.end250
  %232 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %233 = load ptr, ptr %auth_tag, align 8
  %234 = load i32, ptr %tag_len, align 4
  %call259 = call ptr @srtp_octet_string_hex_string(ptr noundef %233, i32 noundef %234)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.31, ptr noundef %232, ptr noundef %call259)
  br label %if.end260

if.end260:                                        ; preds = %if.then258, %if.end250
  %235 = load i32, ptr %status, align 4
  %tobool261 = icmp ne i32 %235, 0
  br i1 %tobool261, label %if.then262, label %if.end263

if.then262:                                       ; preds = %if.end260
  store i32 7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

if.end263:                                        ; preds = %if.end260
  br label %if.end264

if.end264:                                        ; preds = %if.end263, %if.end230
  %236 = load ptr, ptr %auth_tag, align 8
  %tobool265 = icmp ne ptr %236, null
  br i1 %tobool265, label %if.then266, label %if.end268

if.then266:                                       ; preds = %if.end264
  %237 = load i32, ptr %tag_len, align 4
  %238 = load ptr, ptr %pkt_octet_len.addr, align 8
  %239 = load i32, ptr %238, align 4
  %add267 = add nsw i32 %239, %237
  store i32 %add267, ptr %238, align 4
  br label %if.end268

if.end268:                                        ; preds = %if.then266, %if.end264
  %240 = load i32, ptr %use_mki.addr, align 4
  %tobool269 = icmp ne i32 %240, 0
  br i1 %tobool269, label %if.then270, label %if.end272

if.then270:                                       ; preds = %if.end268
  %241 = load i32, ptr %mki_size, align 4
  %242 = load ptr, ptr %pkt_octet_len.addr, align 8
  %243 = load i32, ptr %242, align 4
  %add271 = add i32 %243, %241
  store i32 %add271, ptr %242, align 4
  br label %if.end272

if.end272:                                        ; preds = %if.then270, %if.end268
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

cleanup273:                                       ; preds = %if.end272, %if.then262, %if.then246, %if.then238, %if.then228, %if.then220, %if.then205, %if.then192, %if.then137, %if.then114, %if.then93, %if.then87, %if.end66, %if.then44, %if.then38, %if.else, %cleanup, %if.then4, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %advance_packet_index) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %mki_location) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %session_keys) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %mki_size) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %xtn_hdr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %prefix_len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %stream) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %auth_tag) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %delta) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %est) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %enc_octet_len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %auth_start) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %enc_start) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #8
  %244 = load i32, ptr %retval, align 4
  ret i32 %244
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @srtp_validate_rtp_header(ptr noundef %rtp_hdr, ptr noundef %pkt_octet_len) #0 {
entry:
  %retval = alloca i32, align 4
  %rtp_hdr.addr = alloca ptr, align 8
  %pkt_octet_len.addr = alloca ptr, align 8
  %hdr = alloca ptr, align 8
  %rtp_header_len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %xtn_hdr = alloca ptr, align 8
  %profile_len = alloca i32, align 4
  store ptr %rtp_hdr, ptr %rtp_hdr.addr, align 8
  store ptr %pkt_octet_len, ptr %pkt_octet_len.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %hdr, align 8, !annotation !3
  %0 = load ptr, ptr %rtp_hdr.addr, align 8
  store ptr %0, ptr %hdr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %rtp_header_len) #8
  store i32 -1431655766, ptr %rtp_header_len, align 4, !annotation !3
  %1 = load ptr, ptr %pkt_octet_len.addr, align 8
  %2 = load i32, ptr %1, align 4
  %cmp = icmp slt i32 %2, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %hdr, align 8
  %bf.load = load i16, ptr %3, align 4
  %bf.clear = and i16 %bf.load, 15
  %bf.cast = trunc i16 %bf.clear to i8
  %conv = zext i8 %bf.cast to i32
  %mul = mul nsw i32 4, %conv
  %add = add nsw i32 12, %mul
  store i32 %add, ptr %rtp_header_len, align 4
  %4 = load ptr, ptr %hdr, align 8
  %bf.load1 = load i16, ptr %4, align 4
  %bf.lshr = lshr i16 %bf.load1, 4
  %bf.clear2 = and i16 %bf.lshr, 1
  %bf.cast3 = trunc i16 %bf.clear2 to i8
  %conv4 = zext i8 %bf.cast3 to i32
  %cmp5 = icmp eq i32 %conv4, 1
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %5 = load i32, ptr %rtp_header_len, align 4
  %add8 = add nsw i32 %5, 4
  store i32 %add8, ptr %rtp_header_len, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  %6 = load ptr, ptr %pkt_octet_len.addr, align 8
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %rtp_header_len, align 4
  %cmp10 = icmp slt i32 %7, %8
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36

if.end13:                                         ; preds = %if.end9
  %9 = load ptr, ptr %hdr, align 8
  %bf.load14 = load i16, ptr %9, align 4
  %bf.lshr15 = lshr i16 %bf.load14, 4
  %bf.clear16 = and i16 %bf.lshr15, 1
  %bf.cast17 = trunc i16 %bf.clear16 to i8
  %conv18 = zext i8 %bf.cast17 to i32
  %cmp19 = icmp eq i32 %conv18, 1
  br i1 %cmp19, label %if.then21, label %if.end35

if.then21:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %xtn_hdr) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %xtn_hdr, align 8, !annotation !3
  %10 = load ptr, ptr %hdr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %10, i64 3
  %11 = load ptr, ptr %hdr, align 8
  %bf.load22 = load i16, ptr %11, align 4
  %bf.clear23 = and i16 %bf.load22, 15
  %bf.cast24 = trunc i16 %bf.clear23 to i8
  %conv25 = zext i8 %bf.cast24 to i32
  %idx.ext = sext i32 %conv25 to i64
  %add.ptr26 = getelementptr inbounds i32, ptr %add.ptr, i64 %idx.ext
  store ptr %add.ptr26, ptr %xtn_hdr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %profile_len) #8
  store i32 -1431655766, ptr %profile_len, align 4, !annotation !3
  %12 = load ptr, ptr %xtn_hdr, align 8
  %length = getelementptr inbounds %struct.srtp_hdr_xtnd_t, ptr %12, i32 0, i32 1
  %13 = load i16, ptr %length, align 2
  %call = call zeroext i16 @__bswap_16(i16 noundef zeroext %13)
  %conv27 = zext i16 %call to i32
  store i32 %conv27, ptr %profile_len, align 4
  %14 = load i32, ptr %profile_len, align 4
  %mul28 = mul nsw i32 %14, 4
  %15 = load i32, ptr %rtp_header_len, align 4
  %add29 = add nsw i32 %15, %mul28
  store i32 %add29, ptr %rtp_header_len, align 4
  %16 = load ptr, ptr %pkt_octet_len.addr, align 8
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %rtp_header_len, align 4
  %cmp30 = icmp slt i32 %17, %18
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then21
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.then21
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then32
  call void @llvm.lifetime.end.p0(i64 4, ptr %profile_len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %xtn_hdr) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup36 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end35

if.end35:                                         ; preds = %cleanup.cont, %if.end13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36

cleanup36:                                        ; preds = %if.end35, %cleanup, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rtp_header_len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #8
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden ptr @srtp_get_stream(ptr noundef %srtp, i32 noundef %ssrc) #0 {
entry:
  %retval = alloca ptr, align 8
  %srtp.addr = alloca ptr, align 8
  %ssrc.addr = alloca i32, align 4
  %stream = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %srtp, ptr %srtp.addr, align 8
  store i32 %ssrc, ptr %ssrc.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %stream) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %stream, align 8, !annotation !3
  %0 = load ptr, ptr %srtp.addr, align 8
  %stream_list = getelementptr inbounds %struct.srtp_ctx_t_, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %stream_list, align 8
  store ptr %1, ptr %stream, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load ptr, ptr %stream, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %stream, align 8
  %ssrc1 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %ssrc1, align 8
  %5 = load i32, ptr %ssrc.addr, align 4
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %stream, align 8
  store ptr %6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body
  %7 = load ptr, ptr %stream, align 8
  %next = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %7, i32 0, i32 13
  %8 = load ptr, ptr %next, align 8
  store ptr %8, ptr %stream, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %stream) #8
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @srtp_protect_aead(ptr noundef %ctx, ptr noundef %stream, ptr noundef %rtp_hdr, ptr noundef %pkt_octet_len, ptr noundef %session_keys, i32 noundef %use_mki) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  %rtp_hdr.addr = alloca ptr, align 8
  %pkt_octet_len.addr = alloca ptr, align 8
  %session_keys.addr = alloca ptr, align 8
  %use_mki.addr = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %enc_start = alloca ptr, align 8
  %enc_octet_len = alloca i32, align 4
  %est = alloca i64, align 8
  %delta = alloca i32, align 4
  %status = alloca i32, align 4
  %tag_len = alloca i32, align 4
  %iv = alloca %union.v128_t, align 8
  %aad_len = alloca i32, align 4
  %xtn_hdr = alloca ptr, align 8
  %mki_size = alloca i32, align 4
  %mki_location = alloca ptr, align 8
  %data = alloca %struct.srtp_event_data_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %data9 = alloca %struct.srtp_event_data_t, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %stream, ptr %stream.addr, align 8
  store ptr %rtp_hdr, ptr %rtp_hdr.addr, align 8
  store ptr %pkt_octet_len, ptr %pkt_octet_len.addr, align 8
  store ptr %session_keys, ptr %session_keys.addr, align 8
  store i32 %use_mki, ptr %use_mki.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %hdr, align 8, !annotation !3
  %0 = load ptr, ptr %rtp_hdr.addr, align 8
  store ptr %0, ptr %hdr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %enc_start) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %enc_start, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %enc_octet_len) #8
  store i32 -1431655766, ptr %enc_octet_len, align 4, !annotation !3
  store i32 0, ptr %enc_octet_len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %est) #8
  store i64 -6148914691236517206, ptr %est, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %delta) #8
  store i32 -1431655766, ptr %delta, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag_len) #8
  store i32 -1431655766, ptr %tag_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 16, ptr %iv) #8
  %1 = getelementptr inbounds %union.v128_t, ptr %iv, i32 0, i32 0
  %2 = getelementptr inbounds [2 x i64], ptr %1, i64 0, i64 0
  store i64 -6148914691236517206, ptr %2, align 8, !annotation !3
  %3 = getelementptr inbounds [2 x i64], ptr %1, i64 0, i64 1
  store i64 -6148914691236517206, ptr %3, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %aad_len) #8
  store i32 -1431655766, ptr %aad_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %xtn_hdr) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %xtn_hdr, align 8, !annotation !3
  store ptr null, ptr %xtn_hdr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %mki_size) #8
  store i32 -1431655766, ptr %mki_size, align 4, !annotation !3
  store i32 0, ptr %mki_size, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mki_location) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %mki_location, align 8, !annotation !3
  store ptr null, ptr %mki_location, align 8
  %4 = load i32, ptr @mod_srtp, align 8
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.42, ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %session_keys.addr, align 8
  %limit = getelementptr inbounds %struct.srtp_session_keys_t, ptr %6, i32 0, i32 9
  %7 = load ptr, ptr %limit, align 8
  %call = call i32 @srtp_key_limit_update(ptr noundef %7)
  switch i32 %call, label %sw.default [
    i32 0, label %sw.epilog
    i32 2, label %sw.bb
    i32 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end
  %8 = load ptr, ptr @srtp_event_handler, align 8
  %tobool1 = icmp ne ptr %8, null
  br i1 %tobool1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 16, ptr %data) #8
  %9 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 0
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %9, align 8, !annotation !3
  %10 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 1
  store i32 -1431655766, ptr %10, align 8, !annotation !3
  %11 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 2
  store i32 -1431655766, ptr %11, align 4, !annotation !3
  %12 = load ptr, ptr %ctx.addr, align 8
  %session = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 0
  store ptr %12, ptr %session, align 8
  %13 = load ptr, ptr %stream.addr, align 8
  %ssrc = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %ssrc, align 8
  %call3 = call i32 @__bswap_32(i32 noundef %14)
  %ssrc4 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 1
  store i32 %call3, ptr %ssrc4, align 8
  %event = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 2
  store i32 2, ptr %event, align 4
  %15 = load ptr, ptr @srtp_event_handler, align 8
  call void %15(ptr noundef %data)
  call void @llvm.lifetime.end.p0(i64 16, ptr %data) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %sw.bb
  store i32 15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  br label %sw.default

sw.default:                                       ; preds = %if.end, %sw.bb6
  %16 = load ptr, ptr @srtp_event_handler, align 8
  %tobool7 = icmp ne ptr %16, null
  br i1 %tobool7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %sw.default
  call void @llvm.lifetime.start.p0(i64 16, ptr %data9) #8
  %17 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data9, i32 0, i32 0
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %17, align 8, !annotation !3
  %18 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data9, i32 0, i32 1
  store i32 -1431655766, ptr %18, align 8, !annotation !3
  %19 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data9, i32 0, i32 2
  store i32 -1431655766, ptr %19, align 4, !annotation !3
  %20 = load ptr, ptr %ctx.addr, align 8
  %session10 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data9, i32 0, i32 0
  store ptr %20, ptr %session10, align 8
  %21 = load ptr, ptr %stream.addr, align 8
  %ssrc11 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %ssrc11, align 8
  %call12 = call i32 @__bswap_32(i32 noundef %22)
  %ssrc13 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data9, i32 0, i32 1
  store i32 %call12, ptr %ssrc13, align 8
  %event14 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data9, i32 0, i32 2
  store i32 1, ptr %event14, align 4
  %23 = load ptr, ptr @srtp_event_handler, align 8
  call void %23(ptr noundef %data9)
  call void @llvm.lifetime.end.p0(i64 16, ptr %data9) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end15, %if.end
  %24 = load ptr, ptr %session_keys.addr, align 8
  %rtp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %rtp_auth, align 8
  %call16 = call i32 @srtp_auth_get_tag_length(ptr noundef %25)
  store i32 %call16, ptr %tag_len, align 4
  %26 = load ptr, ptr %hdr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %26, i64 3
  %27 = load ptr, ptr %hdr, align 8
  %bf.load = load i16, ptr %27, align 4
  %bf.clear = and i16 %bf.load, 15
  %bf.cast = trunc i16 %bf.clear to i8
  %conv = zext i8 %bf.cast to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr17 = getelementptr inbounds i32, ptr %add.ptr, i64 %idx.ext
  store ptr %add.ptr17, ptr %enc_start, align 8
  %28 = load ptr, ptr %hdr, align 8
  %bf.load18 = load i16, ptr %28, align 4
  %bf.lshr = lshr i16 %bf.load18, 4
  %bf.clear19 = and i16 %bf.lshr, 1
  %bf.cast20 = trunc i16 %bf.clear19 to i8
  %conv21 = zext i8 %bf.cast20 to i32
  %cmp = icmp eq i32 %conv21, 1
  br i1 %cmp, label %if.then23, label %if.end28

if.then23:                                        ; preds = %sw.epilog
  %29 = load ptr, ptr %enc_start, align 8
  store ptr %29, ptr %xtn_hdr, align 8
  %30 = load ptr, ptr %xtn_hdr, align 8
  %length = getelementptr inbounds %struct.srtp_hdr_xtnd_t, ptr %30, i32 0, i32 1
  %31 = load i16, ptr %length, align 2
  %call24 = call zeroext i16 @__bswap_16(i16 noundef zeroext %31)
  %conv25 = zext i16 %call24 to i32
  %add = add nsw i32 %conv25, 1
  %32 = load ptr, ptr %enc_start, align 8
  %idx.ext26 = sext i32 %add to i64
  %add.ptr27 = getelementptr inbounds i32, ptr %32, i64 %idx.ext26
  store ptr %add.ptr27, ptr %enc_start, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %sw.epilog
  %33 = load ptr, ptr %enc_start, align 8
  %34 = load ptr, ptr %hdr, align 8
  %35 = load ptr, ptr %pkt_octet_len.addr, align 8
  %36 = load i32, ptr %35, align 4
  %idx.ext29 = zext i32 %36 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %34, i64 %idx.ext29
  %cmp31 = icmp ule ptr %33, %add.ptr30
  br i1 %cmp31, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end28
  store i32 21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %37 = load ptr, ptr %pkt_octet_len.addr, align 8
  %38 = load i32, ptr %37, align 4
  %conv35 = zext i32 %38 to i64
  %39 = load ptr, ptr %enc_start, align 8
  %40 = load ptr, ptr %hdr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %39 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %40 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %conv35, %sub.ptr.sub
  %conv36 = trunc i64 %sub to i32
  store i32 %conv36, ptr %enc_octet_len, align 4
  %41 = load i32, ptr %enc_octet_len, align 4
  %cmp37 = icmp slt i32 %41, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end34
  store i32 21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.end34
  %42 = load ptr, ptr %stream.addr, align 8
  %rtp_rdbx = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %42, i32 0, i32 3
  %43 = load ptr, ptr %hdr, align 8
  %seq = getelementptr inbounds %struct.srtp_hdr_t, ptr %43, i32 0, i32 1
  %44 = load i16, ptr %seq, align 2
  %call41 = call zeroext i16 @__bswap_16(i16 noundef zeroext %44)
  %call42 = call i32 @srtp_rdbx_estimate_index(ptr noundef %rtp_rdbx, ptr noundef %est, i16 noundef zeroext %call41)
  store i32 %call42, ptr %delta, align 4
  %45 = load ptr, ptr %stream.addr, align 8
  %rtp_rdbx43 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %45, i32 0, i32 3
  %46 = load i32, ptr %delta, align 4
  %call44 = call i32 @srtp_rdbx_check(ptr noundef %rtp_rdbx43, i32 noundef %46)
  store i32 %call44, ptr %status, align 4
  %47 = load i32, ptr %status, align 4
  %tobool45 = icmp ne i32 %47, 0
  br i1 %tobool45, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.end40
  %48 = load i32, ptr %status, align 4
  %cmp47 = icmp ne i32 %48, 9
  br i1 %cmp47, label %if.then50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then46
  %49 = load ptr, ptr %stream.addr, align 8
  %allow_repeat_tx = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %49, i32 0, i32 8
  %50 = load i32, ptr %allow_repeat_tx, align 8
  %tobool49 = icmp ne i32 %50, 0
  br i1 %tobool49, label %if.end51, label %if.then50

if.then50:                                        ; preds = %lor.lhs.false, %if.then46
  %51 = load i32, ptr %status, align 4
  store i32 %51, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end51:                                         ; preds = %lor.lhs.false
  br label %if.end54

if.else:                                          ; preds = %if.end40
  %52 = load ptr, ptr %stream.addr, align 8
  %rtp_rdbx52 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %52, i32 0, i32 3
  %53 = load i32, ptr %delta, align 4
  %call53 = call i32 @srtp_rdbx_add_index(ptr noundef %rtp_rdbx52, i32 noundef %53)
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.end51
  %54 = load i32, ptr @mod_srtp, align 8
  %tobool55 = icmp ne i32 %54, 0
  br i1 %tobool55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end54
  %55 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %56 = load i64, ptr %est, align 8
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.29, ptr noundef %55, i64 noundef %56)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end54
  %57 = load ptr, ptr %session_keys.addr, align 8
  %58 = load ptr, ptr %hdr, align 8
  call void @srtp_calc_aead_iv(ptr noundef %57, ptr noundef %iv, ptr noundef %est, ptr noundef %58)
  %59 = load i64, ptr %est, align 8
  %shl = shl i64 %59, 16
  %call58 = call i64 @be64_to_cpu(i64 noundef %shl)
  store i64 %call58, ptr %est, align 8
  %60 = load ptr, ptr %session_keys.addr, align 8
  %rtp_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %rtp_cipher, align 8
  %call59 = call i32 @srtp_cipher_set_iv(ptr noundef %61, ptr noundef %iv, i32 noundef 0)
  store i32 %call59, ptr %status, align 4
  %62 = load i32, ptr %status, align 4
  %tobool60 = icmp ne i32 %62, 0
  br i1 %tobool60, label %if.end68, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end57
  %63 = load ptr, ptr %session_keys.addr, align 8
  %rtp_xtn_hdr_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %63, i32 0, i32 1
  %64 = load ptr, ptr %rtp_xtn_hdr_cipher, align 8
  %tobool61 = icmp ne ptr %64, null
  br i1 %tobool61, label %if.then62, label %if.end68

if.then62:                                        ; preds = %land.lhs.true
  %arrayidx = getelementptr inbounds [4 x i32], ptr %iv, i64 0, i64 0
  store i32 0, ptr %arrayidx, align 8
  %65 = load ptr, ptr %hdr, align 8
  %ssrc63 = getelementptr inbounds %struct.srtp_hdr_t, ptr %65, i32 0, i32 3
  %66 = load i32, ptr %ssrc63, align 4
  %arrayidx64 = getelementptr inbounds [4 x i32], ptr %iv, i64 0, i64 1
  store i32 %66, ptr %arrayidx64, align 4
  %67 = load i64, ptr %est, align 8
  %arrayidx65 = getelementptr inbounds [2 x i64], ptr %iv, i64 0, i64 1
  store i64 %67, ptr %arrayidx65, align 8
  %68 = load ptr, ptr %session_keys.addr, align 8
  %rtp_xtn_hdr_cipher66 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %68, i32 0, i32 1
  %69 = load ptr, ptr %rtp_xtn_hdr_cipher66, align 8
  %call67 = call i32 @srtp_cipher_set_iv(ptr noundef %69, ptr noundef %iv, i32 noundef 0)
  store i32 %call67, ptr %status, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %land.lhs.true, %if.end57
  %70 = load i32, ptr %status, align 4
  %tobool69 = icmp ne i32 %70, 0
  br i1 %tobool69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end68
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end71:                                         ; preds = %if.end68
  %71 = load ptr, ptr %xtn_hdr, align 8
  %tobool72 = icmp ne ptr %71, null
  br i1 %tobool72, label %land.lhs.true73, label %if.end81

land.lhs.true73:                                  ; preds = %if.end71
  %72 = load ptr, ptr %session_keys.addr, align 8
  %rtp_xtn_hdr_cipher74 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %72, i32 0, i32 1
  %73 = load ptr, ptr %rtp_xtn_hdr_cipher74, align 8
  %tobool75 = icmp ne ptr %73, null
  br i1 %tobool75, label %if.then76, label %if.end81

if.then76:                                        ; preds = %land.lhs.true73
  %74 = load ptr, ptr %stream.addr, align 8
  %75 = load ptr, ptr %xtn_hdr, align 8
  %76 = load ptr, ptr %session_keys.addr, align 8
  %call77 = call i32 @srtp_process_header_encryption(ptr noundef %74, ptr noundef %75, ptr noundef %76)
  store i32 %call77, ptr %status, align 4
  %77 = load i32, ptr %status, align 4
  %tobool78 = icmp ne i32 %77, 0
  br i1 %tobool78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.then76
  %78 = load i32, ptr %status, align 4
  store i32 %78, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end80:                                         ; preds = %if.then76
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %land.lhs.true73, %if.end71
  %79 = load ptr, ptr %enc_start, align 8
  %80 = load ptr, ptr %hdr, align 8
  %sub.ptr.lhs.cast82 = ptrtoint ptr %79 to i64
  %sub.ptr.rhs.cast83 = ptrtoint ptr %80 to i64
  %sub.ptr.sub84 = sub i64 %sub.ptr.lhs.cast82, %sub.ptr.rhs.cast83
  %conv85 = trunc i64 %sub.ptr.sub84 to i32
  store i32 %conv85, ptr %aad_len, align 4
  %81 = load ptr, ptr %session_keys.addr, align 8
  %rtp_cipher86 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %rtp_cipher86, align 8
  %83 = load ptr, ptr %hdr, align 8
  %84 = load i32, ptr %aad_len, align 4
  %call87 = call i32 @srtp_cipher_set_aad(ptr noundef %82, ptr noundef %83, i32 noundef %84)
  store i32 %call87, ptr %status, align 4
  %85 = load i32, ptr %status, align 4
  %tobool88 = icmp ne i32 %85, 0
  br i1 %tobool88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.end81
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end90:                                         ; preds = %if.end81
  %86 = load ptr, ptr %session_keys.addr, align 8
  %rtp_cipher91 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %rtp_cipher91, align 8
  %88 = load ptr, ptr %enc_start, align 8
  %call92 = call i32 @srtp_cipher_encrypt(ptr noundef %87, ptr noundef %88, ptr noundef %enc_octet_len)
  store i32 %call92, ptr %status, align 4
  %89 = load i32, ptr %status, align 4
  %tobool93 = icmp ne i32 %89, 0
  br i1 %tobool93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.end90
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end95:                                         ; preds = %if.end90
  %90 = load ptr, ptr %session_keys.addr, align 8
  %rtp_cipher96 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %rtp_cipher96, align 8
  %92 = load ptr, ptr %enc_start, align 8
  %93 = load i32, ptr %enc_octet_len, align 4
  %idx.ext97 = sext i32 %93 to i64
  %add.ptr98 = getelementptr inbounds i8, ptr %92, i64 %idx.ext97
  %call99 = call i32 @srtp_cipher_get_tag(ptr noundef %91, ptr noundef %add.ptr98, ptr noundef %tag_len)
  store i32 %call99, ptr %status, align 4
  %94 = load i32, ptr %status, align 4
  %tobool100 = icmp ne i32 %94, 0
  br i1 %tobool100, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.end95
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end102:                                        ; preds = %if.end95
  %95 = load ptr, ptr %hdr, align 8
  %96 = load ptr, ptr %pkt_octet_len.addr, align 8
  %97 = load i32, ptr %96, align 4
  %idx.ext103 = zext i32 %97 to i64
  %add.ptr104 = getelementptr inbounds i8, ptr %95, i64 %idx.ext103
  %98 = load i32, ptr %tag_len, align 4
  %idx.ext105 = zext i32 %98 to i64
  %add.ptr106 = getelementptr inbounds i8, ptr %add.ptr104, i64 %idx.ext105
  store ptr %add.ptr106, ptr %mki_location, align 8
  %99 = load ptr, ptr %mki_location, align 8
  %100 = load ptr, ptr %session_keys.addr, align 8
  %101 = load i32, ptr %use_mki.addr, align 4
  %call107 = call i32 @srtp_inject_mki(ptr noundef %99, ptr noundef %100, i32 noundef %101)
  store i32 %call107, ptr %mki_size, align 4
  %102 = load i32, ptr %tag_len, align 4
  %103 = load ptr, ptr %pkt_octet_len.addr, align 8
  %104 = load i32, ptr %103, align 4
  %add108 = add i32 %104, %102
  store i32 %add108, ptr %103, align 4
  %105 = load i32, ptr %mki_size, align 4
  %106 = load ptr, ptr %pkt_octet_len.addr, align 8
  %107 = load i32, ptr %106, align 4
  %add109 = add i32 %107, %105
  store i32 %add109, ptr %106, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %if.then101, %if.then94, %if.then89, %if.then79, %if.then70, %if.then50, %if.then39, %if.then33, %if.end5
  call void @llvm.lifetime.end.p0(i64 8, ptr %mki_location) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %mki_size) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %xtn_hdr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %aad_len) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %iv) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %delta) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %est) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %enc_octet_len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %enc_start) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #8
  %108 = load i32, ptr %retval, align 4
  ret i32 %108
}

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_key_limit_update(ptr noundef) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid ssp
define internal zeroext i16 @__bswap_16(i16 noundef zeroext %__bsx) #5 {
entry:
  %__bsx.addr = alloca i16, align 2
  store i16 %__bsx, ptr %__bsx.addr, align 2
  %0 = load i16, ptr %__bsx.addr, align 2
  %conv = zext i16 %0 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %1 = load i16, ptr %__bsx.addr, align 2
  %conv1 = zext i16 %1 to i32
  %and2 = and i32 %conv1, 255
  %shl = shl i32 %and2, 8
  %or = or i32 %and, %shl
  %conv3 = trunc i32 %or to i16
  ret i16 %conv3
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @srtp_get_est_pkt_index(ptr noundef %hdr, ptr noundef %stream, ptr noundef %est, ptr noundef %delta) #0 {
entry:
  %hdr.addr = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  %est.addr = alloca ptr, align 8
  %delta.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  store ptr %hdr, ptr %hdr.addr, align 8
  store ptr %stream, ptr %stream.addr, align 8
  store ptr %est, ptr %est.addr, align 8
  store ptr %delta, ptr %delta.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #8
  store i32 -1431655766, ptr %result, align 4, !annotation !3
  store i32 0, ptr %result, align 4
  %0 = load ptr, ptr %stream.addr, align 8
  %pending_roc = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %0, i32 0, i32 12
  %1 = load i32, ptr %pending_roc, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %stream.addr, align 8
  %rtp_rdbx = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %stream.addr, align 8
  %pending_roc1 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %3, i32 0, i32 12
  %4 = load i32, ptr %pending_roc1, align 4
  %5 = load ptr, ptr %est.addr, align 8
  %6 = load ptr, ptr %hdr.addr, align 8
  %seq = getelementptr inbounds %struct.srtp_hdr_t, ptr %6, i32 0, i32 1
  %7 = load i16, ptr %seq, align 2
  %call = call zeroext i16 @__bswap_16(i16 noundef zeroext %7)
  %8 = load ptr, ptr %delta.addr, align 8
  %call2 = call i32 @srtp_estimate_index(ptr noundef %rtp_rdbx, i32 noundef %4, ptr noundef %5, i16 noundef zeroext %call, ptr noundef %8)
  store i32 %call2, ptr %result, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %stream.addr, align 8
  %rtp_rdbx3 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %est.addr, align 8
  %11 = load ptr, ptr %hdr.addr, align 8
  %seq4 = getelementptr inbounds %struct.srtp_hdr_t, ptr %11, i32 0, i32 1
  %12 = load i16, ptr %seq4, align 2
  %call5 = call zeroext i16 @__bswap_16(i16 noundef zeroext %12)
  %call6 = call i32 @srtp_rdbx_estimate_index(ptr noundef %rtp_rdbx3, ptr noundef %10, i16 noundef zeroext %call5)
  %13 = load ptr, ptr %delta.addr, align 8
  store i32 %call6, ptr %13, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, ptr @mod_srtp, align 8
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %15 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %16 = load ptr, ptr %est.addr, align 8
  %17 = load i64, ptr %16, align 8
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.34, ptr noundef %15, i64 noundef %17)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %18 = load i32, ptr %result, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #8
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_rdbx_set_roc_seq(ptr noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_rdbx_add_index(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_rdbx_check(ptr noundef, i32 noundef) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid ssp
define internal i64 @be64_to_cpu(i64 noundef %v) #5 {
entry:
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8
  %0 = load i64, ptr %v.addr, align 8
  %shr = lshr i64 %0, 32
  %conv = trunc i64 %shr to i32
  %call = call i32 @__bswap_32(i32 noundef %conv)
  %conv1 = zext i32 %call to i64
  %1 = load i64, ptr %v.addr, align 8
  %conv2 = trunc i64 %1 to i32
  %call3 = call i32 @__bswap_32(i32 noundef %conv2)
  %conv4 = zext i32 %call3 to i64
  %shl = shl i64 %conv4, 32
  %or = or i64 %conv1, %shl
  store i64 %or, ptr %v.addr, align 8
  %2 = load i64, ptr %v.addr, align 8
  ret i64 %2
}

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_cipher_set_iv(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_auth_get_prefix_length(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_cipher_output(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @srtp_process_header_encryption(ptr noundef %stream, ptr noundef %xtn_hdr, ptr noundef %session_keys) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca ptr, align 8
  %xtn_hdr.addr = alloca ptr, align 8
  %session_keys.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %keystream = alloca [257 x i8], align 16
  %keystream_pos = alloca i32, align 4
  %xtn_hdr_data = alloca ptr, align 8
  %xtn_hdr_end = alloca ptr, align 8
  %xid = alloca i8, align 1
  %xlen = alloca i32, align 4
  %xlen_with_header = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %xid64 = alloca i8, align 1
  %xlen65 = alloca i32, align 4
  %xlen_with_header68 = alloca i32, align 4
  store ptr %stream, ptr %stream.addr, align 8
  store ptr %xtn_hdr, ptr %xtn_hdr.addr, align 8
  store ptr %session_keys, ptr %session_keys.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 257, ptr %keystream) #8
  call void @llvm.memset.p0.i64(ptr align 16 %keystream, i8 -86, i64 257, i1 false), !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %keystream_pos) #8
  store i32 -1431655766, ptr %keystream_pos, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %xtn_hdr_data) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %xtn_hdr_data, align 8, !annotation !3
  %0 = load ptr, ptr %xtn_hdr.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 4
  store ptr %add.ptr, ptr %xtn_hdr_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %xtn_hdr_end) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %xtn_hdr_end, align 8, !annotation !3
  %1 = load ptr, ptr %xtn_hdr_data, align 8
  %2 = load ptr, ptr %xtn_hdr.addr, align 8
  %length = getelementptr inbounds %struct.srtp_hdr_xtnd_t, ptr %2, i32 0, i32 1
  %3 = load i16, ptr %length, align 2
  %call = call zeroext i16 @__bswap_16(i16 noundef zeroext %3)
  %conv = zext i16 %call to i64
  %mul = mul i64 %conv, 4
  %add.ptr1 = getelementptr inbounds i8, ptr %1, i64 %mul
  store ptr %add.ptr1, ptr %xtn_hdr_end, align 8
  %4 = load ptr, ptr %xtn_hdr.addr, align 8
  %profile_specific = getelementptr inbounds %struct.srtp_hdr_xtnd_t, ptr %4, i32 0, i32 0
  %5 = load i16, ptr %profile_specific, align 2
  %call2 = call zeroext i16 @__bswap_16(i16 noundef zeroext %5)
  %conv3 = zext i16 %call2 to i32
  %cmp = icmp eq i32 %conv3, 48862
  br i1 %cmp, label %if.then, label %if.else51

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.then
  %6 = load ptr, ptr %xtn_hdr_data, align 8
  %7 = load ptr, ptr %xtn_hdr_end, align 8
  %cmp5 = icmp ult ptr %6, %7
  br i1 %cmp5, label %while.body, label %while.end50

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %xid) #8
  store i8 -86, ptr %xid, align 1, !annotation !3
  %8 = load ptr, ptr %xtn_hdr_data, align 8
  %9 = load i8, ptr %8, align 1
  %conv7 = zext i8 %9 to i32
  %and = and i32 %conv7, 240
  %shr = ashr i32 %and, 4
  %conv8 = trunc i32 %shr to i8
  store i8 %conv8, ptr %xid, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %xlen) #8
  store i32 -1431655766, ptr %xlen, align 4, !annotation !3
  %10 = load ptr, ptr %xtn_hdr_data, align 8
  %11 = load i8, ptr %10, align 1
  %conv9 = zext i8 %11 to i32
  %and10 = and i32 %conv9, 15
  %add = add nsw i32 %and10, 1
  store i32 %add, ptr %xlen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %xlen_with_header) #8
  store i32 -1431655766, ptr %xlen_with_header, align 4, !annotation !3
  %12 = load i32, ptr %xlen, align 4
  %add11 = add i32 1, %12
  store i32 %add11, ptr %xlen_with_header, align 4
  %13 = load ptr, ptr %xtn_hdr_data, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %xtn_hdr_data, align 8
  %14 = load ptr, ptr %xtn_hdr_data, align 8
  %15 = load i32, ptr %xlen, align 4
  %idx.ext = zext i32 %15 to i64
  %add.ptr12 = getelementptr inbounds i8, ptr %14, i64 %idx.ext
  %16 = load ptr, ptr %xtn_hdr_end, align 8
  %cmp13 = icmp ugt ptr %add.ptr12, %16
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %while.body
  store i32 21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body
  %17 = load i8, ptr %xid, align 1
  %conv16 = zext i8 %17 to i32
  %cmp17 = icmp eq i32 %conv16, 15
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %18 = load ptr, ptr %session_keys.addr, align 8
  %rtp_xtn_hdr_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %rtp_xtn_hdr_cipher, align 8
  %arraydecay = getelementptr inbounds [257 x i8], ptr %keystream, i64 0, i64 0
  %call21 = call i32 @srtp_cipher_output(ptr noundef %19, ptr noundef %arraydecay, ptr noundef %xlen_with_header)
  store i32 %call21, ptr %status, align 4
  %20 = load i32, ptr %status, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end20
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %21 = load ptr, ptr %stream.addr, align 8
  %22 = load i8, ptr %xid, align 1
  %conv24 = zext i8 %22 to i32
  %call25 = call i32 @srtp_protect_extension_header(ptr noundef %21, i32 noundef %conv24)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end23
  store i32 1, ptr %keystream_pos, align 4
  br label %while.cond28

while.cond28:                                     ; preds = %while.body31, %if.then27
  %23 = load i32, ptr %xlen, align 4
  %cmp29 = icmp ugt i32 %23, 0
  br i1 %cmp29, label %while.body31, label %while.end

while.body31:                                     ; preds = %while.cond28
  %24 = load i32, ptr %keystream_pos, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %keystream_pos, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [257 x i8], ptr %keystream, i64 0, i64 %idxprom
  %25 = load i8, ptr %arrayidx, align 1
  %conv32 = zext i8 %25 to i32
  %26 = load ptr, ptr %xtn_hdr_data, align 8
  %27 = load i8, ptr %26, align 1
  %conv33 = zext i8 %27 to i32
  %xor = xor i32 %conv33, %conv32
  %conv34 = trunc i32 %xor to i8
  store i8 %conv34, ptr %26, align 1
  %28 = load ptr, ptr %xtn_hdr_data, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr35, ptr %xtn_hdr_data, align 8
  %29 = load i32, ptr %xlen, align 4
  %dec = add i32 %29, -1
  store i32 %dec, ptr %xlen, align 4
  br label %while.cond28, !llvm.loop !14

while.end:                                        ; preds = %while.cond28
  br label %if.end38

if.else:                                          ; preds = %if.end23
  %30 = load i32, ptr %xlen, align 4
  %31 = load ptr, ptr %xtn_hdr_data, align 8
  %idx.ext36 = zext i32 %30 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %31, i64 %idx.ext36
  store ptr %add.ptr37, ptr %xtn_hdr_data, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.else, %while.end
  br label %while.cond39

while.cond39:                                     ; preds = %while.body45, %if.end38
  %32 = load ptr, ptr %xtn_hdr_data, align 8
  %33 = load ptr, ptr %xtn_hdr_end, align 8
  %cmp40 = icmp ult ptr %32, %33
  br i1 %cmp40, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond39
  %34 = load ptr, ptr %xtn_hdr_data, align 8
  %35 = load i8, ptr %34, align 1
  %conv42 = zext i8 %35 to i32
  %cmp43 = icmp eq i32 %conv42, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond39
  %36 = phi i1 [ false, %while.cond39 ], [ %cmp43, %land.rhs ]
  br i1 %36, label %while.body45, label %while.end47

while.body45:                                     ; preds = %land.end
  %37 = load ptr, ptr %xtn_hdr_data, align 8
  %incdec.ptr46 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr46, ptr %xtn_hdr_data, align 8
  br label %while.cond39, !llvm.loop !15

while.end47:                                      ; preds = %land.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end47, %if.then22, %if.then19, %if.then15
  call void @llvm.lifetime.end.p0(i64 4, ptr %xlen_with_header) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %xlen) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %xid) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup127 [
    i32 0, label %cleanup.cont
    i32 3, label %while.end50
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !llvm.loop !16

while.end50:                                      ; preds = %cleanup, %while.cond
  br label %if.end126

if.else51:                                        ; preds = %entry
  %38 = load ptr, ptr %xtn_hdr.addr, align 8
  %profile_specific52 = getelementptr inbounds %struct.srtp_hdr_xtnd_t, ptr %38, i32 0, i32 0
  %39 = load i16, ptr %profile_specific52, align 2
  %call53 = call zeroext i16 @__bswap_16(i16 noundef zeroext %39)
  %conv54 = zext i16 %call53 to i32
  %and55 = and i32 %conv54, 65520
  %cmp56 = icmp eq i32 %and55, 4096
  br i1 %cmp56, label %if.then58, label %if.else124

if.then58:                                        ; preds = %if.else51
  br label %while.cond59

while.cond59:                                     ; preds = %cleanup.cont122, %if.then58
  %40 = load ptr, ptr %xtn_hdr_data, align 8
  %add.ptr60 = getelementptr inbounds i8, ptr %40, i64 1
  %41 = load ptr, ptr %xtn_hdr_end, align 8
  %cmp61 = icmp ult ptr %add.ptr60, %41
  br i1 %cmp61, label %while.body63, label %while.end123

while.body63:                                     ; preds = %while.cond59
  call void @llvm.lifetime.start.p0(i64 1, ptr %xid64) #8
  store i8 -86, ptr %xid64, align 1, !annotation !3
  %42 = load ptr, ptr %xtn_hdr_data, align 8
  %43 = load i8, ptr %42, align 1
  store i8 %43, ptr %xid64, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %xlen65) #8
  store i32 -1431655766, ptr %xlen65, align 4, !annotation !3
  %44 = load ptr, ptr %xtn_hdr_data, align 8
  %add.ptr66 = getelementptr inbounds i8, ptr %44, i64 1
  %45 = load i8, ptr %add.ptr66, align 1
  %conv67 = zext i8 %45 to i32
  store i32 %conv67, ptr %xlen65, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %xlen_with_header68) #8
  store i32 -1431655766, ptr %xlen_with_header68, align 4, !annotation !3
  %46 = load i32, ptr %xlen65, align 4
  %add69 = add i32 2, %46
  store i32 %add69, ptr %xlen_with_header68, align 4
  %47 = load ptr, ptr %xtn_hdr_data, align 8
  %add.ptr70 = getelementptr inbounds i8, ptr %47, i64 2
  store ptr %add.ptr70, ptr %xtn_hdr_data, align 8
  %48 = load ptr, ptr %xtn_hdr_data, align 8
  %49 = load i32, ptr %xlen65, align 4
  %idx.ext71 = zext i32 %49 to i64
  %add.ptr72 = getelementptr inbounds i8, ptr %48, i64 %idx.ext71
  %50 = load ptr, ptr %xtn_hdr_end, align 8
  %cmp73 = icmp ugt ptr %add.ptr72, %50
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %while.body63
  store i32 21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup118

if.end76:                                         ; preds = %while.body63
  %51 = load ptr, ptr %session_keys.addr, align 8
  %rtp_xtn_hdr_cipher77 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %rtp_xtn_hdr_cipher77, align 8
  %arraydecay78 = getelementptr inbounds [257 x i8], ptr %keystream, i64 0, i64 0
  %call79 = call i32 @srtp_cipher_output(ptr noundef %52, ptr noundef %arraydecay78, ptr noundef %xlen_with_header68)
  store i32 %call79, ptr %status, align 4
  %53 = load i32, ptr %status, align 4
  %tobool80 = icmp ne i32 %53, 0
  br i1 %tobool80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end76
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup118

if.end82:                                         ; preds = %if.end76
  %54 = load i32, ptr %xlen65, align 4
  %cmp83 = icmp ugt i32 %54, 0
  br i1 %cmp83, label %land.lhs.true, label %if.else103

land.lhs.true:                                    ; preds = %if.end82
  %55 = load ptr, ptr %stream.addr, align 8
  %56 = load i8, ptr %xid64, align 1
  %conv85 = zext i8 %56 to i32
  %call86 = call i32 @srtp_protect_extension_header(ptr noundef %55, i32 noundef %conv85)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then88, label %if.else103

if.then88:                                        ; preds = %land.lhs.true
  store i32 2, ptr %keystream_pos, align 4
  br label %while.cond89

while.cond89:                                     ; preds = %while.body92, %if.then88
  %57 = load i32, ptr %xlen65, align 4
  %cmp90 = icmp ugt i32 %57, 0
  br i1 %cmp90, label %while.body92, label %while.end102

while.body92:                                     ; preds = %while.cond89
  %58 = load i32, ptr %keystream_pos, align 4
  %inc93 = add nsw i32 %58, 1
  store i32 %inc93, ptr %keystream_pos, align 4
  %idxprom94 = sext i32 %58 to i64
  %arrayidx95 = getelementptr inbounds [257 x i8], ptr %keystream, i64 0, i64 %idxprom94
  %59 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %59 to i32
  %60 = load ptr, ptr %xtn_hdr_data, align 8
  %61 = load i8, ptr %60, align 1
  %conv97 = zext i8 %61 to i32
  %xor98 = xor i32 %conv97, %conv96
  %conv99 = trunc i32 %xor98 to i8
  store i8 %conv99, ptr %60, align 1
  %62 = load ptr, ptr %xtn_hdr_data, align 8
  %incdec.ptr100 = getelementptr inbounds i8, ptr %62, i32 1
  store ptr %incdec.ptr100, ptr %xtn_hdr_data, align 8
  %63 = load i32, ptr %xlen65, align 4
  %dec101 = add i32 %63, -1
  store i32 %dec101, ptr %xlen65, align 4
  br label %while.cond89, !llvm.loop !17

while.end102:                                     ; preds = %while.cond89
  br label %if.end106

if.else103:                                       ; preds = %land.lhs.true, %if.end82
  %64 = load i32, ptr %xlen65, align 4
  %65 = load ptr, ptr %xtn_hdr_data, align 8
  %idx.ext104 = zext i32 %64 to i64
  %add.ptr105 = getelementptr inbounds i8, ptr %65, i64 %idx.ext104
  store ptr %add.ptr105, ptr %xtn_hdr_data, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.else103, %while.end102
  br label %while.cond107

while.cond107:                                    ; preds = %while.body115, %if.end106
  %66 = load ptr, ptr %xtn_hdr_data, align 8
  %67 = load ptr, ptr %xtn_hdr_end, align 8
  %cmp108 = icmp ult ptr %66, %67
  br i1 %cmp108, label %land.rhs110, label %land.end114

land.rhs110:                                      ; preds = %while.cond107
  %68 = load ptr, ptr %xtn_hdr_data, align 8
  %69 = load i8, ptr %68, align 1
  %conv111 = zext i8 %69 to i32
  %cmp112 = icmp eq i32 %conv111, 0
  br label %land.end114

land.end114:                                      ; preds = %land.rhs110, %while.cond107
  %70 = phi i1 [ false, %while.cond107 ], [ %cmp112, %land.rhs110 ]
  br i1 %70, label %while.body115, label %while.end117

while.body115:                                    ; preds = %land.end114
  %71 = load ptr, ptr %xtn_hdr_data, align 8
  %incdec.ptr116 = getelementptr inbounds i8, ptr %71, i32 1
  store ptr %incdec.ptr116, ptr %xtn_hdr_data, align 8
  br label %while.cond107, !llvm.loop !18

while.end117:                                     ; preds = %land.end114
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup118

cleanup118:                                       ; preds = %while.end117, %if.then81, %if.then75
  call void @llvm.lifetime.end.p0(i64 4, ptr %xlen_with_header68) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %xlen65) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %xid64) #8
  %cleanup.dest121 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest121, label %cleanup127 [
    i32 0, label %cleanup.cont122
  ]

cleanup.cont122:                                  ; preds = %cleanup118
  br label %while.cond59, !llvm.loop !19

while.end123:                                     ; preds = %while.cond59
  br label %if.end125

if.else124:                                       ; preds = %if.else51
  store i32 21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup127

if.end125:                                        ; preds = %while.end123
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %while.end50
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup127

cleanup127:                                       ; preds = %if.end126, %if.else124, %cleanup118, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %xtn_hdr_end) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %xtn_hdr_data) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %keystream_pos) #8
  call void @llvm.lifetime.end.p0(i64 257, ptr %keystream) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  %72 = load i32, ptr %retval, align 4
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_cipher_encrypt(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_unprotect(ptr noundef %ctx, ptr noundef %srtp_hdr, ptr noundef %pkt_octet_len) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %srtp_hdr.addr = alloca ptr, align 8
  %pkt_octet_len.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %srtp_hdr, ptr %srtp_hdr.addr, align 8
  store ptr %pkt_octet_len, ptr %pkt_octet_len.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %1 = load ptr, ptr %srtp_hdr.addr, align 8
  %2 = load ptr, ptr %pkt_octet_len.addr, align 8
  %call = call i32 @srtp_unprotect_mki(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_unprotect_mki(ptr noundef %ctx, ptr noundef %srtp_hdr, ptr noundef %pkt_octet_len, i32 noundef %use_mki) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %srtp_hdr.addr = alloca ptr, align 8
  %pkt_octet_len.addr = alloca ptr, align 8
  %use_mki.addr = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %enc_start = alloca ptr, align 8
  %auth_start = alloca ptr, align 8
  %enc_octet_len = alloca i32, align 4
  %auth_tag = alloca ptr, align 8
  %est = alloca i64, align 8
  %delta = alloca i32, align 4
  %iv = alloca %union.v128_t, align 8
  %status = alloca i32, align 4
  %stream = alloca ptr, align 8
  %tmp_tag = alloca [16 x i8], align 16
  %tag_len = alloca i32, align 4
  %prefix_len = alloca i32, align 4
  %xtn_hdr = alloca ptr, align 8
  %mki_size = alloca i32, align 4
  %session_keys = alloca ptr, align 8
  %advance_packet_index = alloca i32, align 4
  %roc_to_set = alloca i32, align 4
  %seq_to_set = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  %data = alloca %struct.srtp_event_data_t, align 8
  %data227 = alloca %struct.srtp_event_data_t, align 8
  %data263 = alloca %struct.srtp_event_data_t, align 8
  %new_stream = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %srtp_hdr, ptr %srtp_hdr.addr, align 8
  store ptr %pkt_octet_len, ptr %pkt_octet_len.addr, align 8
  store i32 %use_mki, ptr %use_mki.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %hdr, align 8, !annotation !3
  %0 = load ptr, ptr %srtp_hdr.addr, align 8
  store ptr %0, ptr %hdr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %enc_start) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %enc_start, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %auth_start) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %auth_start, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %enc_octet_len) #8
  store i32 -1431655766, ptr %enc_octet_len, align 4, !annotation !3
  store i32 0, ptr %enc_octet_len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %auth_tag) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %auth_tag, align 8, !annotation !3
  store ptr null, ptr %auth_tag, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %est) #8
  store i64 -6148914691236517206, ptr %est, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %delta) #8
  store i32 -1431655766, ptr %delta, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 16, ptr %iv) #8
  %1 = getelementptr inbounds %union.v128_t, ptr %iv, i32 0, i32 0
  %2 = getelementptr inbounds [2 x i64], ptr %1, i64 0, i64 0
  store i64 -6148914691236517206, ptr %2, align 8, !annotation !3
  %3 = getelementptr inbounds [2 x i64], ptr %1, i64 0, i64 1
  store i64 -6148914691236517206, ptr %3, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %stream) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %stream, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp_tag) #8
  %4 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 0
  store i8 -86, ptr %4, align 16, !annotation !3
  %5 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 1
  store i8 -86, ptr %5, align 1, !annotation !3
  %6 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 2
  store i8 -86, ptr %6, align 2, !annotation !3
  %7 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 3
  store i8 -86, ptr %7, align 1, !annotation !3
  %8 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 4
  store i8 -86, ptr %8, align 4, !annotation !3
  %9 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 5
  store i8 -86, ptr %9, align 1, !annotation !3
  %10 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 6
  store i8 -86, ptr %10, align 2, !annotation !3
  %11 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 7
  store i8 -86, ptr %11, align 1, !annotation !3
  %12 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 8
  store i8 -86, ptr %12, align 8, !annotation !3
  %13 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 9
  store i8 -86, ptr %13, align 1, !annotation !3
  %14 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 10
  store i8 -86, ptr %14, align 2, !annotation !3
  %15 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 11
  store i8 -86, ptr %15, align 1, !annotation !3
  %16 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 12
  store i8 -86, ptr %16, align 4, !annotation !3
  %17 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 13
  store i8 -86, ptr %17, align 1, !annotation !3
  %18 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 14
  store i8 -86, ptr %18, align 2, !annotation !3
  %19 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 15
  store i8 -86, ptr %19, align 1, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag_len) #8
  store i32 -1431655766, ptr %tag_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %prefix_len) #8
  store i32 -1431655766, ptr %prefix_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %xtn_hdr) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %xtn_hdr, align 8, !annotation !3
  store ptr null, ptr %xtn_hdr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %mki_size) #8
  store i32 -1431655766, ptr %mki_size, align 4, !annotation !3
  store i32 0, ptr %mki_size, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %session_keys) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %session_keys, align 8, !annotation !3
  store ptr null, ptr %session_keys, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %advance_packet_index) #8
  store i32 -1431655766, ptr %advance_packet_index, align 4, !annotation !3
  store i32 0, ptr %advance_packet_index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %roc_to_set) #8
  store i32 -1431655766, ptr %roc_to_set, align 4, !annotation !3
  store i32 0, ptr %roc_to_set, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr %seq_to_set) #8
  store i16 -21846, ptr %seq_to_set, align 2, !annotation !3
  store i16 0, ptr %seq_to_set, align 2
  %20 = load i32, ptr @mod_srtp, align 8
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.32, ptr noundef %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load ptr, ptr %srtp_hdr.addr, align 8
  %23 = load ptr, ptr %pkt_octet_len.addr, align 8
  %call = call i32 @srtp_validate_rtp_header(ptr noundef %22, ptr noundef %23)
  store i32 %call, ptr %status, align 4
  %24 = load i32, ptr %status, align 4
  %tobool1 = icmp ne i32 %24, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %25 = load i32, ptr %status, align 4
  store i32 %25, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

if.end3:                                          ; preds = %if.end
  %26 = load ptr, ptr %pkt_octet_len.addr, align 8
  %27 = load i32, ptr %26, align 4
  %cmp = icmp slt i32 %27, 12
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end3
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

if.end5:                                          ; preds = %if.end3
  %28 = load ptr, ptr %ctx.addr, align 8
  %29 = load ptr, ptr %hdr, align 8
  %ssrc = getelementptr inbounds %struct.srtp_hdr_t, ptr %29, i32 0, i32 3
  %30 = load i32, ptr %ssrc, align 4
  %call6 = call ptr @srtp_get_stream(ptr noundef %28, i32 noundef %30)
  store ptr %call6, ptr %stream, align 8
  %31 = load ptr, ptr %stream, align 8
  %cmp7 = icmp eq ptr %31, null
  br i1 %cmp7, label %if.then8, label %if.else20

if.then8:                                         ; preds = %if.end5
  %32 = load ptr, ptr %ctx.addr, align 8
  %stream_template = getelementptr inbounds %struct.srtp_ctx_t_, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %stream_template, align 8
  %cmp9 = icmp ne ptr %33, null
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then8
  %34 = load ptr, ptr %ctx.addr, align 8
  %stream_template11 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %stream_template11, align 8
  store ptr %35, ptr %stream, align 8
  %36 = load i32, ptr @mod_srtp, align 8
  %tobool12 = icmp ne i32 %36, 0
  br i1 %tobool12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.then10
  %37 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %38 = load ptr, ptr %hdr, align 8
  %ssrc14 = getelementptr inbounds %struct.srtp_hdr_t, ptr %38, i32 0, i32 3
  %39 = load i32, ptr %ssrc14, align 4
  %call15 = call i32 @__bswap_32(i32 noundef %39)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.33, ptr noundef %37, i32 noundef %call15)
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then10
  %40 = load ptr, ptr %hdr, align 8
  %seq = getelementptr inbounds %struct.srtp_hdr_t, ptr %40, i32 0, i32 1
  %41 = load i16, ptr %seq, align 2
  %call17 = call zeroext i16 @__bswap_16(i16 noundef zeroext %41)
  %conv = zext i16 %call17 to i64
  store i64 %conv, ptr %est, align 8
  %42 = load i64, ptr %est, align 8
  %conv18 = trunc i64 %42 to i32
  store i32 %conv18, ptr %delta, align 4
  br label %if.end19

if.else:                                          ; preds = %if.then8
  store i32 13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

if.end19:                                         ; preds = %if.end16
  br label %if.end40

if.else20:                                        ; preds = %if.end5
  %43 = load ptr, ptr %hdr, align 8
  %44 = load ptr, ptr %stream, align 8
  %call21 = call i32 @srtp_get_est_pkt_index(ptr noundef %43, ptr noundef %44, ptr noundef %est, ptr noundef %delta)
  store i32 %call21, ptr %status, align 4
  %45 = load i32, ptr %status, align 4
  %tobool22 = icmp ne i32 %45, 0
  br i1 %tobool22, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.else20
  %46 = load i32, ptr %status, align 4
  %cmp23 = icmp ne i32 %46, 27
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %land.lhs.true
  %47 = load i32, ptr %status, align 4
  store i32 %47, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

if.end26:                                         ; preds = %land.lhs.true, %if.else20
  %48 = load i32, ptr %status, align 4
  %cmp27 = icmp eq i32 %48, 27
  br i1 %cmp27, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end26
  store i32 1, ptr %advance_packet_index, align 4
  %49 = load i64, ptr %est, align 8
  %shr = lshr i64 %49, 16
  %conv30 = trunc i64 %shr to i32
  store i32 %conv30, ptr %roc_to_set, align 4
  %50 = load i64, ptr %est, align 8
  %and = and i64 %50, 65535
  %conv31 = trunc i64 %and to i16
  store i16 %conv31, ptr %seq_to_set, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end26
  %51 = load i32, ptr %advance_packet_index, align 4
  %tobool33 = icmp ne i32 %51, 0
  br i1 %tobool33, label %if.end39, label %if.then34

if.then34:                                        ; preds = %if.end32
  %52 = load ptr, ptr %stream, align 8
  %rtp_rdbx = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %52, i32 0, i32 3
  %53 = load i32, ptr %delta, align 4
  %call35 = call i32 @srtp_rdbx_check(ptr noundef %rtp_rdbx, i32 noundef %53)
  store i32 %call35, ptr %status, align 4
  %54 = load i32, ptr %status, align 4
  %tobool36 = icmp ne i32 %54, 0
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.then34
  %55 = load i32, ptr %status, align 4
  store i32 %55, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

if.end38:                                         ; preds = %if.then34
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end19
  %56 = load i32, ptr @mod_srtp, align 8
  %tobool41 = icmp ne i32 %56, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end40
  %57 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %58 = load i64, ptr %est, align 8
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.34, ptr noundef %57, i64 noundef %58)
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end40
  %59 = load i32, ptr %use_mki.addr, align 4
  %tobool44 = icmp ne i32 %59, 0
  br i1 %tobool44, label %if.then45, label %if.else51

if.then45:                                        ; preds = %if.end43
  %60 = load ptr, ptr %stream, align 8
  %61 = load ptr, ptr %hdr, align 8
  %62 = load ptr, ptr %pkt_octet_len.addr, align 8
  %call46 = call ptr @srtp_get_session_keys(ptr noundef %60, ptr noundef %61, ptr noundef %62, ptr noundef %mki_size)
  store ptr %call46, ptr %session_keys, align 8
  %63 = load ptr, ptr %session_keys, align 8
  %cmp47 = icmp eq ptr %63, null
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.then45
  store i32 25, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

if.end50:                                         ; preds = %if.then45
  br label %if.end53

if.else51:                                        ; preds = %if.end43
  %64 = load ptr, ptr %stream, align 8
  %session_keys52 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %64, i32 0, i32 1
  %65 = load ptr, ptr %session_keys52, align 8
  %arrayidx = getelementptr inbounds %struct.srtp_session_keys_t, ptr %65, i64 0
  store ptr %arrayidx, ptr %session_keys, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.else51, %if.end50
  %66 = load ptr, ptr %session_keys, align 8
  %rtp_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %rtp_cipher, align 8
  %algorithm = getelementptr inbounds %struct.srtp_cipher_t, ptr %67, i32 0, i32 3
  %68 = load i32, ptr %algorithm, align 4
  %cmp54 = icmp eq i32 %68, 6
  br i1 %cmp54, label %if.then60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end53
  %69 = load ptr, ptr %session_keys, align 8
  %rtp_cipher56 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %rtp_cipher56, align 8
  %algorithm57 = getelementptr inbounds %struct.srtp_cipher_t, ptr %70, i32 0, i32 3
  %71 = load i32, ptr %algorithm57, align 4
  %cmp58 = icmp eq i32 %71, 7
  br i1 %cmp58, label %if.then60, label %if.end62

if.then60:                                        ; preds = %lor.lhs.false, %if.end53
  %72 = load ptr, ptr %ctx.addr, align 8
  %73 = load ptr, ptr %stream, align 8
  %74 = load i32, ptr %delta, align 4
  %75 = load i64, ptr %est, align 8
  %76 = load ptr, ptr %srtp_hdr.addr, align 8
  %77 = load ptr, ptr %pkt_octet_len.addr, align 8
  %78 = load ptr, ptr %session_keys, align 8
  %79 = load i32, ptr %mki_size, align 4
  %call61 = call i32 @srtp_unprotect_aead(ptr noundef %72, ptr noundef %73, i32 noundef %74, i64 noundef %75, ptr noundef %76, ptr noundef %77, ptr noundef %78, i32 noundef %79)
  store i32 %call61, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

if.end62:                                         ; preds = %lor.lhs.false
  %80 = load ptr, ptr %session_keys, align 8
  %rtp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %80, i32 0, i32 2
  %81 = load ptr, ptr %rtp_auth, align 8
  %call63 = call i32 @srtp_auth_get_tag_length(ptr noundef %81)
  store i32 %call63, ptr %tag_len, align 4
  %82 = load ptr, ptr %session_keys, align 8
  %rtp_cipher64 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %rtp_cipher64, align 8
  %type = getelementptr inbounds %struct.srtp_cipher_t, ptr %83, i32 0, i32 0
  %84 = load ptr, ptr %type, align 8
  %id = getelementptr inbounds %struct.srtp_cipher_type_t, ptr %84, i32 0, i32 10
  %85 = load i32, ptr %id, align 8
  %cmp65 = icmp eq i32 %85, 1
  br i1 %cmp65, label %if.then79, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %if.end62
  %86 = load ptr, ptr %session_keys, align 8
  %rtp_cipher68 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %rtp_cipher68, align 8
  %type69 = getelementptr inbounds %struct.srtp_cipher_t, ptr %87, i32 0, i32 0
  %88 = load ptr, ptr %type69, align 8
  %id70 = getelementptr inbounds %struct.srtp_cipher_type_t, ptr %88, i32 0, i32 10
  %89 = load i32, ptr %id70, align 8
  %cmp71 = icmp eq i32 %89, 4
  br i1 %cmp71, label %if.then79, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %lor.lhs.false67
  %90 = load ptr, ptr %session_keys, align 8
  %rtp_cipher74 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %rtp_cipher74, align 8
  %type75 = getelementptr inbounds %struct.srtp_cipher_t, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %type75, align 8
  %id76 = getelementptr inbounds %struct.srtp_cipher_type_t, ptr %92, i32 0, i32 10
  %93 = load i32, ptr %id76, align 8
  %cmp77 = icmp eq i32 %93, 5
  br i1 %cmp77, label %if.then79, label %if.else94

if.then79:                                        ; preds = %lor.lhs.false73, %lor.lhs.false67, %if.end62
  %arrayidx80 = getelementptr inbounds [4 x i32], ptr %iv, i64 0, i64 0
  store i32 0, ptr %arrayidx80, align 8
  %94 = load ptr, ptr %hdr, align 8
  %ssrc81 = getelementptr inbounds %struct.srtp_hdr_t, ptr %94, i32 0, i32 3
  %95 = load i32, ptr %ssrc81, align 4
  %arrayidx82 = getelementptr inbounds [4 x i32], ptr %iv, i64 0, i64 1
  store i32 %95, ptr %arrayidx82, align 4
  %96 = load i64, ptr %est, align 8
  %shl = shl i64 %96, 16
  %call83 = call i64 @be64_to_cpu(i64 noundef %shl)
  %arrayidx84 = getelementptr inbounds [2 x i64], ptr %iv, i64 0, i64 1
  store i64 %call83, ptr %arrayidx84, align 8
  %97 = load ptr, ptr %session_keys, align 8
  %rtp_cipher85 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %97, i32 0, i32 0
  %98 = load ptr, ptr %rtp_cipher85, align 8
  %call86 = call i32 @srtp_cipher_set_iv(ptr noundef %98, ptr noundef %iv, i32 noundef 1)
  store i32 %call86, ptr %status, align 4
  %99 = load i32, ptr %status, align 4
  %tobool87 = icmp ne i32 %99, 0
  br i1 %tobool87, label %if.end93, label %land.lhs.true88

land.lhs.true88:                                  ; preds = %if.then79
  %100 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %100, i32 0, i32 1
  %101 = load ptr, ptr %rtp_xtn_hdr_cipher, align 8
  %tobool89 = icmp ne ptr %101, null
  br i1 %tobool89, label %if.then90, label %if.end93

if.then90:                                        ; preds = %land.lhs.true88
  %102 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher91 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %102, i32 0, i32 1
  %103 = load ptr, ptr %rtp_xtn_hdr_cipher91, align 8
  %call92 = call i32 @srtp_cipher_set_iv(ptr noundef %103, ptr noundef %iv, i32 noundef 1)
  store i32 %call92, ptr %status, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %land.lhs.true88, %if.then79
  br label %if.end108

if.else94:                                        ; preds = %lor.lhs.false73
  %arrayidx95 = getelementptr inbounds [2 x i64], ptr %iv, i64 0, i64 0
  store i64 0, ptr %arrayidx95, align 8
  %104 = load i64, ptr %est, align 8
  %call96 = call i64 @be64_to_cpu(i64 noundef %104)
  %arrayidx97 = getelementptr inbounds [2 x i64], ptr %iv, i64 0, i64 1
  store i64 %call96, ptr %arrayidx97, align 8
  %105 = load ptr, ptr %session_keys, align 8
  %rtp_cipher98 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %105, i32 0, i32 0
  %106 = load ptr, ptr %rtp_cipher98, align 8
  %call99 = call i32 @srtp_cipher_set_iv(ptr noundef %106, ptr noundef %iv, i32 noundef 1)
  store i32 %call99, ptr %status, align 4
  %107 = load i32, ptr %status, align 4
  %tobool100 = icmp ne i32 %107, 0
  br i1 %tobool100, label %if.end107, label %land.lhs.true101

land.lhs.true101:                                 ; preds = %if.else94
  %108 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher102 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %108, i32 0, i32 1
  %109 = load ptr, ptr %rtp_xtn_hdr_cipher102, align 8
  %tobool103 = icmp ne ptr %109, null
  br i1 %tobool103, label %if.then104, label %if.end107

if.then104:                                       ; preds = %land.lhs.true101
  %110 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher105 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %110, i32 0, i32 1
  %111 = load ptr, ptr %rtp_xtn_hdr_cipher105, align 8
  %call106 = call i32 @srtp_cipher_set_iv(ptr noundef %111, ptr noundef %iv, i32 noundef 1)
  store i32 %call106, ptr %status, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %land.lhs.true101, %if.else94
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end93
  %112 = load i32, ptr %status, align 4
  %tobool109 = icmp ne i32 %112, 0
  br i1 %tobool109, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.end108
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

if.end111:                                        ; preds = %if.end108
  %113 = load i64, ptr %est, align 8
  %shl112 = shl i64 %113, 16
  %call113 = call i64 @be64_to_cpu(i64 noundef %shl112)
  store i64 %call113, ptr %est, align 8
  %114 = load ptr, ptr %stream, align 8
  %rtp_services = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %114, i32 0, i32 4
  %115 = load i32, ptr %rtp_services, align 8
  %and114 = and i32 %115, 1
  %tobool115 = icmp ne i32 %and114, 0
  br i1 %tobool115, label %if.then116, label %if.else143

if.then116:                                       ; preds = %if.end111
  %116 = load ptr, ptr %hdr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %116, i64 3
  %117 = load ptr, ptr %hdr, align 8
  %bf.load = load i16, ptr %117, align 4
  %bf.clear = and i16 %bf.load, 15
  %bf.cast = trunc i16 %bf.clear to i8
  %conv117 = zext i8 %bf.cast to i32
  %idx.ext = sext i32 %conv117 to i64
  %add.ptr118 = getelementptr inbounds i32, ptr %add.ptr, i64 %idx.ext
  store ptr %add.ptr118, ptr %enc_start, align 8
  %118 = load ptr, ptr %hdr, align 8
  %bf.load119 = load i16, ptr %118, align 4
  %bf.lshr = lshr i16 %bf.load119, 4
  %bf.clear120 = and i16 %bf.lshr, 1
  %bf.cast121 = trunc i16 %bf.clear120 to i8
  %conv122 = zext i8 %bf.cast121 to i32
  %cmp123 = icmp eq i32 %conv122, 1
  br i1 %cmp123, label %if.then125, label %if.end130

if.then125:                                       ; preds = %if.then116
  %119 = load ptr, ptr %enc_start, align 8
  store ptr %119, ptr %xtn_hdr, align 8
  %120 = load ptr, ptr %xtn_hdr, align 8
  %length = getelementptr inbounds %struct.srtp_hdr_xtnd_t, ptr %120, i32 0, i32 1
  %121 = load i16, ptr %length, align 2
  %call126 = call zeroext i16 @__bswap_16(i16 noundef zeroext %121)
  %conv127 = zext i16 %call126 to i32
  %add = add nsw i32 %conv127, 1
  %122 = load ptr, ptr %enc_start, align 8
  %idx.ext128 = sext i32 %add to i64
  %add.ptr129 = getelementptr inbounds i32, ptr %122, i64 %idx.ext128
  store ptr %add.ptr129, ptr %enc_start, align 8
  br label %if.end130

if.end130:                                        ; preds = %if.then125, %if.then116
  %123 = load ptr, ptr %enc_start, align 8
  %124 = load ptr, ptr %hdr, align 8
  %125 = load ptr, ptr %pkt_octet_len.addr, align 8
  %126 = load i32, ptr %125, align 4
  %127 = load i32, ptr %tag_len, align 4
  %sub = sub i32 %126, %127
  %128 = load i32, ptr %mki_size, align 4
  %sub131 = sub i32 %sub, %128
  %idx.ext132 = zext i32 %sub131 to i64
  %add.ptr133 = getelementptr inbounds i8, ptr %124, i64 %idx.ext132
  %cmp134 = icmp ule ptr %123, %add.ptr133
  br i1 %cmp134, label %if.end137, label %if.then136

if.then136:                                       ; preds = %if.end130
  store i32 21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

if.end137:                                        ; preds = %if.end130
  %129 = load ptr, ptr %pkt_octet_len.addr, align 8
  %130 = load i32, ptr %129, align 4
  %131 = load i32, ptr %tag_len, align 4
  %sub138 = sub i32 %130, %131
  %132 = load i32, ptr %mki_size, align 4
  %sub139 = sub i32 %sub138, %132
  %conv140 = zext i32 %sub139 to i64
  %133 = load ptr, ptr %enc_start, align 8
  %134 = load ptr, ptr %hdr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %133 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %134 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub141 = sub nsw i64 %conv140, %sub.ptr.sub
  %conv142 = trunc i64 %sub141 to i32
  store i32 %conv142, ptr %enc_octet_len, align 4
  br label %if.end144

if.else143:                                       ; preds = %if.end111
  store ptr null, ptr %enc_start, align 8
  br label %if.end144

if.end144:                                        ; preds = %if.else143, %if.end137
  %135 = load ptr, ptr %stream, align 8
  %rtp_services145 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %135, i32 0, i32 4
  %136 = load i32, ptr %rtp_services145, align 8
  %and146 = and i32 %136, 2
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %if.then148, label %if.else153

if.then148:                                       ; preds = %if.end144
  %137 = load ptr, ptr %hdr, align 8
  store ptr %137, ptr %auth_start, align 8
  %138 = load ptr, ptr %hdr, align 8
  %139 = load ptr, ptr %pkt_octet_len.addr, align 8
  %140 = load i32, ptr %139, align 4
  %idx.ext149 = sext i32 %140 to i64
  %add.ptr150 = getelementptr inbounds i8, ptr %138, i64 %idx.ext149
  %141 = load i32, ptr %tag_len, align 4
  %idx.ext151 = zext i32 %141 to i64
  %idx.neg = sub i64 0, %idx.ext151
  %add.ptr152 = getelementptr inbounds i8, ptr %add.ptr150, i64 %idx.neg
  store ptr %add.ptr152, ptr %auth_tag, align 8
  br label %if.end154

if.else153:                                       ; preds = %if.end144
  store ptr null, ptr %auth_start, align 8
  store ptr null, ptr %auth_tag, align 8
  br label %if.end154

if.end154:                                        ; preds = %if.else153, %if.then148
  %142 = load ptr, ptr %auth_start, align 8
  %tobool155 = icmp ne ptr %142, null
  br i1 %tobool155, label %if.then156, label %if.end216

if.then156:                                       ; preds = %if.end154
  %143 = load ptr, ptr %session_keys, align 8
  %rtp_auth157 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %143, i32 0, i32 2
  %144 = load ptr, ptr %rtp_auth157, align 8
  %prefix_len158 = getelementptr inbounds %struct.srtp_auth_t, ptr %144, i32 0, i32 4
  %145 = load i32, ptr %prefix_len158, align 8
  %cmp159 = icmp ne i32 %145, 0
  br i1 %cmp159, label %if.then161, label %if.end174

if.then161:                                       ; preds = %if.then156
  %146 = load ptr, ptr %session_keys, align 8
  %rtp_auth162 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %146, i32 0, i32 2
  %147 = load ptr, ptr %rtp_auth162, align 8
  %call163 = call i32 @srtp_auth_get_prefix_length(ptr noundef %147)
  store i32 %call163, ptr %prefix_len, align 4
  %148 = load ptr, ptr %session_keys, align 8
  %rtp_cipher164 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %148, i32 0, i32 0
  %149 = load ptr, ptr %rtp_cipher164, align 8
  %arraydecay = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 0
  %call165 = call i32 @srtp_cipher_output(ptr noundef %149, ptr noundef %arraydecay, ptr noundef %prefix_len)
  store i32 %call165, ptr %status, align 4
  %150 = load i32, ptr @mod_srtp, align 8
  %tobool166 = icmp ne i32 %150, 0
  br i1 %tobool166, label %if.then167, label %if.end170

if.then167:                                       ; preds = %if.then161
  %151 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %arraydecay168 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 0
  %152 = load i32, ptr %prefix_len, align 4
  %call169 = call ptr @srtp_octet_string_hex_string(ptr noundef %arraydecay168, i32 noundef %152)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.30, ptr noundef %151, ptr noundef %call169)
  br label %if.end170

if.end170:                                        ; preds = %if.then167, %if.then161
  %153 = load i32, ptr %status, align 4
  %tobool171 = icmp ne i32 %153, 0
  br i1 %tobool171, label %if.then172, label %if.end173

if.then172:                                       ; preds = %if.end170
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

if.end173:                                        ; preds = %if.end170
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %if.then156
  %154 = load ptr, ptr %session_keys, align 8
  %rtp_auth175 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %154, i32 0, i32 2
  %155 = load ptr, ptr %rtp_auth175, align 8
  %type176 = getelementptr inbounds %struct.srtp_auth_t, ptr %155, i32 0, i32 0
  %156 = load ptr, ptr %type176, align 8
  %start = getelementptr inbounds %struct.srtp_auth_type_t, ptr %156, i32 0, i32 5
  %157 = load ptr, ptr %start, align 8
  %158 = load ptr, ptr %session_keys, align 8
  %rtp_auth177 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %158, i32 0, i32 2
  %159 = load ptr, ptr %rtp_auth177, align 8
  %state = getelementptr inbounds %struct.srtp_auth_t, ptr %159, i32 0, i32 1
  %160 = load ptr, ptr %state, align 8
  %call178 = call i32 %157(ptr noundef %160)
  store i32 %call178, ptr %status, align 4
  %161 = load i32, ptr %status, align 4
  %tobool179 = icmp ne i32 %161, 0
  br i1 %tobool179, label %if.then180, label %if.end181

if.then180:                                       ; preds = %if.end174
  %162 = load i32, ptr %status, align 4
  store i32 %162, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

if.end181:                                        ; preds = %if.end174
  %163 = load ptr, ptr %session_keys, align 8
  %rtp_auth182 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %163, i32 0, i32 2
  %164 = load ptr, ptr %rtp_auth182, align 8
  %type183 = getelementptr inbounds %struct.srtp_auth_t, ptr %164, i32 0, i32 0
  %165 = load ptr, ptr %type183, align 8
  %update = getelementptr inbounds %struct.srtp_auth_type_t, ptr %165, i32 0, i32 4
  %166 = load ptr, ptr %update, align 8
  %167 = load ptr, ptr %session_keys, align 8
  %rtp_auth184 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %167, i32 0, i32 2
  %168 = load ptr, ptr %rtp_auth184, align 8
  %state185 = getelementptr inbounds %struct.srtp_auth_t, ptr %168, i32 0, i32 1
  %169 = load ptr, ptr %state185, align 8
  %170 = load ptr, ptr %auth_start, align 8
  %171 = load ptr, ptr %pkt_octet_len.addr, align 8
  %172 = load i32, ptr %171, align 4
  %173 = load i32, ptr %tag_len, align 4
  %sub186 = sub i32 %172, %173
  %174 = load i32, ptr %mki_size, align 4
  %sub187 = sub i32 %sub186, %174
  %call188 = call i32 %166(ptr noundef %169, ptr noundef %170, i32 noundef %sub187)
  store i32 %call188, ptr %status, align 4
  %175 = load i32, ptr %status, align 4
  %tobool189 = icmp ne i32 %175, 0
  br i1 %tobool189, label %if.then190, label %if.end191

if.then190:                                       ; preds = %if.end181
  %176 = load i32, ptr %status, align 4
  store i32 %176, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

if.end191:                                        ; preds = %if.end181
  %177 = load ptr, ptr %session_keys, align 8
  %rtp_auth192 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %177, i32 0, i32 2
  %178 = load ptr, ptr %rtp_auth192, align 8
  %type193 = getelementptr inbounds %struct.srtp_auth_t, ptr %178, i32 0, i32 0
  %179 = load ptr, ptr %type193, align 8
  %compute = getelementptr inbounds %struct.srtp_auth_type_t, ptr %179, i32 0, i32 3
  %180 = load ptr, ptr %compute, align 8
  %181 = load ptr, ptr %session_keys, align 8
  %rtp_auth194 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %181, i32 0, i32 2
  %182 = load ptr, ptr %rtp_auth194, align 8
  %state195 = getelementptr inbounds %struct.srtp_auth_t, ptr %182, i32 0, i32 1
  %183 = load ptr, ptr %state195, align 8
  %184 = load ptr, ptr %session_keys, align 8
  %rtp_auth196 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %184, i32 0, i32 2
  %185 = load ptr, ptr %rtp_auth196, align 8
  %out_len = getelementptr inbounds %struct.srtp_auth_t, ptr %185, i32 0, i32 2
  %186 = load i32, ptr %out_len, align 8
  %arraydecay197 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 0
  %call198 = call i32 %180(ptr noundef %183, ptr noundef %est, i32 noundef 4, i32 noundef %186, ptr noundef %arraydecay197)
  store i32 %call198, ptr %status, align 4
  %187 = load i32, ptr @mod_srtp, align 8
  %tobool199 = icmp ne i32 %187, 0
  br i1 %tobool199, label %if.then200, label %if.end203

if.then200:                                       ; preds = %if.end191
  %188 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %arraydecay201 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 0
  %189 = load i32, ptr %tag_len, align 4
  %call202 = call ptr @srtp_octet_string_hex_string(ptr noundef %arraydecay201, i32 noundef %189)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.35, ptr noundef %188, ptr noundef %call202)
  br label %if.end203

if.end203:                                        ; preds = %if.then200, %if.end191
  %190 = load i32, ptr @mod_srtp, align 8
  %tobool204 = icmp ne i32 %190, 0
  br i1 %tobool204, label %if.then205, label %if.end207

if.then205:                                       ; preds = %if.end203
  %191 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %192 = load ptr, ptr %auth_tag, align 8
  %193 = load i32, ptr %tag_len, align 4
  %call206 = call ptr @srtp_octet_string_hex_string(ptr noundef %192, i32 noundef %193)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.36, ptr noundef %191, ptr noundef %call206)
  br label %if.end207

if.end207:                                        ; preds = %if.then205, %if.end203
  %194 = load i32, ptr %status, align 4
  %tobool208 = icmp ne i32 %194, 0
  br i1 %tobool208, label %if.then209, label %if.end210

if.then209:                                       ; preds = %if.end207
  store i32 7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

if.end210:                                        ; preds = %if.end207
  %arraydecay211 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 0
  %195 = load ptr, ptr %auth_tag, align 8
  %196 = load i32, ptr %tag_len, align 4
  %call212 = call i32 @srtp_octet_string_is_eq(ptr noundef %arraydecay211, ptr noundef %195, i32 noundef %196)
  %tobool213 = icmp ne i32 %call212, 0
  br i1 %tobool213, label %if.then214, label %if.end215

if.then214:                                       ; preds = %if.end210
  store i32 7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

if.end215:                                        ; preds = %if.end210
  br label %if.end216

if.end216:                                        ; preds = %if.end215, %if.end154
  %197 = load ptr, ptr %session_keys, align 8
  %limit = getelementptr inbounds %struct.srtp_session_keys_t, ptr %197, i32 0, i32 9
  %198 = load ptr, ptr %limit, align 8
  %call217 = call i32 @srtp_key_limit_update(ptr noundef %198)
  switch i32 %call217, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
    i32 2, label %sw.bb224
  ]

sw.bb:                                            ; preds = %if.end216
  %199 = load ptr, ptr @srtp_event_handler, align 8
  %tobool218 = icmp ne ptr %199, null
  br i1 %tobool218, label %if.then219, label %if.end223

if.then219:                                       ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 16, ptr %data) #8
  %200 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 0
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %200, align 8, !annotation !3
  %201 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 1
  store i32 -1431655766, ptr %201, align 8, !annotation !3
  %202 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 2
  store i32 -1431655766, ptr %202, align 4, !annotation !3
  %203 = load ptr, ptr %ctx.addr, align 8
  %session = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 0
  store ptr %203, ptr %session, align 8
  %204 = load ptr, ptr %stream, align 8
  %ssrc220 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %204, i32 0, i32 0
  %205 = load i32, ptr %ssrc220, align 8
  %call221 = call i32 @__bswap_32(i32 noundef %205)
  %ssrc222 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 1
  store i32 %call221, ptr %ssrc222, align 8
  %event = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 2
  store i32 1, ptr %event, align 4
  %206 = load ptr, ptr @srtp_event_handler, align 8
  call void %206(ptr noundef %data)
  call void @llvm.lifetime.end.p0(i64 16, ptr %data) #8
  br label %if.end223

if.end223:                                        ; preds = %if.then219, %sw.bb
  br label %sw.epilog

sw.bb224:                                         ; preds = %if.end216
  %207 = load ptr, ptr @srtp_event_handler, align 8
  %tobool225 = icmp ne ptr %207, null
  br i1 %tobool225, label %if.then226, label %if.end233

if.then226:                                       ; preds = %sw.bb224
  call void @llvm.lifetime.start.p0(i64 16, ptr %data227) #8
  %208 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data227, i32 0, i32 0
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %208, align 8, !annotation !3
  %209 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data227, i32 0, i32 1
  store i32 -1431655766, ptr %209, align 8, !annotation !3
  %210 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data227, i32 0, i32 2
  store i32 -1431655766, ptr %210, align 4, !annotation !3
  %211 = load ptr, ptr %ctx.addr, align 8
  %session228 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data227, i32 0, i32 0
  store ptr %211, ptr %session228, align 8
  %212 = load ptr, ptr %stream, align 8
  %ssrc229 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %212, i32 0, i32 0
  %213 = load i32, ptr %ssrc229, align 8
  %call230 = call i32 @__bswap_32(i32 noundef %213)
  %ssrc231 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data227, i32 0, i32 1
  store i32 %call230, ptr %ssrc231, align 8
  %event232 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data227, i32 0, i32 2
  store i32 2, ptr %event232, align 4
  %214 = load ptr, ptr @srtp_event_handler, align 8
  call void %214(ptr noundef %data227)
  call void @llvm.lifetime.end.p0(i64 16, ptr %data227) #8
  br label %if.end233

if.end233:                                        ; preds = %if.then226, %sw.bb224
  store i32 15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

sw.default:                                       ; preds = %if.end216
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end223, %if.end216
  %215 = load ptr, ptr %xtn_hdr, align 8
  %tobool234 = icmp ne ptr %215, null
  br i1 %tobool234, label %land.lhs.true235, label %if.end243

land.lhs.true235:                                 ; preds = %sw.epilog
  %216 = load ptr, ptr %session_keys, align 8
  %rtp_xtn_hdr_cipher236 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %216, i32 0, i32 1
  %217 = load ptr, ptr %rtp_xtn_hdr_cipher236, align 8
  %tobool237 = icmp ne ptr %217, null
  br i1 %tobool237, label %if.then238, label %if.end243

if.then238:                                       ; preds = %land.lhs.true235
  %218 = load ptr, ptr %stream, align 8
  %219 = load ptr, ptr %xtn_hdr, align 8
  %220 = load ptr, ptr %session_keys, align 8
  %call239 = call i32 @srtp_process_header_encryption(ptr noundef %218, ptr noundef %219, ptr noundef %220)
  store i32 %call239, ptr %status, align 4
  %221 = load i32, ptr %status, align 4
  %tobool240 = icmp ne i32 %221, 0
  br i1 %tobool240, label %if.then241, label %if.end242

if.then241:                                       ; preds = %if.then238
  %222 = load i32, ptr %status, align 4
  store i32 %222, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

if.end242:                                        ; preds = %if.then238
  br label %if.end243

if.end243:                                        ; preds = %if.end242, %land.lhs.true235, %sw.epilog
  %223 = load ptr, ptr %enc_start, align 8
  %tobool244 = icmp ne ptr %223, null
  br i1 %tobool244, label %if.then245, label %if.end251

if.then245:                                       ; preds = %if.end243
  %224 = load ptr, ptr %session_keys, align 8
  %rtp_cipher246 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %224, i32 0, i32 0
  %225 = load ptr, ptr %rtp_cipher246, align 8
  %226 = load ptr, ptr %enc_start, align 8
  %call247 = call i32 @srtp_cipher_decrypt(ptr noundef %225, ptr noundef %226, ptr noundef %enc_octet_len)
  store i32 %call247, ptr %status, align 4
  %227 = load i32, ptr %status, align 4
  %tobool248 = icmp ne i32 %227, 0
  br i1 %tobool248, label %if.then249, label %if.end250

if.then249:                                       ; preds = %if.then245
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

if.end250:                                        ; preds = %if.then245
  br label %if.end251

if.end251:                                        ; preds = %if.end250, %if.end243
  %228 = load ptr, ptr %stream, align 8
  %direction = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %228, i32 0, i32 7
  %229 = load i32, ptr %direction, align 4
  %cmp252 = icmp ne i32 %229, 2
  br i1 %cmp252, label %if.then254, label %if.end271

if.then254:                                       ; preds = %if.end251
  %230 = load ptr, ptr %stream, align 8
  %direction255 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %230, i32 0, i32 7
  %231 = load i32, ptr %direction255, align 4
  %cmp256 = icmp eq i32 %231, 0
  br i1 %cmp256, label %if.then258, label %if.else260

if.then258:                                       ; preds = %if.then254
  %232 = load ptr, ptr %stream, align 8
  %direction259 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %232, i32 0, i32 7
  store i32 2, ptr %direction259, align 4
  br label %if.end270

if.else260:                                       ; preds = %if.then254
  %233 = load ptr, ptr @srtp_event_handler, align 8
  %tobool261 = icmp ne ptr %233, null
  br i1 %tobool261, label %if.then262, label %if.end269

if.then262:                                       ; preds = %if.else260
  call void @llvm.lifetime.start.p0(i64 16, ptr %data263) #8
  %234 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data263, i32 0, i32 0
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %234, align 8, !annotation !3
  %235 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data263, i32 0, i32 1
  store i32 -1431655766, ptr %235, align 8, !annotation !3
  %236 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data263, i32 0, i32 2
  store i32 -1431655766, ptr %236, align 4, !annotation !3
  %237 = load ptr, ptr %ctx.addr, align 8
  %session264 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data263, i32 0, i32 0
  store ptr %237, ptr %session264, align 8
  %238 = load ptr, ptr %stream, align 8
  %ssrc265 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %238, i32 0, i32 0
  %239 = load i32, ptr %ssrc265, align 8
  %call266 = call i32 @__bswap_32(i32 noundef %239)
  %ssrc267 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data263, i32 0, i32 1
  store i32 %call266, ptr %ssrc267, align 8
  %event268 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data263, i32 0, i32 2
  store i32 0, ptr %event268, align 4
  %240 = load ptr, ptr @srtp_event_handler, align 8
  call void %240(ptr noundef %data263)
  call void @llvm.lifetime.end.p0(i64 16, ptr %data263) #8
  br label %if.end269

if.end269:                                        ; preds = %if.then262, %if.else260
  br label %if.end270

if.end270:                                        ; preds = %if.end269, %if.then258
  br label %if.end271

if.end271:                                        ; preds = %if.end270, %if.end251
  %241 = load ptr, ptr %stream, align 8
  %242 = load ptr, ptr %ctx.addr, align 8
  %stream_template272 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %242, i32 0, i32 1
  %243 = load ptr, ptr %stream_template272, align 8
  %cmp273 = icmp eq ptr %241, %243
  br i1 %cmp273, label %if.then275, label %if.end283

if.then275:                                       ; preds = %if.end271
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_stream) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %new_stream, align 8, !annotation !3
  %244 = load ptr, ptr %ctx.addr, align 8
  %stream_template276 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %244, i32 0, i32 1
  %245 = load ptr, ptr %stream_template276, align 8
  %246 = load ptr, ptr %hdr, align 8
  %ssrc277 = getelementptr inbounds %struct.srtp_hdr_t, ptr %246, i32 0, i32 3
  %247 = load i32, ptr %ssrc277, align 4
  %call278 = call i32 @srtp_stream_clone(ptr noundef %245, i32 noundef %247, ptr noundef %new_stream)
  store i32 %call278, ptr %status, align 4
  %248 = load i32, ptr %status, align 4
  %tobool279 = icmp ne i32 %248, 0
  br i1 %tobool279, label %if.then280, label %if.end281

if.then280:                                       ; preds = %if.then275
  %249 = load i32, ptr %status, align 4
  store i32 %249, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end281:                                        ; preds = %if.then275
  %250 = load ptr, ptr %ctx.addr, align 8
  %stream_list = getelementptr inbounds %struct.srtp_ctx_t_, ptr %250, i32 0, i32 0
  %251 = load ptr, ptr %stream_list, align 8
  %252 = load ptr, ptr %new_stream, align 8
  %next = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %252, i32 0, i32 13
  store ptr %251, ptr %next, align 8
  %253 = load ptr, ptr %new_stream, align 8
  %254 = load ptr, ptr %ctx.addr, align 8
  %stream_list282 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %254, i32 0, i32 0
  store ptr %253, ptr %stream_list282, align 8
  %255 = load ptr, ptr %new_stream, align 8
  store ptr %255, ptr %stream, align 8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end281, %if.then280
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_stream) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup296 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end283

if.end283:                                        ; preds = %cleanup.cont, %if.end271
  %256 = load i32, ptr %advance_packet_index, align 4
  %tobool284 = icmp ne i32 %256, 0
  br i1 %tobool284, label %if.then285, label %if.else290

if.then285:                                       ; preds = %if.end283
  %257 = load ptr, ptr %stream, align 8
  %rtp_rdbx286 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %257, i32 0, i32 3
  %258 = load i32, ptr %roc_to_set, align 4
  %259 = load i16, ptr %seq_to_set, align 2
  %call287 = call i32 @srtp_rdbx_set_roc_seq(ptr noundef %rtp_rdbx286, i32 noundef %258, i16 noundef zeroext %259)
  %260 = load ptr, ptr %stream, align 8
  %pending_roc = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %260, i32 0, i32 12
  store i32 0, ptr %pending_roc, align 4
  %261 = load ptr, ptr %stream, align 8
  %rtp_rdbx288 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %261, i32 0, i32 3
  %call289 = call i32 @srtp_rdbx_add_index(ptr noundef %rtp_rdbx288, i32 noundef 0)
  br label %if.end293

if.else290:                                       ; preds = %if.end283
  %262 = load ptr, ptr %stream, align 8
  %rtp_rdbx291 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %262, i32 0, i32 3
  %263 = load i32, ptr %delta, align 4
  %call292 = call i32 @srtp_rdbx_add_index(ptr noundef %rtp_rdbx291, i32 noundef %263)
  br label %if.end293

if.end293:                                        ; preds = %if.else290, %if.then285
  %264 = load i32, ptr %tag_len, align 4
  %265 = load ptr, ptr %pkt_octet_len.addr, align 8
  %266 = load i32, ptr %265, align 4
  %sub294 = sub i32 %266, %264
  store i32 %sub294, ptr %265, align 4
  %267 = load i32, ptr %mki_size, align 4
  %268 = load ptr, ptr %pkt_octet_len.addr, align 8
  %269 = load i32, ptr %268, align 4
  %sub295 = sub i32 %269, %267
  store i32 %sub295, ptr %268, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

cleanup296:                                       ; preds = %if.end293, %cleanup, %if.then249, %if.then241, %if.end233, %if.then214, %if.then209, %if.then190, %if.then180, %if.then172, %if.then136, %if.then110, %if.then60, %if.then49, %if.then37, %if.then25, %if.else, %if.then4, %if.then2
  call void @llvm.lifetime.end.p0(i64 2, ptr %seq_to_set) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %roc_to_set) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %advance_packet_index) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %session_keys) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %mki_size) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %xtn_hdr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %prefix_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag_len) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp_tag) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %stream) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %iv) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %delta) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %est) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %auth_tag) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %enc_octet_len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %auth_start) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %enc_start) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #8
  %270 = load i32, ptr %retval, align 4
  ret i32 %270
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @srtp_unprotect_aead(ptr noundef %ctx, ptr noundef %stream, i32 noundef %delta, i64 noundef %est, ptr noundef %srtp_hdr, ptr noundef %pkt_octet_len, ptr noundef %session_keys, i32 noundef %mki_size) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  %delta.addr = alloca i32, align 4
  %est.addr = alloca i64, align 8
  %srtp_hdr.addr = alloca ptr, align 8
  %pkt_octet_len.addr = alloca ptr, align 8
  %session_keys.addr = alloca ptr, align 8
  %mki_size.addr = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %enc_start = alloca ptr, align 8
  %enc_octet_len = alloca i32, align 4
  %iv = alloca %union.v128_t, align 8
  %status = alloca i32, align 4
  %tag_len = alloca i32, align 4
  %aad_len = alloca i32, align 4
  %xtn_hdr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %data = alloca %struct.srtp_event_data_t, align 8
  %data54 = alloca %struct.srtp_event_data_t, align 8
  %data95 = alloca %struct.srtp_event_data_t, align 8
  %new_stream = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %stream, ptr %stream.addr, align 8
  store i32 %delta, ptr %delta.addr, align 4
  store i64 %est, ptr %est.addr, align 8
  store ptr %srtp_hdr, ptr %srtp_hdr.addr, align 8
  store ptr %pkt_octet_len, ptr %pkt_octet_len.addr, align 8
  store ptr %session_keys, ptr %session_keys.addr, align 8
  store i32 %mki_size, ptr %mki_size.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %hdr, align 8, !annotation !3
  %0 = load ptr, ptr %srtp_hdr.addr, align 8
  store ptr %0, ptr %hdr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %enc_start) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %enc_start, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %enc_octet_len) #8
  store i32 -1431655766, ptr %enc_octet_len, align 4, !annotation !3
  store i32 0, ptr %enc_octet_len, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr %iv) #8
  %1 = getelementptr inbounds %union.v128_t, ptr %iv, i32 0, i32 0
  %2 = getelementptr inbounds [2 x i64], ptr %1, i64 0, i64 0
  store i64 -6148914691236517206, ptr %2, align 8, !annotation !3
  %3 = getelementptr inbounds [2 x i64], ptr %1, i64 0, i64 1
  store i64 -6148914691236517206, ptr %3, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag_len) #8
  store i32 -1431655766, ptr %tag_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %aad_len) #8
  store i32 -1431655766, ptr %aad_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %xtn_hdr) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %xtn_hdr, align 8, !annotation !3
  store ptr null, ptr %xtn_hdr, align 8
  %4 = load i32, ptr @mod_srtp, align 8
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.45, ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr @mod_srtp, align 8
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %8 = load i64, ptr %est.addr, align 8
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.34, ptr noundef %7, i64 noundef %8)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %9 = load ptr, ptr %session_keys.addr, align 8
  %rtp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %rtp_auth, align 8
  %call = call i32 @srtp_auth_get_tag_length(ptr noundef %10)
  store i32 %call, ptr %tag_len, align 4
  %11 = load ptr, ptr %session_keys.addr, align 8
  %12 = load ptr, ptr %hdr, align 8
  call void @srtp_calc_aead_iv(ptr noundef %11, ptr noundef %iv, ptr noundef %est.addr, ptr noundef %12)
  %13 = load ptr, ptr %session_keys.addr, align 8
  %rtp_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %rtp_cipher, align 8
  %call4 = call i32 @srtp_cipher_set_iv(ptr noundef %14, ptr noundef %iv, i32 noundef 1)
  store i32 %call4, ptr %status, align 4
  %15 = load i32, ptr %status, align 4
  %tobool5 = icmp ne i32 %15, 0
  br i1 %tobool5, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %16 = load ptr, ptr %session_keys.addr, align 8
  %rtp_xtn_hdr_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %rtp_xtn_hdr_cipher, align 8
  %tobool6 = icmp ne ptr %17, null
  br i1 %tobool6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %land.lhs.true
  %arrayidx = getelementptr inbounds [4 x i32], ptr %iv, i64 0, i64 0
  store i32 0, ptr %arrayidx, align 8
  %18 = load ptr, ptr %hdr, align 8
  %ssrc = getelementptr inbounds %struct.srtp_hdr_t, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %ssrc, align 4
  %arrayidx8 = getelementptr inbounds [4 x i32], ptr %iv, i64 0, i64 1
  store i32 %19, ptr %arrayidx8, align 4
  %20 = load i64, ptr %est.addr, align 8
  %shl = shl i64 %20, 16
  %call9 = call i64 @be64_to_cpu(i64 noundef %shl)
  %arrayidx10 = getelementptr inbounds [2 x i64], ptr %iv, i64 0, i64 1
  store i64 %call9, ptr %arrayidx10, align 8
  %21 = load ptr, ptr %session_keys.addr, align 8
  %rtp_xtn_hdr_cipher11 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %rtp_xtn_hdr_cipher11, align 8
  %call12 = call i32 @srtp_cipher_set_iv(ptr noundef %22, ptr noundef %iv, i32 noundef 0)
  store i32 %call12, ptr %status, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %land.lhs.true, %if.end3
  %23 = load i32, ptr %status, align 4
  %tobool14 = icmp ne i32 %23, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup118

if.end16:                                         ; preds = %if.end13
  %24 = load ptr, ptr %hdr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %24, i64 3
  %25 = load ptr, ptr %hdr, align 8
  %bf.load = load i16, ptr %25, align 4
  %bf.clear = and i16 %bf.load, 15
  %bf.cast = trunc i16 %bf.clear to i8
  %conv = zext i8 %bf.cast to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr17 = getelementptr inbounds i32, ptr %add.ptr, i64 %idx.ext
  store ptr %add.ptr17, ptr %enc_start, align 8
  %26 = load ptr, ptr %hdr, align 8
  %bf.load18 = load i16, ptr %26, align 4
  %bf.lshr = lshr i16 %bf.load18, 4
  %bf.clear19 = and i16 %bf.lshr, 1
  %bf.cast20 = trunc i16 %bf.clear19 to i8
  %conv21 = zext i8 %bf.cast20 to i32
  %cmp = icmp eq i32 %conv21, 1
  br i1 %cmp, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.end16
  %27 = load ptr, ptr %enc_start, align 8
  store ptr %27, ptr %xtn_hdr, align 8
  %28 = load ptr, ptr %xtn_hdr, align 8
  %length = getelementptr inbounds %struct.srtp_hdr_xtnd_t, ptr %28, i32 0, i32 1
  %29 = load i16, ptr %length, align 2
  %call24 = call zeroext i16 @__bswap_16(i16 noundef zeroext %29)
  %conv25 = zext i16 %call24 to i32
  %add = add nsw i32 %conv25, 1
  %30 = load ptr, ptr %enc_start, align 8
  %idx.ext26 = sext i32 %add to i64
  %add.ptr27 = getelementptr inbounds i32, ptr %30, i64 %idx.ext26
  store ptr %add.ptr27, ptr %enc_start, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end16
  %31 = load ptr, ptr %enc_start, align 8
  %32 = load ptr, ptr %hdr, align 8
  %33 = load ptr, ptr %pkt_octet_len.addr, align 8
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %tag_len, align 4
  %sub = sub i32 %34, %35
  %36 = load i32, ptr %mki_size.addr, align 4
  %sub29 = sub i32 %sub, %36
  %idx.ext30 = zext i32 %sub29 to i64
  %add.ptr31 = getelementptr inbounds i8, ptr %32, i64 %idx.ext30
  %cmp32 = icmp ule ptr %31, %add.ptr31
  br i1 %cmp32, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.end28
  store i32 21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup118

if.end35:                                         ; preds = %if.end28
  %37 = load ptr, ptr %pkt_octet_len.addr, align 8
  %38 = load i32, ptr %37, align 4
  %39 = load i32, ptr %mki_size.addr, align 4
  %sub36 = sub i32 %38, %39
  %conv37 = zext i32 %sub36 to i64
  %40 = load ptr, ptr %enc_start, align 8
  %41 = load ptr, ptr %hdr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %40 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub38 = sub nsw i64 %conv37, %sub.ptr.sub
  %conv39 = trunc i64 %sub38 to i32
  store i32 %conv39, ptr %enc_octet_len, align 4
  %42 = load i32, ptr %enc_octet_len, align 4
  %43 = load i32, ptr %tag_len, align 4
  %cmp40 = icmp ult i32 %42, %43
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end35
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup118

if.end43:                                         ; preds = %if.end35
  %44 = load ptr, ptr %session_keys.addr, align 8
  %limit = getelementptr inbounds %struct.srtp_session_keys_t, ptr %44, i32 0, i32 9
  %45 = load ptr, ptr %limit, align 8
  %call44 = call i32 @srtp_key_limit_update(ptr noundef %45)
  switch i32 %call44, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
    i32 2, label %sw.bb51
  ]

sw.bb:                                            ; preds = %if.end43
  %46 = load ptr, ptr @srtp_event_handler, align 8
  %tobool45 = icmp ne ptr %46, null
  br i1 %tobool45, label %if.then46, label %if.end50

if.then46:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 16, ptr %data) #8
  %47 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 0
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %47, align 8, !annotation !3
  %48 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 1
  store i32 -1431655766, ptr %48, align 8, !annotation !3
  %49 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 2
  store i32 -1431655766, ptr %49, align 4, !annotation !3
  %50 = load ptr, ptr %ctx.addr, align 8
  %session = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 0
  store ptr %50, ptr %session, align 8
  %51 = load ptr, ptr %stream.addr, align 8
  %ssrc47 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %51, i32 0, i32 0
  %52 = load i32, ptr %ssrc47, align 8
  %call48 = call i32 @__bswap_32(i32 noundef %52)
  %ssrc49 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 1
  store i32 %call48, ptr %ssrc49, align 8
  %event = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 2
  store i32 1, ptr %event, align 4
  %53 = load ptr, ptr @srtp_event_handler, align 8
  call void %53(ptr noundef %data)
  call void @llvm.lifetime.end.p0(i64 16, ptr %data) #8
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %sw.bb
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end43
  %54 = load ptr, ptr @srtp_event_handler, align 8
  %tobool52 = icmp ne ptr %54, null
  br i1 %tobool52, label %if.then53, label %if.end60

if.then53:                                        ; preds = %sw.bb51
  call void @llvm.lifetime.start.p0(i64 16, ptr %data54) #8
  %55 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data54, i32 0, i32 0
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %55, align 8, !annotation !3
  %56 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data54, i32 0, i32 1
  store i32 -1431655766, ptr %56, align 8, !annotation !3
  %57 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data54, i32 0, i32 2
  store i32 -1431655766, ptr %57, align 4, !annotation !3
  %58 = load ptr, ptr %ctx.addr, align 8
  %session55 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data54, i32 0, i32 0
  store ptr %58, ptr %session55, align 8
  %59 = load ptr, ptr %stream.addr, align 8
  %ssrc56 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %59, i32 0, i32 0
  %60 = load i32, ptr %ssrc56, align 8
  %call57 = call i32 @__bswap_32(i32 noundef %60)
  %ssrc58 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data54, i32 0, i32 1
  store i32 %call57, ptr %ssrc58, align 8
  %event59 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data54, i32 0, i32 2
  store i32 2, ptr %event59, align 4
  %61 = load ptr, ptr @srtp_event_handler, align 8
  call void %61(ptr noundef %data54)
  call void @llvm.lifetime.end.p0(i64 16, ptr %data54) #8
  br label %if.end60

if.end60:                                         ; preds = %if.then53, %sw.bb51
  store i32 15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup118

sw.default:                                       ; preds = %if.end43
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end50, %if.end43
  %62 = load ptr, ptr %enc_start, align 8
  %63 = load ptr, ptr %hdr, align 8
  %sub.ptr.lhs.cast61 = ptrtoint ptr %62 to i64
  %sub.ptr.rhs.cast62 = ptrtoint ptr %63 to i64
  %sub.ptr.sub63 = sub i64 %sub.ptr.lhs.cast61, %sub.ptr.rhs.cast62
  %conv64 = trunc i64 %sub.ptr.sub63 to i32
  store i32 %conv64, ptr %aad_len, align 4
  %64 = load ptr, ptr %session_keys.addr, align 8
  %rtp_cipher65 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %rtp_cipher65, align 8
  %66 = load ptr, ptr %hdr, align 8
  %67 = load i32, ptr %aad_len, align 4
  %call66 = call i32 @srtp_cipher_set_aad(ptr noundef %65, ptr noundef %66, i32 noundef %67)
  store i32 %call66, ptr %status, align 4
  %68 = load i32, ptr %status, align 4
  %tobool67 = icmp ne i32 %68, 0
  br i1 %tobool67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %sw.epilog
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup118

if.end69:                                         ; preds = %sw.epilog
  %69 = load ptr, ptr %session_keys.addr, align 8
  %rtp_cipher70 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %rtp_cipher70, align 8
  %71 = load ptr, ptr %enc_start, align 8
  %call71 = call i32 @srtp_cipher_decrypt(ptr noundef %70, ptr noundef %71, ptr noundef %enc_octet_len)
  store i32 %call71, ptr %status, align 4
  %72 = load i32, ptr %status, align 4
  %tobool72 = icmp ne i32 %72, 0
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end69
  %73 = load i32, ptr %status, align 4
  store i32 %73, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup118

if.end74:                                         ; preds = %if.end69
  %74 = load ptr, ptr %xtn_hdr, align 8
  %tobool75 = icmp ne ptr %74, null
  br i1 %tobool75, label %land.lhs.true76, label %if.end84

land.lhs.true76:                                  ; preds = %if.end74
  %75 = load ptr, ptr %session_keys.addr, align 8
  %rtp_xtn_hdr_cipher77 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %75, i32 0, i32 1
  %76 = load ptr, ptr %rtp_xtn_hdr_cipher77, align 8
  %tobool78 = icmp ne ptr %76, null
  br i1 %tobool78, label %if.then79, label %if.end84

if.then79:                                        ; preds = %land.lhs.true76
  %77 = load ptr, ptr %stream.addr, align 8
  %78 = load ptr, ptr %xtn_hdr, align 8
  %79 = load ptr, ptr %session_keys.addr, align 8
  %call80 = call i32 @srtp_process_header_encryption(ptr noundef %77, ptr noundef %78, ptr noundef %79)
  store i32 %call80, ptr %status, align 4
  %80 = load i32, ptr %status, align 4
  %tobool81 = icmp ne i32 %80, 0
  br i1 %tobool81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.then79
  %81 = load i32, ptr %status, align 4
  store i32 %81, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup118

if.end83:                                         ; preds = %if.then79
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %land.lhs.true76, %if.end74
  %82 = load ptr, ptr %stream.addr, align 8
  %direction = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %82, i32 0, i32 7
  %83 = load i32, ptr %direction, align 4
  %cmp85 = icmp ne i32 %83, 2
  br i1 %cmp85, label %if.then87, label %if.end103

if.then87:                                        ; preds = %if.end84
  %84 = load ptr, ptr %stream.addr, align 8
  %direction88 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %84, i32 0, i32 7
  %85 = load i32, ptr %direction88, align 4
  %cmp89 = icmp eq i32 %85, 0
  br i1 %cmp89, label %if.then91, label %if.else

if.then91:                                        ; preds = %if.then87
  %86 = load ptr, ptr %stream.addr, align 8
  %direction92 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %86, i32 0, i32 7
  store i32 2, ptr %direction92, align 4
  br label %if.end102

if.else:                                          ; preds = %if.then87
  %87 = load ptr, ptr @srtp_event_handler, align 8
  %tobool93 = icmp ne ptr %87, null
  br i1 %tobool93, label %if.then94, label %if.end101

if.then94:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 16, ptr %data95) #8
  %88 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data95, i32 0, i32 0
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %88, align 8, !annotation !3
  %89 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data95, i32 0, i32 1
  store i32 -1431655766, ptr %89, align 8, !annotation !3
  %90 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data95, i32 0, i32 2
  store i32 -1431655766, ptr %90, align 4, !annotation !3
  %91 = load ptr, ptr %ctx.addr, align 8
  %session96 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data95, i32 0, i32 0
  store ptr %91, ptr %session96, align 8
  %92 = load ptr, ptr %stream.addr, align 8
  %ssrc97 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %92, i32 0, i32 0
  %93 = load i32, ptr %ssrc97, align 8
  %call98 = call i32 @__bswap_32(i32 noundef %93)
  %ssrc99 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data95, i32 0, i32 1
  store i32 %call98, ptr %ssrc99, align 8
  %event100 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data95, i32 0, i32 2
  store i32 0, ptr %event100, align 4
  %94 = load ptr, ptr @srtp_event_handler, align 8
  call void %94(ptr noundef %data95)
  call void @llvm.lifetime.end.p0(i64 16, ptr %data95) #8
  br label %if.end101

if.end101:                                        ; preds = %if.then94, %if.else
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.then91
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.end84
  %95 = load ptr, ptr %stream.addr, align 8
  %96 = load ptr, ptr %ctx.addr, align 8
  %stream_template = getelementptr inbounds %struct.srtp_ctx_t_, ptr %96, i32 0, i32 1
  %97 = load ptr, ptr %stream_template, align 8
  %cmp104 = icmp eq ptr %95, %97
  br i1 %cmp104, label %if.then106, label %if.end114

if.then106:                                       ; preds = %if.end103
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_stream) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %new_stream, align 8, !annotation !3
  %98 = load ptr, ptr %ctx.addr, align 8
  %stream_template107 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %98, i32 0, i32 1
  %99 = load ptr, ptr %stream_template107, align 8
  %100 = load ptr, ptr %hdr, align 8
  %ssrc108 = getelementptr inbounds %struct.srtp_hdr_t, ptr %100, i32 0, i32 3
  %101 = load i32, ptr %ssrc108, align 4
  %call109 = call i32 @srtp_stream_clone(ptr noundef %99, i32 noundef %101, ptr noundef %new_stream)
  store i32 %call109, ptr %status, align 4
  %102 = load i32, ptr %status, align 4
  %tobool110 = icmp ne i32 %102, 0
  br i1 %tobool110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.then106
  %103 = load i32, ptr %status, align 4
  store i32 %103, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end112:                                        ; preds = %if.then106
  %104 = load ptr, ptr %ctx.addr, align 8
  %stream_list = getelementptr inbounds %struct.srtp_ctx_t_, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %stream_list, align 8
  %106 = load ptr, ptr %new_stream, align 8
  %next = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %106, i32 0, i32 13
  store ptr %105, ptr %next, align 8
  %107 = load ptr, ptr %new_stream, align 8
  %108 = load ptr, ptr %ctx.addr, align 8
  %stream_list113 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %108, i32 0, i32 0
  store ptr %107, ptr %stream_list113, align 8
  %109 = load ptr, ptr %new_stream, align 8
  store ptr %109, ptr %stream.addr, align 8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %if.then111
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_stream) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup118 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end114

if.end114:                                        ; preds = %cleanup.cont, %if.end103
  %110 = load ptr, ptr %stream.addr, align 8
  %rtp_rdbx = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %110, i32 0, i32 3
  %111 = load i32, ptr %delta.addr, align 4
  %call115 = call i32 @srtp_rdbx_add_index(ptr noundef %rtp_rdbx, i32 noundef %111)
  %112 = load i32, ptr %tag_len, align 4
  %113 = load ptr, ptr %pkt_octet_len.addr, align 8
  %114 = load i32, ptr %113, align 4
  %sub116 = sub i32 %114, %112
  store i32 %sub116, ptr %113, align 4
  %115 = load i32, ptr %mki_size.addr, align 4
  %116 = load ptr, ptr %pkt_octet_len.addr, align 8
  %117 = load i32, ptr %116, align 4
  %sub117 = sub i32 %117, %115
  store i32 %sub117, ptr %116, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup118

cleanup118:                                       ; preds = %if.end114, %cleanup, %if.then82, %if.then73, %if.then68, %if.end60, %if.then42, %if.then34, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %xtn_hdr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %aad_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %iv) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %enc_octet_len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %enc_start) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #8
  %118 = load i32, ptr %retval, align 4
  ret i32 %118
}

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_octet_string_is_eq(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_cipher_decrypt(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_init() #0 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  %call = call i32 @srtp_crypto_kernel_init()
  store i32 %call, ptr %status, align 4
  %0 = load i32, ptr %status, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4
  store i32 %1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @srtp_crypto_kernel_load_debug_module(ptr noundef @mod_srtp)
  store i32 %call1, ptr %status, align 4
  %2 = load i32, ptr %status, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %status, align 4
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_crypto_kernel_init() #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_crypto_kernel_load_debug_module(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_shutdown() #0 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  %call = call i32 @srtp_crypto_kernel_shutdown()
  store i32 %call, ptr %status, align 4
  %0 = load i32, ptr %status, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4
  store i32 %1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_crypto_kernel_shutdown() #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_dealloc(ptr noundef %session) #0 {
entry:
  %retval = alloca i32, align 4
  %session.addr = alloca ptr, align 8
  %stream = alloca ptr, align 8
  %status = alloca i32, align 4
  %next = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %session, ptr %session.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %stream) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %stream, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  %0 = load ptr, ptr %session.addr, align 8
  %stream_list = getelementptr inbounds %struct.srtp_ctx_t_, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %stream_list, align 8
  store ptr %1, ptr %stream, align 8
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %2 = load ptr, ptr %stream, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %next, align 8, !annotation !3
  %3 = load ptr, ptr %stream, align 8
  %next1 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %3, i32 0, i32 13
  %4 = load ptr, ptr %next1, align 8
  store ptr %4, ptr %next, align 8
  %5 = load ptr, ptr %stream, align 8
  %6 = load ptr, ptr %session.addr, align 8
  %stream_template = getelementptr inbounds %struct.srtp_ctx_t_, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %stream_template, align 8
  %call = call i32 @srtp_stream_dealloc(ptr noundef %5, ptr noundef %7)
  store i32 %call, ptr %status, align 4
  %8 = load i32, ptr %status, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load i32, ptr %status, align 4
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body
  %10 = load ptr, ptr %next, align 8
  store ptr %10, ptr %stream, align 8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup11 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  %11 = load ptr, ptr %session.addr, align 8
  %stream_template2 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %stream_template2, align 8
  %cmp3 = icmp ne ptr %12, null
  br i1 %cmp3, label %if.then4, label %if.end10

if.then4:                                         ; preds = %while.end
  %13 = load ptr, ptr %session.addr, align 8
  %stream_template5 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %stream_template5, align 8
  %call6 = call i32 @srtp_stream_dealloc(ptr noundef %14, ptr noundef null)
  store i32 %call6, ptr %status, align 4
  %15 = load i32, ptr %status, align 4
  %tobool7 = icmp ne i32 %15, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then4
  %16 = load i32, ptr %status, align 4
  store i32 %16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup11

if.end9:                                          ; preds = %if.then4
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %while.end
  %17 = load ptr, ptr %session.addr, align 8
  call void @srtp_crypto_free(ptr noundef %17)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup11

cleanup11:                                        ; preds = %if.end10, %if.then8, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %stream) #8
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_add_stream(ptr noundef %session, ptr noundef %policy) #0 {
entry:
  %retval = alloca i32, align 4
  %session.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %session, ptr %session.addr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %tmp, align 8, !annotation !3
  %0 = load ptr, ptr %session.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %policy.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %policy.addr, align 8
  %call = call i32 @srtp_validate_policy_master_keys(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %policy.addr, align 8
  %call3 = call i32 @srtp_stream_alloc(ptr noundef %tmp, ptr noundef %3)
  store i32 %call3, ptr %status, align 4
  %4 = load i32, ptr %status, align 4
  %tobool4 = icmp ne i32 %4, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %5 = load i32, ptr %status, align 4
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %tmp, align 8
  %7 = load ptr, ptr %policy.addr, align 8
  %call7 = call i32 @srtp_stream_init(ptr noundef %6, ptr noundef %7)
  store i32 %call7, ptr %status, align 4
  %8 = load i32, ptr %status, align 4
  %tobool8 = icmp ne i32 %8, 0
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %9 = load ptr, ptr %tmp, align 8
  %call10 = call i32 @srtp_stream_dealloc(ptr noundef %9, ptr noundef null)
  %10 = load i32, ptr %status, align 4
  store i32 %10, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %11 = load ptr, ptr %policy.addr, align 8
  %ssrc = getelementptr inbounds %struct.srtp_policy_t, ptr %11, i32 0, i32 0
  %type = getelementptr inbounds %struct.srtp_ssrc_t, ptr %ssrc, i32 0, i32 0
  %12 = load i32, ptr %type, align 8
  switch i32 %12, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb18
    i32 1, label %sw.bb27
    i32 0, label %sw.bb29
  ]

sw.bb:                                            ; preds = %if.end11
  %13 = load ptr, ptr %session.addr, align 8
  %stream_template = getelementptr inbounds %struct.srtp_ctx_t_, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %stream_template, align 8
  %tobool12 = icmp ne ptr %14, null
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %sw.bb
  %15 = load ptr, ptr %tmp, align 8
  %call14 = call i32 @srtp_stream_dealloc(ptr noundef %15, ptr noundef null)
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %sw.bb
  %16 = load ptr, ptr %tmp, align 8
  %17 = load ptr, ptr %session.addr, align 8
  %stream_template16 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %17, i32 0, i32 1
  store ptr %16, ptr %stream_template16, align 8
  %18 = load ptr, ptr %session.addr, align 8
  %stream_template17 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %stream_template17, align 8
  %direction = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %19, i32 0, i32 7
  store i32 1, ptr %direction, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end11
  %20 = load ptr, ptr %session.addr, align 8
  %stream_template19 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %stream_template19, align 8
  %tobool20 = icmp ne ptr %21, null
  br i1 %tobool20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %sw.bb18
  %22 = load ptr, ptr %tmp, align 8
  %call22 = call i32 @srtp_stream_dealloc(ptr noundef %22, ptr noundef null)
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %sw.bb18
  %23 = load ptr, ptr %tmp, align 8
  %24 = load ptr, ptr %session.addr, align 8
  %stream_template24 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %24, i32 0, i32 1
  store ptr %23, ptr %stream_template24, align 8
  %25 = load ptr, ptr %session.addr, align 8
  %stream_template25 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %stream_template25, align 8
  %direction26 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %26, i32 0, i32 7
  store i32 2, ptr %direction26, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end11
  %27 = load ptr, ptr %session.addr, align 8
  %stream_list = getelementptr inbounds %struct.srtp_ctx_t_, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %stream_list, align 8
  %29 = load ptr, ptr %tmp, align 8
  %next = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %29, i32 0, i32 13
  store ptr %28, ptr %next, align 8
  %30 = load ptr, ptr %tmp, align 8
  %31 = load ptr, ptr %session.addr, align 8
  %stream_list28 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %31, i32 0, i32 0
  store ptr %30, ptr %stream_list28, align 8
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end11
  br label %sw.default

sw.default:                                       ; preds = %if.end11, %sw.bb29
  %32 = load ptr, ptr %tmp, align 8
  %call30 = call i32 @srtp_stream_dealloc(ptr noundef %32, ptr noundef null)
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb27, %if.end23, %if.end15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then21, %if.then13, %if.then9, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_create(ptr noundef %session, ptr noundef %policy) #0 {
entry:
  %retval = alloca i32, align 4
  %session.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %stat = alloca i32, align 4
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %session, ptr %session.addr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %stat) #8
  store i32 -1431655766, ptr %stat, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %ctx, align 8, !annotation !3
  %0 = load ptr, ptr %session.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @srtp_crypto_alloc(i64 noundef 24)
  store ptr %call, ptr %ctx, align 8
  %1 = load ptr, ptr %ctx, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %ctx, align 8
  %3 = load ptr, ptr %session.addr, align 8
  store ptr %2, ptr %3, align 8
  %4 = load ptr, ptr %ctx, align 8
  %stream_template = getelementptr inbounds %struct.srtp_ctx_t_, ptr %4, i32 0, i32 1
  store ptr null, ptr %stream_template, align 8
  %5 = load ptr, ptr %ctx, align 8
  %stream_list = getelementptr inbounds %struct.srtp_ctx_t_, ptr %5, i32 0, i32 0
  store ptr null, ptr %stream_list, align 8
  %6 = load ptr, ptr %ctx, align 8
  %user_data = getelementptr inbounds %struct.srtp_ctx_t_, ptr %6, i32 0, i32 2
  store ptr null, ptr %user_data, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %if.end3
  %7 = load ptr, ptr %policy.addr, align 8
  %cmp4 = icmp ne ptr %7, null
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %ctx, align 8
  %9 = load ptr, ptr %policy.addr, align 8
  %call5 = call i32 @srtp_add_stream(ptr noundef %8, ptr noundef %9)
  store i32 %call5, ptr %stat, align 4
  %10 = load i32, ptr %stat, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then6, label %if.end8

if.then6:                                         ; preds = %while.body
  %11 = load ptr, ptr %session.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %call7 = call i32 @srtp_dealloc(ptr noundef %12)
  %13 = load ptr, ptr %session.addr, align 8
  store ptr null, ptr %13, align 8
  %14 = load i32, ptr %stat, align 4
  store i32 %14, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %while.body
  %15 = load ptr, ptr %policy.addr, align 8
  %next = getelementptr inbounds %struct.srtp_policy_t, ptr %15, i32 0, i32 11
  %16 = load ptr, ptr %next, align 8
  store ptr %16, ptr %policy.addr, align 8
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %stat) #8
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_remove_stream(ptr noundef %session, i32 noundef %ssrc) #0 {
entry:
  %retval = alloca i32, align 4
  %session.addr = alloca ptr, align 8
  %ssrc.addr = alloca i32, align 4
  %stream = alloca ptr, align 8
  %last_stream = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %session, ptr %session.addr, align 8
  store i32 %ssrc, ptr %ssrc.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %stream) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %stream, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_stream) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %last_stream, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  %0 = load ptr, ptr %session.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %session.addr, align 8
  %stream_list = getelementptr inbounds %struct.srtp_ctx_t_, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %stream_list, align 8
  store ptr %2, ptr %stream, align 8
  store ptr %2, ptr %last_stream, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load ptr, ptr %stream, align 8
  %cmp1 = icmp ne ptr %3, null
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, ptr %ssrc.addr, align 4
  %5 = load ptr, ptr %stream, align 8
  %ssrc2 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %ssrc2, align 8
  %cmp3 = icmp ne i32 %4, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %stream, align 8
  store ptr %8, ptr %last_stream, align 8
  %9 = load ptr, ptr %stream, align 8
  %next = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %9, i32 0, i32 13
  %10 = load ptr, ptr %next, align 8
  store ptr %10, ptr %stream, align 8
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %land.end
  %11 = load ptr, ptr %stream, align 8
  %cmp4 = icmp eq ptr %11, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.end
  store i32 13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %while.end
  %12 = load ptr, ptr %last_stream, align 8
  %13 = load ptr, ptr %stream, align 8
  %cmp7 = icmp eq ptr %12, %13
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  %14 = load ptr, ptr %stream, align 8
  %next9 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %14, i32 0, i32 13
  %15 = load ptr, ptr %next9, align 8
  %16 = load ptr, ptr %session.addr, align 8
  %stream_list10 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %16, i32 0, i32 0
  store ptr %15, ptr %stream_list10, align 8
  br label %if.end13

if.else:                                          ; preds = %if.end6
  %17 = load ptr, ptr %stream, align 8
  %next11 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %17, i32 0, i32 13
  %18 = load ptr, ptr %next11, align 8
  %19 = load ptr, ptr %last_stream, align 8
  %next12 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %19, i32 0, i32 13
  store ptr %18, ptr %next12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8
  %20 = load ptr, ptr %stream, align 8
  %21 = load ptr, ptr %session.addr, align 8
  %stream_template = getelementptr inbounds %struct.srtp_ctx_t_, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %stream_template, align 8
  %call = call i32 @srtp_stream_dealloc(ptr noundef %20, ptr noundef %22)
  store i32 %call, ptr %status, align 4
  %23 = load i32, ptr %status, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end13
  %24 = load i32, ptr %status, align 4
  store i32 %24, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_stream) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %stream) #8
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_update(ptr noundef %session, ptr noundef %policy) #0 {
entry:
  %retval = alloca i32, align 4
  %session.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %stat = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %session, ptr %session.addr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %stat) #8
  store i32 -1431655766, ptr %stat, align 4, !annotation !3
  %0 = load ptr, ptr %session.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %policy.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %policy.addr, align 8
  %call = call i32 @srtp_validate_policy_master_keys(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %if.end
  %3 = load ptr, ptr %policy.addr, align 8
  %cmp3 = icmp ne ptr %3, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %session.addr, align 8
  %5 = load ptr, ptr %policy.addr, align 8
  %call4 = call i32 @srtp_update_stream(ptr noundef %4, ptr noundef %5)
  store i32 %call4, ptr %stat, align 4
  %6 = load i32, ptr %stat, align 4
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %while.body
  %7 = load i32, ptr %stat, align 4
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %while.body
  %8 = load ptr, ptr %policy.addr, align 8
  %next = getelementptr inbounds %struct.srtp_policy_t, ptr %8, i32 0, i32 11
  %9 = load ptr, ptr %next, align 8
  store ptr %9, ptr %policy.addr, align 8
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %stat) #8
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_update_stream(ptr noundef %session, ptr noundef %policy) #0 {
entry:
  %retval = alloca i32, align 4
  %session.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %session, ptr %session.addr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  %0 = load ptr, ptr %session.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %policy.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %policy.addr, align 8
  %call = call i32 @srtp_validate_policy_master_keys(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %policy.addr, align 8
  %ssrc = getelementptr inbounds %struct.srtp_policy_t, ptr %3, i32 0, i32 0
  %type = getelementptr inbounds %struct.srtp_ssrc_t, ptr %ssrc, i32 0, i32 0
  %4 = load i32, ptr %type, align 8
  switch i32 %4, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb4
    i32 0, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %5 = load ptr, ptr %session.addr, align 8
  %6 = load ptr, ptr %policy.addr, align 8
  %call3 = call i32 @update_template_streams(ptr noundef %5, ptr noundef %6)
  store i32 %call3, ptr %status, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %7 = load ptr, ptr %session.addr, align 8
  %8 = load ptr, ptr %policy.addr, align 8
  %call5 = call i32 @update_stream(ptr noundef %7, ptr noundef %8)
  store i32 %call5, ptr %status, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  br label %sw.default

sw.default:                                       ; preds = %if.end, %sw.bb6
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %9 = load i32, ptr %status, align 4
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @update_template_streams(ptr noundef %session, ptr noundef %policy) #0 {
entry:
  %retval = alloca i32, align 4
  %session.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %new_stream_template = alloca ptr, align 8
  %new_stream_list = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %stream = alloca ptr, align 8
  %ssrc = alloca i32, align 4
  %old_index = alloca i64, align 8
  %old_rtcp_rdb = alloca %struct.srtp_rdb_t, align 8
  %next23 = alloca ptr, align 8
  %next35 = alloca ptr, align 8
  %tail = alloca ptr, align 8
  store ptr %session, ptr %session.addr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_stream_template) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %new_stream_template, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_stream_list) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %new_stream_list, align 8, !annotation !3
  store ptr null, ptr %new_stream_list, align 8
  %0 = load ptr, ptr %session.addr, align 8
  %stream_template = getelementptr inbounds %struct.srtp_ctx_t_, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %stream_template, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %policy.addr, align 8
  %call = call i32 @srtp_stream_alloc(ptr noundef %new_stream_template, ptr noundef %2)
  store i32 %call, ptr %status, align 4
  %3 = load i32, ptr %status, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %4 = load i32, ptr %status, align 4
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63

if.end2:                                          ; preds = %if.end
  %5 = load ptr, ptr %new_stream_template, align 8
  %6 = load ptr, ptr %policy.addr, align 8
  %call3 = call i32 @srtp_stream_init(ptr noundef %5, ptr noundef %6)
  store i32 %call3, ptr %status, align 4
  %7 = load i32, ptr %status, align 4
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end2
  %8 = load ptr, ptr %new_stream_template, align 8
  call void @srtp_crypto_free(ptr noundef %8)
  %9 = load i32, ptr %status, align 4
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63

if.end6:                                          ; preds = %if.end2
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %stream) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %stream, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ssrc) #8
  store i32 -1431655766, ptr %ssrc, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_index) #8
  store i64 -6148914691236517206, ptr %old_index, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 24, ptr %old_rtcp_rdb) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %old_rtcp_rdb, ptr align 8 @__const.update_template_streams.old_rtcp_rdb, i64 24, i1 false), !annotation !3
  %10 = load ptr, ptr %session.addr, align 8
  %stream_list = getelementptr inbounds %struct.srtp_ctx_t_, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %stream_list, align 8
  store ptr %11, ptr %stream, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %12 = load ptr, ptr %stream, align 8
  %cmp7 = icmp ne ptr %12, null
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load ptr, ptr %stream, align 8
  %session_keys = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %session_keys, align 8
  %arrayidx = getelementptr inbounds %struct.srtp_session_keys_t, ptr %14, i64 0
  %rtp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %arrayidx, i32 0, i32 2
  %15 = load ptr, ptr %rtp_auth, align 8
  %16 = load ptr, ptr %session.addr, align 8
  %stream_template8 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %stream_template8, align 8
  %session_keys9 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %session_keys9, align 8
  %arrayidx10 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %18, i64 0
  %rtp_auth11 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %arrayidx10, i32 0, i32 2
  %19 = load ptr, ptr %rtp_auth11, align 8
  %cmp12 = icmp ne ptr %15, %19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp12, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load ptr, ptr %stream, align 8
  %next = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %21, i32 0, i32 13
  %22 = load ptr, ptr %next, align 8
  store ptr %22, ptr %stream, align 8
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %land.end
  %23 = load ptr, ptr %stream, align 8
  %cmp13 = icmp eq ptr %23, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %while.end
  %24 = load ptr, ptr %stream, align 8
  %ssrc16 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %ssrc16, align 8
  store i32 %25, ptr %ssrc, align 4
  %26 = load ptr, ptr %stream, align 8
  %rtp_rdbx = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %26, i32 0, i32 3
  %index = getelementptr inbounds %struct.srtp_rdbx_t, ptr %rtp_rdbx, i32 0, i32 0
  %27 = load i64, ptr %index, align 8
  store i64 %27, ptr %old_index, align 8
  %28 = load ptr, ptr %stream, align 8
  %rtcp_rdb = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %28, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %old_rtcp_rdb, ptr align 8 %rtcp_rdb, i64 24, i1 false)
  %29 = load ptr, ptr %session.addr, align 8
  %30 = load i32, ptr %ssrc, align 4
  %call17 = call i32 @srtp_remove_stream(ptr noundef %29, i32 noundef %30)
  store i32 %call17, ptr %status, align 4
  %31 = load i32, ptr %status, align 4
  %tobool18 = icmp ne i32 %31, 0
  br i1 %tobool18, label %if.then19, label %if.end28

if.then19:                                        ; preds = %if.end15
  br label %while.cond20

while.cond20:                                     ; preds = %while.body22, %if.then19
  %32 = load ptr, ptr %new_stream_list, align 8
  %cmp21 = icmp ne ptr %32, null
  br i1 %cmp21, label %while.body22, label %while.end26

while.body22:                                     ; preds = %while.cond20
  call void @llvm.lifetime.start.p0(i64 8, ptr %next23) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %next23, align 8, !annotation !3
  %33 = load ptr, ptr %new_stream_list, align 8
  %next24 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %33, i32 0, i32 13
  %34 = load ptr, ptr %next24, align 8
  store ptr %34, ptr %next23, align 8
  %35 = load ptr, ptr %new_stream_list, align 8
  %36 = load ptr, ptr %new_stream_template, align 8
  %call25 = call i32 @srtp_stream_dealloc(ptr noundef %35, ptr noundef %36)
  %37 = load ptr, ptr %next23, align 8
  store ptr %37, ptr %new_stream_list, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %next23) #8
  br label %while.cond20, !llvm.loop !25

while.end26:                                      ; preds = %while.cond20
  %38 = load ptr, ptr %new_stream_template, align 8
  %call27 = call i32 @srtp_stream_dealloc(ptr noundef %38, ptr noundef null)
  %39 = load i32, ptr %status, align 4
  store i32 %39, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.end15
  %40 = load ptr, ptr %new_stream_template, align 8
  %41 = load i32, ptr %ssrc, align 4
  %call29 = call i32 @srtp_stream_clone(ptr noundef %40, i32 noundef %41, ptr noundef %stream)
  store i32 %call29, ptr %status, align 4
  %42 = load i32, ptr %status, align 4
  %tobool30 = icmp ne i32 %42, 0
  br i1 %tobool30, label %if.then31, label %if.end40

if.then31:                                        ; preds = %if.end28
  br label %while.cond32

while.cond32:                                     ; preds = %while.body34, %if.then31
  %43 = load ptr, ptr %new_stream_list, align 8
  %cmp33 = icmp ne ptr %43, null
  br i1 %cmp33, label %while.body34, label %while.end38

while.body34:                                     ; preds = %while.cond32
  call void @llvm.lifetime.start.p0(i64 8, ptr %next35) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %next35, align 8, !annotation !3
  %44 = load ptr, ptr %new_stream_list, align 8
  %next36 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %44, i32 0, i32 13
  %45 = load ptr, ptr %next36, align 8
  store ptr %45, ptr %next35, align 8
  %46 = load ptr, ptr %new_stream_list, align 8
  %47 = load ptr, ptr %new_stream_template, align 8
  %call37 = call i32 @srtp_stream_dealloc(ptr noundef %46, ptr noundef %47)
  %48 = load ptr, ptr %next35, align 8
  store ptr %48, ptr %new_stream_list, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %next35) #8
  br label %while.cond32, !llvm.loop !26

while.end38:                                      ; preds = %while.cond32
  %49 = load ptr, ptr %new_stream_template, align 8
  %call39 = call i32 @srtp_stream_dealloc(ptr noundef %49, ptr noundef null)
  %50 = load i32, ptr %status, align 4
  store i32 %50, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.end28
  %51 = load ptr, ptr %new_stream_list, align 8
  %52 = load ptr, ptr %stream, align 8
  %next41 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %52, i32 0, i32 13
  store ptr %51, ptr %next41, align 8
  %53 = load ptr, ptr %stream, align 8
  store ptr %53, ptr %new_stream_list, align 8
  %54 = load i64, ptr %old_index, align 8
  %55 = load ptr, ptr %stream, align 8
  %rtp_rdbx42 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %55, i32 0, i32 3
  %index43 = getelementptr inbounds %struct.srtp_rdbx_t, ptr %rtp_rdbx42, i32 0, i32 0
  store i64 %54, ptr %index43, align 8
  %56 = load ptr, ptr %stream, align 8
  %rtcp_rdb44 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %56, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rtcp_rdb44, ptr align 8 %old_rtcp_rdb, i64 24, i1 false)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %while.end38, %while.end26, %if.then14
  call void @llvm.lifetime.end.p0(i64 24, ptr %old_rtcp_rdb) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_index) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ssrc) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %stream) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup63 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end:                                          ; preds = %cleanup
  %57 = load ptr, ptr %session.addr, align 8
  %stream_template48 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %57, i32 0, i32 1
  %58 = load ptr, ptr %stream_template48, align 8
  %call49 = call i32 @srtp_stream_dealloc(ptr noundef %58, ptr noundef null)
  %59 = load ptr, ptr %new_stream_template, align 8
  %60 = load ptr, ptr %session.addr, align 8
  %stream_template50 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %60, i32 0, i32 1
  store ptr %59, ptr %stream_template50, align 8
  %61 = load ptr, ptr %new_stream_list, align 8
  %tobool51 = icmp ne ptr %61, null
  br i1 %tobool51, label %if.then52, label %if.end62

if.then52:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %tail, align 8, !annotation !3
  %62 = load ptr, ptr %new_stream_list, align 8
  store ptr %62, ptr %tail, align 8
  br label %while.cond53

while.cond53:                                     ; preds = %while.body56, %if.then52
  %63 = load ptr, ptr %tail, align 8
  %next54 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %63, i32 0, i32 13
  %64 = load ptr, ptr %next54, align 8
  %tobool55 = icmp ne ptr %64, null
  br i1 %tobool55, label %while.body56, label %while.end58

while.body56:                                     ; preds = %while.cond53
  %65 = load ptr, ptr %tail, align 8
  %next57 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %65, i32 0, i32 13
  %66 = load ptr, ptr %next57, align 8
  store ptr %66, ptr %tail, align 8
  br label %while.cond53, !llvm.loop !27

while.end58:                                      ; preds = %while.cond53
  %67 = load ptr, ptr %session.addr, align 8
  %stream_list59 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %stream_list59, align 8
  %69 = load ptr, ptr %tail, align 8
  %next60 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %69, i32 0, i32 13
  store ptr %68, ptr %next60, align 8
  %70 = load ptr, ptr %new_stream_list, align 8
  %71 = load ptr, ptr %session.addr, align 8
  %stream_list61 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %71, i32 0, i32 0
  store ptr %70, ptr %stream_list61, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail) #8
  br label %if.end62

if.end62:                                         ; preds = %while.end58, %for.end
  %72 = load i32, ptr %status, align 4
  store i32 %72, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63

cleanup63:                                        ; preds = %if.end62, %cleanup, %if.then5, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_stream_list) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_stream_template) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  %73 = load i32, ptr %retval, align 4
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @update_stream(ptr noundef %session, ptr noundef %policy) #0 {
entry:
  %retval = alloca i32, align 4
  %session.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %old_index = alloca i64, align 8
  %old_rtcp_rdb = alloca %struct.srtp_rdb_t, align 8
  %stream = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %session, ptr %session.addr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_index) #8
  store i64 -6148914691236517206, ptr %old_index, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 24, ptr %old_rtcp_rdb) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %old_rtcp_rdb, ptr align 8 @__const.update_stream.old_rtcp_rdb, i64 24, i1 false), !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %stream) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %stream, align 8, !annotation !3
  %0 = load ptr, ptr %session.addr, align 8
  %1 = load ptr, ptr %policy.addr, align 8
  %ssrc = getelementptr inbounds %struct.srtp_policy_t, ptr %1, i32 0, i32 0
  %value = getelementptr inbounds %struct.srtp_ssrc_t, ptr %ssrc, i32 0, i32 1
  %2 = load i32, ptr %value, align 4
  %call = call i32 @__bswap_32(i32 noundef %2)
  %call1 = call ptr @srtp_get_stream(ptr noundef %0, i32 noundef %call)
  store ptr %call1, ptr %stream, align 8
  %3 = load ptr, ptr %stream, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %stream, align 8
  %rtp_rdbx = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %4, i32 0, i32 3
  %index = getelementptr inbounds %struct.srtp_rdbx_t, ptr %rtp_rdbx, i32 0, i32 0
  %5 = load i64, ptr %index, align 8
  store i64 %5, ptr %old_index, align 8
  %6 = load ptr, ptr %stream, align 8
  %rtcp_rdb = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %6, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %old_rtcp_rdb, ptr align 8 %rtcp_rdb, i64 24, i1 false)
  %7 = load ptr, ptr %session.addr, align 8
  %8 = load ptr, ptr %policy.addr, align 8
  %ssrc2 = getelementptr inbounds %struct.srtp_policy_t, ptr %8, i32 0, i32 0
  %value3 = getelementptr inbounds %struct.srtp_ssrc_t, ptr %ssrc2, i32 0, i32 1
  %9 = load i32, ptr %value3, align 4
  %call4 = call i32 @__bswap_32(i32 noundef %9)
  %call5 = call i32 @srtp_remove_stream(ptr noundef %7, i32 noundef %call4)
  store i32 %call5, ptr %status, align 4
  %10 = load i32, ptr %status, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %11 = load i32, ptr %status, align 4
  store i32 %11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %12 = load ptr, ptr %session.addr, align 8
  %13 = load ptr, ptr %policy.addr, align 8
  %call8 = call i32 @srtp_add_stream(ptr noundef %12, ptr noundef %13)
  store i32 %call8, ptr %status, align 4
  %14 = load i32, ptr %status, align 4
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  %15 = load i32, ptr %status, align 4
  store i32 %15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %16 = load ptr, ptr %session.addr, align 8
  %17 = load ptr, ptr %policy.addr, align 8
  %ssrc12 = getelementptr inbounds %struct.srtp_policy_t, ptr %17, i32 0, i32 0
  %value13 = getelementptr inbounds %struct.srtp_ssrc_t, ptr %ssrc12, i32 0, i32 1
  %18 = load i32, ptr %value13, align 4
  %call14 = call i32 @__bswap_32(i32 noundef %18)
  %call15 = call ptr @srtp_get_stream(ptr noundef %16, i32 noundef %call14)
  store ptr %call15, ptr %stream, align 8
  %19 = load ptr, ptr %stream, align 8
  %cmp16 = icmp eq ptr %19, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end11
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %20 = load i64, ptr %old_index, align 8
  %21 = load ptr, ptr %stream, align 8
  %rtp_rdbx19 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %21, i32 0, i32 3
  %index20 = getelementptr inbounds %struct.srtp_rdbx_t, ptr %rtp_rdbx19, i32 0, i32 0
  store i64 %20, ptr %index20, align 8
  %22 = load ptr, ptr %stream, align 8
  %rtcp_rdb21 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %22, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rtcp_rdb21, ptr align 8 %old_rtcp_rdb, i64 24, i1 false)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then17, %if.then10, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %stream) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr %old_rtcp_rdb) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_index) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_crypto_policy_set_rtp_default(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cipher_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %0, i32 0, i32 0
  store i32 1, ptr %cipher_type, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %cipher_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %1, i32 0, i32 1
  store i32 30, ptr %cipher_key_len, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %auth_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %2, i32 0, i32 2
  store i32 3, ptr %auth_type, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %auth_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %3, i32 0, i32 3
  store i32 20, ptr %auth_key_len, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %auth_tag_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %4, i32 0, i32 4
  store i32 10, ptr %auth_tag_len, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %sec_serv = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %5, i32 0, i32 5
  store i32 3, ptr %sec_serv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_crypto_policy_set_rtcp_default(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cipher_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %0, i32 0, i32 0
  store i32 1, ptr %cipher_type, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %cipher_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %1, i32 0, i32 1
  store i32 30, ptr %cipher_key_len, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %auth_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %2, i32 0, i32 2
  store i32 3, ptr %auth_type, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %auth_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %3, i32 0, i32 3
  store i32 20, ptr %auth_key_len, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %auth_tag_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %4, i32 0, i32 4
  store i32 10, ptr %auth_tag_len, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %sec_serv = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %5, i32 0, i32 5
  store i32 3, ptr %sec_serv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_crypto_policy_set_aes_cm_128_hmac_sha1_32(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cipher_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %0, i32 0, i32 0
  store i32 1, ptr %cipher_type, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %cipher_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %1, i32 0, i32 1
  store i32 30, ptr %cipher_key_len, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %auth_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %2, i32 0, i32 2
  store i32 3, ptr %auth_type, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %auth_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %3, i32 0, i32 3
  store i32 20, ptr %auth_key_len, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %auth_tag_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %4, i32 0, i32 4
  store i32 4, ptr %auth_tag_len, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %sec_serv = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %5, i32 0, i32 5
  store i32 3, ptr %sec_serv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_crypto_policy_set_aes_cm_128_null_auth(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cipher_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %0, i32 0, i32 0
  store i32 1, ptr %cipher_type, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %cipher_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %1, i32 0, i32 1
  store i32 30, ptr %cipher_key_len, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %auth_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %2, i32 0, i32 2
  store i32 0, ptr %auth_type, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %auth_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %3, i32 0, i32 3
  store i32 0, ptr %auth_key_len, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %auth_tag_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %4, i32 0, i32 4
  store i32 0, ptr %auth_tag_len, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %sec_serv = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %5, i32 0, i32 5
  store i32 1, ptr %sec_serv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_crypto_policy_set_null_cipher_hmac_sha1_80(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cipher_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %0, i32 0, i32 0
  store i32 0, ptr %cipher_type, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %cipher_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %1, i32 0, i32 1
  store i32 0, ptr %cipher_key_len, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %auth_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %2, i32 0, i32 2
  store i32 3, ptr %auth_type, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %auth_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %3, i32 0, i32 3
  store i32 20, ptr %auth_key_len, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %auth_tag_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %4, i32 0, i32 4
  store i32 10, ptr %auth_tag_len, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %sec_serv = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %5, i32 0, i32 5
  store i32 2, ptr %sec_serv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_crypto_policy_set_null_cipher_hmac_null(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cipher_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %0, i32 0, i32 0
  store i32 0, ptr %cipher_type, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %cipher_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %1, i32 0, i32 1
  store i32 0, ptr %cipher_key_len, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %auth_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %2, i32 0, i32 2
  store i32 0, ptr %auth_type, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %auth_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %3, i32 0, i32 3
  store i32 0, ptr %auth_key_len, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %auth_tag_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %4, i32 0, i32 4
  store i32 0, ptr %auth_tag_len, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %sec_serv = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %5, i32 0, i32 5
  store i32 0, ptr %sec_serv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_crypto_policy_set_aes_cm_256_hmac_sha1_80(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cipher_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %0, i32 0, i32 0
  store i32 5, ptr %cipher_type, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %cipher_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %1, i32 0, i32 1
  store i32 46, ptr %cipher_key_len, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %auth_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %2, i32 0, i32 2
  store i32 3, ptr %auth_type, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %auth_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %3, i32 0, i32 3
  store i32 20, ptr %auth_key_len, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %auth_tag_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %4, i32 0, i32 4
  store i32 10, ptr %auth_tag_len, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %sec_serv = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %5, i32 0, i32 5
  store i32 3, ptr %sec_serv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_crypto_policy_set_aes_cm_256_hmac_sha1_32(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cipher_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %0, i32 0, i32 0
  store i32 5, ptr %cipher_type, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %cipher_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %1, i32 0, i32 1
  store i32 46, ptr %cipher_key_len, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %auth_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %2, i32 0, i32 2
  store i32 3, ptr %auth_type, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %auth_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %3, i32 0, i32 3
  store i32 20, ptr %auth_key_len, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %auth_tag_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %4, i32 0, i32 4
  store i32 4, ptr %auth_tag_len, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %sec_serv = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %5, i32 0, i32 5
  store i32 3, ptr %sec_serv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_crypto_policy_set_aes_cm_256_null_auth(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cipher_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %0, i32 0, i32 0
  store i32 5, ptr %cipher_type, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %cipher_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %1, i32 0, i32 1
  store i32 46, ptr %cipher_key_len, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %auth_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %2, i32 0, i32 2
  store i32 0, ptr %auth_type, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %auth_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %3, i32 0, i32 3
  store i32 0, ptr %auth_key_len, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %auth_tag_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %4, i32 0, i32 4
  store i32 0, ptr %auth_tag_len, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %sec_serv = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %5, i32 0, i32 5
  store i32 1, ptr %sec_serv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_crypto_policy_set_aes_cm_192_hmac_sha1_80(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cipher_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %0, i32 0, i32 0
  store i32 4, ptr %cipher_type, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %cipher_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %1, i32 0, i32 1
  store i32 38, ptr %cipher_key_len, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %auth_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %2, i32 0, i32 2
  store i32 3, ptr %auth_type, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %auth_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %3, i32 0, i32 3
  store i32 20, ptr %auth_key_len, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %auth_tag_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %4, i32 0, i32 4
  store i32 10, ptr %auth_tag_len, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %sec_serv = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %5, i32 0, i32 5
  store i32 3, ptr %sec_serv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_crypto_policy_set_aes_cm_192_hmac_sha1_32(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cipher_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %0, i32 0, i32 0
  store i32 4, ptr %cipher_type, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %cipher_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %1, i32 0, i32 1
  store i32 38, ptr %cipher_key_len, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %auth_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %2, i32 0, i32 2
  store i32 3, ptr %auth_type, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %auth_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %3, i32 0, i32 3
  store i32 20, ptr %auth_key_len, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %auth_tag_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %4, i32 0, i32 4
  store i32 4, ptr %auth_tag_len, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %sec_serv = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %5, i32 0, i32 5
  store i32 3, ptr %sec_serv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_crypto_policy_set_aes_cm_192_null_auth(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cipher_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %0, i32 0, i32 0
  store i32 4, ptr %cipher_type, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %cipher_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %1, i32 0, i32 1
  store i32 38, ptr %cipher_key_len, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %auth_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %2, i32 0, i32 2
  store i32 0, ptr %auth_type, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %auth_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %3, i32 0, i32 3
  store i32 0, ptr %auth_key_len, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %auth_tag_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %4, i32 0, i32 4
  store i32 0, ptr %auth_tag_len, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %sec_serv = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %5, i32 0, i32 5
  store i32 1, ptr %sec_serv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_crypto_policy_set_aes_gcm_128_8_auth(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cipher_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %0, i32 0, i32 0
  store i32 6, ptr %cipher_type, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %cipher_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %1, i32 0, i32 1
  store i32 28, ptr %cipher_key_len, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %auth_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %2, i32 0, i32 2
  store i32 0, ptr %auth_type, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %auth_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %3, i32 0, i32 3
  store i32 0, ptr %auth_key_len, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %auth_tag_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %4, i32 0, i32 4
  store i32 8, ptr %auth_tag_len, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %sec_serv = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %5, i32 0, i32 5
  store i32 3, ptr %sec_serv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_crypto_policy_set_aes_gcm_256_8_auth(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cipher_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %0, i32 0, i32 0
  store i32 7, ptr %cipher_type, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %cipher_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %1, i32 0, i32 1
  store i32 44, ptr %cipher_key_len, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %auth_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %2, i32 0, i32 2
  store i32 0, ptr %auth_type, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %auth_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %3, i32 0, i32 3
  store i32 0, ptr %auth_key_len, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %auth_tag_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %4, i32 0, i32 4
  store i32 8, ptr %auth_tag_len, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %sec_serv = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %5, i32 0, i32 5
  store i32 3, ptr %sec_serv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_crypto_policy_set_aes_gcm_128_8_only_auth(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cipher_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %0, i32 0, i32 0
  store i32 6, ptr %cipher_type, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %cipher_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %1, i32 0, i32 1
  store i32 28, ptr %cipher_key_len, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %auth_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %2, i32 0, i32 2
  store i32 0, ptr %auth_type, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %auth_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %3, i32 0, i32 3
  store i32 0, ptr %auth_key_len, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %auth_tag_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %4, i32 0, i32 4
  store i32 8, ptr %auth_tag_len, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %sec_serv = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %5, i32 0, i32 5
  store i32 2, ptr %sec_serv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_crypto_policy_set_aes_gcm_256_8_only_auth(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cipher_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %0, i32 0, i32 0
  store i32 7, ptr %cipher_type, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %cipher_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %1, i32 0, i32 1
  store i32 44, ptr %cipher_key_len, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %auth_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %2, i32 0, i32 2
  store i32 0, ptr %auth_type, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %auth_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %3, i32 0, i32 3
  store i32 0, ptr %auth_key_len, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %auth_tag_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %4, i32 0, i32 4
  store i32 8, ptr %auth_tag_len, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %sec_serv = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %5, i32 0, i32 5
  store i32 2, ptr %sec_serv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_crypto_policy_set_aes_gcm_128_16_auth(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cipher_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %0, i32 0, i32 0
  store i32 6, ptr %cipher_type, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %cipher_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %1, i32 0, i32 1
  store i32 28, ptr %cipher_key_len, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %auth_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %2, i32 0, i32 2
  store i32 0, ptr %auth_type, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %auth_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %3, i32 0, i32 3
  store i32 0, ptr %auth_key_len, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %auth_tag_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %4, i32 0, i32 4
  store i32 16, ptr %auth_tag_len, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %sec_serv = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %5, i32 0, i32 5
  store i32 3, ptr %sec_serv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_crypto_policy_set_aes_gcm_256_16_auth(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cipher_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %0, i32 0, i32 0
  store i32 7, ptr %cipher_type, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %cipher_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %1, i32 0, i32 1
  store i32 44, ptr %cipher_key_len, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %auth_type = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %2, i32 0, i32 2
  store i32 0, ptr %auth_type, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %auth_key_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %3, i32 0, i32 3
  store i32 0, ptr %auth_key_len, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %auth_tag_len = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %4, i32 0, i32 4
  store i32 16, ptr %auth_tag_len, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %sec_serv = getelementptr inbounds %struct.srtp_crypto_policy_t, ptr %5, i32 0, i32 5
  store i32 3, ptr %sec_serv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_protect_rtcp(ptr noundef %ctx, ptr noundef %rtcp_hdr, ptr noundef %pkt_octet_len) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %rtcp_hdr.addr = alloca ptr, align 8
  %pkt_octet_len.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %rtcp_hdr, ptr %rtcp_hdr.addr, align 8
  store ptr %pkt_octet_len, ptr %pkt_octet_len.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %1 = load ptr, ptr %rtcp_hdr.addr, align 8
  %2 = load ptr, ptr %pkt_octet_len.addr, align 8
  %call = call i32 @srtp_protect_rtcp_mki(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_protect_rtcp_mki(ptr noundef %ctx, ptr noundef %rtcp_hdr, ptr noundef %pkt_octet_len, i32 noundef %use_mki, i32 noundef %mki_index) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %rtcp_hdr.addr = alloca ptr, align 8
  %pkt_octet_len.addr = alloca ptr, align 8
  %use_mki.addr = alloca i32, align 4
  %mki_index.addr = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %enc_start = alloca ptr, align 8
  %auth_start = alloca ptr, align 8
  %trailer_p = alloca ptr, align 8
  %trailer = alloca i32, align 4
  %enc_octet_len = alloca i32, align 4
  %auth_tag = alloca ptr, align 8
  %status = alloca i32, align 4
  %tag_len = alloca i32, align 4
  %stream = alloca ptr, align 8
  %prefix_len = alloca i32, align 4
  %seq_num = alloca i32, align 4
  %mki_size = alloca i32, align 4
  %session_keys = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %new_stream = alloca ptr, align 8
  %data = alloca %struct.srtp_event_data_t, align 8
  %iv = alloca %union.v128_t, align 8
  %iv87 = alloca %union.v128_t, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %rtcp_hdr, ptr %rtcp_hdr.addr, align 8
  store ptr %pkt_octet_len, ptr %pkt_octet_len.addr, align 8
  store i32 %use_mki, ptr %use_mki.addr, align 4
  store i32 %mki_index, ptr %mki_index.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %hdr, align 8, !annotation !3
  %0 = load ptr, ptr %rtcp_hdr.addr, align 8
  store ptr %0, ptr %hdr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %enc_start) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %enc_start, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %auth_start) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %auth_start, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %trailer_p) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %trailer_p, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %trailer) #8
  store i32 -1431655766, ptr %trailer, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %enc_octet_len) #8
  store i32 -1431655766, ptr %enc_octet_len, align 4, !annotation !3
  store i32 0, ptr %enc_octet_len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %auth_tag) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %auth_tag, align 8, !annotation !3
  store ptr null, ptr %auth_tag, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag_len) #8
  store i32 -1431655766, ptr %tag_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %stream) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %stream, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %prefix_len) #8
  store i32 -1431655766, ptr %prefix_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq_num) #8
  store i32 -1431655766, ptr %seq_num, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %mki_size) #8
  store i32 -1431655766, ptr %mki_size, align 4, !annotation !3
  store i32 0, ptr %mki_size, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %session_keys) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %session_keys, align 8, !annotation !3
  store ptr null, ptr %session_keys, align 8
  %1 = load ptr, ptr %pkt_octet_len.addr, align 8
  %2 = load i32, ptr %1, align 4
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup148

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ctx.addr, align 8
  %4 = load ptr, ptr %hdr, align 8
  %ssrc = getelementptr inbounds %struct.srtcp_hdr_t, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %ssrc, align 4
  %call = call ptr @srtp_get_stream(ptr noundef %3, i32 noundef %5)
  store ptr %call, ptr %stream, align 8
  %6 = load ptr, ptr %stream, align 8
  %cmp1 = icmp eq ptr %6, null
  br i1 %cmp1, label %if.then2, label %if.end12

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %ctx.addr, align 8
  %stream_template = getelementptr inbounds %struct.srtp_ctx_t_, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %stream_template, align 8
  %cmp3 = icmp ne ptr %8, null
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_stream) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %new_stream, align 8, !annotation !3
  %9 = load ptr, ptr %ctx.addr, align 8
  %stream_template5 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %stream_template5, align 8
  %11 = load ptr, ptr %hdr, align 8
  %ssrc6 = getelementptr inbounds %struct.srtcp_hdr_t, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %ssrc6, align 4
  %call7 = call i32 @srtp_stream_clone(ptr noundef %10, i32 noundef %12, ptr noundef %new_stream)
  store i32 %call7, ptr %status, align 4
  %13 = load i32, ptr %status, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then4
  %14 = load i32, ptr %status, align 4
  store i32 %14, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  %15 = load ptr, ptr %ctx.addr, align 8
  %stream_list = getelementptr inbounds %struct.srtp_ctx_t_, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %stream_list, align 8
  %17 = load ptr, ptr %new_stream, align 8
  %next = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %17, i32 0, i32 13
  store ptr %16, ptr %next, align 8
  %18 = load ptr, ptr %new_stream, align 8
  %19 = load ptr, ptr %ctx.addr, align 8
  %stream_list10 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %19, i32 0, i32 0
  store ptr %18, ptr %stream_list10, align 8
  %20 = load ptr, ptr %new_stream, align 8
  store ptr %20, ptr %stream, align 8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_stream) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup148 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end11

if.else:                                          ; preds = %if.then2
  store i32 13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup148

if.end11:                                         ; preds = %cleanup.cont
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  %21 = load ptr, ptr %stream, align 8
  %direction = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %21, i32 0, i32 7
  %22 = load i32, ptr %direction, align 4
  %cmp13 = icmp ne i32 %22, 1
  br i1 %cmp13, label %if.then14, label %if.end27

if.then14:                                        ; preds = %if.end12
  %23 = load ptr, ptr %stream, align 8
  %direction15 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %23, i32 0, i32 7
  %24 = load i32, ptr %direction15, align 4
  %cmp16 = icmp eq i32 %24, 0
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.then14
  %25 = load ptr, ptr %stream, align 8
  %direction18 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %25, i32 0, i32 7
  store i32 1, ptr %direction18, align 4
  br label %if.end26

if.else19:                                        ; preds = %if.then14
  %26 = load ptr, ptr @srtp_event_handler, align 8
  %tobool20 = icmp ne ptr %26, null
  br i1 %tobool20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.else19
  call void @llvm.lifetime.start.p0(i64 16, ptr %data) #8
  %27 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 0
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %27, align 8, !annotation !3
  %28 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 1
  store i32 -1431655766, ptr %28, align 8, !annotation !3
  %29 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 2
  store i32 -1431655766, ptr %29, align 4, !annotation !3
  %30 = load ptr, ptr %ctx.addr, align 8
  %session = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 0
  store ptr %30, ptr %session, align 8
  %31 = load ptr, ptr %stream, align 8
  %ssrc22 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %31, i32 0, i32 0
  %32 = load i32, ptr %ssrc22, align 8
  %call23 = call i32 @__bswap_32(i32 noundef %32)
  %ssrc24 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 1
  store i32 %call23, ptr %ssrc24, align 8
  %event = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 2
  store i32 0, ptr %event, align 4
  %33 = load ptr, ptr @srtp_event_handler, align 8
  call void %33(ptr noundef %data)
  call void @llvm.lifetime.end.p0(i64 16, ptr %data) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.else19
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then17
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end12
  %34 = load ptr, ptr %stream, align 8
  %35 = load i32, ptr %use_mki.addr, align 4
  %36 = load i32, ptr %mki_index.addr, align 4
  %call28 = call ptr @srtp_get_session_keys_with_mki_index(ptr noundef %34, i32 noundef %35, i32 noundef %36)
  store ptr %call28, ptr %session_keys, align 8
  %37 = load ptr, ptr %session_keys, align 8
  %cmp29 = icmp eq ptr %37, null
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end27
  store i32 25, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup148

if.end31:                                         ; preds = %if.end27
  %38 = load ptr, ptr %session_keys, align 8
  %rtp_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %rtp_cipher, align 8
  %algorithm = getelementptr inbounds %struct.srtp_cipher_t, ptr %39, i32 0, i32 3
  %40 = load i32, ptr %algorithm, align 4
  %cmp32 = icmp eq i32 %40, 6
  br i1 %cmp32, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end31
  %41 = load ptr, ptr %session_keys, align 8
  %rtp_cipher33 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %rtp_cipher33, align 8
  %algorithm34 = getelementptr inbounds %struct.srtp_cipher_t, ptr %42, i32 0, i32 3
  %43 = load i32, ptr %algorithm34, align 4
  %cmp35 = icmp eq i32 %43, 7
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %lor.lhs.false, %if.end31
  %44 = load ptr, ptr %ctx.addr, align 8
  %45 = load ptr, ptr %stream, align 8
  %46 = load ptr, ptr %rtcp_hdr.addr, align 8
  %47 = load ptr, ptr %pkt_octet_len.addr, align 8
  %48 = load ptr, ptr %session_keys, align 8
  %49 = load i32, ptr %use_mki.addr, align 4
  %call37 = call i32 @srtp_protect_rtcp_aead(ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %48, i32 noundef %49)
  store i32 %call37, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup148

if.end38:                                         ; preds = %lor.lhs.false
  %50 = load ptr, ptr %session_keys, align 8
  %rtcp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %50, i32 0, i32 4
  %51 = load ptr, ptr %rtcp_auth, align 8
  %call39 = call i32 @srtp_auth_get_tag_length(ptr noundef %51)
  store i32 %call39, ptr %tag_len, align 4
  %52 = load ptr, ptr %hdr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %52, i64 2
  store ptr %add.ptr, ptr %enc_start, align 8
  %53 = load ptr, ptr %pkt_octet_len.addr, align 8
  %54 = load i32, ptr %53, align 4
  %sub = sub nsw i32 %54, 8
  store i32 %sub, ptr %enc_octet_len, align 4
  %55 = load ptr, ptr %enc_start, align 8
  %56 = load i32, ptr %enc_octet_len, align 4
  %idx.ext = zext i32 %56 to i64
  %add.ptr40 = getelementptr inbounds i8, ptr %55, i64 %idx.ext
  store ptr %add.ptr40, ptr %trailer_p, align 8
  %57 = load ptr, ptr %stream, align 8
  %rtcp_services = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %57, i32 0, i32 6
  %58 = load i32, ptr %rtcp_services, align 8
  %and = and i32 %58, 1
  %tobool41 = icmp ne i32 %and, 0
  br i1 %tobool41, label %if.then42, label %if.else44

if.then42:                                        ; preds = %if.end38
  %call43 = call i32 @__bswap_32(i32 noundef -2147483648)
  store i32 %call43, ptr %trailer, align 4
  br label %if.end45

if.else44:                                        ; preds = %if.end38
  store ptr null, ptr %enc_start, align 8
  store i32 0, ptr %enc_octet_len, align 4
  store i32 0, ptr %trailer, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %if.then42
  %59 = load ptr, ptr %hdr, align 8
  %60 = load ptr, ptr %pkt_octet_len.addr, align 8
  %61 = load i32, ptr %60, align 4
  %idx.ext46 = sext i32 %61 to i64
  %add.ptr47 = getelementptr inbounds i8, ptr %59, i64 %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, ptr %add.ptr47, i64 4
  %62 = load ptr, ptr %session_keys, align 8
  %63 = load i32, ptr %use_mki.addr, align 4
  %call49 = call i32 @srtp_inject_mki(ptr noundef %add.ptr48, ptr noundef %62, i32 noundef %63)
  store i32 %call49, ptr %mki_size, align 4
  %64 = load ptr, ptr %hdr, align 8
  store ptr %64, ptr %auth_start, align 8
  %65 = load ptr, ptr %hdr, align 8
  %66 = load ptr, ptr %pkt_octet_len.addr, align 8
  %67 = load i32, ptr %66, align 4
  %idx.ext50 = sext i32 %67 to i64
  %add.ptr51 = getelementptr inbounds i8, ptr %65, i64 %idx.ext50
  %add.ptr52 = getelementptr inbounds i8, ptr %add.ptr51, i64 4
  %68 = load i32, ptr %mki_size, align 4
  %idx.ext53 = zext i32 %68 to i64
  %add.ptr54 = getelementptr inbounds i8, ptr %add.ptr52, i64 %idx.ext53
  store ptr %add.ptr54, ptr %auth_tag, align 8
  %69 = load ptr, ptr %stream, align 8
  %ekt = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %69, i32 0, i32 9
  %70 = load ptr, ptr %ekt, align 8
  %71 = load ptr, ptr %auth_tag, align 8
  %72 = load i32, ptr %tag_len, align 4
  %73 = load ptr, ptr %pkt_octet_len.addr, align 8
  %74 = load ptr, ptr %stream, align 8
  %rtp_rdbx = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %74, i32 0, i32 3
  %call55 = call i64 @srtp_rdbx_get_packet_index(ptr noundef %rtp_rdbx)
  call void @srtp_ekt_write_data(ptr noundef %70, ptr noundef %71, i32 noundef %72, ptr noundef %73, i64 noundef %call55)
  %75 = load ptr, ptr %stream, align 8
  %rtcp_rdb = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %75, i32 0, i32 5
  %call56 = call i32 @srtp_rdb_increment(ptr noundef %rtcp_rdb)
  store i32 %call56, ptr %status, align 4
  %76 = load i32, ptr %status, align 4
  %tobool57 = icmp ne i32 %76, 0
  br i1 %tobool57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end45
  %77 = load i32, ptr %status, align 4
  store i32 %77, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup148

if.end59:                                         ; preds = %if.end45
  %78 = load ptr, ptr %stream, align 8
  %rtcp_rdb60 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %78, i32 0, i32 5
  %call61 = call i32 @srtp_rdb_get_value(ptr noundef %rtcp_rdb60)
  store i32 %call61, ptr %seq_num, align 4
  %79 = load i32, ptr %seq_num, align 4
  %call62 = call i32 @__bswap_32(i32 noundef %79)
  %80 = load i32, ptr %trailer, align 4
  %or = or i32 %80, %call62
  store i32 %or, ptr %trailer, align 4
  %81 = load i32, ptr @mod_srtp, align 8
  %tobool63 = icmp ne i32 %81, 0
  br i1 %tobool63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end59
  %82 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %83 = load i32, ptr %seq_num, align 4
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.37, ptr noundef %82, i32 noundef %83)
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end59
  %84 = load ptr, ptr %trailer_p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %84, ptr align 4 %trailer, i64 4, i1 false)
  %85 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %85, i32 0, i32 3
  %86 = load ptr, ptr %rtcp_cipher, align 8
  %type = getelementptr inbounds %struct.srtp_cipher_t, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %type, align 8
  %id = getelementptr inbounds %struct.srtp_cipher_type_t, ptr %87, i32 0, i32 10
  %88 = load i32, ptr %id, align 8
  %cmp66 = icmp eq i32 %88, 1
  br i1 %cmp66, label %if.then77, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %if.end65
  %89 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher68 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %89, i32 0, i32 3
  %90 = load ptr, ptr %rtcp_cipher68, align 8
  %type69 = getelementptr inbounds %struct.srtp_cipher_t, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %type69, align 8
  %id70 = getelementptr inbounds %struct.srtp_cipher_type_t, ptr %91, i32 0, i32 10
  %92 = load i32, ptr %id70, align 8
  %cmp71 = icmp eq i32 %92, 4
  br i1 %cmp71, label %if.then77, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %lor.lhs.false67
  %93 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher73 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %93, i32 0, i32 3
  %94 = load ptr, ptr %rtcp_cipher73, align 8
  %type74 = getelementptr inbounds %struct.srtp_cipher_t, ptr %94, i32 0, i32 0
  %95 = load ptr, ptr %type74, align 8
  %id75 = getelementptr inbounds %struct.srtp_cipher_type_t, ptr %95, i32 0, i32 10
  %96 = load i32, ptr %id75, align 8
  %cmp76 = icmp eq i32 %96, 5
  br i1 %cmp76, label %if.then77, label %if.else86

if.then77:                                        ; preds = %lor.lhs.false72, %lor.lhs.false67, %if.end65
  call void @llvm.lifetime.start.p0(i64 16, ptr %iv) #8
  %97 = getelementptr inbounds %union.v128_t, ptr %iv, i32 0, i32 0
  %98 = getelementptr inbounds [2 x i64], ptr %97, i64 0, i64 0
  store i64 -6148914691236517206, ptr %98, align 8, !annotation !3
  %99 = getelementptr inbounds [2 x i64], ptr %97, i64 0, i64 1
  store i64 -6148914691236517206, ptr %99, align 8, !annotation !3
  %arrayidx = getelementptr inbounds [4 x i32], ptr %iv, i64 0, i64 0
  store i32 0, ptr %arrayidx, align 8
  %100 = load ptr, ptr %hdr, align 8
  %ssrc78 = getelementptr inbounds %struct.srtcp_hdr_t, ptr %100, i32 0, i32 2
  %101 = load i32, ptr %ssrc78, align 4
  %arrayidx79 = getelementptr inbounds [4 x i32], ptr %iv, i64 0, i64 1
  store i32 %101, ptr %arrayidx79, align 4
  %102 = load i32, ptr %seq_num, align 4
  %shr = lshr i32 %102, 16
  %call80 = call i32 @__bswap_32(i32 noundef %shr)
  %arrayidx81 = getelementptr inbounds [4 x i32], ptr %iv, i64 0, i64 2
  store i32 %call80, ptr %arrayidx81, align 8
  %103 = load i32, ptr %seq_num, align 4
  %shl = shl i32 %103, 16
  %call82 = call i32 @__bswap_32(i32 noundef %shl)
  %arrayidx83 = getelementptr inbounds [4 x i32], ptr %iv, i64 0, i64 3
  store i32 %call82, ptr %arrayidx83, align 4
  %104 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher84 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %104, i32 0, i32 3
  %105 = load ptr, ptr %rtcp_cipher84, align 8
  %call85 = call i32 @srtp_cipher_set_iv(ptr noundef %105, ptr noundef %iv, i32 noundef 0)
  store i32 %call85, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr %iv) #8
  br label %if.end95

if.else86:                                        ; preds = %lor.lhs.false72
  call void @llvm.lifetime.start.p0(i64 16, ptr %iv87) #8
  %106 = getelementptr inbounds %union.v128_t, ptr %iv87, i32 0, i32 0
  %107 = getelementptr inbounds [2 x i64], ptr %106, i64 0, i64 0
  store i64 -6148914691236517206, ptr %107, align 8, !annotation !3
  %108 = getelementptr inbounds [2 x i64], ptr %106, i64 0, i64 1
  store i64 -6148914691236517206, ptr %108, align 8, !annotation !3
  %arrayidx88 = getelementptr inbounds [4 x i32], ptr %iv87, i64 0, i64 0
  store i32 0, ptr %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds [4 x i32], ptr %iv87, i64 0, i64 1
  store i32 0, ptr %arrayidx89, align 4
  %arrayidx90 = getelementptr inbounds [4 x i32], ptr %iv87, i64 0, i64 2
  store i32 0, ptr %arrayidx90, align 8
  %109 = load i32, ptr %seq_num, align 4
  %call91 = call i32 @__bswap_32(i32 noundef %109)
  %arrayidx92 = getelementptr inbounds [4 x i32], ptr %iv87, i64 0, i64 3
  store i32 %call91, ptr %arrayidx92, align 4
  %110 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher93 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %110, i32 0, i32 3
  %111 = load ptr, ptr %rtcp_cipher93, align 8
  %call94 = call i32 @srtp_cipher_set_iv(ptr noundef %111, ptr noundef %iv87, i32 noundef 0)
  store i32 %call94, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr %iv87) #8
  br label %if.end95

if.end95:                                         ; preds = %if.else86, %if.then77
  %112 = load i32, ptr %status, align 4
  %tobool96 = icmp ne i32 %112, 0
  br i1 %tobool96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.end95
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup148

if.end98:                                         ; preds = %if.end95
  %113 = load ptr, ptr %auth_start, align 8
  %tobool99 = icmp ne ptr %113, null
  br i1 %tobool99, label %if.then100, label %if.end112

if.then100:                                       ; preds = %if.end98
  %114 = load ptr, ptr %session_keys, align 8
  %rtcp_auth101 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %114, i32 0, i32 4
  %115 = load ptr, ptr %rtcp_auth101, align 8
  %call102 = call i32 @srtp_auth_get_prefix_length(ptr noundef %115)
  store i32 %call102, ptr %prefix_len, align 4
  %116 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher103 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %116, i32 0, i32 3
  %117 = load ptr, ptr %rtcp_cipher103, align 8
  %118 = load ptr, ptr %auth_tag, align 8
  %call104 = call i32 @srtp_cipher_output(ptr noundef %117, ptr noundef %118, ptr noundef %prefix_len)
  store i32 %call104, ptr %status, align 4
  %119 = load i32, ptr @mod_srtp, align 8
  %tobool105 = icmp ne i32 %119, 0
  br i1 %tobool105, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.then100
  %120 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %121 = load ptr, ptr %auth_tag, align 8
  %122 = load i32, ptr %prefix_len, align 4
  %call107 = call ptr @srtp_octet_string_hex_string(ptr noundef %121, i32 noundef %122)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.30, ptr noundef %120, ptr noundef %call107)
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.then100
  %123 = load i32, ptr %status, align 4
  %tobool109 = icmp ne i32 %123, 0
  br i1 %tobool109, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.end108
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup148

if.end111:                                        ; preds = %if.end108
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.end98
  %124 = load ptr, ptr %enc_start, align 8
  %tobool113 = icmp ne ptr %124, null
  br i1 %tobool113, label %if.then114, label %if.end120

if.then114:                                       ; preds = %if.end112
  %125 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher115 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %125, i32 0, i32 3
  %126 = load ptr, ptr %rtcp_cipher115, align 8
  %127 = load ptr, ptr %enc_start, align 8
  %call116 = call i32 @srtp_cipher_encrypt(ptr noundef %126, ptr noundef %127, ptr noundef %enc_octet_len)
  store i32 %call116, ptr %status, align 4
  %128 = load i32, ptr %status, align 4
  %tobool117 = icmp ne i32 %128, 0
  br i1 %tobool117, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.then114
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup148

if.end119:                                        ; preds = %if.then114
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.end112
  %129 = load ptr, ptr %session_keys, align 8
  %rtcp_auth121 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %129, i32 0, i32 4
  %130 = load ptr, ptr %rtcp_auth121, align 8
  %type122 = getelementptr inbounds %struct.srtp_auth_t, ptr %130, i32 0, i32 0
  %131 = load ptr, ptr %type122, align 8
  %start = getelementptr inbounds %struct.srtp_auth_type_t, ptr %131, i32 0, i32 5
  %132 = load ptr, ptr %start, align 8
  %133 = load ptr, ptr %session_keys, align 8
  %rtcp_auth123 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %133, i32 0, i32 4
  %134 = load ptr, ptr %rtcp_auth123, align 8
  %state = getelementptr inbounds %struct.srtp_auth_t, ptr %134, i32 0, i32 1
  %135 = load ptr, ptr %state, align 8
  %call124 = call i32 %132(ptr noundef %135)
  store i32 %call124, ptr %status, align 4
  %136 = load i32, ptr %status, align 4
  %tobool125 = icmp ne i32 %136, 0
  br i1 %tobool125, label %if.then126, label %if.end127

if.then126:                                       ; preds = %if.end120
  %137 = load i32, ptr %status, align 4
  store i32 %137, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup148

if.end127:                                        ; preds = %if.end120
  %138 = load ptr, ptr %session_keys, align 8
  %rtcp_auth128 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %138, i32 0, i32 4
  %139 = load ptr, ptr %rtcp_auth128, align 8
  %type129 = getelementptr inbounds %struct.srtp_auth_t, ptr %139, i32 0, i32 0
  %140 = load ptr, ptr %type129, align 8
  %compute = getelementptr inbounds %struct.srtp_auth_type_t, ptr %140, i32 0, i32 3
  %141 = load ptr, ptr %compute, align 8
  %142 = load ptr, ptr %session_keys, align 8
  %rtcp_auth130 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %142, i32 0, i32 4
  %143 = load ptr, ptr %rtcp_auth130, align 8
  %state131 = getelementptr inbounds %struct.srtp_auth_t, ptr %143, i32 0, i32 1
  %144 = load ptr, ptr %state131, align 8
  %145 = load ptr, ptr %auth_start, align 8
  %146 = load ptr, ptr %pkt_octet_len.addr, align 8
  %147 = load i32, ptr %146, align 4
  %conv = sext i32 %147 to i64
  %add = add i64 %conv, 4
  %conv132 = trunc i64 %add to i32
  %148 = load ptr, ptr %session_keys, align 8
  %rtcp_auth133 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %148, i32 0, i32 4
  %149 = load ptr, ptr %rtcp_auth133, align 8
  %out_len = getelementptr inbounds %struct.srtp_auth_t, ptr %149, i32 0, i32 2
  %150 = load i32, ptr %out_len, align 8
  %151 = load ptr, ptr %auth_tag, align 8
  %call134 = call i32 %141(ptr noundef %144, ptr noundef %145, i32 noundef %conv132, i32 noundef %150, ptr noundef %151)
  store i32 %call134, ptr %status, align 4
  %152 = load i32, ptr @mod_srtp, align 8
  %tobool135 = icmp ne i32 %152, 0
  br i1 %tobool135, label %if.then136, label %if.end138

if.then136:                                       ; preds = %if.end127
  %153 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %154 = load ptr, ptr %auth_tag, align 8
  %155 = load i32, ptr %tag_len, align 4
  %call137 = call ptr @srtp_octet_string_hex_string(ptr noundef %154, i32 noundef %155)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.38, ptr noundef %153, ptr noundef %call137)
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %if.end127
  %156 = load i32, ptr %status, align 4
  %tobool139 = icmp ne i32 %156, 0
  br i1 %tobool139, label %if.then140, label %if.end141

if.then140:                                       ; preds = %if.end138
  store i32 7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup148

if.end141:                                        ; preds = %if.end138
  %157 = load i32, ptr %tag_len, align 4
  %conv142 = sext i32 %157 to i64
  %add143 = add i64 %conv142, 4
  %158 = load ptr, ptr %pkt_octet_len.addr, align 8
  %159 = load i32, ptr %158, align 4
  %conv144 = sext i32 %159 to i64
  %add145 = add i64 %conv144, %add143
  %conv146 = trunc i64 %add145 to i32
  store i32 %conv146, ptr %158, align 4
  %160 = load i32, ptr %mki_size, align 4
  %161 = load ptr, ptr %pkt_octet_len.addr, align 8
  %162 = load i32, ptr %161, align 4
  %add147 = add i32 %162, %160
  store i32 %add147, ptr %161, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup148

cleanup148:                                       ; preds = %if.end141, %if.then140, %if.then126, %if.then118, %if.then110, %if.then97, %if.then58, %if.then36, %if.then30, %if.else, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %session_keys) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %mki_size) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq_num) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %prefix_len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %stream) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %auth_tag) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %enc_octet_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %trailer) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %trailer_p) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %auth_start) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %enc_start) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #8
  %163 = load i32, ptr %retval, align 4
  ret i32 %163
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @srtp_protect_rtcp_aead(ptr noundef %ctx, ptr noundef %stream, ptr noundef %rtcp_hdr, ptr noundef %pkt_octet_len, ptr noundef %session_keys, i32 noundef %use_mki) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  %rtcp_hdr.addr = alloca ptr, align 8
  %pkt_octet_len.addr = alloca ptr, align 8
  %session_keys.addr = alloca ptr, align 8
  %use_mki.addr = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %enc_start = alloca ptr, align 8
  %trailer_p = alloca ptr, align 8
  %trailer = alloca i32, align 4
  %enc_octet_len = alloca i32, align 4
  %auth_tag = alloca ptr, align 8
  %status = alloca i32, align 4
  %tag_len = alloca i32, align 4
  %seq_num = alloca i32, align 4
  %iv = alloca %union.v128_t, align 8
  %tseq = alloca i32, align 4
  %mki_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %nolen = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %stream, ptr %stream.addr, align 8
  store ptr %rtcp_hdr, ptr %rtcp_hdr.addr, align 8
  store ptr %pkt_octet_len, ptr %pkt_octet_len.addr, align 8
  store ptr %session_keys, ptr %session_keys.addr, align 8
  store i32 %use_mki, ptr %use_mki.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %hdr, align 8, !annotation !3
  %0 = load ptr, ptr %rtcp_hdr.addr, align 8
  store ptr %0, ptr %hdr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %enc_start) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %enc_start, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %trailer_p) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %trailer_p, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %trailer) #8
  store i32 -1431655766, ptr %trailer, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %enc_octet_len) #8
  store i32 -1431655766, ptr %enc_octet_len, align 4, !annotation !3
  store i32 0, ptr %enc_octet_len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %auth_tag) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %auth_tag, align 8, !annotation !3
  store ptr null, ptr %auth_tag, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag_len) #8
  store i32 -1431655766, ptr %tag_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq_num) #8
  store i32 -1431655766, ptr %seq_num, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 16, ptr %iv) #8
  %1 = getelementptr inbounds %union.v128_t, ptr %iv, i32 0, i32 0
  %2 = getelementptr inbounds [2 x i64], ptr %1, i64 0, i64 0
  store i64 -6148914691236517206, ptr %2, align 8, !annotation !3
  %3 = getelementptr inbounds [2 x i64], ptr %1, i64 0, i64 1
  store i64 -6148914691236517206, ptr %3, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %tseq) #8
  store i32 -1431655766, ptr %tseq, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %mki_size) #8
  store i32 -1431655766, ptr %mki_size, align 4, !annotation !3
  store i32 0, ptr %mki_size, align 4
  %4 = load ptr, ptr %session_keys.addr, align 8
  %rtcp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %rtcp_auth, align 8
  %call = call i32 @srtp_auth_get_tag_length(ptr noundef %5)
  store i32 %call, ptr %tag_len, align 4
  %6 = load ptr, ptr %hdr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %6, i64 2
  store ptr %add.ptr, ptr %enc_start, align 8
  %7 = load ptr, ptr %pkt_octet_len.addr, align 8
  %8 = load i32, ptr %7, align 4
  %sub = sub i32 %8, 8
  store i32 %sub, ptr %enc_octet_len, align 4
  %9 = load ptr, ptr %enc_start, align 8
  %10 = load i32, ptr %enc_octet_len, align 4
  %idx.ext = zext i32 %10 to i64
  %add.ptr1 = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  %11 = load i32, ptr %tag_len, align 4
  %idx.ext2 = zext i32 %11 to i64
  %add.ptr3 = getelementptr inbounds i8, ptr %add.ptr1, i64 %idx.ext2
  store ptr %add.ptr3, ptr %trailer_p, align 8
  %12 = load ptr, ptr %stream.addr, align 8
  %rtcp_services = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %12, i32 0, i32 6
  %13 = load i32, ptr %rtcp_services, align 8
  %and = and i32 %13, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call i32 @__bswap_32(i32 noundef -2147483648)
  store i32 %call4, ptr %trailer, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store ptr null, ptr %enc_start, align 8
  store i32 0, ptr %enc_octet_len, align 4
  store i32 0, ptr %trailer, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load ptr, ptr %hdr, align 8
  %15 = load ptr, ptr %pkt_octet_len.addr, align 8
  %16 = load i32, ptr %15, align 4
  %idx.ext5 = zext i32 %16 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr %14, i64 %idx.ext5
  %17 = load i32, ptr %tag_len, align 4
  %idx.ext7 = zext i32 %17 to i64
  %add.ptr8 = getelementptr inbounds i8, ptr %add.ptr6, i64 %idx.ext7
  %add.ptr9 = getelementptr inbounds i8, ptr %add.ptr8, i64 4
  %18 = load ptr, ptr %session_keys.addr, align 8
  %19 = load i32, ptr %use_mki.addr, align 4
  %call10 = call i32 @srtp_inject_mki(ptr noundef %add.ptr9, ptr noundef %18, i32 noundef %19)
  store i32 %call10, ptr %mki_size, align 4
  %20 = load ptr, ptr %hdr, align 8
  %21 = load ptr, ptr %pkt_octet_len.addr, align 8
  %22 = load i32, ptr %21, align 4
  %idx.ext11 = zext i32 %22 to i64
  %add.ptr12 = getelementptr inbounds i8, ptr %20, i64 %idx.ext11
  store ptr %add.ptr12, ptr %auth_tag, align 8
  %23 = load ptr, ptr %stream.addr, align 8
  %rtcp_rdb = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %23, i32 0, i32 5
  %call13 = call i32 @srtp_rdb_increment(ptr noundef %rtcp_rdb)
  store i32 %call13, ptr %status, align 4
  %24 = load i32, ptr %status, align 4
  %tobool14 = icmp ne i32 %24, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  %25 = load i32, ptr %status, align 4
  store i32 %25, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end16:                                         ; preds = %if.end
  %26 = load ptr, ptr %stream.addr, align 8
  %rtcp_rdb17 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %26, i32 0, i32 5
  %call18 = call i32 @srtp_rdb_get_value(ptr noundef %rtcp_rdb17)
  store i32 %call18, ptr %seq_num, align 4
  %27 = load i32, ptr %seq_num, align 4
  %call19 = call i32 @__bswap_32(i32 noundef %27)
  %28 = load i32, ptr %trailer, align 4
  %or = or i32 %28, %call19
  store i32 %or, ptr %trailer, align 4
  %29 = load i32, ptr @mod_srtp, align 8
  %tobool20 = icmp ne i32 %29, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end16
  %30 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %31 = load i32, ptr %seq_num, align 4
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.37, ptr noundef %30, i32 noundef %31)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end16
  %32 = load ptr, ptr %trailer_p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %32, ptr align 4 %trailer, i64 4, i1 false)
  %33 = load ptr, ptr %session_keys.addr, align 8
  %34 = load i32, ptr %seq_num, align 4
  %35 = load ptr, ptr %hdr, align 8
  %call23 = call i32 @srtp_calc_aead_iv_srtcp(ptr noundef %33, ptr noundef %iv, i32 noundef %34, ptr noundef %35)
  store i32 %call23, ptr %status, align 4
  %36 = load i32, ptr %status, align 4
  %tobool24 = icmp ne i32 %36, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end26:                                         ; preds = %if.end22
  %37 = load ptr, ptr %session_keys.addr, align 8
  %rtcp_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %37, i32 0, i32 3
  %38 = load ptr, ptr %rtcp_cipher, align 8
  %call27 = call i32 @srtp_cipher_set_iv(ptr noundef %38, ptr noundef %iv, i32 noundef 0)
  store i32 %call27, ptr %status, align 4
  %39 = load i32, ptr %status, align 4
  %tobool28 = icmp ne i32 %39, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end30:                                         ; preds = %if.end26
  %40 = load ptr, ptr %enc_start, align 8
  %tobool31 = icmp ne ptr %40, null
  br i1 %tobool31, label %if.then32, label %if.else38

if.then32:                                        ; preds = %if.end30
  %41 = load ptr, ptr %session_keys.addr, align 8
  %rtcp_cipher33 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %41, i32 0, i32 3
  %42 = load ptr, ptr %rtcp_cipher33, align 8
  %43 = load ptr, ptr %hdr, align 8
  %call34 = call i32 @srtp_cipher_set_aad(ptr noundef %42, ptr noundef %43, i32 noundef 8)
  store i32 %call34, ptr %status, align 4
  %44 = load i32, ptr %status, align 4
  %tobool35 = icmp ne i32 %44, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then32
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end37:                                         ; preds = %if.then32
  br label %if.end44

if.else38:                                        ; preds = %if.end30
  %45 = load ptr, ptr %session_keys.addr, align 8
  %rtcp_cipher39 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %45, i32 0, i32 3
  %46 = load ptr, ptr %rtcp_cipher39, align 8
  %47 = load ptr, ptr %hdr, align 8
  %48 = load ptr, ptr %pkt_octet_len.addr, align 8
  %49 = load i32, ptr %48, align 4
  %call40 = call i32 @srtp_cipher_set_aad(ptr noundef %46, ptr noundef %47, i32 noundef %49)
  store i32 %call40, ptr %status, align 4
  %50 = load i32, ptr %status, align 4
  %tobool41 = icmp ne i32 %50, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.else38
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end43:                                         ; preds = %if.else38
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end37
  %51 = load i32, ptr %trailer, align 4
  store i32 %51, ptr %tseq, align 4
  %52 = load ptr, ptr %session_keys.addr, align 8
  %rtcp_cipher45 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %52, i32 0, i32 3
  %53 = load ptr, ptr %rtcp_cipher45, align 8
  %call46 = call i32 @srtp_cipher_set_aad(ptr noundef %53, ptr noundef %tseq, i32 noundef 4)
  store i32 %call46, ptr %status, align 4
  %54 = load i32, ptr %status, align 4
  %tobool47 = icmp ne i32 %54, 0
  br i1 %tobool47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end44
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end49:                                         ; preds = %if.end44
  %55 = load ptr, ptr %enc_start, align 8
  %tobool50 = icmp ne ptr %55, null
  br i1 %tobool50, label %if.then51, label %if.else62

if.then51:                                        ; preds = %if.end49
  %56 = load ptr, ptr %session_keys.addr, align 8
  %rtcp_cipher52 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %56, i32 0, i32 3
  %57 = load ptr, ptr %rtcp_cipher52, align 8
  %58 = load ptr, ptr %enc_start, align 8
  %call53 = call i32 @srtp_cipher_encrypt(ptr noundef %57, ptr noundef %58, ptr noundef %enc_octet_len)
  store i32 %call53, ptr %status, align 4
  %59 = load i32, ptr %status, align 4
  %tobool54 = icmp ne i32 %59, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then51
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end56:                                         ; preds = %if.then51
  %60 = load ptr, ptr %session_keys.addr, align 8
  %rtcp_cipher57 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %60, i32 0, i32 3
  %61 = load ptr, ptr %rtcp_cipher57, align 8
  %62 = load ptr, ptr %auth_tag, align 8
  %call58 = call i32 @srtp_cipher_get_tag(ptr noundef %61, ptr noundef %62, ptr noundef %tag_len)
  store i32 %call58, ptr %status, align 4
  %63 = load i32, ptr %status, align 4
  %tobool59 = icmp ne i32 %63, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end56
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end61:                                         ; preds = %if.end56
  %64 = load i32, ptr %tag_len, align 4
  %65 = load i32, ptr %enc_octet_len, align 4
  %add = add i32 %65, %64
  store i32 %add, ptr %enc_octet_len, align 4
  br label %if.end74

if.else62:                                        ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 4, ptr %nolen) #8
  store i32 -1431655766, ptr %nolen, align 4, !annotation !3
  store i32 0, ptr %nolen, align 4
  %66 = load ptr, ptr %session_keys.addr, align 8
  %rtcp_cipher63 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %66, i32 0, i32 3
  %67 = load ptr, ptr %rtcp_cipher63, align 8
  %call64 = call i32 @srtp_cipher_encrypt(ptr noundef %67, ptr noundef null, ptr noundef %nolen)
  store i32 %call64, ptr %status, align 4
  %68 = load i32, ptr %status, align 4
  %tobool65 = icmp ne i32 %68, 0
  br i1 %tobool65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.else62
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end67:                                         ; preds = %if.else62
  %69 = load ptr, ptr %session_keys.addr, align 8
  %rtcp_cipher68 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %69, i32 0, i32 3
  %70 = load ptr, ptr %rtcp_cipher68, align 8
  %71 = load ptr, ptr %auth_tag, align 8
  %call69 = call i32 @srtp_cipher_get_tag(ptr noundef %70, ptr noundef %71, ptr noundef %tag_len)
  store i32 %call69, ptr %status, align 4
  %72 = load i32, ptr %status, align 4
  %tobool70 = icmp ne i32 %72, 0
  br i1 %tobool70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end67
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end72:                                         ; preds = %if.end67
  %73 = load i32, ptr %tag_len, align 4
  %74 = load i32, ptr %enc_octet_len, align 4
  %add73 = add i32 %74, %73
  store i32 %add73, ptr %enc_octet_len, align 4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then71, %if.then66
  call void @llvm.lifetime.end.p0(i64 4, ptr %nolen) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup80 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end74

if.end74:                                         ; preds = %cleanup.cont, %if.end61
  %75 = load i32, ptr %tag_len, align 4
  %conv = zext i32 %75 to i64
  %add75 = add i64 %conv, 4
  %76 = load ptr, ptr %pkt_octet_len.addr, align 8
  %77 = load i32, ptr %76, align 4
  %conv76 = zext i32 %77 to i64
  %add77 = add i64 %conv76, %add75
  %conv78 = trunc i64 %add77 to i32
  store i32 %conv78, ptr %76, align 4
  %78 = load i32, ptr %mki_size, align 4
  %79 = load ptr, ptr %pkt_octet_len.addr, align 8
  %80 = load i32, ptr %79, align 4
  %add79 = add i32 %80, %78
  store i32 %add79, ptr %79, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

cleanup80:                                        ; preds = %if.end74, %cleanup, %if.then60, %if.then55, %if.then48, %if.then42, %if.then36, %if.then29, %if.then25, %if.then15
  call void @llvm.lifetime.end.p0(i64 4, ptr %mki_size) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tseq) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %iv) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq_num) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %auth_tag) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %enc_octet_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %trailer) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %trailer_p) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %enc_start) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #8
  %81 = load i32, ptr %retval, align 4
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare void @srtp_ekt_write_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: null_pointer_is_valid
declare i64 @srtp_rdbx_get_packet_index(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_rdb_increment(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_rdb_get_value(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_unprotect_rtcp(ptr noundef %ctx, ptr noundef %srtcp_hdr, ptr noundef %pkt_octet_len) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %srtcp_hdr.addr = alloca ptr, align 8
  %pkt_octet_len.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %srtcp_hdr, ptr %srtcp_hdr.addr, align 8
  store ptr %pkt_octet_len, ptr %pkt_octet_len.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %1 = load ptr, ptr %srtcp_hdr.addr, align 8
  %2 = load ptr, ptr %pkt_octet_len.addr, align 8
  %call = call i32 @srtp_unprotect_rtcp_mki(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_unprotect_rtcp_mki(ptr noundef %ctx, ptr noundef %srtcp_hdr, ptr noundef %pkt_octet_len, i32 noundef %use_mki) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %srtcp_hdr.addr = alloca ptr, align 8
  %pkt_octet_len.addr = alloca ptr, align 8
  %use_mki.addr = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %enc_start = alloca ptr, align 8
  %auth_start = alloca ptr, align 8
  %trailer_p = alloca ptr, align 8
  %trailer = alloca i32, align 4
  %enc_octet_len = alloca i32, align 4
  %auth_tag = alloca ptr, align 8
  %tmp_tag = alloca [16 x i8], align 16
  %tag_copy = alloca [16 x i8], align 16
  %status = alloca i32, align 4
  %auth_len = alloca i32, align 4
  %tag_len = alloca i32, align 4
  %stream = alloca ptr, align 8
  %prefix_len = alloca i32, align 4
  %seq_num = alloca i32, align 4
  %e_bit_in_packet = alloca i32, align 4
  %sec_serv_confidentiality = alloca i32, align 4
  %mki_size = alloca i32, align 4
  %session_keys = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %iv = alloca %union.v128_t, align 8
  %iv134 = alloca %union.v128_t, align 8
  %data = alloca %struct.srtp_event_data_t, align 8
  %new_stream = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %srtcp_hdr, ptr %srtcp_hdr.addr, align 8
  store ptr %pkt_octet_len, ptr %pkt_octet_len.addr, align 8
  store i32 %use_mki, ptr %use_mki.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %hdr, align 8, !annotation !3
  %0 = load ptr, ptr %srtcp_hdr.addr, align 8
  store ptr %0, ptr %hdr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %enc_start) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %enc_start, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %auth_start) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %auth_start, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %trailer_p) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %trailer_p, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %trailer) #8
  store i32 -1431655766, ptr %trailer, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %enc_octet_len) #8
  store i32 -1431655766, ptr %enc_octet_len, align 4, !annotation !3
  store i32 0, ptr %enc_octet_len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %auth_tag) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %auth_tag, align 8, !annotation !3
  store ptr null, ptr %auth_tag, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp_tag) #8
  %1 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 0
  store i8 -86, ptr %1, align 16, !annotation !3
  %2 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 1
  store i8 -86, ptr %2, align 1, !annotation !3
  %3 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 2
  store i8 -86, ptr %3, align 2, !annotation !3
  %4 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 3
  store i8 -86, ptr %4, align 1, !annotation !3
  %5 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 4
  store i8 -86, ptr %5, align 4, !annotation !3
  %6 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 5
  store i8 -86, ptr %6, align 1, !annotation !3
  %7 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 6
  store i8 -86, ptr %7, align 2, !annotation !3
  %8 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 7
  store i8 -86, ptr %8, align 1, !annotation !3
  %9 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 8
  store i8 -86, ptr %9, align 8, !annotation !3
  %10 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 9
  store i8 -86, ptr %10, align 1, !annotation !3
  %11 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 10
  store i8 -86, ptr %11, align 2, !annotation !3
  %12 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 11
  store i8 -86, ptr %12, align 1, !annotation !3
  %13 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 12
  store i8 -86, ptr %13, align 4, !annotation !3
  %14 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 13
  store i8 -86, ptr %14, align 1, !annotation !3
  %15 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 14
  store i8 -86, ptr %15, align 2, !annotation !3
  %16 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 15
  store i8 -86, ptr %16, align 1, !annotation !3
  call void @llvm.lifetime.start.p0(i64 16, ptr %tag_copy) #8
  %17 = getelementptr inbounds [16 x i8], ptr %tag_copy, i64 0, i64 0
  store i8 -86, ptr %17, align 16, !annotation !3
  %18 = getelementptr inbounds [16 x i8], ptr %tag_copy, i64 0, i64 1
  store i8 -86, ptr %18, align 1, !annotation !3
  %19 = getelementptr inbounds [16 x i8], ptr %tag_copy, i64 0, i64 2
  store i8 -86, ptr %19, align 2, !annotation !3
  %20 = getelementptr inbounds [16 x i8], ptr %tag_copy, i64 0, i64 3
  store i8 -86, ptr %20, align 1, !annotation !3
  %21 = getelementptr inbounds [16 x i8], ptr %tag_copy, i64 0, i64 4
  store i8 -86, ptr %21, align 4, !annotation !3
  %22 = getelementptr inbounds [16 x i8], ptr %tag_copy, i64 0, i64 5
  store i8 -86, ptr %22, align 1, !annotation !3
  %23 = getelementptr inbounds [16 x i8], ptr %tag_copy, i64 0, i64 6
  store i8 -86, ptr %23, align 2, !annotation !3
  %24 = getelementptr inbounds [16 x i8], ptr %tag_copy, i64 0, i64 7
  store i8 -86, ptr %24, align 1, !annotation !3
  %25 = getelementptr inbounds [16 x i8], ptr %tag_copy, i64 0, i64 8
  store i8 -86, ptr %25, align 8, !annotation !3
  %26 = getelementptr inbounds [16 x i8], ptr %tag_copy, i64 0, i64 9
  store i8 -86, ptr %26, align 1, !annotation !3
  %27 = getelementptr inbounds [16 x i8], ptr %tag_copy, i64 0, i64 10
  store i8 -86, ptr %27, align 2, !annotation !3
  %28 = getelementptr inbounds [16 x i8], ptr %tag_copy, i64 0, i64 11
  store i8 -86, ptr %28, align 1, !annotation !3
  %29 = getelementptr inbounds [16 x i8], ptr %tag_copy, i64 0, i64 12
  store i8 -86, ptr %29, align 4, !annotation !3
  %30 = getelementptr inbounds [16 x i8], ptr %tag_copy, i64 0, i64 13
  store i8 -86, ptr %30, align 1, !annotation !3
  %31 = getelementptr inbounds [16 x i8], ptr %tag_copy, i64 0, i64 14
  store i8 -86, ptr %31, align 2, !annotation !3
  %32 = getelementptr inbounds [16 x i8], ptr %tag_copy, i64 0, i64 15
  store i8 -86, ptr %32, align 1, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %auth_len) #8
  store i32 -1431655766, ptr %auth_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag_len) #8
  store i32 -1431655766, ptr %tag_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %stream) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %stream, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %prefix_len) #8
  store i32 -1431655766, ptr %prefix_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq_num) #8
  store i32 -1431655766, ptr %seq_num, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %e_bit_in_packet) #8
  store i32 -1431655766, ptr %e_bit_in_packet, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %sec_serv_confidentiality) #8
  store i32 -1431655766, ptr %sec_serv_confidentiality, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %mki_size) #8
  store i32 -1431655766, ptr %mki_size, align 4, !annotation !3
  store i32 0, ptr %mki_size, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %session_keys) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %session_keys, align 8, !annotation !3
  store ptr null, ptr %session_keys, align 8
  %33 = load ptr, ptr %pkt_octet_len.addr, align 8
  %34 = load i32, ptr %33, align 4
  %cmp = icmp slt i32 %34, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup239

if.end:                                           ; preds = %entry
  %35 = load ptr, ptr %pkt_octet_len.addr, align 8
  %36 = load i32, ptr %35, align 4
  %conv = zext i32 %36 to i64
  %cmp1 = icmp ult i64 %conv, 12
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup239

if.end4:                                          ; preds = %if.end
  %37 = load ptr, ptr %ctx.addr, align 8
  %38 = load ptr, ptr %hdr, align 8
  %ssrc = getelementptr inbounds %struct.srtcp_hdr_t, ptr %38, i32 0, i32 2
  %39 = load i32, ptr %ssrc, align 4
  %call = call ptr @srtp_get_stream(ptr noundef %37, i32 noundef %39)
  store ptr %call, ptr %stream, align 8
  %40 = load ptr, ptr %stream, align 8
  %cmp5 = icmp eq ptr %40, null
  br i1 %cmp5, label %if.then7, label %if.end25

if.then7:                                         ; preds = %if.end4
  %41 = load ptr, ptr %ctx.addr, align 8
  %stream_template = getelementptr inbounds %struct.srtp_ctx_t_, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %stream_template, align 8
  %cmp8 = icmp ne ptr %42, null
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then7
  %43 = load ptr, ptr %ctx.addr, align 8
  %stream_template11 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %stream_template11, align 8
  store ptr %44, ptr %stream, align 8
  %45 = load ptr, ptr %stream, align 8
  %ekt = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %45, i32 0, i32 9
  %46 = load ptr, ptr %ekt, align 8
  %cmp12 = icmp ne ptr %46, null
  br i1 %cmp12, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.then10
  %47 = load ptr, ptr %stream, align 8
  %48 = load ptr, ptr %srtcp_hdr.addr, align 8
  %49 = load ptr, ptr %pkt_octet_len.addr, align 8
  %50 = load i32, ptr %49, align 4
  %call15 = call i32 @srtp_stream_init_from_ekt(ptr noundef %47, ptr noundef %48, i32 noundef %50)
  store i32 %call15, ptr %status, align 4
  %51 = load i32, ptr %status, align 4
  %tobool = icmp ne i32 %51, 0
  br i1 %tobool, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then14
  %52 = load i32, ptr %status, align 4
  store i32 %52, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup239

if.end17:                                         ; preds = %if.then14
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then10
  %53 = load i32, ptr @mod_srtp, align 8
  %tobool19 = icmp ne i32 %53, 0
  br i1 %tobool19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end18
  %54 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %55 = load ptr, ptr %hdr, align 8
  %ssrc21 = getelementptr inbounds %struct.srtcp_hdr_t, ptr %55, i32 0, i32 2
  %56 = load i32, ptr %ssrc21, align 4
  %call22 = call i32 @__bswap_32(i32 noundef %56)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.39, ptr noundef %54, i32 noundef %call22)
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end18
  br label %if.end24

if.else:                                          ; preds = %if.then7
  store i32 13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup239

if.end24:                                         ; preds = %if.end23
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end4
  %57 = load i32, ptr %use_mki.addr, align 4
  %tobool26 = icmp ne i32 %57, 0
  br i1 %tobool26, label %if.then27, label %if.else33

if.then27:                                        ; preds = %if.end25
  %58 = load ptr, ptr %stream, align 8
  %59 = load ptr, ptr %hdr, align 8
  %60 = load ptr, ptr %pkt_octet_len.addr, align 8
  %call28 = call ptr @srtp_get_session_keys(ptr noundef %58, ptr noundef %59, ptr noundef %60, ptr noundef %mki_size)
  store ptr %call28, ptr %session_keys, align 8
  %61 = load ptr, ptr %session_keys, align 8
  %cmp29 = icmp eq ptr %61, null
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then27
  store i32 25, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup239

if.end32:                                         ; preds = %if.then27
  br label %if.end35

if.else33:                                        ; preds = %if.end25
  %62 = load ptr, ptr %stream, align 8
  %session_keys34 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %62, i32 0, i32 1
  %63 = load ptr, ptr %session_keys34, align 8
  %arrayidx = getelementptr inbounds %struct.srtp_session_keys_t, ptr %63, i64 0
  store ptr %arrayidx, ptr %session_keys, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.end32
  %64 = load ptr, ptr %session_keys, align 8
  %rtcp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %64, i32 0, i32 4
  %65 = load ptr, ptr %rtcp_auth, align 8
  %call36 = call i32 @srtp_auth_get_tag_length(ptr noundef %65)
  store i32 %call36, ptr %tag_len, align 4
  %66 = load ptr, ptr %pkt_octet_len.addr, align 8
  %67 = load i32, ptr %66, align 4
  %68 = load i32, ptr %tag_len, align 4
  %add = add nsw i32 8, %68
  %69 = load i32, ptr %mki_size, align 4
  %add37 = add i32 %add, %69
  %conv38 = zext i32 %add37 to i64
  %add39 = add i64 %conv38, 4
  %conv40 = trunc i64 %add39 to i32
  %cmp41 = icmp slt i32 %67, %conv40
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end35
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup239

if.end44:                                         ; preds = %if.end35
  %70 = load ptr, ptr %session_keys, align 8
  %rtp_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %rtp_cipher, align 8
  %algorithm = getelementptr inbounds %struct.srtp_cipher_t, ptr %71, i32 0, i32 3
  %72 = load i32, ptr %algorithm, align 4
  %cmp45 = icmp eq i32 %72, 6
  br i1 %cmp45, label %if.then51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end44
  %73 = load ptr, ptr %session_keys, align 8
  %rtp_cipher47 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %rtp_cipher47, align 8
  %algorithm48 = getelementptr inbounds %struct.srtp_cipher_t, ptr %74, i32 0, i32 3
  %75 = load i32, ptr %algorithm48, align 4
  %cmp49 = icmp eq i32 %75, 7
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %lor.lhs.false, %if.end44
  %76 = load ptr, ptr %ctx.addr, align 8
  %77 = load ptr, ptr %stream, align 8
  %78 = load ptr, ptr %srtcp_hdr.addr, align 8
  %79 = load ptr, ptr %pkt_octet_len.addr, align 8
  %80 = load ptr, ptr %session_keys, align 8
  %81 = load i32, ptr %mki_size, align 4
  %call52 = call i32 @srtp_unprotect_rtcp_aead(ptr noundef %76, ptr noundef %77, ptr noundef %78, ptr noundef %79, ptr noundef %80, i32 noundef %81)
  store i32 %call52, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup239

if.end53:                                         ; preds = %lor.lhs.false
  %82 = load ptr, ptr %stream, align 8
  %rtcp_services = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %82, i32 0, i32 6
  %83 = load i32, ptr %rtcp_services, align 8
  %cmp54 = icmp eq i32 %83, 1
  br i1 %cmp54, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end53
  %84 = load ptr, ptr %stream, align 8
  %rtcp_services56 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %84, i32 0, i32 6
  %85 = load i32, ptr %rtcp_services56, align 8
  %cmp57 = icmp eq i32 %85, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end53
  %86 = phi i1 [ true, %if.end53 ], [ %cmp57, %lor.rhs ]
  %lor.ext = zext i1 %86 to i32
  store i32 %lor.ext, ptr %sec_serv_confidentiality, align 4
  %87 = load ptr, ptr %pkt_octet_len.addr, align 8
  %88 = load i32, ptr %87, align 4
  %conv59 = sext i32 %88 to i64
  %89 = load i32, ptr %tag_len, align 4
  %add60 = add nsw i32 8, %89
  %90 = load i32, ptr %mki_size, align 4
  %add61 = add i32 %add60, %90
  %conv62 = zext i32 %add61 to i64
  %add63 = add i64 %conv62, 4
  %sub = sub i64 %conv59, %add63
  %conv64 = trunc i64 %sub to i32
  store i32 %conv64, ptr %enc_octet_len, align 4
  %91 = load ptr, ptr %hdr, align 8
  %92 = load ptr, ptr %pkt_octet_len.addr, align 8
  %93 = load i32, ptr %92, align 4
  %idx.ext = sext i32 %93 to i64
  %add.ptr = getelementptr inbounds i8, ptr %91, i64 %idx.ext
  %94 = load i32, ptr %tag_len, align 4
  %95 = load i32, ptr %mki_size, align 4
  %add65 = add i32 %94, %95
  %conv66 = zext i32 %add65 to i64
  %add67 = add i64 %conv66, 4
  %idx.neg = sub i64 0, %add67
  %add.ptr68 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  store ptr %add.ptr68, ptr %trailer_p, align 8
  %96 = load ptr, ptr %trailer_p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %trailer, ptr align 4 %96, i64 4, i1 false)
  %97 = load ptr, ptr %trailer_p, align 8
  %98 = load i8, ptr %97, align 1
  %conv69 = zext i8 %98 to i32
  %and = and i32 %conv69, 128
  %cmp70 = icmp eq i32 %and, 128
  %conv71 = zext i1 %cmp70 to i32
  store i32 %conv71, ptr %e_bit_in_packet, align 4
  %99 = load i32, ptr %e_bit_in_packet, align 4
  %100 = load i32, ptr %sec_serv_confidentiality, align 4
  %cmp72 = icmp ne i32 %99, %100
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %lor.end
  store i32 14, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup239

if.end75:                                         ; preds = %lor.end
  %101 = load i32, ptr %sec_serv_confidentiality, align 4
  %tobool76 = icmp ne i32 %101, 0
  br i1 %tobool76, label %if.then77, label %if.else79

if.then77:                                        ; preds = %if.end75
  %102 = load ptr, ptr %hdr, align 8
  %add.ptr78 = getelementptr inbounds i32, ptr %102, i64 2
  store ptr %add.ptr78, ptr %enc_start, align 8
  br label %if.end80

if.else79:                                        ; preds = %if.end75
  store i32 0, ptr %enc_octet_len, align 4
  store ptr null, ptr %enc_start, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.else79, %if.then77
  %103 = load ptr, ptr %hdr, align 8
  store ptr %103, ptr %auth_start, align 8
  %104 = load ptr, ptr %pkt_octet_len.addr, align 8
  %105 = load i32, ptr %104, align 4
  %106 = load i32, ptr %tag_len, align 4
  %sub81 = sub nsw i32 %105, %106
  %107 = load i32, ptr %mki_size, align 4
  %sub82 = sub i32 %sub81, %107
  store i32 %sub82, ptr %auth_len, align 4
  %108 = load ptr, ptr %hdr, align 8
  %109 = load i32, ptr %auth_len, align 4
  %idx.ext83 = zext i32 %109 to i64
  %add.ptr84 = getelementptr inbounds i8, ptr %108, i64 %idx.ext83
  %110 = load i32, ptr %mki_size, align 4
  %idx.ext85 = zext i32 %110 to i64
  %add.ptr86 = getelementptr inbounds i8, ptr %add.ptr84, i64 %idx.ext85
  store ptr %add.ptr86, ptr %auth_tag, align 8
  %111 = load ptr, ptr %stream, align 8
  %ekt87 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %111, i32 0, i32 9
  %112 = load ptr, ptr %ekt87, align 8
  %tobool88 = icmp ne ptr %112, null
  br i1 %tobool88, label %if.then89, label %if.end99

if.then89:                                        ; preds = %if.end80
  %113 = load ptr, ptr %stream, align 8
  %ekt90 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %113, i32 0, i32 9
  %114 = load ptr, ptr %ekt90, align 8
  %call91 = call i32 @srtp_ekt_octets_after_base_tag(ptr noundef %114)
  %115 = load ptr, ptr %auth_tag, align 8
  %idx.ext92 = zext i32 %call91 to i64
  %idx.neg93 = sub i64 0, %idx.ext92
  %add.ptr94 = getelementptr inbounds i8, ptr %115, i64 %idx.neg93
  store ptr %add.ptr94, ptr %auth_tag, align 8
  %arraydecay = getelementptr inbounds [16 x i8], ptr %tag_copy, i64 0, i64 0
  %116 = load ptr, ptr %auth_tag, align 8
  %117 = load i32, ptr %tag_len, align 4
  %conv95 = sext i32 %117 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 1 %116, i64 %conv95, i1 false)
  %118 = load ptr, ptr %auth_tag, align 8
  %119 = load i32, ptr %tag_len, align 4
  %conv96 = sext i32 %119 to i64
  call void @octet_string_set_to_zero(ptr noundef %118, i64 noundef %conv96)
  %arraydecay97 = getelementptr inbounds [16 x i8], ptr %tag_copy, i64 0, i64 0
  store ptr %arraydecay97, ptr %auth_tag, align 8
  %120 = load i32, ptr %tag_len, align 4
  %121 = load i32, ptr %auth_len, align 4
  %add98 = add i32 %121, %120
  store i32 %add98, ptr %auth_len, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then89, %if.end80
  %122 = load i32, ptr %trailer, align 4
  %call100 = call i32 @__bswap_32(i32 noundef %122)
  %and101 = and i32 %call100, 2147483647
  store i32 %and101, ptr %seq_num, align 4
  %123 = load i32, ptr @mod_srtp, align 8
  %tobool102 = icmp ne i32 %123, 0
  br i1 %tobool102, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end99
  %124 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %125 = load i32, ptr %seq_num, align 4
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.37, ptr noundef %124, i32 noundef %125)
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %if.end99
  %126 = load ptr, ptr %stream, align 8
  %rtcp_rdb = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %126, i32 0, i32 5
  %127 = load i32, ptr %seq_num, align 4
  %call105 = call i32 @srtp_rdb_check(ptr noundef %rtcp_rdb, i32 noundef %127)
  store i32 %call105, ptr %status, align 4
  %128 = load i32, ptr %status, align 4
  %tobool106 = icmp ne i32 %128, 0
  br i1 %tobool106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.end104
  %129 = load i32, ptr %status, align 4
  store i32 %129, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup239

if.end108:                                        ; preds = %if.end104
  %130 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %130, i32 0, i32 3
  %131 = load ptr, ptr %rtcp_cipher, align 8
  %type = getelementptr inbounds %struct.srtp_cipher_t, ptr %131, i32 0, i32 0
  %132 = load ptr, ptr %type, align 8
  %id = getelementptr inbounds %struct.srtp_cipher_type_t, ptr %132, i32 0, i32 10
  %133 = load i32, ptr %id, align 8
  %cmp109 = icmp eq i32 %133, 1
  br i1 %cmp109, label %if.then123, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %if.end108
  %134 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher112 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %134, i32 0, i32 3
  %135 = load ptr, ptr %rtcp_cipher112, align 8
  %type113 = getelementptr inbounds %struct.srtp_cipher_t, ptr %135, i32 0, i32 0
  %136 = load ptr, ptr %type113, align 8
  %id114 = getelementptr inbounds %struct.srtp_cipher_type_t, ptr %136, i32 0, i32 10
  %137 = load i32, ptr %id114, align 8
  %cmp115 = icmp eq i32 %137, 4
  br i1 %cmp115, label %if.then123, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %lor.lhs.false111
  %138 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher118 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %138, i32 0, i32 3
  %139 = load ptr, ptr %rtcp_cipher118, align 8
  %type119 = getelementptr inbounds %struct.srtp_cipher_t, ptr %139, i32 0, i32 0
  %140 = load ptr, ptr %type119, align 8
  %id120 = getelementptr inbounds %struct.srtp_cipher_type_t, ptr %140, i32 0, i32 10
  %141 = load i32, ptr %id120, align 8
  %cmp121 = icmp eq i32 %141, 5
  br i1 %cmp121, label %if.then123, label %if.else133

if.then123:                                       ; preds = %lor.lhs.false117, %lor.lhs.false111, %if.end108
  call void @llvm.lifetime.start.p0(i64 16, ptr %iv) #8
  %142 = getelementptr inbounds %union.v128_t, ptr %iv, i32 0, i32 0
  %143 = getelementptr inbounds [2 x i64], ptr %142, i64 0, i64 0
  store i64 -6148914691236517206, ptr %143, align 8, !annotation !3
  %144 = getelementptr inbounds [2 x i64], ptr %142, i64 0, i64 1
  store i64 -6148914691236517206, ptr %144, align 8, !annotation !3
  %arrayidx124 = getelementptr inbounds [4 x i32], ptr %iv, i64 0, i64 0
  store i32 0, ptr %arrayidx124, align 8
  %145 = load ptr, ptr %hdr, align 8
  %ssrc125 = getelementptr inbounds %struct.srtcp_hdr_t, ptr %145, i32 0, i32 2
  %146 = load i32, ptr %ssrc125, align 4
  %arrayidx126 = getelementptr inbounds [4 x i32], ptr %iv, i64 0, i64 1
  store i32 %146, ptr %arrayidx126, align 4
  %147 = load i32, ptr %seq_num, align 4
  %shr = lshr i32 %147, 16
  %call127 = call i32 @__bswap_32(i32 noundef %shr)
  %arrayidx128 = getelementptr inbounds [4 x i32], ptr %iv, i64 0, i64 2
  store i32 %call127, ptr %arrayidx128, align 8
  %148 = load i32, ptr %seq_num, align 4
  %shl = shl i32 %148, 16
  %call129 = call i32 @__bswap_32(i32 noundef %shl)
  %arrayidx130 = getelementptr inbounds [4 x i32], ptr %iv, i64 0, i64 3
  store i32 %call129, ptr %arrayidx130, align 4
  %149 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher131 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %149, i32 0, i32 3
  %150 = load ptr, ptr %rtcp_cipher131, align 8
  %call132 = call i32 @srtp_cipher_set_iv(ptr noundef %150, ptr noundef %iv, i32 noundef 1)
  store i32 %call132, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr %iv) #8
  br label %if.end142

if.else133:                                       ; preds = %lor.lhs.false117
  call void @llvm.lifetime.start.p0(i64 16, ptr %iv134) #8
  %151 = getelementptr inbounds %union.v128_t, ptr %iv134, i32 0, i32 0
  %152 = getelementptr inbounds [2 x i64], ptr %151, i64 0, i64 0
  store i64 -6148914691236517206, ptr %152, align 8, !annotation !3
  %153 = getelementptr inbounds [2 x i64], ptr %151, i64 0, i64 1
  store i64 -6148914691236517206, ptr %153, align 8, !annotation !3
  %arrayidx135 = getelementptr inbounds [4 x i32], ptr %iv134, i64 0, i64 0
  store i32 0, ptr %arrayidx135, align 8
  %arrayidx136 = getelementptr inbounds [4 x i32], ptr %iv134, i64 0, i64 1
  store i32 0, ptr %arrayidx136, align 4
  %arrayidx137 = getelementptr inbounds [4 x i32], ptr %iv134, i64 0, i64 2
  store i32 0, ptr %arrayidx137, align 8
  %154 = load i32, ptr %seq_num, align 4
  %call138 = call i32 @__bswap_32(i32 noundef %154)
  %arrayidx139 = getelementptr inbounds [4 x i32], ptr %iv134, i64 0, i64 3
  store i32 %call138, ptr %arrayidx139, align 4
  %155 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher140 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %155, i32 0, i32 3
  %156 = load ptr, ptr %rtcp_cipher140, align 8
  %call141 = call i32 @srtp_cipher_set_iv(ptr noundef %156, ptr noundef %iv134, i32 noundef 1)
  store i32 %call141, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr %iv134) #8
  br label %if.end142

if.end142:                                        ; preds = %if.else133, %if.then123
  %157 = load i32, ptr %status, align 4
  %tobool143 = icmp ne i32 %157, 0
  br i1 %tobool143, label %if.then144, label %if.end145

if.then144:                                       ; preds = %if.end142
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup239

if.end145:                                        ; preds = %if.end142
  %158 = load ptr, ptr %session_keys, align 8
  %rtcp_auth146 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %158, i32 0, i32 4
  %159 = load ptr, ptr %rtcp_auth146, align 8
  %type147 = getelementptr inbounds %struct.srtp_auth_t, ptr %159, i32 0, i32 0
  %160 = load ptr, ptr %type147, align 8
  %start = getelementptr inbounds %struct.srtp_auth_type_t, ptr %160, i32 0, i32 5
  %161 = load ptr, ptr %start, align 8
  %162 = load ptr, ptr %session_keys, align 8
  %rtcp_auth148 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %162, i32 0, i32 4
  %163 = load ptr, ptr %rtcp_auth148, align 8
  %state = getelementptr inbounds %struct.srtp_auth_t, ptr %163, i32 0, i32 1
  %164 = load ptr, ptr %state, align 8
  %call149 = call i32 %161(ptr noundef %164)
  store i32 %call149, ptr %status, align 4
  %165 = load i32, ptr %status, align 4
  %tobool150 = icmp ne i32 %165, 0
  br i1 %tobool150, label %if.then151, label %if.end152

if.then151:                                       ; preds = %if.end145
  %166 = load i32, ptr %status, align 4
  store i32 %166, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup239

if.end152:                                        ; preds = %if.end145
  %167 = load ptr, ptr %session_keys, align 8
  %rtcp_auth153 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %167, i32 0, i32 4
  %168 = load ptr, ptr %rtcp_auth153, align 8
  %type154 = getelementptr inbounds %struct.srtp_auth_t, ptr %168, i32 0, i32 0
  %169 = load ptr, ptr %type154, align 8
  %compute = getelementptr inbounds %struct.srtp_auth_type_t, ptr %169, i32 0, i32 3
  %170 = load ptr, ptr %compute, align 8
  %171 = load ptr, ptr %session_keys, align 8
  %rtcp_auth155 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %171, i32 0, i32 4
  %172 = load ptr, ptr %rtcp_auth155, align 8
  %state156 = getelementptr inbounds %struct.srtp_auth_t, ptr %172, i32 0, i32 1
  %173 = load ptr, ptr %state156, align 8
  %174 = load ptr, ptr %auth_start, align 8
  %175 = load i32, ptr %auth_len, align 4
  %176 = load ptr, ptr %session_keys, align 8
  %rtcp_auth157 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %176, i32 0, i32 4
  %177 = load ptr, ptr %rtcp_auth157, align 8
  %out_len = getelementptr inbounds %struct.srtp_auth_t, ptr %177, i32 0, i32 2
  %178 = load i32, ptr %out_len, align 8
  %arraydecay158 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 0
  %call159 = call i32 %170(ptr noundef %173, ptr noundef %174, i32 noundef %175, i32 noundef %178, ptr noundef %arraydecay158)
  store i32 %call159, ptr %status, align 4
  %179 = load i32, ptr @mod_srtp, align 8
  %tobool160 = icmp ne i32 %179, 0
  br i1 %tobool160, label %if.then161, label %if.end164

if.then161:                                       ; preds = %if.end152
  %180 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %arraydecay162 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 0
  %181 = load i32, ptr %tag_len, align 4
  %call163 = call ptr @srtp_octet_string_hex_string(ptr noundef %arraydecay162, i32 noundef %181)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.40, ptr noundef %180, ptr noundef %call163)
  br label %if.end164

if.end164:                                        ; preds = %if.then161, %if.end152
  %182 = load i32, ptr %status, align 4
  %tobool165 = icmp ne i32 %182, 0
  br i1 %tobool165, label %if.then166, label %if.end167

if.then166:                                       ; preds = %if.end164
  store i32 7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup239

if.end167:                                        ; preds = %if.end164
  %183 = load i32, ptr @mod_srtp, align 8
  %tobool168 = icmp ne i32 %183, 0
  br i1 %tobool168, label %if.then169, label %if.end171

if.then169:                                       ; preds = %if.end167
  %184 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %185 = load ptr, ptr %auth_tag, align 8
  %186 = load i32, ptr %tag_len, align 4
  %call170 = call ptr @srtp_octet_string_hex_string(ptr noundef %185, i32 noundef %186)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.41, ptr noundef %184, ptr noundef %call170)
  br label %if.end171

if.end171:                                        ; preds = %if.then169, %if.end167
  %arraydecay172 = getelementptr inbounds [16 x i8], ptr %tmp_tag, i64 0, i64 0
  %187 = load ptr, ptr %auth_tag, align 8
  %188 = load i32, ptr %tag_len, align 4
  %call173 = call i32 @srtp_octet_string_is_eq(ptr noundef %arraydecay172, ptr noundef %187, i32 noundef %188)
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.then175, label %if.end176

if.then175:                                       ; preds = %if.end171
  store i32 7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup239

if.end176:                                        ; preds = %if.end171
  %189 = load ptr, ptr %session_keys, align 8
  %rtcp_auth177 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %189, i32 0, i32 4
  %190 = load ptr, ptr %rtcp_auth177, align 8
  %call178 = call i32 @srtp_auth_get_prefix_length(ptr noundef %190)
  store i32 %call178, ptr %prefix_len, align 4
  %191 = load i32, ptr %prefix_len, align 4
  %tobool179 = icmp ne i32 %191, 0
  br i1 %tobool179, label %if.then180, label %if.end190

if.then180:                                       ; preds = %if.end176
  %192 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher181 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %192, i32 0, i32 3
  %193 = load ptr, ptr %rtcp_cipher181, align 8
  %194 = load ptr, ptr %auth_tag, align 8
  %call182 = call i32 @srtp_cipher_output(ptr noundef %193, ptr noundef %194, ptr noundef %prefix_len)
  store i32 %call182, ptr %status, align 4
  %195 = load i32, ptr @mod_srtp, align 8
  %tobool183 = icmp ne i32 %195, 0
  br i1 %tobool183, label %if.then184, label %if.end186

if.then184:                                       ; preds = %if.then180
  %196 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %197 = load ptr, ptr %auth_tag, align 8
  %198 = load i32, ptr %prefix_len, align 4
  %call185 = call ptr @srtp_octet_string_hex_string(ptr noundef %197, i32 noundef %198)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.30, ptr noundef %196, ptr noundef %call185)
  br label %if.end186

if.end186:                                        ; preds = %if.then184, %if.then180
  %199 = load i32, ptr %status, align 4
  %tobool187 = icmp ne i32 %199, 0
  br i1 %tobool187, label %if.then188, label %if.end189

if.then188:                                       ; preds = %if.end186
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup239

if.end189:                                        ; preds = %if.end186
  br label %if.end190

if.end190:                                        ; preds = %if.end189, %if.end176
  %200 = load ptr, ptr %enc_start, align 8
  %tobool191 = icmp ne ptr %200, null
  br i1 %tobool191, label %if.then192, label %if.end198

if.then192:                                       ; preds = %if.end190
  %201 = load ptr, ptr %session_keys, align 8
  %rtcp_cipher193 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %201, i32 0, i32 3
  %202 = load ptr, ptr %rtcp_cipher193, align 8
  %203 = load ptr, ptr %enc_start, align 8
  %call194 = call i32 @srtp_cipher_decrypt(ptr noundef %202, ptr noundef %203, ptr noundef %enc_octet_len)
  store i32 %call194, ptr %status, align 4
  %204 = load i32, ptr %status, align 4
  %tobool195 = icmp ne i32 %204, 0
  br i1 %tobool195, label %if.then196, label %if.end197

if.then196:                                       ; preds = %if.then192
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup239

if.end197:                                        ; preds = %if.then192
  br label %if.end198

if.end198:                                        ; preds = %if.end197, %if.end190
  %205 = load i32, ptr %tag_len, align 4
  %conv199 = sext i32 %205 to i64
  %add200 = add i64 %conv199, 4
  %206 = load ptr, ptr %pkt_octet_len.addr, align 8
  %207 = load i32, ptr %206, align 4
  %conv201 = sext i32 %207 to i64
  %sub202 = sub i64 %conv201, %add200
  %conv203 = trunc i64 %sub202 to i32
  store i32 %conv203, ptr %206, align 4
  %208 = load i32, ptr %mki_size, align 4
  %209 = load ptr, ptr %pkt_octet_len.addr, align 8
  %210 = load i32, ptr %209, align 4
  %sub204 = sub i32 %210, %208
  store i32 %sub204, ptr %209, align 4
  %211 = load ptr, ptr %stream, align 8
  %ekt205 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %211, i32 0, i32 9
  %212 = load ptr, ptr %ekt205, align 8
  %call206 = call i32 @srtp_ekt_octets_after_base_tag(ptr noundef %212)
  %213 = load ptr, ptr %pkt_octet_len.addr, align 8
  %214 = load i32, ptr %213, align 4
  %sub207 = sub i32 %214, %call206
  store i32 %sub207, ptr %213, align 4
  %215 = load ptr, ptr %stream, align 8
  %direction = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %215, i32 0, i32 7
  %216 = load i32, ptr %direction, align 4
  %cmp208 = icmp ne i32 %216, 2
  br i1 %cmp208, label %if.then210, label %if.end224

if.then210:                                       ; preds = %if.end198
  %217 = load ptr, ptr %stream, align 8
  %direction211 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %217, i32 0, i32 7
  %218 = load i32, ptr %direction211, align 4
  %cmp212 = icmp eq i32 %218, 0
  br i1 %cmp212, label %if.then214, label %if.else216

if.then214:                                       ; preds = %if.then210
  %219 = load ptr, ptr %stream, align 8
  %direction215 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %219, i32 0, i32 7
  store i32 2, ptr %direction215, align 4
  br label %if.end223

if.else216:                                       ; preds = %if.then210
  %220 = load ptr, ptr @srtp_event_handler, align 8
  %tobool217 = icmp ne ptr %220, null
  br i1 %tobool217, label %if.then218, label %if.end222

if.then218:                                       ; preds = %if.else216
  call void @llvm.lifetime.start.p0(i64 16, ptr %data) #8
  %221 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 0
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %221, align 8, !annotation !3
  %222 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 1
  store i32 -1431655766, ptr %222, align 8, !annotation !3
  %223 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 2
  store i32 -1431655766, ptr %223, align 4, !annotation !3
  %224 = load ptr, ptr %ctx.addr, align 8
  %session = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 0
  store ptr %224, ptr %session, align 8
  %225 = load ptr, ptr %stream, align 8
  %ssrc219 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %225, i32 0, i32 0
  %226 = load i32, ptr %ssrc219, align 8
  %call220 = call i32 @__bswap_32(i32 noundef %226)
  %ssrc221 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 1
  store i32 %call220, ptr %ssrc221, align 8
  %event = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 2
  store i32 0, ptr %event, align 4
  %227 = load ptr, ptr @srtp_event_handler, align 8
  call void %227(ptr noundef %data)
  call void @llvm.lifetime.end.p0(i64 16, ptr %data) #8
  br label %if.end222

if.end222:                                        ; preds = %if.then218, %if.else216
  br label %if.end223

if.end223:                                        ; preds = %if.end222, %if.then214
  br label %if.end224

if.end224:                                        ; preds = %if.end223, %if.end198
  %228 = load ptr, ptr %stream, align 8
  %229 = load ptr, ptr %ctx.addr, align 8
  %stream_template225 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %229, i32 0, i32 1
  %230 = load ptr, ptr %stream_template225, align 8
  %cmp226 = icmp eq ptr %228, %230
  br i1 %cmp226, label %if.then228, label %if.end236

if.then228:                                       ; preds = %if.end224
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_stream) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %new_stream, align 8, !annotation !3
  %231 = load ptr, ptr %ctx.addr, align 8
  %stream_template229 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %231, i32 0, i32 1
  %232 = load ptr, ptr %stream_template229, align 8
  %233 = load ptr, ptr %hdr, align 8
  %ssrc230 = getelementptr inbounds %struct.srtcp_hdr_t, ptr %233, i32 0, i32 2
  %234 = load i32, ptr %ssrc230, align 4
  %call231 = call i32 @srtp_stream_clone(ptr noundef %232, i32 noundef %234, ptr noundef %new_stream)
  store i32 %call231, ptr %status, align 4
  %235 = load i32, ptr %status, align 4
  %tobool232 = icmp ne i32 %235, 0
  br i1 %tobool232, label %if.then233, label %if.end234

if.then233:                                       ; preds = %if.then228
  %236 = load i32, ptr %status, align 4
  store i32 %236, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end234:                                        ; preds = %if.then228
  %237 = load ptr, ptr %ctx.addr, align 8
  %stream_list = getelementptr inbounds %struct.srtp_ctx_t_, ptr %237, i32 0, i32 0
  %238 = load ptr, ptr %stream_list, align 8
  %239 = load ptr, ptr %new_stream, align 8
  %next = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %239, i32 0, i32 13
  store ptr %238, ptr %next, align 8
  %240 = load ptr, ptr %new_stream, align 8
  %241 = load ptr, ptr %ctx.addr, align 8
  %stream_list235 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %241, i32 0, i32 0
  store ptr %240, ptr %stream_list235, align 8
  %242 = load ptr, ptr %new_stream, align 8
  store ptr %242, ptr %stream, align 8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end234, %if.then233
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_stream) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup239 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end236

if.end236:                                        ; preds = %cleanup.cont, %if.end224
  %243 = load ptr, ptr %stream, align 8
  %rtcp_rdb237 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %243, i32 0, i32 5
  %244 = load i32, ptr %seq_num, align 4
  %call238 = call i32 @srtp_rdb_add_index(ptr noundef %rtcp_rdb237, i32 noundef %244)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup239

cleanup239:                                       ; preds = %if.end236, %cleanup, %if.then196, %if.then188, %if.then175, %if.then166, %if.then151, %if.then144, %if.then107, %if.then74, %if.then51, %if.then43, %if.then31, %if.else, %if.then16, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %session_keys) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %mki_size) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %sec_serv_confidentiality) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %e_bit_in_packet) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq_num) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %prefix_len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %stream) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %auth_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %tag_copy) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp_tag) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %auth_tag) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %enc_octet_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %trailer) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %trailer_p) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %auth_start) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %enc_start) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #8
  %245 = load i32, ptr %retval, align 4
  ret i32 %245
}

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_stream_init_from_ekt(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @srtp_unprotect_rtcp_aead(ptr noundef %ctx, ptr noundef %stream, ptr noundef %srtcp_hdr, ptr noundef %pkt_octet_len, ptr noundef %session_keys, i32 noundef %use_mki) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  %srtcp_hdr.addr = alloca ptr, align 8
  %pkt_octet_len.addr = alloca ptr, align 8
  %session_keys.addr = alloca ptr, align 8
  %use_mki.addr = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %enc_start = alloca ptr, align 8
  %trailer_p = alloca ptr, align 8
  %trailer = alloca i32, align 4
  %enc_octet_len = alloca i32, align 4
  %auth_tag = alloca ptr, align 8
  %status = alloca i32, align 4
  %tag_len = alloca i32, align 4
  %tmp_len = alloca i32, align 4
  %seq_num = alloca i32, align 4
  %iv = alloca %union.v128_t, align 8
  %tseq = alloca i32, align 4
  %mki_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %data = alloca %struct.srtp_event_data_t, align 8
  %new_stream = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %stream, ptr %stream.addr, align 8
  store ptr %srtcp_hdr, ptr %srtcp_hdr.addr, align 8
  store ptr %pkt_octet_len, ptr %pkt_octet_len.addr, align 8
  store ptr %session_keys, ptr %session_keys.addr, align 8
  store i32 %use_mki, ptr %use_mki.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %hdr, align 8, !annotation !3
  %0 = load ptr, ptr %srtcp_hdr.addr, align 8
  store ptr %0, ptr %hdr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %enc_start) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %enc_start, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %trailer_p) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %trailer_p, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %trailer) #8
  store i32 -1431655766, ptr %trailer, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %enc_octet_len) #8
  store i32 -1431655766, ptr %enc_octet_len, align 4, !annotation !3
  store i32 0, ptr %enc_octet_len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %auth_tag) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %auth_tag, align 8, !annotation !3
  store ptr null, ptr %auth_tag, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -1431655766, ptr %status, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag_len) #8
  store i32 -1431655766, ptr %tag_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp_len) #8
  store i32 -1431655766, ptr %tmp_len, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq_num) #8
  store i32 -1431655766, ptr %seq_num, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 16, ptr %iv) #8
  %1 = getelementptr inbounds %union.v128_t, ptr %iv, i32 0, i32 0
  %2 = getelementptr inbounds [2 x i64], ptr %1, i64 0, i64 0
  store i64 -6148914691236517206, ptr %2, align 8, !annotation !3
  %3 = getelementptr inbounds [2 x i64], ptr %1, i64 0, i64 1
  store i64 -6148914691236517206, ptr %3, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %tseq) #8
  store i32 -1431655766, ptr %tseq, align 4, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %mki_size) #8
  store i32 -1431655766, ptr %mki_size, align 4, !annotation !3
  store i32 0, ptr %mki_size, align 4
  %4 = load ptr, ptr %session_keys.addr, align 8
  %rtcp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %rtcp_auth, align 8
  %call = call i32 @srtp_auth_get_tag_length(ptr noundef %5)
  store i32 %call, ptr %tag_len, align 4
  %6 = load i32, ptr %use_mki.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %session_keys.addr, align 8
  %mki_size1 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %7, i32 0, i32 8
  %8 = load i32, ptr %mki_size1, align 8
  store i32 %8, ptr %mki_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %hdr, align 8
  %10 = load ptr, ptr %pkt_octet_len.addr, align 8
  %11 = load i32, ptr %10, align 4
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -4
  %12 = load i32, ptr %mki_size, align 4
  %idx.ext3 = zext i32 %12 to i64
  %idx.neg = sub i64 0, %idx.ext3
  %add.ptr4 = getelementptr inbounds i8, ptr %add.ptr2, i64 %idx.neg
  store ptr %add.ptr4, ptr %trailer_p, align 8
  %13 = load ptr, ptr %trailer_p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %trailer, ptr align 4 %13, i64 4, i1 false)
  %14 = load ptr, ptr %pkt_octet_len.addr, align 8
  %15 = load i32, ptr %14, align 4
  %conv = zext i32 %15 to i64
  %16 = load i32, ptr %mki_size, align 4
  %conv5 = zext i32 %16 to i64
  %add = add i64 12, %conv5
  %sub = sub i64 %conv, %add
  %conv6 = trunc i64 %sub to i32
  store i32 %conv6, ptr %enc_octet_len, align 4
  %17 = load ptr, ptr %hdr, align 8
  %18 = load ptr, ptr %pkt_octet_len.addr, align 8
  %19 = load i32, ptr %18, align 4
  %idx.ext7 = zext i32 %19 to i64
  %add.ptr8 = getelementptr inbounds i8, ptr %17, i64 %idx.ext7
  %20 = load i32, ptr %tag_len, align 4
  %idx.ext9 = sext i32 %20 to i64
  %idx.neg10 = sub i64 0, %idx.ext9
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr8, i64 %idx.neg10
  %21 = load i32, ptr %mki_size, align 4
  %idx.ext12 = zext i32 %21 to i64
  %idx.neg13 = sub i64 0, %idx.ext12
  %add.ptr14 = getelementptr inbounds i8, ptr %add.ptr11, i64 %idx.neg13
  %add.ptr15 = getelementptr inbounds i8, ptr %add.ptr14, i64 -4
  store ptr %add.ptr15, ptr %auth_tag, align 8
  %22 = load ptr, ptr %trailer_p, align 8
  %23 = load i8, ptr %22, align 1
  %conv16 = zext i8 %23 to i32
  %and = and i32 %conv16, 128
  %tobool17 = icmp ne i32 %and, 0
  br i1 %tobool17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end
  %24 = load ptr, ptr %hdr, align 8
  %add.ptr19 = getelementptr inbounds i32, ptr %24, i64 2
  store ptr %add.ptr19, ptr %enc_start, align 8
  br label %if.end20

if.else:                                          ; preds = %if.end
  store i32 0, ptr %enc_octet_len, align 4
  store ptr null, ptr %enc_start, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then18
  %25 = load i32, ptr %trailer, align 4
  %call21 = call i32 @__bswap_32(i32 noundef %25)
  %and22 = and i32 %call21, 2147483647
  store i32 %and22, ptr %seq_num, align 4
  %26 = load i32, ptr @mod_srtp, align 8
  %tobool23 = icmp ne i32 %26, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  %27 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %28 = load i32, ptr %seq_num, align 4
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.37, ptr noundef %27, i32 noundef %28)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20
  %29 = load ptr, ptr %stream.addr, align 8
  %rtcp_rdb = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %29, i32 0, i32 5
  %30 = load i32, ptr %seq_num, align 4
  %call26 = call i32 @srtp_rdb_check(ptr noundef %rtcp_rdb, i32 noundef %30)
  store i32 %call26, ptr %status, align 4
  %31 = load i32, ptr %status, align 4
  %tobool27 = icmp ne i32 %31, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  %32 = load i32, ptr %status, align 4
  store i32 %32, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112

if.end29:                                         ; preds = %if.end25
  %33 = load ptr, ptr %session_keys.addr, align 8
  %34 = load i32, ptr %seq_num, align 4
  %35 = load ptr, ptr %hdr, align 8
  %call30 = call i32 @srtp_calc_aead_iv_srtcp(ptr noundef %33, ptr noundef %iv, i32 noundef %34, ptr noundef %35)
  store i32 %call30, ptr %status, align 4
  %36 = load i32, ptr %status, align 4
  %tobool31 = icmp ne i32 %36, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112

if.end33:                                         ; preds = %if.end29
  %37 = load ptr, ptr %session_keys.addr, align 8
  %rtcp_cipher = getelementptr inbounds %struct.srtp_session_keys_t, ptr %37, i32 0, i32 3
  %38 = load ptr, ptr %rtcp_cipher, align 8
  %call34 = call i32 @srtp_cipher_set_iv(ptr noundef %38, ptr noundef %iv, i32 noundef 1)
  store i32 %call34, ptr %status, align 4
  %39 = load i32, ptr %status, align 4
  %tobool35 = icmp ne i32 %39, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112

if.end37:                                         ; preds = %if.end33
  %40 = load ptr, ptr %enc_start, align 8
  %tobool38 = icmp ne ptr %40, null
  br i1 %tobool38, label %if.then39, label %if.else45

if.then39:                                        ; preds = %if.end37
  %41 = load ptr, ptr %session_keys.addr, align 8
  %rtcp_cipher40 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %41, i32 0, i32 3
  %42 = load ptr, ptr %rtcp_cipher40, align 8
  %43 = load ptr, ptr %hdr, align 8
  %call41 = call i32 @srtp_cipher_set_aad(ptr noundef %42, ptr noundef %43, i32 noundef 8)
  store i32 %call41, ptr %status, align 4
  %44 = load i32, ptr %status, align 4
  %tobool42 = icmp ne i32 %44, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then39
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112

if.end44:                                         ; preds = %if.then39
  br label %if.end57

if.else45:                                        ; preds = %if.end37
  %45 = load ptr, ptr %session_keys.addr, align 8
  %rtcp_cipher46 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %45, i32 0, i32 3
  %46 = load ptr, ptr %rtcp_cipher46, align 8
  %47 = load ptr, ptr %hdr, align 8
  %48 = load ptr, ptr %pkt_octet_len.addr, align 8
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr %tag_len, align 4
  %sub47 = sub i32 %49, %50
  %conv48 = zext i32 %sub47 to i64
  %sub49 = sub i64 %conv48, 4
  %51 = load i32, ptr %mki_size, align 4
  %conv50 = zext i32 %51 to i64
  %sub51 = sub i64 %sub49, %conv50
  %conv52 = trunc i64 %sub51 to i32
  %call53 = call i32 @srtp_cipher_set_aad(ptr noundef %46, ptr noundef %47, i32 noundef %conv52)
  store i32 %call53, ptr %status, align 4
  %52 = load i32, ptr %status, align 4
  %tobool54 = icmp ne i32 %52, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.else45
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112

if.end56:                                         ; preds = %if.else45
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end44
  %53 = load i32, ptr %trailer, align 4
  store i32 %53, ptr %tseq, align 4
  %54 = load ptr, ptr %session_keys.addr, align 8
  %rtcp_cipher58 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %54, i32 0, i32 3
  %55 = load ptr, ptr %rtcp_cipher58, align 8
  %call59 = call i32 @srtp_cipher_set_aad(ptr noundef %55, ptr noundef %tseq, i32 noundef 4)
  store i32 %call59, ptr %status, align 4
  %56 = load i32, ptr %status, align 4
  %tobool60 = icmp ne i32 %56, 0
  br i1 %tobool60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end57
  store i32 8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112

if.end62:                                         ; preds = %if.end57
  %57 = load ptr, ptr %enc_start, align 8
  %tobool63 = icmp ne ptr %57, null
  br i1 %tobool63, label %if.then64, label %if.else70

if.then64:                                        ; preds = %if.end62
  %58 = load ptr, ptr %session_keys.addr, align 8
  %rtcp_cipher65 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %58, i32 0, i32 3
  %59 = load ptr, ptr %rtcp_cipher65, align 8
  %60 = load ptr, ptr %enc_start, align 8
  %call66 = call i32 @srtp_cipher_decrypt(ptr noundef %59, ptr noundef %60, ptr noundef %enc_octet_len)
  store i32 %call66, ptr %status, align 4
  %61 = load i32, ptr %status, align 4
  %tobool67 = icmp ne i32 %61, 0
  br i1 %tobool67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.then64
  %62 = load i32, ptr %status, align 4
  store i32 %62, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112

if.end69:                                         ; preds = %if.then64
  br label %if.end76

if.else70:                                        ; preds = %if.end62
  %63 = load i32, ptr %tag_len, align 4
  store i32 %63, ptr %tmp_len, align 4
  %64 = load ptr, ptr %session_keys.addr, align 8
  %rtcp_cipher71 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %64, i32 0, i32 3
  %65 = load ptr, ptr %rtcp_cipher71, align 8
  %66 = load ptr, ptr %auth_tag, align 8
  %call72 = call i32 @srtp_cipher_decrypt(ptr noundef %65, ptr noundef %66, ptr noundef %tmp_len)
  store i32 %call72, ptr %status, align 4
  %67 = load i32, ptr %status, align 4
  %tobool73 = icmp ne i32 %67, 0
  br i1 %tobool73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.else70
  %68 = load i32, ptr %status, align 4
  store i32 %68, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112

if.end75:                                         ; preds = %if.else70
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end69
  %69 = load i32, ptr %tag_len, align 4
  %conv77 = sext i32 %69 to i64
  %add78 = add i64 %conv77, 4
  %70 = load i32, ptr %mki_size, align 4
  %conv79 = zext i32 %70 to i64
  %add80 = add i64 %add78, %conv79
  %71 = load ptr, ptr %pkt_octet_len.addr, align 8
  %72 = load i32, ptr %71, align 4
  %conv81 = zext i32 %72 to i64
  %sub82 = sub i64 %conv81, %add80
  %conv83 = trunc i64 %sub82 to i32
  store i32 %conv83, ptr %71, align 4
  %73 = load ptr, ptr %stream.addr, align 8
  %direction = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %73, i32 0, i32 7
  %74 = load i32, ptr %direction, align 4
  %cmp = icmp ne i32 %74, 2
  br i1 %cmp, label %if.then85, label %if.end98

if.then85:                                        ; preds = %if.end76
  %75 = load ptr, ptr %stream.addr, align 8
  %direction86 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %75, i32 0, i32 7
  %76 = load i32, ptr %direction86, align 4
  %cmp87 = icmp eq i32 %76, 0
  br i1 %cmp87, label %if.then89, label %if.else91

if.then89:                                        ; preds = %if.then85
  %77 = load ptr, ptr %stream.addr, align 8
  %direction90 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %77, i32 0, i32 7
  store i32 2, ptr %direction90, align 4
  br label %if.end97

if.else91:                                        ; preds = %if.then85
  %78 = load ptr, ptr @srtp_event_handler, align 8
  %tobool92 = icmp ne ptr %78, null
  br i1 %tobool92, label %if.then93, label %if.end96

if.then93:                                        ; preds = %if.else91
  call void @llvm.lifetime.start.p0(i64 16, ptr %data) #8
  %79 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 0
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %79, align 8, !annotation !3
  %80 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 1
  store i32 -1431655766, ptr %80, align 8, !annotation !3
  %81 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 2
  store i32 -1431655766, ptr %81, align 4, !annotation !3
  %82 = load ptr, ptr %ctx.addr, align 8
  %session = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 0
  store ptr %82, ptr %session, align 8
  %83 = load ptr, ptr %stream.addr, align 8
  %ssrc = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %83, i32 0, i32 0
  %84 = load i32, ptr %ssrc, align 8
  %call94 = call i32 @__bswap_32(i32 noundef %84)
  %ssrc95 = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 1
  store i32 %call94, ptr %ssrc95, align 8
  %event = getelementptr inbounds %struct.srtp_event_data_t, ptr %data, i32 0, i32 2
  store i32 0, ptr %event, align 4
  %85 = load ptr, ptr @srtp_event_handler, align 8
  call void %85(ptr noundef %data)
  call void @llvm.lifetime.end.p0(i64 16, ptr %data) #8
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.else91
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.then89
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.end76
  %86 = load ptr, ptr %stream.addr, align 8
  %87 = load ptr, ptr %ctx.addr, align 8
  %stream_template = getelementptr inbounds %struct.srtp_ctx_t_, ptr %87, i32 0, i32 1
  %88 = load ptr, ptr %stream_template, align 8
  %cmp99 = icmp eq ptr %86, %88
  br i1 %cmp99, label %if.then101, label %if.end109

if.then101:                                       ; preds = %if.end98
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_stream) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %new_stream, align 8, !annotation !3
  %89 = load ptr, ptr %ctx.addr, align 8
  %stream_template102 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %89, i32 0, i32 1
  %90 = load ptr, ptr %stream_template102, align 8
  %91 = load ptr, ptr %hdr, align 8
  %ssrc103 = getelementptr inbounds %struct.srtcp_hdr_t, ptr %91, i32 0, i32 2
  %92 = load i32, ptr %ssrc103, align 4
  %call104 = call i32 @srtp_stream_clone(ptr noundef %90, i32 noundef %92, ptr noundef %new_stream)
  store i32 %call104, ptr %status, align 4
  %93 = load i32, ptr %status, align 4
  %tobool105 = icmp ne i32 %93, 0
  br i1 %tobool105, label %if.then106, label %if.end107

if.then106:                                       ; preds = %if.then101
  %94 = load i32, ptr %status, align 4
  store i32 %94, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end107:                                        ; preds = %if.then101
  %95 = load ptr, ptr %ctx.addr, align 8
  %stream_list = getelementptr inbounds %struct.srtp_ctx_t_, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %stream_list, align 8
  %97 = load ptr, ptr %new_stream, align 8
  %next = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %97, i32 0, i32 13
  store ptr %96, ptr %next, align 8
  %98 = load ptr, ptr %new_stream, align 8
  %99 = load ptr, ptr %ctx.addr, align 8
  %stream_list108 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %99, i32 0, i32 0
  store ptr %98, ptr %stream_list108, align 8
  %100 = load ptr, ptr %new_stream, align 8
  store ptr %100, ptr %stream.addr, align 8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %if.then106
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_stream) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup112 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end109

if.end109:                                        ; preds = %cleanup.cont, %if.end98
  %101 = load ptr, ptr %stream.addr, align 8
  %rtcp_rdb110 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %101, i32 0, i32 5
  %102 = load i32, ptr %seq_num, align 4
  %call111 = call i32 @srtp_rdb_add_index(ptr noundef %rtcp_rdb110, i32 noundef %102)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112

cleanup112:                                       ; preds = %if.end109, %cleanup, %if.then74, %if.then68, %if.then61, %if.then55, %if.then43, %if.then36, %if.then32, %if.then28
  call void @llvm.lifetime.end.p0(i64 4, ptr %mki_size) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tseq) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %iv) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq_num) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %auth_tag) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %enc_octet_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %trailer) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %trailer_p) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %enc_start) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #8
  %103 = load i32, ptr %retval, align 4
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_ekt_octets_after_base_tag(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_rdb_check(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_rdb_add_index(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_set_user_data(ptr noundef %ctx, ptr noundef %data) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  %0 = load ptr, ptr %data.addr, align 8
  %1 = load ptr, ptr %ctx.addr, align 8
  %user_data = getelementptr inbounds %struct.srtp_ctx_t_, ptr %1, i32 0, i32 2
  store ptr %0, ptr %user_data, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden ptr @srtp_get_user_data(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %user_data = getelementptr inbounds %struct.srtp_ctx_t_, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %user_data, align 8
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_crypto_policy_set_from_profile_for_rtp(ptr noundef %policy, i32 noundef %profile) #0 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %profile.addr = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  store i32 %profile, ptr %profile.addr, align 4
  %0 = load i32, ptr %profile.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 5, label %sw.bb2
    i32 7, label %sw.bb3
    i32 8, label %sw.bb4
    i32 6, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %policy.addr, align 8
  call void @srtp_crypto_policy_set_rtp_default(ptr noundef %1)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load ptr, ptr %policy.addr, align 8
  call void @srtp_crypto_policy_set_aes_cm_128_hmac_sha1_32(ptr noundef %2)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %3 = load ptr, ptr %policy.addr, align 8
  call void @srtp_crypto_policy_set_null_cipher_hmac_sha1_80(ptr noundef %3)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %4 = load ptr, ptr %policy.addr, align 8
  call void @srtp_crypto_policy_set_aes_gcm_128_16_auth(ptr noundef %4)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %5 = load ptr, ptr %policy.addr, align 8
  call void @srtp_crypto_policy_set_aes_gcm_256_16_auth(ptr noundef %5)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb5
  store i32 2, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_crypto_policy_set_from_profile_for_rtcp(ptr noundef %policy, i32 noundef %profile) #0 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %profile.addr = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  store i32 %profile, ptr %profile.addr, align 4
  %0 = load i32, ptr %profile.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 5, label %sw.bb2
    i32 7, label %sw.bb3
    i32 8, label %sw.bb4
    i32 6, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %policy.addr, align 8
  call void @srtp_crypto_policy_set_rtp_default(ptr noundef %1)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load ptr, ptr %policy.addr, align 8
  call void @srtp_crypto_policy_set_rtp_default(ptr noundef %2)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %3 = load ptr, ptr %policy.addr, align 8
  call void @srtp_crypto_policy_set_null_cipher_hmac_sha1_80(ptr noundef %3)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %4 = load ptr, ptr %policy.addr, align 8
  call void @srtp_crypto_policy_set_aes_gcm_128_16_auth(ptr noundef %4)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %5 = load ptr, ptr %policy.addr, align 8
  call void @srtp_crypto_policy_set_aes_gcm_256_16_auth(ptr noundef %5)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb5
  store i32 2, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_append_salt_to_key(ptr noundef %key, i32 noundef %bytes_in_key, ptr noundef %salt, i32 noundef %bytes_in_salt) #0 {
entry:
  %key.addr = alloca ptr, align 8
  %bytes_in_key.addr = alloca i32, align 4
  %salt.addr = alloca ptr, align 8
  %bytes_in_salt.addr = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  store i32 %bytes_in_key, ptr %bytes_in_key.addr, align 4
  store ptr %salt, ptr %salt.addr, align 8
  store i32 %bytes_in_salt, ptr %bytes_in_salt.addr, align 4
  %0 = load ptr, ptr %key.addr, align 8
  %1 = load i32, ptr %bytes_in_key.addr, align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext
  %2 = load ptr, ptr %salt.addr, align 8
  %3 = load i32, ptr %bytes_in_salt.addr, align 4
  %conv = zext i32 %3 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %2, i64 %conv, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_profile_get_master_key_length(i32 noundef %profile) #0 {
entry:
  %retval = alloca i32, align 4
  %profile.addr = alloca i32, align 4
  store i32 %profile, ptr %profile.addr, align 4
  %0 = load i32, ptr %profile.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 5, label %sw.bb2
    i32 7, label %sw.bb3
    i32 8, label %sw.bb4
    i32 6, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  store i32 16, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 16, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 16, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 16, ptr %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  store i32 32, ptr %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb5
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_profile_get_master_salt_length(i32 noundef %profile) #0 {
entry:
  %retval = alloca i32, align 4
  %profile.addr = alloca i32, align 4
  store i32 %profile, ptr %profile.addr, align 4
  %0 = load i32, ptr %profile.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 5, label %sw.bb2
    i32 7, label %sw.bb3
    i32 8, label %sw.bb4
    i32 6, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  store i32 14, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 14, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 14, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 12, ptr %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  store i32 12, ptr %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb5
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @stream_get_protect_trailer_length(ptr noundef %stream, i32 noundef %is_rtp, i32 noundef %use_mki, i32 noundef %mki_index, ptr noundef %length) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca ptr, align 8
  %is_rtp.addr = alloca i32, align 4
  %use_mki.addr = alloca i32, align 4
  %mki_index.addr = alloca i32, align 4
  %length.addr = alloca ptr, align 8
  %session_key = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %stream, ptr %stream.addr, align 8
  store i32 %is_rtp, ptr %is_rtp.addr, align 4
  store i32 %use_mki, ptr %use_mki.addr, align 4
  store i32 %mki_index, ptr %mki_index.addr, align 4
  store ptr %length, ptr %length.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %session_key) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %session_key, align 8, !annotation !3
  %0 = load ptr, ptr %length.addr, align 8
  store i32 0, ptr %0, align 4
  %1 = load i32, ptr %use_mki.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %mki_index.addr, align 4
  %3 = load ptr, ptr %stream.addr, align 8
  %num_master_keys = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %num_master_keys, align 8
  %cmp = icmp uge i32 %2, %4
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  store i32 25, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %stream.addr, align 8
  %session_keys = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %session_keys, align 8
  %7 = load i32, ptr %mki_index.addr, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.srtp_session_keys_t, ptr %6, i64 %idxprom
  store ptr %arrayidx, ptr %session_key, align 8
  %8 = load ptr, ptr %session_key, align 8
  %mki_size = getelementptr inbounds %struct.srtp_session_keys_t, ptr %8, i32 0, i32 8
  %9 = load i32, ptr %mki_size, align 8
  %10 = load ptr, ptr %length.addr, align 8
  %11 = load i32, ptr %10, align 4
  %add = add i32 %11, %9
  store i32 %add, ptr %10, align 4
  br label %if.end4

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %stream.addr, align 8
  %session_keys2 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %session_keys2, align 8
  %arrayidx3 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %13, i64 0
  store ptr %arrayidx3, ptr %session_key, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  %14 = load i32, ptr %is_rtp.addr, align 4
  %tobool5 = icmp ne i32 %14, 0
  br i1 %tobool5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.end4
  %15 = load ptr, ptr %session_key, align 8
  %rtp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %rtp_auth, align 8
  %call = call i32 @srtp_auth_get_tag_length(ptr noundef %16)
  %17 = load ptr, ptr %length.addr, align 8
  %18 = load i32, ptr %17, align 4
  %add7 = add i32 %18, %call
  store i32 %add7, ptr %17, align 4
  br label %if.end13

if.else8:                                         ; preds = %if.end4
  %19 = load ptr, ptr %session_key, align 8
  %rtcp_auth = getelementptr inbounds %struct.srtp_session_keys_t, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %rtcp_auth, align 8
  %call9 = call i32 @srtp_auth_get_tag_length(ptr noundef %20)
  %21 = load ptr, ptr %length.addr, align 8
  %22 = load i32, ptr %21, align 4
  %add10 = add i32 %22, %call9
  store i32 %add10, ptr %21, align 4
  %23 = load ptr, ptr %length.addr, align 8
  %24 = load i32, ptr %23, align 4
  %conv = zext i32 %24 to i64
  %add11 = add i64 %conv, 4
  %conv12 = trunc i64 %add11 to i32
  store i32 %conv12, ptr %23, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else8, %if.then6
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then1
  call void @llvm.lifetime.end.p0(i64 8, ptr %session_key) #8
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @get_protect_trailer_length(ptr noundef %session, i32 noundef %is_rtp, i32 noundef %use_mki, i32 noundef %mki_index, ptr noundef %length) #0 {
entry:
  %retval = alloca i32, align 4
  %session.addr = alloca ptr, align 8
  %is_rtp.addr = alloca i32, align 4
  %use_mki.addr = alloca i32, align 4
  %mki_index.addr = alloca i32, align 4
  %length.addr = alloca ptr, align 8
  %stream = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %temp_length = alloca i32, align 4
  store ptr %session, ptr %session.addr, align 8
  store i32 %is_rtp, ptr %is_rtp.addr, align 4
  store i32 %use_mki, ptr %use_mki.addr, align 4
  store i32 %mki_index, ptr %mki_index.addr, align 4
  store ptr %length, ptr %length.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %stream) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %stream, align 8, !annotation !3
  %0 = load ptr, ptr %session.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %session.addr, align 8
  %stream_template = getelementptr inbounds %struct.srtp_ctx_t_, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %stream_template, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %session.addr, align 8
  %stream_list = getelementptr inbounds %struct.srtp_ctx_t_, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %stream_list, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %5 = load ptr, ptr %length.addr, align 8
  store i32 0, ptr %5, align 4
  %6 = load ptr, ptr %session.addr, align 8
  %stream_template5 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %stream_template5, align 8
  store ptr %7, ptr %stream, align 8
  %8 = load ptr, ptr %stream, align 8
  %cmp6 = icmp ne ptr %8, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %9 = load ptr, ptr %stream, align 8
  %10 = load i32, ptr %is_rtp.addr, align 4
  %11 = load i32, ptr %use_mki.addr, align 4
  %12 = load i32, ptr %mki_index.addr, align 4
  %13 = load ptr, ptr %length.addr, align 8
  %call = call i32 @stream_get_protect_trailer_length(ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, ptr noundef %13)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4
  %14 = load ptr, ptr %session.addr, align 8
  %stream_list9 = getelementptr inbounds %struct.srtp_ctx_t_, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %stream_list9, align 8
  store ptr %15, ptr %stream, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %if.end8
  %16 = load ptr, ptr %stream, align 8
  %cmp10 = icmp ne ptr %16, null
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp_length) #8
  store i32 -1431655766, ptr %temp_length, align 4, !annotation !3
  %17 = load ptr, ptr %stream, align 8
  %18 = load i32, ptr %is_rtp.addr, align 4
  %19 = load i32, ptr %use_mki.addr, align 4
  %20 = load i32, ptr %mki_index.addr, align 4
  %call11 = call i32 @stream_get_protect_trailer_length(ptr noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, ptr noundef %temp_length)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %while.body
  %21 = load i32, ptr %temp_length, align 4
  %22 = load ptr, ptr %length.addr, align 8
  %23 = load i32, ptr %22, align 4
  %cmp14 = icmp ugt i32 %21, %23
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then13
  %24 = load i32, ptr %temp_length, align 4
  %25 = load ptr, ptr %length.addr, align 8
  store i32 %24, ptr %25, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then13
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %while.body
  %26 = load ptr, ptr %stream, align 8
  %next = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %26, i32 0, i32 13
  %27 = load ptr, ptr %next, align 8
  store ptr %27, ptr %stream, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp_length) #8
  br label %while.cond, !llvm.loop !28

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %stream) #8
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_get_protect_trailer_length(ptr noundef %session, i32 noundef %use_mki, i32 noundef %mki_index, ptr noundef %length) #0 {
entry:
  %session.addr = alloca ptr, align 8
  %use_mki.addr = alloca i32, align 4
  %mki_index.addr = alloca i32, align 4
  %length.addr = alloca ptr, align 8
  store ptr %session, ptr %session.addr, align 8
  store i32 %use_mki, ptr %use_mki.addr, align 4
  store i32 %mki_index, ptr %mki_index.addr, align 4
  store ptr %length, ptr %length.addr, align 8
  %0 = load ptr, ptr %session.addr, align 8
  %1 = load i32, ptr %use_mki.addr, align 4
  %2 = load i32, ptr %mki_index.addr, align 4
  %3 = load ptr, ptr %length.addr, align 8
  %call = call i32 @get_protect_trailer_length(ptr noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_get_protect_rtcp_trailer_length(ptr noundef %session, i32 noundef %use_mki, i32 noundef %mki_index, ptr noundef %length) #0 {
entry:
  %session.addr = alloca ptr, align 8
  %use_mki.addr = alloca i32, align 4
  %mki_index.addr = alloca i32, align 4
  %length.addr = alloca ptr, align 8
  store ptr %session, ptr %session.addr, align 8
  store i32 %use_mki, ptr %use_mki.addr, align 4
  store i32 %mki_index, ptr %mki_index.addr, align 4
  store ptr %length, ptr %length.addr, align 8
  %0 = load ptr, ptr %session.addr, align 8
  %1 = load i32, ptr %use_mki.addr, align 4
  %2 = load i32, ptr %mki_index.addr, align 4
  %3 = load ptr, ptr %length.addr, align 8
  %call = call i32 @get_protect_trailer_length(ptr noundef %0, i32 noundef 0, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_set_debug_module(ptr noundef %mod_name, i32 noundef %v) #0 {
entry:
  %mod_name.addr = alloca ptr, align 8
  %v.addr = alloca i32, align 4
  store ptr %mod_name, ptr %mod_name.addr, align 8
  store i32 %v, ptr %v.addr, align 4
  %0 = load ptr, ptr %mod_name.addr, align 8
  %1 = load i32, ptr %v.addr, align 4
  %call = call i32 @srtp_crypto_kernel_set_debug_module(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_crypto_kernel_set_debug_module(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_list_debug_modules() #0 {
entry:
  %call = call i32 @srtp_crypto_kernel_list_debug_modules()
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_crypto_kernel_list_debug_modules() #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden void @srtp_err_handler(i32 noundef %level, ptr noundef %msg) #0 {
entry:
  %level.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %log_level = alloca i32, align 4
  store i32 %level, ptr %level.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  %0 = load ptr, ptr @srtp_log_handler, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %log_level) #8
  store i32 -1431655766, ptr %log_level, align 4, !annotation !3
  store i32 0, ptr %log_level, align 4
  %1 = load i32, ptr %level.addr, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.then
  store i32 0, ptr %log_level, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.then
  store i32 1, ptr %log_level, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.then
  store i32 2, ptr %log_level, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.then
  store i32 3, ptr %log_level, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %2 = load ptr, ptr @srtp_log_handler, align 8
  %3 = load i32, ptr %log_level, align 4
  %4 = load ptr, ptr %msg.addr, align 8
  %5 = load ptr, ptr @srtp_log_handler_data, align 8
  call void %2(i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr %log_level) #8
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_install_log_handler(ptr noundef %func, ptr noundef %data) #0 {
entry:
  %func.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %func, ptr %func.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  %0 = load ptr, ptr @srtp_log_handler, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @srtp_install_err_report_handler(ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %func.addr, align 8
  store ptr %1, ptr @srtp_log_handler, align 8
  %2 = load ptr, ptr %data.addr, align 8
  store ptr %2, ptr @srtp_log_handler_data, align 8
  %3 = load ptr, ptr @srtp_log_handler, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @srtp_install_err_report_handler(ptr noundef @srtp_err_handler)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_install_err_report_handler(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_set_stream_roc(ptr noundef %session, i32 noundef %ssrc, i32 noundef %roc) #0 {
entry:
  %retval = alloca i32, align 4
  %session.addr = alloca ptr, align 8
  %ssrc.addr = alloca i32, align 4
  %roc.addr = alloca i32, align 4
  %stream = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %session, ptr %session.addr, align 8
  store i32 %ssrc, ptr %ssrc.addr, align 4
  store i32 %roc, ptr %roc.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %stream) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %stream, align 8, !annotation !3
  %0 = load ptr, ptr %session.addr, align 8
  %1 = load i32, ptr %ssrc.addr, align 4
  %call = call i32 @__bswap_32(i32 noundef %1)
  %call1 = call ptr @srtp_get_stream(ptr noundef %0, i32 noundef %call)
  store ptr %call1, ptr %stream, align 8
  %2 = load ptr, ptr %stream, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %roc.addr, align 4
  %4 = load ptr, ptr %stream, align 8
  %pending_roc = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %4, i32 0, i32 12
  store i32 %3, ptr %pending_roc, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %stream) #8
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define hidden i32 @srtp_get_stream_roc(ptr noundef %session, i32 noundef %ssrc, ptr noundef %roc) #0 {
entry:
  %retval = alloca i32, align 4
  %session.addr = alloca ptr, align 8
  %ssrc.addr = alloca i32, align 4
  %roc.addr = alloca ptr, align 8
  %stream = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %session, ptr %session.addr, align 8
  store i32 %ssrc, ptr %ssrc.addr, align 4
  store ptr %roc, ptr %roc.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %stream) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %stream, align 8, !annotation !3
  %0 = load ptr, ptr %session.addr, align 8
  %1 = load i32, ptr %ssrc.addr, align 4
  %call = call i32 @__bswap_32(i32 noundef %1)
  %call1 = call ptr @srtp_get_stream(ptr noundef %0, i32 noundef %call)
  store ptr %call1, ptr %stream, align 8
  %2 = load ptr, ptr %stream, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %stream, align 8
  %rtp_rdbx = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %3, i32 0, i32 3
  %call2 = call i32 @srtp_rdbx_get_roc(ptr noundef %rtp_rdbx)
  %4 = load ptr, ptr %roc.addr, align 8
  store i32 %call2, ptr %4, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %stream) #8
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_rdbx_get_roc(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_rdbx_estimate_index(ptr noundef, ptr noundef, i16 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal void @srtp_calc_aead_iv(ptr noundef %session_keys, ptr noundef %iv, ptr noundef %seq, ptr noundef %hdr) #0 {
entry:
  %session_keys.addr = alloca ptr, align 8
  %iv.addr = alloca ptr, align 8
  %seq.addr = alloca ptr, align 8
  %hdr.addr = alloca ptr, align 8
  %in = alloca %union.v128_t, align 8
  %salt = alloca %union.v128_t, align 8
  %local_roc = alloca i32, align 4
  %local_seq = alloca i16, align 2
  store ptr %session_keys, ptr %session_keys.addr, align 8
  store ptr %iv, ptr %iv.addr, align 8
  store ptr %seq, ptr %seq.addr, align 8
  store ptr %hdr, ptr %hdr.addr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %in) #8
  %0 = getelementptr inbounds %union.v128_t, ptr %in, i32 0, i32 0
  %1 = getelementptr inbounds [2 x i64], ptr %0, i64 0, i64 0
  store i64 -6148914691236517206, ptr %1, align 8, !annotation !3
  %2 = getelementptr inbounds [2 x i64], ptr %0, i64 0, i64 1
  store i64 -6148914691236517206, ptr %2, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 16, ptr %salt) #8
  %3 = getelementptr inbounds %union.v128_t, ptr %salt, i32 0, i32 0
  %4 = getelementptr inbounds [2 x i64], ptr %3, i64 0, i64 0
  store i64 -6148914691236517206, ptr %4, align 8, !annotation !3
  %5 = getelementptr inbounds [2 x i64], ptr %3, i64 0, i64 1
  store i64 -6148914691236517206, ptr %5, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %local_roc) #8
  store i32 -1431655766, ptr %local_roc, align 4, !annotation !3
  %6 = load ptr, ptr %seq.addr, align 8
  %7 = load i64, ptr %6, align 8
  %shr = lshr i64 %7, 16
  %conv = trunc i64 %shr to i32
  store i32 %conv, ptr %local_roc, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr %local_seq) #8
  store i16 -21846, ptr %local_seq, align 2, !annotation !3
  %8 = load ptr, ptr %seq.addr, align 8
  %9 = load i64, ptr %8, align 8
  %conv1 = trunc i64 %9 to i16
  store i16 %conv1, ptr %local_seq, align 2
  call void @llvm.memset.p0.i64(ptr align 8 %in, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr align 8 %salt, i8 0, i64 16, i1 false)
  %10 = load i16, ptr %local_seq, align 2
  %call = call zeroext i16 @__bswap_16(i16 noundef zeroext %10)
  %arrayidx = getelementptr inbounds [8 x i16], ptr %in, i64 0, i64 5
  store i16 %call, ptr %arrayidx, align 2
  %11 = load i32, ptr %local_roc, align 4
  %call2 = call i32 @__bswap_32(i32 noundef %11)
  store i32 %call2, ptr %local_roc, align 4
  %arrayidx3 = getelementptr inbounds [8 x i16], ptr %in, i64 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx3, ptr align 4 %local_roc, i64 4, i1 false)
  %arrayidx4 = getelementptr inbounds [16 x i8], ptr %in, i64 0, i64 2
  %12 = load ptr, ptr %hdr.addr, align 8
  %ssrc = getelementptr inbounds %struct.srtp_hdr_t, ptr %12, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx4, ptr align 4 %ssrc, i64 4, i1 false)
  %13 = load i32, ptr @mod_srtp, align 8
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %call5 = call ptr @v128_hex_string(ptr noundef %in)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.43, ptr noundef %14, ptr noundef %call5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [16 x i8], ptr %salt, i64 0, i64 0
  %15 = load ptr, ptr %session_keys.addr, align 8
  %salt6 = getelementptr inbounds %struct.srtp_session_keys_t, ptr %15, i32 0, i32 5
  %arraydecay7 = getelementptr inbounds [12 x i8], ptr %salt6, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 8 %arraydecay7, i64 12, i1 false)
  %16 = load i32, ptr @mod_srtp, align 8
  %tobool8 = icmp ne i32 %16, 0
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %17 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %call10 = call ptr @v128_hex_string(ptr noundef %salt)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.44, ptr noundef %17, ptr noundef %call10)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  %arrayidx12 = getelementptr inbounds [4 x i32], ptr %in, i64 0, i64 0
  %18 = load i32, ptr %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds [4 x i32], ptr %salt, i64 0, i64 0
  %19 = load i32, ptr %arrayidx13, align 8
  %xor = xor i32 %18, %19
  %20 = load ptr, ptr %iv.addr, align 8
  %arrayidx14 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 0
  store i32 %xor, ptr %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds [4 x i32], ptr %in, i64 0, i64 1
  %21 = load i32, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr inbounds [4 x i32], ptr %salt, i64 0, i64 1
  %22 = load i32, ptr %arrayidx16, align 4
  %xor17 = xor i32 %21, %22
  %23 = load ptr, ptr %iv.addr, align 8
  %arrayidx18 = getelementptr inbounds [4 x i32], ptr %23, i64 0, i64 1
  store i32 %xor17, ptr %arrayidx18, align 4
  %arrayidx19 = getelementptr inbounds [4 x i32], ptr %in, i64 0, i64 2
  %24 = load i32, ptr %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds [4 x i32], ptr %salt, i64 0, i64 2
  %25 = load i32, ptr %arrayidx20, align 8
  %xor21 = xor i32 %24, %25
  %26 = load ptr, ptr %iv.addr, align 8
  %arrayidx22 = getelementptr inbounds [4 x i32], ptr %26, i64 0, i64 2
  store i32 %xor21, ptr %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds [4 x i32], ptr %in, i64 0, i64 3
  %27 = load i32, ptr %arrayidx23, align 4
  %arrayidx24 = getelementptr inbounds [4 x i32], ptr %salt, i64 0, i64 3
  %28 = load i32, ptr %arrayidx24, align 4
  %xor25 = xor i32 %27, %28
  %29 = load ptr, ptr %iv.addr, align 8
  %arrayidx26 = getelementptr inbounds [4 x i32], ptr %29, i64 0, i64 3
  store i32 %xor25, ptr %arrayidx26, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr %local_seq) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %local_roc) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %salt) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %in) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_cipher_set_aad(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare i32 @srtp_cipher_get_tag(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare ptr @v128_hex_string(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @srtp_estimate_index(ptr noundef %rdbx, i32 noundef %roc, ptr noundef %est, i16 noundef zeroext %seq, ptr noundef %delta) #0 {
entry:
  %retval = alloca i32, align 4
  %rdbx.addr = alloca ptr, align 8
  %roc.addr = alloca i32, align 4
  %est.addr = alloca ptr, align 8
  %seq.addr = alloca i16, align 2
  %delta.addr = alloca ptr, align 8
  store ptr %rdbx, ptr %rdbx.addr, align 8
  store i32 %roc, ptr %roc.addr, align 4
  store ptr %est, ptr %est.addr, align 8
  store i16 %seq, ptr %seq.addr, align 2
  store ptr %delta, ptr %delta.addr, align 8
  %0 = load i32, ptr %roc.addr, align 4
  %conv = zext i32 %0 to i64
  %shl = shl i64 %conv, 16
  %1 = load i16, ptr %seq.addr, align 2
  %conv1 = zext i16 %1 to i64
  %or = or i64 %shl, %conv1
  %2 = load ptr, ptr %est.addr, align 8
  store i64 %or, ptr %2, align 8
  %3 = load ptr, ptr %est.addr, align 8
  %4 = load i64, ptr %3, align 8
  %5 = load ptr, ptr %rdbx.addr, align 8
  %index = getelementptr inbounds %struct.srtp_rdbx_t, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %index, align 8
  %sub = sub i64 %4, %6
  %conv2 = trunc i64 %sub to i32
  %7 = load ptr, ptr %delta.addr, align 8
  store i32 %conv2, ptr %7, align 4
  %8 = load ptr, ptr %est.addr, align 8
  %9 = load i64, ptr %8, align 8
  %10 = load ptr, ptr %rdbx.addr, align 8
  %index3 = getelementptr inbounds %struct.srtp_rdbx_t, ptr %10, i32 0, i32 0
  %11 = load i64, ptr %index3, align 8
  %cmp = icmp ugt i64 %9, %11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %est.addr, align 8
  %13 = load i64, ptr %12, align 8
  %14 = load ptr, ptr %rdbx.addr, align 8
  %index5 = getelementptr inbounds %struct.srtp_rdbx_t, ptr %14, i32 0, i32 0
  %15 = load i64, ptr %index5, align 8
  %sub6 = sub i64 %13, %15
  %cmp7 = icmp ugt i64 %sub6, 32768
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %16 = load ptr, ptr %delta.addr, align 8
  store i32 0, ptr %16, align 4
  store i32 27, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end21

if.else:                                          ; preds = %entry
  %17 = load ptr, ptr %est.addr, align 8
  %18 = load i64, ptr %17, align 8
  %19 = load ptr, ptr %rdbx.addr, align 8
  %index10 = getelementptr inbounds %struct.srtp_rdbx_t, ptr %19, i32 0, i32 0
  %20 = load i64, ptr %index10, align 8
  %cmp11 = icmp ult i64 %18, %20
  br i1 %cmp11, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.else
  %21 = load ptr, ptr %rdbx.addr, align 8
  %index14 = getelementptr inbounds %struct.srtp_rdbx_t, ptr %21, i32 0, i32 0
  %22 = load i64, ptr %index14, align 8
  %23 = load ptr, ptr %est.addr, align 8
  %24 = load i64, ptr %23, align 8
  %sub15 = sub i64 %22, %24
  %cmp16 = icmp ugt i64 %sub15, 32768
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then13
  %25 = load ptr, ptr %delta.addr, align 8
  store i32 0, ptr %25, align 4
  store i32 26, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then13
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then18, %if.then9
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @srtp_protect_extension_header(ptr noundef %stream, i32 noundef %id) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %enc_xtn_hdr = alloca ptr, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %stream, ptr %stream.addr, align 8
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %enc_xtn_hdr) #8
  store ptr inttoptr (i64 -6148914691236517206 to ptr), ptr %enc_xtn_hdr, align 8, !annotation !3
  %0 = load ptr, ptr %stream.addr, align 8
  %enc_xtn_hdr1 = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %0, i32 0, i32 10
  %1 = load ptr, ptr %enc_xtn_hdr1, align 8
  store ptr %1, ptr %enc_xtn_hdr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #8
  store i32 -1431655766, ptr %count, align 4, !annotation !3
  %2 = load ptr, ptr %stream.addr, align 8
  %enc_xtn_hdr_count = getelementptr inbounds %struct.srtp_stream_ctx_t_, ptr %2, i32 0, i32 11
  %3 = load i32, ptr %enc_xtn_hdr_count, align 8
  store i32 %3, ptr %count, align 4
  %4 = load ptr, ptr %enc_xtn_hdr, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, ptr %count, align 4
  %cmp = icmp sle i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %if.end
  %6 = load i32, ptr %count, align 4
  %cmp2 = icmp sgt i32 %6, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %enc_xtn_hdr, align 8
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %id.addr, align 4
  %cmp3 = icmp eq i32 %8, %9
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %while.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %while.body
  %10 = load ptr, ptr %enc_xtn_hdr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %enc_xtn_hdr, align 8
  %11 = load i32, ptr %count, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr %count, align 4
  br label %while.cond, !llvm.loop !29

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %enc_xtn_hdr) #8
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid ssp
define internal i32 @srtp_calc_aead_iv_srtcp(ptr noundef %session_keys, ptr noundef %iv, i32 noundef %seq_num, ptr noundef %hdr) #0 {
entry:
  %retval = alloca i32, align 4
  %session_keys.addr = alloca ptr, align 8
  %iv.addr = alloca ptr, align 8
  %seq_num.addr = alloca i32, align 4
  %hdr.addr = alloca ptr, align 8
  %in = alloca %union.v128_t, align 8
  %salt = alloca %union.v128_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %session_keys, ptr %session_keys.addr, align 8
  store ptr %iv, ptr %iv.addr, align 8
  store i32 %seq_num, ptr %seq_num.addr, align 4
  store ptr %hdr, ptr %hdr.addr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %in) #8
  %0 = getelementptr inbounds %union.v128_t, ptr %in, i32 0, i32 0
  %1 = getelementptr inbounds [2 x i64], ptr %0, i64 0, i64 0
  store i64 -6148914691236517206, ptr %1, align 8, !annotation !3
  %2 = getelementptr inbounds [2 x i64], ptr %0, i64 0, i64 1
  store i64 -6148914691236517206, ptr %2, align 8, !annotation !3
  call void @llvm.lifetime.start.p0(i64 16, ptr %salt) #8
  %3 = getelementptr inbounds %union.v128_t, ptr %salt, i32 0, i32 0
  %4 = getelementptr inbounds [2 x i64], ptr %3, i64 0, i64 0
  store i64 -6148914691236517206, ptr %4, align 8, !annotation !3
  %5 = getelementptr inbounds [2 x i64], ptr %3, i64 0, i64 1
  store i64 -6148914691236517206, ptr %5, align 8, !annotation !3
  call void @llvm.memset.p0.i64(ptr align 8 %in, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr align 8 %salt, i8 0, i64 16, i1 false)
  %arrayidx = getelementptr inbounds [8 x i16], ptr %in, i64 0, i64 0
  store i16 0, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds [8 x i16], ptr %in, i64 0, i64 1
  %6 = load ptr, ptr %hdr.addr, align 8
  %ssrc = getelementptr inbounds %struct.srtcp_hdr_t, ptr %6, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx1, ptr align 4 %ssrc, i64 4, i1 false)
  %arrayidx2 = getelementptr inbounds [8 x i16], ptr %in, i64 0, i64 3
  store i16 0, ptr %arrayidx2, align 2
  %7 = load i32, ptr %seq_num.addr, align 4
  %conv = zext i32 %7 to i64
  %and = and i64 %conv, 2147483648
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, ptr %seq_num.addr, align 4
  %call = call i32 @__bswap_32(i32 noundef %8)
  %arrayidx3 = getelementptr inbounds [4 x i32], ptr %in, i64 0, i64 2
  store i32 %call, ptr %arrayidx3, align 8
  %9 = load i32, ptr @mod_srtp, align 8
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %call6 = call ptr @v128_hex_string(ptr noundef %in)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.46, ptr noundef %10, ptr noundef %call6)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %arraydecay = getelementptr inbounds [16 x i8], ptr %salt, i64 0, i64 0
  %11 = load ptr, ptr %session_keys.addr, align 8
  %c_salt = getelementptr inbounds %struct.srtp_session_keys_t, ptr %11, i32 0, i32 6
  %arraydecay8 = getelementptr inbounds [12 x i8], ptr %c_salt, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 4 %arraydecay8, i64 12, i1 false)
  %12 = load i32, ptr @mod_srtp, align 8
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %13 = load ptr, ptr getelementptr inbounds (%struct.srtp_debug_module_t, ptr @mod_srtp, i32 0, i32 1), align 8
  %call11 = call ptr @v128_hex_string(ptr noundef %salt)
  call void (i32, ptr, ...) @srtp_err_report(i32 noundef 3, ptr noundef @.str.47, ptr noundef %13, ptr noundef %call11)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7
  %arrayidx13 = getelementptr inbounds [4 x i32], ptr %in, i64 0, i64 0
  %14 = load i32, ptr %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds [4 x i32], ptr %salt, i64 0, i64 0
  %15 = load i32, ptr %arrayidx14, align 8
  %xor = xor i32 %14, %15
  %16 = load ptr, ptr %iv.addr, align 8
  %arrayidx15 = getelementptr inbounds [4 x i32], ptr %16, i64 0, i64 0
  store i32 %xor, ptr %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds [4 x i32], ptr %in, i64 0, i64 1
  %17 = load i32, ptr %arrayidx16, align 4
  %arrayidx17 = getelementptr inbounds [4 x i32], ptr %salt, i64 0, i64 1
  %18 = load i32, ptr %arrayidx17, align 4
  %xor18 = xor i32 %17, %18
  %19 = load ptr, ptr %iv.addr, align 8
  %arrayidx19 = getelementptr inbounds [4 x i32], ptr %19, i64 0, i64 1
  store i32 %xor18, ptr %arrayidx19, align 4
  %arrayidx20 = getelementptr inbounds [4 x i32], ptr %in, i64 0, i64 2
  %20 = load i32, ptr %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds [4 x i32], ptr %salt, i64 0, i64 2
  %21 = load i32, ptr %arrayidx21, align 8
  %xor22 = xor i32 %20, %21
  %22 = load ptr, ptr %iv.addr, align 8
  %arrayidx23 = getelementptr inbounds [4 x i32], ptr %22, i64 0, i64 2
  store i32 %xor22, ptr %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds [4 x i32], ptr %in, i64 0, i64 3
  %23 = load i32, ptr %arrayidx24, align 4
  %arrayidx25 = getelementptr inbounds [4 x i32], ptr %salt, i64 0, i64 3
  %24 = load i32, ptr %arrayidx25, align 4
  %xor26 = xor i32 %23, %24
  %25 = load ptr, ptr %iv.addr, align 8
  %arrayidx27 = getelementptr inbounds [4 x i32], ptr %25, i64 0, i64 3
  store i32 %xor26, ptr %arrayidx27, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %salt) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %in) #8
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

attributes #0 = { nounwind null_pointer_is_valid ssp "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { inlinehint nounwind null_pointer_is_valid ssp "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind null_pointer_is_valid willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
