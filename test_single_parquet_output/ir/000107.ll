; ModuleID = '<stdin>'
source_filename = "test/arm/neon/zip2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { [2 x float], [2 x float], [2 x float] }
%struct.anon.1 = type { [8 x i8], [8 x i8], [8 x i8] }
%struct.anon.2 = type { [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.3 = type { [2 x i32], [2 x i32], [2 x i32] }
%struct.anon.4 = type { [8 x i8], [8 x i8], [8 x i8] }
%struct.anon.5 = type { [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.6 = type { [2 x i32], [2 x i32], [2 x i32] }
%struct.anon.7 = type { [4 x float], [4 x float], [4 x float] }
%struct.anon.8 = type { [16 x i8], [16 x i8], [16 x i8] }
%struct.anon.9 = type { [8 x i16], [8 x i16], [8 x i16] }
%struct.anon.10 = type { [4 x i32], [4 x i32], [4 x i32] }
%struct.anon.11 = type { [2 x i64], [2 x i64], [2 x i64] }
%struct.anon.12 = type { [16 x i8], [16 x i8], [16 x i8] }
%struct.anon.13 = type { [8 x i16], [8 x i16], [8 x i16] }
%struct.anon.14 = type { [4 x i32], [4 x i32], [4 x i32] }
%struct.anon.15 = type { [2 x i64], [2 x i64], [2 x i64] }
%union.simde_float32x2_private = type { <2 x float> }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%union.simde_int8x8_private = type { <8 x i8> }
%union.simde_int16x4_private = type { <4 x i16> }
%union.simde_int32x2_private = type { <2 x i32> }
%union.simde_uint8x8_private = type { <8 x i8> }
%union.simde_uint16x4_private = type { <4 x i16> }
%union.simde_uint32x2_private = type { <2 x i32> }
%union.simde_float32x4_private = type { <4 x float> }
%union.simde_int8x16_private = type { <16 x i8> }
%union.simde_int16x8_private = type { <8 x i16> }
%union.simde_int32x4_private = type { <4 x i32> }
%union.simde_int64x2_private = type { <2 x i64> }
%union.simde_uint8x16_private = type { <16 x i8> }
%union.simde_uint16x8_private = type { <8 x i16> }
%union.simde_uint32x4_private = type { <4 x i32> }
%union.simde_uint64x2_private = type { <2 x i64> }

@stdout = external global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"1..%zu\0A\00", align 1
@_ZL16test_suite_tests = internal constant [16 x %struct.anon] [%struct.anon { ptr @_ZL20test_simde_vzip2_f32v, ptr @.str.3 }, %struct.anon { ptr @_ZL19test_simde_vzip2_s8v, ptr @.str.4 }, %struct.anon { ptr @_ZL20test_simde_vzip2_s16v, ptr @.str.5 }, %struct.anon { ptr @_ZL20test_simde_vzip2_s32v, ptr @.str.6 }, %struct.anon { ptr @_ZL19test_simde_vzip2_u8v, ptr @.str.7 }, %struct.anon { ptr @_ZL20test_simde_vzip2_u16v, ptr @.str.8 }, %struct.anon { ptr @_ZL20test_simde_vzip2_u32v, ptr @.str.9 }, %struct.anon { ptr @_ZL21test_simde_vzip2q_f32v, ptr @.str.10 }, %struct.anon { ptr @_ZL20test_simde_vzip2q_s8v, ptr @.str.11 }, %struct.anon { ptr @_ZL21test_simde_vzip2q_s16v, ptr @.str.12 }, %struct.anon { ptr @_ZL21test_simde_vzip2q_s32v, ptr @.str.13 }, %struct.anon { ptr @_ZL21test_simde_vzip2q_s64v, ptr @.str.14 }, %struct.anon { ptr @_ZL20test_simde_vzip2q_u8v, ptr @.str.15 }, %struct.anon { ptr @_ZL21test_simde_vzip2q_u16v, ptr @.str.16 }, %struct.anon { ptr @_ZL21test_simde_vzip2q_u32v, ptr @.str.17 }, %struct.anon { ptr @_ZL21test_simde_vzip2q_u64v, ptr @.str.18 }], align 16
@.str.1 = private unnamed_addr constant [20 x i8] c"not ok %zu zip2/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ok %zu zip2/%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"vzip2_f32\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"vzip2_s8\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"vzip2_s16\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"vzip2_s32\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"vzip2_u8\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"vzip2_u16\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"vzip2_u32\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"vzip2q_f32\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"vzip2q_s8\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"vzip2q_s16\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"vzip2q_s32\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"vzip2q_s64\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"vzip2q_u8\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"vzip2q_u16\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"vzip2q_u32\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"vzip2q_u64\00", align 1
@__const._ZL20test_simde_vzip2_f32v.test_vec = private unnamed_addr constant [8 x %struct.anon.0] [%struct.anon.0 { [2 x float] [float 0xC04C466660000000, float 0x4083501480000000], [2 x float] [float 0x408A121480000000, float 0xC07FD33340000000], [2 x float] [float 0x4083501480000000, float 0xC07FD33340000000] }, %struct.anon.0 { [2 x float] [float 0x407254A3E0000000, float 0xC08A2F70A0000000], [2 x float] [float 0xC0798AE140000000, float 0x407AE78520000000], [2 x float] [float 0xC08A2F70A0000000, float 0x407AE78520000000] }, %struct.anon.0 { [2 x float] [float 0x406BC147A0000000, float 0xC0681B8520000000], [2 x float] [float 0x4081B35C20000000, float 0x4089D2E140000000], [2 x float] [float 0xC0681B8520000000, float 0x4089D2E140000000] }, %struct.anon.0 { [2 x float] [float 0xC078B87AE0000000, float 0x4082B83D80000000], [2 x float] [float 0xC0815B47A0000000, float 0x4036DEB860000000], [2 x float] [float 0x4082B83D80000000, float 0x4036DEB860000000] }, %struct.anon.0 { [2 x float] [float 0x408E438520000000, float 0x4057F3D700000000], [2 x float] [float 0xC083F4A3E0000000, float 0x4089821480000000], [2 x float] [float 0x4057F3D700000000, float 0x4089821480000000] }, %struct.anon.0 { [2 x float] [float 0xC087D41480000000, float 0x408D95AE20000000], [2 x float] [float 0xC0772EB860000000, float 0x408BBAF5C0000000], [2 x float] [float 0x408D95AE20000000, float 0x408BBAF5C0000000] }, %struct.anon.0 { [2 x float] [float 0xC07C9B5C20000000, float 0xC07BDD70A0000000], [2 x float] [float 0xC06278F5C0000000, float 0xC08797C280000000], [2 x float] [float 0xC07BDD70A0000000, float 0xC08797C280000000] }, %struct.anon.0 { [2 x float] [float 0x40897347A0000000, float 0x407B23AE20000000], [2 x float] [float 0x407A2A8F60000000, float 0xC06E447AE0000000], [2 x float] [float 0x407B23AE20000000, float 0xC06E447AE0000000] }], align 16
@.str.19 = private unnamed_addr constant [23 x i8] c"test/arm/neon/zip2.cpp\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"simde_vld1_f32(test_vec[i].r)\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] ~= %s[%zu] (%f ~= %f)\0A\00", align 1
@stderr = external global ptr, align 8
@__const._ZL19test_simde_vzip2_s8v.test_vec = private unnamed_addr constant [8 x %struct.anon.1] [%struct.anon.1 { [8 x i8] c"F\B0\CC^!F\FE_", [8 x i8] c"\F1U\7FK\82;1\D0", [8 x i8] c"!\82F;\FE1_\D0" }, %struct.anon.1 { [8 x i8] c"_W\10(f\F8J\9C", [8 x i8] c"\8B\CF#\86\B8\AF\A9\FE", [8 x i8] c"f\B8\F8\AFJ\A9\9C\FE" }, %struct.anon.1 { [8 x i8] c"_u]\81\BC[\E0\AD", [8 x i8] c"\B0`\F82\9B*\03\FA", [8 x i8] c"\BC\9B[*\E0\03\AD\FA" }, %struct.anon.1 { [8 x i8] c"\81\13\22\E7\0Bm\83\96", [8 x i8] c"<\A7\1C\F4V\C5\F3\B5", [8 x i8] c"\0BVm\C5\83\F3\96\B5" }, %struct.anon.1 { [8 x i8] c";P6\F7\AB\17\A4[", [8 x i8] c"w\9C\8E\12\C6\91\0CH", [8 x i8] c"\AB\C6\17\91\A4\0C[H" }, %struct.anon.1 { [8 x i8] c"\A4//\AF\9C\B3E\D8", [8 x i8] c"Za\CD\B0&\C0ea", [8 x i8] c"\9C&\B3\C0Ee\D8a" }, %struct.anon.1 { [8 x i8] c"\10\9CX\BB\B3\FC\16*", [8 x i8] c"\99\A4<_5H\A7\D9", [8 x i8] c"\B35\FCH\16\A7*\D9" }, %struct.anon.1 { [8 x i8] c"w\D7\88\13\8A\CD\EC\E4", [8 x i8] c".\B9\94Uy\F9\B6\89", [8 x i8] c"\8Ay\CD\F9\EC\B6\E4\89" }], align 16
@.str.23 = private unnamed_addr constant [29 x i8] c"simde_vld1_s8(test_vec[i].r)\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%d == %d)\0A\00", align 1
@__const._ZL20test_simde_vzip2_s16v.test_vec = private unnamed_addr constant [8 x %struct.anon.2] [%struct.anon.2 { [4 x i16] [i16 31586, i16 -31027, i16 5600, i16 -5698], [4 x i16] [i16 32317, i16 13734, i16 18228, i16 -31524], [4 x i16] [i16 5600, i16 18228, i16 -5698, i16 -31524] }, %struct.anon.2 { [4 x i16] [i16 11907, i16 17733, i16 12727, i16 -17795], [4 x i16] [i16 19182, i16 -25509, i16 32649, i16 -5297], [4 x i16] [i16 12727, i16 32649, i16 -17795, i16 -5297] }, %struct.anon.2 { [4 x i16] [i16 7419, i16 -9359, i16 12082, i16 28612], [4 x i16] [i16 27310, i16 -7516, i16 -32590, i16 13671], [4 x i16] [i16 12082, i16 -32590, i16 28612, i16 13671] }, %struct.anon.2 { [4 x i16] [i16 -21329, i16 26234, i16 -2083, i16 -13280], [4 x i16] [i16 31553, i16 -13464, i16 -18438, i16 -2634], [4 x i16] [i16 -2083, i16 -18438, i16 -13280, i16 -2634] }, %struct.anon.2 { [4 x i16] [i16 10452, i16 1744, i16 -27561, i16 1397], [4 x i16] [i16 6655, i16 -19992, i16 20378, i16 18918], [4 x i16] [i16 -27561, i16 20378, i16 1397, i16 18918] }, %struct.anon.2 { [4 x i16] [i16 24827, i16 -9809, i16 -12457, i16 -26459], [4 x i16] [i16 3402, i16 17507, i16 6853, i16 -26310], [4 x i16] [i16 -12457, i16 6853, i16 -26459, i16 -26310] }, %struct.anon.2 { [4 x i16] [i16 2626, i16 -26209, i16 5279, i16 -24929], [4 x i16] [i16 -30931, i16 -14513, i16 13782, i16 -12016], [4 x i16] [i16 5279, i16 13782, i16 -24929, i16 -12016] }, %struct.anon.2 { [4 x i16] [i16 -16491, i16 -4950, i16 20366, i16 -10108], [4 x i16] [i16 -6051, i16 8733, i16 22274, i16 17595], [4 x i16] [i16 20366, i16 22274, i16 -10108, i16 17595] }], align 16
@.str.25 = private unnamed_addr constant [30 x i8] c"simde_vld1_s16(test_vec[i].r)\00", align 1
@__const._ZL20test_simde_vzip2_s32v.test_vec = private unnamed_addr constant [8 x %struct.anon.3] [%struct.anon.3 { [2 x i32] [i32 -1128440363, i32 500102932], [2 x i32] [i32 -826084822, i32 2023511124], [2 x i32] [i32 500102932, i32 2023511124] }, %struct.anon.3 { [2 x i32] [i32 1458785856, i32 -835584527], [2 x i32] [i32 -586230260, i32 2044523428], [2 x i32] [i32 -835584527, i32 2044523428] }, %struct.anon.3 { [2 x i32] [i32 1681234256, i32 -1149172847], [2 x i32] [i32 1250510070, i32 -658365032], [2 x i32] [i32 -1149172847, i32 -658365032] }, %struct.anon.3 { [2 x i32] [i32 1697559923, i32 -1087152205], [2 x i32] [i32 -644070859, i32 -2058127307], [2 x i32] [i32 -1087152205, i32 -2058127307] }, %struct.anon.3 { [2 x i32] [i32 -1561753583, i32 -2107807092], [2 x i32] [i32 1187833774, i32 -2145415668], [2 x i32] [i32 -2107807092, i32 -2145415668] }, %struct.anon.3 { [2 x i32] [i32 -152744637, i32 -491448147], [2 x i32] [i32 -1883483814, i32 -619442231], [2 x i32] [i32 -491448147, i32 -619442231] }, %struct.anon.3 { [2 x i32] [i32 595459479, i32 379968360], [2 x i32] [i32 -832736830, i32 1129217279], [2 x i32] [i32 379968360, i32 1129217279] }, %struct.anon.3 { [2 x i32] [i32 1983460297, i32 -1504055476], [2 x i32] [i32 171316544, i32 -1142601180], [2 x i32] [i32 -1504055476, i32 -1142601180] }], align 16
@.str.26 = private unnamed_addr constant [30 x i8] c"simde_vld1_s32(test_vec[i].r)\00", align 1
@__const._ZL19test_simde_vzip2_u8v.test_vec = private unnamed_addr constant [8 x %struct.anon.4] [%struct.anon.4 { [8 x i8] c"\\S6\80\BD\B1\94\CC", [8 x i8] c"\03\08!#M\BB\BD\9B", [8 x i8] c"\BDM\B1\BB\94\BD\CC\9B" }, %struct.anon.4 { [8 x i8] c"\B7\0E`\8D\0E\99\E5\00", [8 x i8] c"u\BB~\B1\AFs\CC\0B", [8 x i8] c"\0E\AF\99s\E5\CC\00\0B" }, %struct.anon.4 { [8 x i8] c"\C6\02\8B\83\B3\1FP\B6", [8 x i8] c"(q\DAu,\97\10\E4", [8 x i8] c"\B3,\1F\97P\10\B6\E4" }, %struct.anon.4 { [8 x i8] c"\A6pq\B4\09V\B5~", [8 x i8] c"\113/\C0\A6\FB\CBl", [8 x i8] c"\09\A6V\FB\B5\CB~l" }, %struct.anon.4 { [8 x i8] c"\FEV\EF\B1v?h\9E", [8 x i8] c"\B1B\13\DD\D9#\C1\7F", [8 x i8] c"v\D9?#h\C1\9E\7F" }, %struct.anon.4 { [8 x i8] c"\9324\9C\88\E9\1B\9A", [8 x i8] c"\1CJZ\C2F&.D", [8 x i8] c"\88F\E9&\1B.\9AD" }, %struct.anon.4 { [8 x i8] c"|\1D\F5\F2]]\90\0E", [8 x i8] c"\9F\A3\EBy\C6\AD\F8Y", [8 x i8] c"]\C6]\AD\90\F8\0EY" }, %struct.anon.4 { [8 x i8] c"\DF,\F6h\15\11\021", [8 x i8] c"[\\\F3\A1\82!\E5\FF", [8 x i8] c"\15\82\11!\02\E51\FF" }], align 16
@.str.27 = private unnamed_addr constant [29 x i8] c"simde_vld1_u8(test_vec[i].r)\00", align 1
@.str.28 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%u == %u)\0A\00", align 1
@__const._ZL20test_simde_vzip2_u16v.test_vec = private unnamed_addr constant [8 x %struct.anon.5] [%struct.anon.5 { [4 x i16] [i16 17902, i16 -11569, i16 20983, i16 -22701], [4 x i16] [i16 -17923, i16 -9663, i16 16028, i16 21060], [4 x i16] [i16 20983, i16 16028, i16 -22701, i16 21060] }, %struct.anon.5 { [4 x i16] [i16 -18281, i16 -18671, i16 -4911, i16 -1123], [4 x i16] [i16 -11692, i16 24480, i16 -6818, i16 19663], [4 x i16] [i16 -4911, i16 -6818, i16 -1123, i16 19663] }, %struct.anon.5 { [4 x i16] [i16 -25046, i16 8478, i16 29168, i16 -4664], [4 x i16] [i16 2346, i16 -14393, i16 3144, i16 -8423], [4 x i16] [i16 29168, i16 3144, i16 -4664, i16 -8423] }, %struct.anon.5 { [4 x i16] [i16 10948, i16 -27241, i16 13334, i16 27536], [4 x i16] [i16 12550, i16 25802, i16 -26346, i16 16560], [4 x i16] [i16 13334, i16 -26346, i16 27536, i16 16560] }, %struct.anon.5 { [4 x i16] [i16 -12744, i16 10337, i16 10559, i16 27157], [4 x i16] [i16 -8910, i16 31281, i16 19177, i16 -21158], [4 x i16] [i16 10559, i16 19177, i16 27157, i16 -21158] }, %struct.anon.5 { [4 x i16] [i16 -3723, i16 -29886, i16 -11483, i16 11254], [4 x i16] [i16 -16380, i16 6800, i16 16474, i16 -28070], [4 x i16] [i16 -11483, i16 16474, i16 11254, i16 -28070] }, %struct.anon.5 { [4 x i16] [i16 -17649, i16 20154, i16 -12316, i16 5816], [4 x i16] [i16 -5716, i16 -27247, i16 -5324, i16 -22206], [4 x i16] [i16 -12316, i16 -5324, i16 5816, i16 -22206] }, %struct.anon.5 { [4 x i16] [i16 -31268, i16 308, i16 11096, i16 23596], [4 x i16] [i16 -17173, i16 17782, i16 -12035, i16 3287], [4 x i16] [i16 11096, i16 -12035, i16 23596, i16 3287] }], align 16
@.str.29 = private unnamed_addr constant [30 x i8] c"simde_vld1_u16(test_vec[i].r)\00", align 1
@__const._ZL20test_simde_vzip2_u32v.test_vec = private unnamed_addr constant [8 x %struct.anon.6] [%struct.anon.6 { [2 x i32] [i32 711269039, i32 1500404369], [2 x i32] [i32 481603462, i32 -468279448], [2 x i32] [i32 1500404369, i32 -468279448] }, %struct.anon.6 { [2 x i32] [i32 -2020170459, i32 1676736426], [2 x i32] [i32 1950206382, i32 1098409105], [2 x i32] [i32 1676736426, i32 1098409105] }, %struct.anon.6 { [2 x i32] [i32 275504510, i32 -1100359112], [2 x i32] [i32 -237363831, i32 -489295684], [2 x i32] [i32 -1100359112, i32 -489295684] }, %struct.anon.6 { [2 x i32] [i32 1080650902, i32 295917923], [2 x i32] [i32 -1266294493, i32 -1007289019], [2 x i32] [i32 295917923, i32 -1007289019] }, %struct.anon.6 { [2 x i32] [i32 332620251, i32 -992920517], [2 x i32] [i32 381070169, i32 855149468], [2 x i32] [i32 -992920517, i32 855149468] }, %struct.anon.6 { [2 x i32] [i32 1517445623, i32 -580119110], [2 x i32] [i32 999485942, i32 -889223185], [2 x i32] [i32 -580119110, i32 -889223185] }, %struct.anon.6 { [2 x i32] [i32 601740008, i32 1760079375], [2 x i32] [i32 -176251303, i32 556234281], [2 x i32] [i32 1760079375, i32 556234281] }, %struct.anon.6 { [2 x i32] [i32 -1837393449, i32 -1519392849], [2 x i32] [i32 -924778023, i32 1905451145], [2 x i32] [i32 -1519392849, i32 1905451145] }], align 16
@.str.30 = private unnamed_addr constant [30 x i8] c"simde_vld1_u32(test_vec[i].r)\00", align 1
@__const._ZL21test_simde_vzip2q_f32v.test_vec = private unnamed_addr constant [8 x %struct.anon.7] [%struct.anon.7 { [4 x float] [float 0x408EFB1EC0000000, float 0xC0899AA3E0000000, float 0xC071C170A0000000, float 0xC0679C7AE0000000], [4 x float] [float 0xC08EC71EC0000000, float 0xC05D566660000000, float 0x408BD770A0000000, float 0x40715A3D80000000], [4 x float] [float 0xC071C170A0000000, float 0x408BD770A0000000, float 0xC0679C7AE0000000, float 0x40715A3D80000000] }, %struct.anon.7 { [4 x float] [float 0x4072BEE140000000, float 0x406084CCC0000000, float 0xC0660147A0000000, float 0x4082D01480000000], [4 x float] [float 0x4078BD70A0000000, float 0x407E221480000000, float 0x407F9C7AE0000000, float 0xC083830A40000000], [4 x float] [float 0xC0660147A0000000, float 0x407F9C7AE0000000, float 0x4082D01480000000, float 0xC083830A40000000] }, %struct.anon.7 { [4 x float] [float 0xC07E5051E0000000, float 0x406EC3D700000000, float 0xC06C4D1EC0000000, float 0xC084A347A0000000], [4 x float] [float 0x40730E1480000000, float 0x4081110A40000000, float 0x4087358520000000, float 0xC084406660000000], [4 x float] [float 0xC06C4D1EC0000000, float 0x4087358520000000, float 0xC084A347A0000000, float 0xC084406660000000] }, %struct.anon.7 { [4 x float] [float 0xC08E6947A0000000, float 0x4075E70A40000000, float 0x40845BD700000000, float 0xC08842F5C0000000], [4 x float] [float 0xC06525C280000000, float 0x407BD0A3E0000000, float 0xC08E342900000000, float 0xC0663947A0000000], [4 x float] [float 0x40845BD700000000, float 0xC08E342900000000, float 0xC08842F5C0000000, float 0xC0663947A0000000] }, %struct.anon.7 { [4 x float] [float 0x40838DAE20000000, float 0xC06F538520000000, float 0x4083CA8F60000000, float 0x4084068F60000000], [4 x float] [float 0x4083C051E0000000, float 5.242500e+02, float 0xC054633340000000, float 0xC05101EB80000000], [4 x float] [float 0x4083CA8F60000000, float 0xC054633340000000, float 0x4084068F60000000, float 0xC05101EB80000000] }, %struct.anon.7 { [4 x float] [float 0xC0757970A0000000, float 0x4087335C20000000, float 0xC07D2051E0000000, float -9.477500e+02], [4 x float] [float 0x406C1199A0000000, float 0xC08E01EB80000000, float 0xC081E10A40000000, float 0x40871C2900000000], [4 x float] [float 0xC07D2051E0000000, float 0xC081E10A40000000, float -9.477500e+02, float 0x40871C2900000000] }, %struct.anon.7 { [4 x float] [float 0x4071DE1480000000, float 0x40692EB860000000, float 0xC08CC70A40000000, float 0xC07993D700000000], [4 x float] [float 0xC06F8CCCC0000000, float 0x4089AE7AE0000000, float 0xC04CA66660000000, float 0xC06C31EB80000000], [4 x float] [float 0xC08CC70A40000000, float 0xC04CA66660000000, float 0xC07993D700000000, float 0xC06C31EB80000000] }, %struct.anon.7 { [4 x float] [float 1.722500e+02, float 0xC0795CF5C0000000, float 0xBFFEB851E0000000, float 0xC08F2770A0000000], [4 x float] [float 0xC08E062900000000, float 0x403F8F5C20000000, float 0xC065D70A40000000, float 0x4084C78520000000], [4 x float] [float 0xBFFEB851E0000000, float 0xC065D70A40000000, float 0xC08F2770A0000000, float 0x4084C78520000000] }], align 16
@.str.31 = private unnamed_addr constant [31 x i8] c"simde_vld1q_f32(test_vec[i].r)\00", align 1
@__const._ZL20test_simde_vzip2q_s8v.test_vec = private unnamed_addr constant [8 x %struct.anon.8] [%struct.anon.8 { [16 x i8] c"U\0C$\1Czo@\9E\BFK0\BE[\EF\BC\AC", [16 x i8] c"B\8D\E1\DF\14\80\07\A0\A7\BE\DD\03\7F\0C\12\D4", [16 x i8] c"\BF\A7K\BE0\DD\BE\03[\7F\EF\0C\BC\12\AC\D4" }, %struct.anon.8 { [16 x i8] c"\196\F1\93\A611e|a#\D7P\E0\83\93", [16 x i8] c"mdr\82\E4y\22\8C8\FF\8F\B7\0C\A2\8B%", [16 x i8] c"|8a\FF#\8F\D7\B7P\0C\E0\A2\83\8B\93%" }, %struct.anon.8 { [16 x i8] c"\D8|\B8~\AD\E9\E4)J\07\00\9A\E7\83-U", [16 x i8] c"\E7\9F\D7\CC\19\F9XQ\F9\E7\08\05\89\93*b", [16 x i8] c"J\F9\07\E7\00\08\9A\05\E7\89\83\93-*Ub" }, %struct.anon.8 { [16 x i8] c"\10\E2\E0\BD\CB\C4\E7\15\CC\E7\AF\B3k\DD\08R", [16 x i8] c"|\DF\1E\95\D9v\E6\D2^\EE\D7\E7\82\01I\92", [16 x i8] c"\CC^\E7\EE\AF\D7\B3\E7k\82\DD\01\08IR\92" }, %struct.anon.8 { [16 x i8] c"\E3*O\AE\EE6\C3\BA\1Ern\89Ov\DB\CC", [16 x i8] c"V\FAa/pH\01\CE6\D8\B6\B8\D9\FFJ\BC", [16 x i8] c"\1E6r\D8n\B6\89\B8O\D9v\FF\DBJ\CC\BC" }, %struct.anon.8 { [16 x i8] c")\9Aj\18\D0-\D2\EE\9F@w\EF\B7S\BB\0D", [16 x i8] c"M\1C<\BDd=\8C\9B\15BS\EEA\9E\AAk", [16 x i8] c"\9F\15@BwS\EF\EE\B7AS\9E\BB\AA\0Dk" }, %struct.anon.8 { [16 x i8] c"8\14\83\08AU\F7\E0\96n\CFM\C1\8AZ\0E", [16 x i8] c"\A7\96\CC\0B\D3X\A6\E8\9A\FA\D6\DB\98\80F\D0", [16 x i8] c"\96\9An\FA\CF\D6M\DB\C1\98\8A\80ZF\0E\D0" }, %struct.anon.8 { [16 x i8] c"\94\C9\D8\D5\1F\CF\B5\B5>\85\02\FF\0F\\\0E\B6", [16 x i8] c"\F2\DA\C2\C52h\AD\CCb\83\A7\FA\03\EE\CA\97", [16 x i8] c">b\85\83\02\A7\FF\FA\0F\03\\\EE\0E\CA\B6\97" }], align 16
@.str.32 = private unnamed_addr constant [30 x i8] c"simde_vld1q_s8(test_vec[i].r)\00", align 1
@__const._ZL21test_simde_vzip2q_s16v.test_vec = private unnamed_addr constant [8 x %struct.anon.9] [%struct.anon.9 { [8 x i16] [i16 29172, i16 1064, i16 -10040, i16 -22031, i16 23069, i16 25595, i16 31505, i16 -6235], [8 x i16] [i16 -20461, i16 -29355, i16 11474, i16 -31606, i16 1073, i16 -19233, i16 -22064, i16 -15219], [8 x i16] [i16 23069, i16 1073, i16 25595, i16 -19233, i16 31505, i16 -22064, i16 -6235, i16 -15219] }, %struct.anon.9 { [8 x i16] [i16 -19174, i16 -7224, i16 -18034, i16 -21620, i16 -30957, i16 9231, i16 -19454, i16 5644], [8 x i16] [i16 24932, i16 13987, i16 11661, i16 -16710, i16 -26319, i16 370, i16 67, i16 24006], [8 x i16] [i16 -30957, i16 -26319, i16 9231, i16 370, i16 -19454, i16 67, i16 5644, i16 24006] }, %struct.anon.9 { [8 x i16] [i16 -29003, i16 17216, i16 -13240, i16 23535, i16 -428, i16 22144, i16 -29518, i16 5740], [8 x i16] [i16 4077, i16 31308, i16 1852, i16 27960, i16 -21856, i16 -7313, i16 13738, i16 24641], [8 x i16] [i16 -428, i16 -21856, i16 22144, i16 -7313, i16 -29518, i16 13738, i16 5740, i16 24641] }, %struct.anon.9 { [8 x i16] [i16 -32317, i16 2979, i16 -28082, i16 -23961, i16 -6256, i16 17144, i16 25971, i16 24664], [8 x i16] [i16 -23180, i16 -20006, i16 4780, i16 19486, i16 -29252, i16 26416, i16 29122, i16 -31033], [8 x i16] [i16 -6256, i16 -29252, i16 17144, i16 26416, i16 25971, i16 29122, i16 24664, i16 -31033] }, %struct.anon.9 { [8 x i16] [i16 27378, i16 16529, i16 -1795, i16 -29214, i16 -9249, i16 21200, i16 10304, i16 -19278], [8 x i16] [i16 -29491, i16 31077, i16 -31586, i16 23494, i16 -2543, i16 -11070, i16 -30361, i16 22874], [8 x i16] [i16 -9249, i16 -2543, i16 21200, i16 -11070, i16 10304, i16 -30361, i16 -19278, i16 22874] }, %struct.anon.9 { [8 x i16] [i16 -5133, i16 -3942, i16 31972, i16 -15490, i16 20055, i16 -26858, i16 -14218, i16 17484], [8 x i16] [i16 -20139, i16 -3139, i16 -31947, i16 18254, i16 4217, i16 -8165, i16 30105, i16 -29382], [8 x i16] [i16 20055, i16 4217, i16 -26858, i16 -8165, i16 -14218, i16 30105, i16 17484, i16 -29382] }, %struct.anon.9 { [8 x i16] [i16 -11168, i16 17533, i16 -1200, i16 -22520, i16 7753, i16 -16321, i16 -29722, i16 15108], [8 x i16] [i16 -16067, i16 29231, i16 32069, i16 -16711, i16 -11122, i16 10143, i16 -9911, i16 -21836], [8 x i16] [i16 7753, i16 -11122, i16 -16321, i16 10143, i16 -29722, i16 -9911, i16 15108, i16 -21836] }, %struct.anon.9 { [8 x i16] [i16 12973, i16 -530, i16 -2515, i16 30629, i16 -6892, i16 -1225, i16 15216, i16 -21194], [8 x i16] [i16 26108, i16 16672, i16 -9757, i16 28928, i16 -24658, i16 -2152, i16 19832, i16 9633], [8 x i16] [i16 -6892, i16 -24658, i16 -1225, i16 -2152, i16 15216, i16 19832, i16 -21194, i16 9633] }], align 16
@.str.33 = private unnamed_addr constant [31 x i8] c"simde_vld1q_s16(test_vec[i].r)\00", align 1
@__const._ZL21test_simde_vzip2q_s32v.test_vec = private unnamed_addr constant [8 x %struct.anon.10] [%struct.anon.10 { [4 x i32] [i32 -447870806, i32 1960556641, i32 1546653011, i32 -295568563], [4 x i32] [i32 -145715186, i32 1570097258, i32 -1928396662, i32 -810854875], [4 x i32] [i32 1546653011, i32 -1928396662, i32 -295568563, i32 -810854875] }, %struct.anon.10 { [4 x i32] [i32 -1078593186, i32 70553777, i32 -345938787, i32 1842987615], [4 x i32] [i32 -1134220974, i32 2065300209, i32 537471482, i32 -554716033], [4 x i32] [i32 -345938787, i32 537471482, i32 1842987615, i32 -554716033] }, %struct.anon.10 { [4 x i32] [i32 1604166829, i32 -765210316, i32 -1782725579, i32 -654141818], [4 x i32] [i32 -1332385857, i32 1546366817, i32 1467757784, i32 -1774883864], [4 x i32] [i32 -1782725579, i32 1467757784, i32 -654141818, i32 -1774883864] }, %struct.anon.10 { [4 x i32] [i32 1156961040, i32 -636069724, i32 -1552952547, i32 679244137], [4 x i32] [i32 987239129, i32 -1718221631, i32 569381432, i32 -1900599682], [4 x i32] [i32 -1552952547, i32 569381432, i32 679244137, i32 -1900599682] }, %struct.anon.10 { [4 x i32] [i32 -1647137543, i32 561506564, i32 650503868, i32 827212120], [4 x i32] [i32 342566739, i32 1672282667, i32 -1836802540, i32 -1121961020], [4 x i32] [i32 650503868, i32 -1836802540, i32 827212120, i32 -1121961020] }, %struct.anon.10 { [4 x i32] [i32 -329583641, i32 -1743924516, i32 280941240, i32 1732316436], [4 x i32] [i32 1602006324, i32 -1010685521, i32 -1957279801, i32 1783133826], [4 x i32] [i32 280941240, i32 -1957279801, i32 1732316436, i32 1783133826] }, %struct.anon.10 { [4 x i32] [i32 1163305833, i32 769549173, i32 1245617206, i32 -575570007], [4 x i32] [i32 -616813268, i32 513802071, i32 -928320186, i32 -718081429], [4 x i32] [i32 1245617206, i32 -928320186, i32 -575570007, i32 -718081429] }, %struct.anon.10 { [4 x i32] [i32 169511061, i32 574159084, i32 1047295637, i32 572268021], [4 x i32] [i32 -1560455093, i32 -1648321449, i32 -43619695, i32 -221079459], [4 x i32] [i32 1047295637, i32 -43619695, i32 572268021, i32 -221079459] }], align 16
@.str.34 = private unnamed_addr constant [31 x i8] c"simde_vld1q_s32(test_vec[i].r)\00", align 1
@__const._ZL21test_simde_vzip2q_s64v.test_vec = private unnamed_addr constant [8 x %struct.anon.11] [%struct.anon.11 { [2 x i64] [i64 3389154455161181546, i64 7789600881989832426], [2 x i64] [i64 -6216138325886961127, i64 8128889602060271500], [2 x i64] [i64 7789600881989832426, i64 8128889602060271500] }, %struct.anon.11 { [2 x i64] [i64 4280588231775133491, i64 -3843400407768008318], [2 x i64] [i64 -2503139029515142790, i64 4595617808483249743], [2 x i64] [i64 -3843400407768008318, i64 4595617808483249743] }, %struct.anon.11 { [2 x i64] [i64 -6190516375007038583, i64 8490571704889211736], [2 x i64] [i64 -8558999586011666166, i64 -4175499598915218751], [2 x i64] [i64 8490571704889211736, i64 -4175499598915218751] }, %struct.anon.11 { [2 x i64] [i64 -4905907207152761576, i64 7900326818308542771], [2 x i64] [i64 -4070128137537015102, i64 2402004138219365202], [2 x i64] [i64 7900326818308542771, i64 2402004138219365202] }, %struct.anon.11 { [2 x i64] [i64 -2286056552104069593, i64 7416498006436743965], [2 x i64] [i64 518167619684185188, i64 -8109598195675904694], [2 x i64] [i64 7416498006436743965, i64 -8109598195675904694] }, %struct.anon.11 { [2 x i64] [i64 4498921349512353505, i64 -7820595108767695508], [2 x i64] [i64 727944592766064991, i64 9001237270419583218], [2 x i64] [i64 -7820595108767695508, i64 9001237270419583218] }, %struct.anon.11 { [2 x i64] [i64 -3312544423324482393, i64 -3478649799431698953], [2 x i64] [i64 -3026702744038492620, i64 -3115054789748040787], [2 x i64] [i64 -3478649799431698953, i64 -3115054789748040787] }, %struct.anon.11 { [2 x i64] [i64 4780188694459830302, i64 -4059675570677991062], [2 x i64] [i64 3931846471610764248, i64 -498416479562121196], [2 x i64] [i64 -4059675570677991062, i64 -498416479562121196] }], align 16
@.str.35 = private unnamed_addr constant [31 x i8] c"simde_vld1q_s64(test_vec[i].r)\00", align 1
@.str.36 = private unnamed_addr constant [58 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%ld == %ld)\0A\00", align 1
@__const._ZL20test_simde_vzip2q_u8v.test_vec = private unnamed_addr constant [8 x %struct.anon.12] [%struct.anon.12 { [16 x i8] c"\7F\13\FEX8\0FcM3pYn\AA+a&", [16 x i8] c"\B9gO\93\02\12\F2w3\13\18-\87w\00\06", [16 x i8] c"33p\13Y\18n-\AA\87+wa\00&\06" }, %struct.anon.12 { [16 x i8] c"\8B\FE_\C3\0E\C2\10A2i\AF\DC\94\10\03N", [16 x i8] c"xR\E1zd\D3\F1\97\E6\0A\C4m\81\C4t\0C", [16 x i8] c"2\E6i\0A\AF\C4\DCm\94\81\10\C4\03tN\0C" }, %struct.anon.12 { [16 x i8] c"\C3\D3\CF\D1\95\DF\12\C7H\C1\A3\DD\D2\A6+J", [16 x i8] c"\F8\0C\C4]\DF\B6\F4\C5\C0\B93A}\A7N@", [16 x i8] c"H\C0\C1\B9\A33\DDA\D2}\A6\A7+NJ@" }, %struct.anon.12 { [16 x i8] c"z\1D\11\0F\FD#\D6E\E5y\22\B7 M\01\18", [16 x i8] c"Y\C5u8{j\FE;#1}\A0\D8\CB\E1R", [16 x i8] c"\E5#y1\22}\B7\A0 \D8M\CB\01\E1\18R" }, %struct.anon.12 { [16 x i8] c"\E8\F2a\E5\167+\FB\B0M\B2\D0\9B\B3\E9\F4", [16 x i8] c"x^-\F4\C8+/\EB\\\AC\8C4wm\86`", [16 x i8] c"\B0\\M\AC\B2\8C\D04\9Bw\B3m\E9\86\F4`" }, %struct.anon.12 { [16 x i8] c"_\E7Eu\1Epp\CE\BE\22\9FY\D5\88MN", [16 x i8] c"\E6zB\AF\A5q\9A\01\1E&5\95\93\BB\F5\F3", [16 x i8] c"\BE\1E\22&\9F5Y\95\D5\93\88\BBM\F5N\F3" }, %struct.anon.12 { [16 x i8] c"\A2;h\C0\AB\D9\8Fi\FB.\C2\D1\B6\10\1F\9C", [16 x i8] c"\8AaK0\D2\E61\F0\0Cg\86\A0\22{\93\C5", [16 x i8] c"\FB\0C.g\C2\86\D1\A0\B6\22\10{\1F\93\9C\C5" }, %struct.anon.12 { [16 x i8] c"\B6\FB\85b\D4\14\CB\D0B\8E\A1\F8\9E\C0\95(", [16 x i8] c"!\E0X\F3\C6\8A\E4\D3\F1js\13\E5\06\D8\9C", [16 x i8] c"B\F1\8Ej\A1s\F8\13\9E\E5\C0\06\95\D8(\9C" }], align 16
@.str.37 = private unnamed_addr constant [30 x i8] c"simde_vld1q_u8(test_vec[i].r)\00", align 1
@__const._ZL21test_simde_vzip2q_u16v.test_vec = private unnamed_addr constant [8 x %struct.anon.13] [%struct.anon.13 { [8 x i16] [i16 -8693, i16 -16677, i16 -3269, i16 16307, i16 14313, i16 -14208, i16 -2030, i16 -30922], [8 x i16] [i16 29688, i16 -12354, i16 19541, i16 -2834, i16 -26911, i16 4081, i16 -4853, i16 5668], [8 x i16] [i16 14313, i16 -26911, i16 -14208, i16 4081, i16 -2030, i16 -4853, i16 -30922, i16 5668] }, %struct.anon.13 { [8 x i16] [i16 -52, i16 2005, i16 -30478, i16 -9146, i16 -14401, i16 -11868, i16 -9537, i16 -18600], [8 x i16] [i16 5965, i16 -23929, i16 30051, i16 17814, i16 -30965, i16 5716, i16 31093, i16 16685], [8 x i16] [i16 -14401, i16 -30965, i16 -11868, i16 5716, i16 -9537, i16 31093, i16 -18600, i16 16685] }, %struct.anon.13 { [8 x i16] [i16 632, i16 27464, i16 -29046, i16 19015, i16 -5291, i16 5403, i16 29893, i16 5068], [8 x i16] [i16 21387, i16 -4427, i16 19657, i16 -11213, i16 -30509, i16 18667, i16 6145, i16 31113], [8 x i16] [i16 -5291, i16 -30509, i16 5403, i16 18667, i16 29893, i16 6145, i16 5068, i16 31113] }, %struct.anon.13 { [8 x i16] [i16 -12006, i16 -23324, i16 11104, i16 -18962, i16 2582, i16 -9014, i16 -26754, i16 2543], [8 x i16] [i16 -23318, i16 -19465, i16 11248, i16 -15224, i16 29619, i16 -19444, i16 -26997, i16 -23251], [8 x i16] [i16 2582, i16 29619, i16 -9014, i16 -19444, i16 -26754, i16 -26997, i16 2543, i16 -23251] }, %struct.anon.13 { [8 x i16] [i16 4711, i16 -14519, i16 14397, i16 21629, i16 18242, i16 -16336, i16 8158, i16 -13879], [8 x i16] [i16 -16189, i16 -19332, i16 1259, i16 -24968, i16 -31625, i16 594, i16 -32742, i16 -32089], [8 x i16] [i16 18242, i16 -31625, i16 -16336, i16 594, i16 8158, i16 -32742, i16 -13879, i16 -32089] }, %struct.anon.13 { [8 x i16] [i16 -3694, i16 -12471, i16 -14807, i16 27427, i16 21262, i16 -5077, i16 -2958, i16 14005], [8 x i16] [i16 12980, i16 -24342, i16 25142, i16 -20930, i16 -28186, i16 432, i16 22545, i16 -23677], [8 x i16] [i16 21262, i16 -28186, i16 -5077, i16 432, i16 -2958, i16 22545, i16 14005, i16 -23677] }, %struct.anon.13 { [8 x i16] [i16 -13239, i16 29298, i16 -26989, i16 -24099, i16 2281, i16 23693, i16 17404, i16 -20334], [8 x i16] [i16 31861, i16 -21680, i16 -28706, i16 -15271, i16 2592, i16 12741, i16 18530, i16 -21548], [8 x i16] [i16 2281, i16 2592, i16 23693, i16 12741, i16 17404, i16 18530, i16 -20334, i16 -21548] }, %struct.anon.13 { [8 x i16] [i16 17941, i16 -22499, i16 -1316, i16 -14775, i16 -10750, i16 -478, i16 -19431, i16 -29010], [8 x i16] [i16 -208, i16 3642, i16 -27762, i16 -20782, i16 -26467, i16 -33, i16 -19488, i16 -2646], [8 x i16] [i16 -10750, i16 -26467, i16 -478, i16 -33, i16 -19431, i16 -19488, i16 -29010, i16 -2646] }], align 16
@.str.38 = private unnamed_addr constant [31 x i8] c"simde_vld1q_u16(test_vec[i].r)\00", align 1
@__const._ZL21test_simde_vzip2q_u32v.test_vec = private unnamed_addr constant [8 x %struct.anon.14] [%struct.anon.14 { [4 x i32] [i32 478890778, i32 1273886894, i32 298449113, i32 1553786033], [4 x i32] [i32 -1294362713, i32 -1329553704, i32 -2042253722, i32 1703353163], [4 x i32] [i32 298449113, i32 -2042253722, i32 1553786033, i32 1703353163] }, %struct.anon.14 { [4 x i32] [i32 360780391, i32 -463442421, i32 418720102, i32 -1267429107], [4 x i32] [i32 6769960, i32 1387341804, i32 551089877, i32 2038849298], [4 x i32] [i32 418720102, i32 551089877, i32 -1267429107, i32 2038849298] }, %struct.anon.14 { [4 x i32] [i32 2106460018, i32 -597561482, i32 653547032, i32 265972199], [4 x i32] [i32 -1575992906, i32 1056227688, i32 -916534089, i32 -1639783380], [4 x i32] [i32 653547032, i32 -916534089, i32 265972199, i32 -1639783380] }, %struct.anon.14 { [4 x i32] [i32 1645990380, i32 -666993472, i32 -1174522926, i32 1388894620], [4 x i32] [i32 -2081040358, i32 1371662745, i32 -501604426, i32 -260023036], [4 x i32] [i32 -1174522926, i32 -501604426, i32 1388894620, i32 -260023036] }, %struct.anon.14 { [4 x i32] [i32 -296576210, i32 -372862953, i32 1604502979, i32 -1196266850], [4 x i32] [i32 -600070333, i32 1177418896, i32 539510812, i32 -753882971], [4 x i32] [i32 1604502979, i32 539510812, i32 -1196266850, i32 -753882971] }, %struct.anon.14 { [4 x i32] [i32 1522623043, i32 -1237088270, i32 -367663796, i32 -1817983152], [4 x i32] [i32 -9445778, i32 -146432549, i32 -1978175771, i32 1516054294], [4 x i32] [i32 -367663796, i32 -1978175771, i32 -1817983152, i32 1516054294] }, %struct.anon.14 { [4 x i32] [i32 2075401865, i32 -231606107, i32 769411037, i32 2109767438], [4 x i32] [i32 964440158, i32 -1305427507, i32 1178355503, i32 -140469906], [4 x i32] [i32 769411037, i32 1178355503, i32 2109767438, i32 -140469906] }, %struct.anon.14 { [4 x i32] [i32 1550996663, i32 709796940, i32 -111727637, i32 141957290], [4 x i32] [i32 356643400, i32 -473468492, i32 640222136, i32 1394461084], [4 x i32] [i32 -111727637, i32 640222136, i32 141957290, i32 1394461084] }], align 16
@.str.39 = private unnamed_addr constant [31 x i8] c"simde_vld1q_u32(test_vec[i].r)\00", align 1
@__const._ZL21test_simde_vzip2q_u64v.test_vec = private unnamed_addr constant [8 x %struct.anon.15] [%struct.anon.15 { [2 x i64] [i64 4280958701235489246, i64 -6911062290932232781], [2 x i64] [i64 6878166422813626130, i64 -6064950336084893787], [2 x i64] [i64 -6911062290932232781, i64 -6064950336084893787] }, %struct.anon.15 { [2 x i64] [i64 -3477357133013903552, i64 3104490981576679679], [2 x i64] [i64 -5334513691619694419, i64 8545878496494894880], [2 x i64] [i64 3104490981576679679, i64 8545878496494894880] }, %struct.anon.15 { [2 x i64] [i64 1374078459952243238, i64 7285027289849944533], [2 x i64] [i64 -4158239011070106234, i64 -4980334037555772106], [2 x i64] [i64 7285027289849944533, i64 -4980334037555772106] }, %struct.anon.15 { [2 x i64] [i64 7247714085351774830, i64 4721016760819653991], [2 x i64] [i64 -5729386339991387375, i64 -1444249766679793498], [2 x i64] [i64 4721016760819653991, i64 -1444249766679793498] }, %struct.anon.15 { [2 x i64] [i64 7263466160932188377, i64 -7197587232675127519], [2 x i64] [i64 -4992855827463015541, i64 -6311257424913968896], [2 x i64] [i64 -7197587232675127519, i64 -6311257424913968896] }, %struct.anon.15 { [2 x i64] [i64 -343717390064691240, i64 5847067349770288893], [2 x i64] [i64 5239669095272970216, i64 7805915270211808220], [2 x i64] [i64 5847067349770288893, i64 7805915270211808220] }, %struct.anon.15 { [2 x i64] [i64 4673466768805750021, i64 -8119165876650265797], [2 x i64] [i64 -8073753792995350427, i64 -1229607043980412178], [2 x i64] [i64 -8119165876650265797, i64 -1229607043980412178] }, %struct.anon.15 { [2 x i64] [i64 -1623642574934887949, i64 -7884892358541950884], [2 x i64] [i64 5847417664724475876, i64 -2034286796307471891], [2 x i64] [i64 -7884892358541950884, i64 -2034286796307471891] }], align 16
@.str.40 = private unnamed_addr constant [31 x i8] c"simde_vld1q_u64(test_vec[i].r)\00", align 1
@.str.41 = private unnamed_addr constant [58 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%lu == %lu)\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %i = alloca i64, align 8
  %res = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #18
  store i32 0, ptr %retval1, align 4, !tbaa !5
  %0 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, i64 noundef 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %1, 16
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #18
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [16 x %struct.anon], ptr @_ZL16test_suite_tests, i64 0, i64 %2
  %func = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0
  %3 = load ptr, ptr %func, align 16, !tbaa !13
  %call2 = call noundef i32 %3()
  store i32 %call2, ptr %res, align 4, !tbaa !5
  %4 = load i32, ptr %res, align 4, !tbaa !5
  %cmp3 = icmp ne i32 %4, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval1, align 4, !tbaa !5
  %5 = load ptr, ptr @stdout, align 8, !tbaa !9
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %add = add i64 %6, 1
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [16 x %struct.anon], ptr @_ZL16test_suite_tests, i64 0, i64 %7
  %name = getelementptr inbounds %struct.anon, ptr %arrayidx4, i32 0, i32 1
  %8 = load ptr, ptr %name, align 8, !tbaa !15
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, i64 noundef %add, ptr noundef %8)
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load ptr, ptr @stdout, align 8, !tbaa !9
  %10 = load i64, ptr %i, align 8, !tbaa !11
  %add6 = add i64 %10, 1
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [16 x %struct.anon], ptr @_ZL16test_suite_tests, i64 0, i64 %11
  %name8 = getelementptr inbounds %struct.anon, ptr %arrayidx7, i32 0, i32 1
  %12 = load ptr, ptr %name8, align 8, !tbaa !15
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.2, i64 noundef %add6, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #18
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %13, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond.cleanup
  %14 = load i32, ptr %retval1, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #18
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL20test_simde_vzip2_f32v() #3 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.0], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x float>, align 8
  %coerce = alloca <2 x float>, align 8
  %b = alloca <2 x float>, align 8
  %coerce6 = alloca <2 x float>, align 8
  %r = alloca <2 x float>, align 8
  %coerce7 = alloca <2 x float>, align 8
  %coerce8 = alloca <2 x float>, align 8
  %coerce10 = alloca <2 x float>, align 8
  %coerce15 = alloca <2 x float>, align 8
  %coerce17 = alloca <2 x float>, align 8
  %coerce18 = alloca <2 x float>, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr %test_vec) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const._ZL20test_simde_vzip2_f32v.test_vec, i64 192, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup22

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #18
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.0], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.0, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x float], ptr %a1, i64 0, i64 0
  %call = call noundef double @_ZL14simde_vld1_f32PKf(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <2 x float>, ptr %coerce, align 8, !tbaa !18
  store <2 x float> %2, ptr %a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #18
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.0], ptr %test_vec, i64 0, i64 %3
  %b3 = getelementptr inbounds %struct.anon.0, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [2 x float], ptr %b3, i64 0, i64 0
  %call5 = call noundef double @_ZL14simde_vld1_f32PKf(ptr noundef %arraydecay4)
  store double %call5, ptr %coerce6, align 8
  %4 = load <2 x float>, ptr %coerce6, align 8, !tbaa !18
  store <2 x float> %4, ptr %b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #18
  %5 = load <2 x float>, ptr %a, align 8, !tbaa !18
  %6 = load <2 x float>, ptr %b, align 8, !tbaa !18
  store <2 x float> %5, ptr %coerce7, align 8, !tbaa !18
  %7 = load double, ptr %coerce7, align 8
  store <2 x float> %6, ptr %coerce8, align 8, !tbaa !18
  %8 = load double, ptr %coerce8, align 8
  %call9 = call noundef double @_ZL15simde_vzip2_f32Dv2_fS_(double noundef %7, double noundef %8)
  store double %call9, ptr %coerce10, align 8
  %9 = load <2 x float>, ptr %coerce10, align 8, !tbaa !18
  store <2 x float> %9, ptr %r, align 8, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %10 = load <2 x float>, ptr %r, align 8, !tbaa !18
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx11 = getelementptr inbounds [8 x %struct.anon.0], ptr %test_vec, i64 0, i64 %11
  %r12 = getelementptr inbounds %struct.anon.0, ptr %arrayidx11, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [2 x float], ptr %r12, i64 0, i64 0
  %call14 = call noundef double @_ZL14simde_vld1_f32PKf(ptr noundef %arraydecay13)
  store double %call14, ptr %coerce15, align 8
  %12 = load <2 x float>, ptr %coerce15, align 8, !tbaa !18
  %call16 = call noundef float @_ZL32simde_test_f32_precision_to_slopi(i32 noundef 1)
  store <2 x float> %10, ptr %coerce17, align 8, !tbaa !18
  %13 = load double, ptr %coerce17, align 8
  store <2 x float> %12, ptr %coerce18, align 8, !tbaa !18
  %14 = load double, ptr %coerce18, align 8
  %call19 = call noundef i32 @_ZL39simde_test_arm_neon_assert_equal_f32x2_Dv2_fS_fPKciS1_S1_(double noundef %13, double noundef %14, float noundef %call16, ptr noundef @.str.19, i32 noundef 44, ptr noundef @.str.20, ptr noundef @.str.21)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup22 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %15, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !19

cleanup22:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest23 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest23, label %cleanup24 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup22
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24

cleanup24:                                        ; preds = %for.end, %cleanup22
  call void @llvm.lifetime.end.p0(i64 192, ptr %test_vec) #18
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL19test_simde_vzip2_s8v() #3 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.1], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i8>, align 8
  %coerce = alloca <8 x i8>, align 8
  %b = alloca <8 x i8>, align 8
  %coerce6 = alloca <8 x i8>, align 8
  %r = alloca <8 x i8>, align 8
  %coerce7 = alloca <8 x i8>, align 8
  %coerce8 = alloca <8 x i8>, align 8
  %coerce10 = alloca <8 x i8>, align 8
  %coerce15 = alloca <8 x i8>, align 8
  %coerce16 = alloca <8 x i8>, align 8
  %coerce17 = alloca <8 x i8>, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr %test_vec) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const._ZL19test_simde_vzip2_s8v.test_vec, i64 192, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup21

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #18
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.1], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.1, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i8], ptr %a1, i64 0, i64 0
  %call = call noundef double @_ZL13simde_vld1_s8PKa(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <8 x i8>, ptr %coerce, align 8, !tbaa !18
  store <8 x i8> %2, ptr %a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #18
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.1], ptr %test_vec, i64 0, i64 %3
  %b3 = getelementptr inbounds %struct.anon.1, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [8 x i8], ptr %b3, i64 0, i64 0
  %call5 = call noundef double @_ZL13simde_vld1_s8PKa(ptr noundef %arraydecay4)
  store double %call5, ptr %coerce6, align 8
  %4 = load <8 x i8>, ptr %coerce6, align 8, !tbaa !18
  store <8 x i8> %4, ptr %b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #18
  %5 = load <8 x i8>, ptr %a, align 8, !tbaa !18
  %6 = load <8 x i8>, ptr %b, align 8, !tbaa !18
  store <8 x i8> %5, ptr %coerce7, align 8, !tbaa !18
  %7 = load double, ptr %coerce7, align 8
  store <8 x i8> %6, ptr %coerce8, align 8, !tbaa !18
  %8 = load double, ptr %coerce8, align 8
  %call9 = call noundef double @_ZL14simde_vzip2_s8Dv8_aS_(double noundef %7, double noundef %8)
  store double %call9, ptr %coerce10, align 8
  %9 = load <8 x i8>, ptr %coerce10, align 8, !tbaa !18
  store <8 x i8> %9, ptr %r, align 8, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %10 = load <8 x i8>, ptr %r, align 8, !tbaa !18
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx11 = getelementptr inbounds [8 x %struct.anon.1], ptr %test_vec, i64 0, i64 %11
  %r12 = getelementptr inbounds %struct.anon.1, ptr %arrayidx11, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [8 x i8], ptr %r12, i64 0, i64 0
  %call14 = call noundef double @_ZL13simde_vld1_s8PKa(ptr noundef %arraydecay13)
  store double %call14, ptr %coerce15, align 8
  %12 = load <8 x i8>, ptr %coerce15, align 8, !tbaa !18
  store <8 x i8> %10, ptr %coerce16, align 8, !tbaa !18
  %13 = load double, ptr %coerce16, align 8
  store <8 x i8> %12, ptr %coerce17, align 8, !tbaa !18
  %14 = load double, ptr %coerce17, align 8
  %call18 = call noundef i32 @_ZL38simde_test_arm_neon_assert_equal_i8x8_Dv8_aS_PKciS1_S1_(double noundef %13, double noundef %14, ptr noundef @.str.19, i32 noundef 88, ptr noundef @.str.20, ptr noundef @.str.23)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %15, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !20

cleanup21:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest22 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest22, label %cleanup23 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup21
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23

cleanup23:                                        ; preds = %for.end, %cleanup21
  call void @llvm.lifetime.end.p0(i64 192, ptr %test_vec) #18
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL20test_simde_vzip2_s16v() #3 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.2], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i16>, align 8
  %coerce = alloca <4 x i16>, align 8
  %b = alloca <4 x i16>, align 8
  %coerce6 = alloca <4 x i16>, align 8
  %r = alloca <4 x i16>, align 8
  %coerce7 = alloca <4 x i16>, align 8
  %coerce8 = alloca <4 x i16>, align 8
  %coerce10 = alloca <4 x i16>, align 8
  %coerce15 = alloca <4 x i16>, align 8
  %coerce16 = alloca <4 x i16>, align 8
  %coerce17 = alloca <4 x i16>, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr %test_vec) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const._ZL20test_simde_vzip2_s16v.test_vec, i64 192, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup21

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #18
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.2], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.2, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i16], ptr %a1, i64 0, i64 0
  %call = call noundef double @_ZL14simde_vld1_s16PKs(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <4 x i16>, ptr %coerce, align 8, !tbaa !18
  store <4 x i16> %2, ptr %a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #18
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.2], ptr %test_vec, i64 0, i64 %3
  %b3 = getelementptr inbounds %struct.anon.2, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [4 x i16], ptr %b3, i64 0, i64 0
  %call5 = call noundef double @_ZL14simde_vld1_s16PKs(ptr noundef %arraydecay4)
  store double %call5, ptr %coerce6, align 8
  %4 = load <4 x i16>, ptr %coerce6, align 8, !tbaa !18
  store <4 x i16> %4, ptr %b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #18
  %5 = load <4 x i16>, ptr %a, align 8, !tbaa !18
  %6 = load <4 x i16>, ptr %b, align 8, !tbaa !18
  store <4 x i16> %5, ptr %coerce7, align 8, !tbaa !18
  %7 = load double, ptr %coerce7, align 8
  store <4 x i16> %6, ptr %coerce8, align 8, !tbaa !18
  %8 = load double, ptr %coerce8, align 8
  %call9 = call noundef double @_ZL15simde_vzip2_s16Dv4_sS_(double noundef %7, double noundef %8)
  store double %call9, ptr %coerce10, align 8
  %9 = load <4 x i16>, ptr %coerce10, align 8, !tbaa !18
  store <4 x i16> %9, ptr %r, align 8, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %10 = load <4 x i16>, ptr %r, align 8, !tbaa !18
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx11 = getelementptr inbounds [8 x %struct.anon.2], ptr %test_vec, i64 0, i64 %11
  %r12 = getelementptr inbounds %struct.anon.2, ptr %arrayidx11, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [4 x i16], ptr %r12, i64 0, i64 0
  %call14 = call noundef double @_ZL14simde_vld1_s16PKs(ptr noundef %arraydecay13)
  store double %call14, ptr %coerce15, align 8
  %12 = load <4 x i16>, ptr %coerce15, align 8, !tbaa !18
  store <4 x i16> %10, ptr %coerce16, align 8, !tbaa !18
  %13 = load double, ptr %coerce16, align 8
  store <4 x i16> %12, ptr %coerce17, align 8, !tbaa !18
  %14 = load double, ptr %coerce17, align 8
  %call18 = call noundef i32 @_ZL39simde_test_arm_neon_assert_equal_i16x4_Dv4_sS_PKciS1_S1_(double noundef %13, double noundef %14, ptr noundef @.str.19, i32 noundef 132, ptr noundef @.str.20, ptr noundef @.str.25)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %15, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !21

cleanup21:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest22 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest22, label %cleanup23 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup21
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23

cleanup23:                                        ; preds = %for.end, %cleanup21
  call void @llvm.lifetime.end.p0(i64 192, ptr %test_vec) #18
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL20test_simde_vzip2_s32v() #3 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.3], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i32>, align 8
  %coerce = alloca <2 x i32>, align 8
  %b = alloca <2 x i32>, align 8
  %coerce6 = alloca <2 x i32>, align 8
  %r = alloca <2 x i32>, align 8
  %coerce7 = alloca <2 x i32>, align 8
  %coerce8 = alloca <2 x i32>, align 8
  %coerce10 = alloca <2 x i32>, align 8
  %coerce15 = alloca <2 x i32>, align 8
  %coerce16 = alloca <2 x i32>, align 8
  %coerce17 = alloca <2 x i32>, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr %test_vec) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const._ZL20test_simde_vzip2_s32v.test_vec, i64 192, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup21

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #18
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.3], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.3, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i32], ptr %a1, i64 0, i64 0
  %call = call noundef double @_ZL14simde_vld1_s32PKi(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <2 x i32>, ptr %coerce, align 8, !tbaa !18
  store <2 x i32> %2, ptr %a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #18
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.3], ptr %test_vec, i64 0, i64 %3
  %b3 = getelementptr inbounds %struct.anon.3, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [2 x i32], ptr %b3, i64 0, i64 0
  %call5 = call noundef double @_ZL14simde_vld1_s32PKi(ptr noundef %arraydecay4)
  store double %call5, ptr %coerce6, align 8
  %4 = load <2 x i32>, ptr %coerce6, align 8, !tbaa !18
  store <2 x i32> %4, ptr %b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #18
  %5 = load <2 x i32>, ptr %a, align 8, !tbaa !18
  %6 = load <2 x i32>, ptr %b, align 8, !tbaa !18
  store <2 x i32> %5, ptr %coerce7, align 8, !tbaa !18
  %7 = load double, ptr %coerce7, align 8
  store <2 x i32> %6, ptr %coerce8, align 8, !tbaa !18
  %8 = load double, ptr %coerce8, align 8
  %call9 = call noundef double @_ZL15simde_vzip2_s32Dv2_iS_(double noundef %7, double noundef %8)
  store double %call9, ptr %coerce10, align 8
  %9 = load <2 x i32>, ptr %coerce10, align 8, !tbaa !18
  store <2 x i32> %9, ptr %r, align 8, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %10 = load <2 x i32>, ptr %r, align 8, !tbaa !18
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx11 = getelementptr inbounds [8 x %struct.anon.3], ptr %test_vec, i64 0, i64 %11
  %r12 = getelementptr inbounds %struct.anon.3, ptr %arrayidx11, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [2 x i32], ptr %r12, i64 0, i64 0
  %call14 = call noundef double @_ZL14simde_vld1_s32PKi(ptr noundef %arraydecay13)
  store double %call14, ptr %coerce15, align 8
  %12 = load <2 x i32>, ptr %coerce15, align 8, !tbaa !18
  store <2 x i32> %10, ptr %coerce16, align 8, !tbaa !18
  %13 = load double, ptr %coerce16, align 8
  store <2 x i32> %12, ptr %coerce17, align 8, !tbaa !18
  %14 = load double, ptr %coerce17, align 8
  %call18 = call noundef i32 @_ZL39simde_test_arm_neon_assert_equal_i32x2_Dv2_iS_PKciS1_S1_(double noundef %13, double noundef %14, ptr noundef @.str.19, i32 noundef 176, ptr noundef @.str.20, ptr noundef @.str.26)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %15, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !22

cleanup21:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest22 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest22, label %cleanup23 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup21
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23

cleanup23:                                        ; preds = %for.end, %cleanup21
  call void @llvm.lifetime.end.p0(i64 192, ptr %test_vec) #18
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL19test_simde_vzip2_u8v() #3 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.4], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i8>, align 8
  %coerce = alloca <8 x i8>, align 8
  %b = alloca <8 x i8>, align 8
  %coerce6 = alloca <8 x i8>, align 8
  %r = alloca <8 x i8>, align 8
  %coerce7 = alloca <8 x i8>, align 8
  %coerce8 = alloca <8 x i8>, align 8
  %coerce10 = alloca <8 x i8>, align 8
  %coerce15 = alloca <8 x i8>, align 8
  %coerce16 = alloca <8 x i8>, align 8
  %coerce17 = alloca <8 x i8>, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr %test_vec) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const._ZL19test_simde_vzip2_u8v.test_vec, i64 192, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup21

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #18
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.4], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.4, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i8], ptr %a1, i64 0, i64 0
  %call = call noundef double @_ZL13simde_vld1_u8PKh(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <8 x i8>, ptr %coerce, align 8, !tbaa !18
  store <8 x i8> %2, ptr %a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #18
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.4], ptr %test_vec, i64 0, i64 %3
  %b3 = getelementptr inbounds %struct.anon.4, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [8 x i8], ptr %b3, i64 0, i64 0
  %call5 = call noundef double @_ZL13simde_vld1_u8PKh(ptr noundef %arraydecay4)
  store double %call5, ptr %coerce6, align 8
  %4 = load <8 x i8>, ptr %coerce6, align 8, !tbaa !18
  store <8 x i8> %4, ptr %b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #18
  %5 = load <8 x i8>, ptr %a, align 8, !tbaa !18
  %6 = load <8 x i8>, ptr %b, align 8, !tbaa !18
  store <8 x i8> %5, ptr %coerce7, align 8, !tbaa !18
  %7 = load double, ptr %coerce7, align 8
  store <8 x i8> %6, ptr %coerce8, align 8, !tbaa !18
  %8 = load double, ptr %coerce8, align 8
  %call9 = call noundef double @_ZL14simde_vzip2_u8Dv8_hS_(double noundef %7, double noundef %8)
  store double %call9, ptr %coerce10, align 8
  %9 = load <8 x i8>, ptr %coerce10, align 8, !tbaa !18
  store <8 x i8> %9, ptr %r, align 8, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %10 = load <8 x i8>, ptr %r, align 8, !tbaa !18
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx11 = getelementptr inbounds [8 x %struct.anon.4], ptr %test_vec, i64 0, i64 %11
  %r12 = getelementptr inbounds %struct.anon.4, ptr %arrayidx11, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [8 x i8], ptr %r12, i64 0, i64 0
  %call14 = call noundef double @_ZL13simde_vld1_u8PKh(ptr noundef %arraydecay13)
  store double %call14, ptr %coerce15, align 8
  %12 = load <8 x i8>, ptr %coerce15, align 8, !tbaa !18
  store <8 x i8> %10, ptr %coerce16, align 8, !tbaa !18
  %13 = load double, ptr %coerce16, align 8
  store <8 x i8> %12, ptr %coerce17, align 8, !tbaa !18
  %14 = load double, ptr %coerce17, align 8
  %call18 = call noundef i32 @_ZL38simde_test_arm_neon_assert_equal_u8x8_Dv8_hS_PKciS1_S1_(double noundef %13, double noundef %14, ptr noundef @.str.19, i32 noundef 220, ptr noundef @.str.20, ptr noundef @.str.27)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %15, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !23

cleanup21:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest22 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest22, label %cleanup23 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup21
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23

cleanup23:                                        ; preds = %for.end, %cleanup21
  call void @llvm.lifetime.end.p0(i64 192, ptr %test_vec) #18
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL20test_simde_vzip2_u16v() #3 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.5], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i16>, align 8
  %coerce = alloca <4 x i16>, align 8
  %b = alloca <4 x i16>, align 8
  %coerce6 = alloca <4 x i16>, align 8
  %r = alloca <4 x i16>, align 8
  %coerce7 = alloca <4 x i16>, align 8
  %coerce8 = alloca <4 x i16>, align 8
  %coerce10 = alloca <4 x i16>, align 8
  %coerce15 = alloca <4 x i16>, align 8
  %coerce16 = alloca <4 x i16>, align 8
  %coerce17 = alloca <4 x i16>, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr %test_vec) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const._ZL20test_simde_vzip2_u16v.test_vec, i64 192, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup21

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #18
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.5], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.5, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i16], ptr %a1, i64 0, i64 0
  %call = call noundef double @_ZL14simde_vld1_u16PKt(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <4 x i16>, ptr %coerce, align 8, !tbaa !18
  store <4 x i16> %2, ptr %a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #18
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.5], ptr %test_vec, i64 0, i64 %3
  %b3 = getelementptr inbounds %struct.anon.5, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [4 x i16], ptr %b3, i64 0, i64 0
  %call5 = call noundef double @_ZL14simde_vld1_u16PKt(ptr noundef %arraydecay4)
  store double %call5, ptr %coerce6, align 8
  %4 = load <4 x i16>, ptr %coerce6, align 8, !tbaa !18
  store <4 x i16> %4, ptr %b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #18
  %5 = load <4 x i16>, ptr %a, align 8, !tbaa !18
  %6 = load <4 x i16>, ptr %b, align 8, !tbaa !18
  store <4 x i16> %5, ptr %coerce7, align 8, !tbaa !18
  %7 = load double, ptr %coerce7, align 8
  store <4 x i16> %6, ptr %coerce8, align 8, !tbaa !18
  %8 = load double, ptr %coerce8, align 8
  %call9 = call noundef double @_ZL15simde_vzip2_u16Dv4_tS_(double noundef %7, double noundef %8)
  store double %call9, ptr %coerce10, align 8
  %9 = load <4 x i16>, ptr %coerce10, align 8, !tbaa !18
  store <4 x i16> %9, ptr %r, align 8, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %10 = load <4 x i16>, ptr %r, align 8, !tbaa !18
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx11 = getelementptr inbounds [8 x %struct.anon.5], ptr %test_vec, i64 0, i64 %11
  %r12 = getelementptr inbounds %struct.anon.5, ptr %arrayidx11, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [4 x i16], ptr %r12, i64 0, i64 0
  %call14 = call noundef double @_ZL14simde_vld1_u16PKt(ptr noundef %arraydecay13)
  store double %call14, ptr %coerce15, align 8
  %12 = load <4 x i16>, ptr %coerce15, align 8, !tbaa !18
  store <4 x i16> %10, ptr %coerce16, align 8, !tbaa !18
  %13 = load double, ptr %coerce16, align 8
  store <4 x i16> %12, ptr %coerce17, align 8, !tbaa !18
  %14 = load double, ptr %coerce17, align 8
  %call18 = call noundef i32 @_ZL39simde_test_arm_neon_assert_equal_u16x4_Dv4_tS_PKciS1_S1_(double noundef %13, double noundef %14, ptr noundef @.str.19, i32 noundef 263, ptr noundef @.str.20, ptr noundef @.str.29)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %15, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !24

cleanup21:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest22 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest22, label %cleanup23 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup21
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23

cleanup23:                                        ; preds = %for.end, %cleanup21
  call void @llvm.lifetime.end.p0(i64 192, ptr %test_vec) #18
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL20test_simde_vzip2_u32v() #3 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.6], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i32>, align 8
  %coerce = alloca <2 x i32>, align 8
  %b = alloca <2 x i32>, align 8
  %coerce6 = alloca <2 x i32>, align 8
  %r = alloca <2 x i32>, align 8
  %coerce7 = alloca <2 x i32>, align 8
  %coerce8 = alloca <2 x i32>, align 8
  %coerce10 = alloca <2 x i32>, align 8
  %coerce15 = alloca <2 x i32>, align 8
  %coerce16 = alloca <2 x i32>, align 8
  %coerce17 = alloca <2 x i32>, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr %test_vec) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const._ZL20test_simde_vzip2_u32v.test_vec, i64 192, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup21

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #18
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.6], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.6, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i32], ptr %a1, i64 0, i64 0
  %call = call noundef double @_ZL14simde_vld1_u32PKj(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <2 x i32>, ptr %coerce, align 8, !tbaa !18
  store <2 x i32> %2, ptr %a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #18
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.6], ptr %test_vec, i64 0, i64 %3
  %b3 = getelementptr inbounds %struct.anon.6, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [2 x i32], ptr %b3, i64 0, i64 0
  %call5 = call noundef double @_ZL14simde_vld1_u32PKj(ptr noundef %arraydecay4)
  store double %call5, ptr %coerce6, align 8
  %4 = load <2 x i32>, ptr %coerce6, align 8, !tbaa !18
  store <2 x i32> %4, ptr %b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #18
  %5 = load <2 x i32>, ptr %a, align 8, !tbaa !18
  %6 = load <2 x i32>, ptr %b, align 8, !tbaa !18
  store <2 x i32> %5, ptr %coerce7, align 8, !tbaa !18
  %7 = load double, ptr %coerce7, align 8
  store <2 x i32> %6, ptr %coerce8, align 8, !tbaa !18
  %8 = load double, ptr %coerce8, align 8
  %call9 = call noundef double @_ZL15simde_vzip2_u32Dv2_jS_(double noundef %7, double noundef %8)
  store double %call9, ptr %coerce10, align 8
  %9 = load <2 x i32>, ptr %coerce10, align 8, !tbaa !18
  store <2 x i32> %9, ptr %r, align 8, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %10 = load <2 x i32>, ptr %r, align 8, !tbaa !18
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx11 = getelementptr inbounds [8 x %struct.anon.6], ptr %test_vec, i64 0, i64 %11
  %r12 = getelementptr inbounds %struct.anon.6, ptr %arrayidx11, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [2 x i32], ptr %r12, i64 0, i64 0
  %call14 = call noundef double @_ZL14simde_vld1_u32PKj(ptr noundef %arraydecay13)
  store double %call14, ptr %coerce15, align 8
  %12 = load <2 x i32>, ptr %coerce15, align 8, !tbaa !18
  store <2 x i32> %10, ptr %coerce16, align 8, !tbaa !18
  %13 = load double, ptr %coerce16, align 8
  store <2 x i32> %12, ptr %coerce17, align 8, !tbaa !18
  %14 = load double, ptr %coerce17, align 8
  %call18 = call noundef i32 @_ZL39simde_test_arm_neon_assert_equal_u32x2_Dv2_jS_PKciS1_S1_(double noundef %13, double noundef %14, ptr noundef @.str.19, i32 noundef 306, ptr noundef @.str.20, ptr noundef @.str.30)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %15, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !25

cleanup21:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest22 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest22, label %cleanup23 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup21
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23

cleanup23:                                        ; preds = %for.end, %cleanup21
  call void @llvm.lifetime.end.p0(i64 192, ptr %test_vec) #18
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL21test_simde_vzip2q_f32v() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.7], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x float>, align 16
  %b = alloca <4 x float>, align 16
  %r = alloca <4 x float>, align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr %test_vec) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const._ZL21test_simde_vzip2q_f32v.test_vec, i64 384, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup15

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #18
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.7], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.7, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x float], ptr %a1, i64 0, i64 0
  %call = call noundef <4 x float> @_ZL15simde_vld1q_f32PKf(ptr noundef %arraydecay)
  store <4 x float> %call, ptr %a, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #18
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.7], ptr %test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.7, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [4 x float], ptr %b3, i64 0, i64 0
  %call5 = call noundef <4 x float> @_ZL15simde_vld1q_f32PKf(ptr noundef %arraydecay4)
  store <4 x float> %call5, ptr %b, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #18
  %3 = load <4 x float>, ptr %a, align 16, !tbaa !18
  %4 = load <4 x float>, ptr %b, align 16, !tbaa !18
  %call6 = call noundef <4 x float> @_ZL16simde_vzip2q_f32Dv4_fS_(<4 x float> noundef %3, <4 x float> noundef %4)
  store <4 x float> %call6, ptr %r, align 16, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <4 x float>, ptr %r, align 16, !tbaa !18
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.7], ptr %test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.7, ptr %arrayidx7, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [4 x float], ptr %r8, i64 0, i64 0
  %call10 = call noundef <4 x float> @_ZL15simde_vld1q_f32PKf(ptr noundef %arraydecay9)
  %call11 = call noundef float @_ZL32simde_test_f32_precision_to_slopi(i32 noundef 1)
  %call12 = call noundef i32 @_ZL39simde_test_arm_neon_assert_equal_f32x4_Dv4_fS_fPKciS1_S1_(<4 x float> noundef %5, <4 x float> noundef %call10, float noundef %call11, ptr noundef @.str.19, i32 noundef 349, ptr noundef @.str.20, ptr noundef @.str.31)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !26

cleanup15:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %cleanup17 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

cleanup17:                                        ; preds = %for.end, %cleanup15
  call void @llvm.lifetime.end.p0(i64 384, ptr %test_vec) #18
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL20test_simde_vzip2q_s8v() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.8], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <16 x i8>, align 16
  %b = alloca <16 x i8>, align 16
  %r = alloca <16 x i8>, align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr %test_vec) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const._ZL20test_simde_vzip2q_s8v.test_vec, i64 384, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup14

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #18
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.8], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.8, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a1, i64 0, i64 0
  %call = call noundef <16 x i8> @_ZL14simde_vld1q_s8PKa(ptr noundef %arraydecay)
  store <16 x i8> %call, ptr %a, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #18
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.8], ptr %test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.8, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [16 x i8], ptr %b3, i64 0, i64 0
  %call5 = call noundef <16 x i8> @_ZL14simde_vld1q_s8PKa(ptr noundef %arraydecay4)
  store <16 x i8> %call5, ptr %b, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #18
  %3 = load <16 x i8>, ptr %a, align 16, !tbaa !18
  %4 = load <16 x i8>, ptr %b, align 16, !tbaa !18
  %call6 = call noundef <16 x i8> @_ZL15simde_vzip2q_s8Dv16_aS_(<16 x i8> noundef %3, <16 x i8> noundef %4)
  store <16 x i8> %call6, ptr %r, align 16, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <16 x i8>, ptr %r, align 16, !tbaa !18
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.8], ptr %test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.8, ptr %arrayidx7, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [16 x i8], ptr %r8, i64 0, i64 0
  %call10 = call noundef <16 x i8> @_ZL14simde_vld1q_s8PKa(ptr noundef %arraydecay9)
  %call11 = call noundef i32 @_ZL39simde_test_arm_neon_assert_equal_i8x16_Dv16_aS_PKciS1_S1_(<16 x i8> noundef %5, <16 x i8> noundef %call10, ptr noundef @.str.19, i32 noundef 417, ptr noundef @.str.20, ptr noundef @.str.32)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !27

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %cleanup16 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %for.end, %cleanup14
  call void @llvm.lifetime.end.p0(i64 384, ptr %test_vec) #18
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL21test_simde_vzip2q_s16v() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.9], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i16>, align 16
  %b = alloca <8 x i16>, align 16
  %r = alloca <8 x i16>, align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr %test_vec) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const._ZL21test_simde_vzip2q_s16v.test_vec, i64 384, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup14

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #18
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.9], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.9, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a1, i64 0, i64 0
  %call = call noundef <8 x i16> @_ZL15simde_vld1q_s16PKs(ptr noundef %arraydecay)
  store <8 x i16> %call, ptr %a, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #18
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.9], ptr %test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.9, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [8 x i16], ptr %b3, i64 0, i64 0
  %call5 = call noundef <8 x i16> @_ZL15simde_vld1q_s16PKs(ptr noundef %arraydecay4)
  store <8 x i16> %call5, ptr %b, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #18
  %3 = load <8 x i16>, ptr %a, align 16, !tbaa !18
  %4 = load <8 x i16>, ptr %b, align 16, !tbaa !18
  %call6 = call noundef <8 x i16> @_ZL16simde_vzip2q_s16Dv8_sS_(<8 x i16> noundef %3, <8 x i16> noundef %4)
  store <8 x i16> %call6, ptr %r, align 16, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <8 x i16>, ptr %r, align 16, !tbaa !18
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.9], ptr %test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.9, ptr %arrayidx7, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [8 x i16], ptr %r8, i64 0, i64 0
  %call10 = call noundef <8 x i16> @_ZL15simde_vld1q_s16PKs(ptr noundef %arraydecay9)
  %call11 = call noundef i32 @_ZL39simde_test_arm_neon_assert_equal_i16x8_Dv8_sS_PKciS1_S1_(<8 x i16> noundef %5, <8 x i16> noundef %call10, ptr noundef @.str.19, i32 noundef 461, ptr noundef @.str.20, ptr noundef @.str.33)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !28

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %cleanup16 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %for.end, %cleanup14
  call void @llvm.lifetime.end.p0(i64 384, ptr %test_vec) #18
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL21test_simde_vzip2q_s32v() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.10], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i32>, align 16
  %b = alloca <4 x i32>, align 16
  %r = alloca <4 x i32>, align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr %test_vec) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const._ZL21test_simde_vzip2q_s32v.test_vec, i64 384, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup14

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #18
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.10], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.10, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a1, i64 0, i64 0
  %call = call noundef <4 x i32> @_ZL15simde_vld1q_s32PKi(ptr noundef %arraydecay)
  store <4 x i32> %call, ptr %a, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #18
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.10], ptr %test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.10, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [4 x i32], ptr %b3, i64 0, i64 0
  %call5 = call noundef <4 x i32> @_ZL15simde_vld1q_s32PKi(ptr noundef %arraydecay4)
  store <4 x i32> %call5, ptr %b, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #18
  %3 = load <4 x i32>, ptr %a, align 16, !tbaa !18
  %4 = load <4 x i32>, ptr %b, align 16, !tbaa !18
  %call6 = call noundef <4 x i32> @_ZL16simde_vzip2q_s32Dv4_iS_(<4 x i32> noundef %3, <4 x i32> noundef %4)
  store <4 x i32> %call6, ptr %r, align 16, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <4 x i32>, ptr %r, align 16, !tbaa !18
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.10], ptr %test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.10, ptr %arrayidx7, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [4 x i32], ptr %r8, i64 0, i64 0
  %call10 = call noundef <4 x i32> @_ZL15simde_vld1q_s32PKi(ptr noundef %arraydecay9)
  %call11 = call noundef i32 @_ZL39simde_test_arm_neon_assert_equal_i32x4_Dv4_iS_PKciS1_S1_(<4 x i32> noundef %5, <4 x i32> noundef %call10, ptr noundef @.str.19, i32 noundef 504, ptr noundef @.str.20, ptr noundef @.str.34)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !29

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %cleanup16 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %for.end, %cleanup14
  call void @llvm.lifetime.end.p0(i64 384, ptr %test_vec) #18
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL21test_simde_vzip2q_s64v() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.11], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca <2 x i64>, align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr %test_vec) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const._ZL21test_simde_vzip2q_s64v.test_vec, i64 384, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup14

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #18
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.11], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.11, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a1, i64 0, i64 0
  %call = call noundef <2 x i64> @_ZL15simde_vld1q_s64PKl(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #18
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.11], ptr %test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.11, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [2 x i64], ptr %b3, i64 0, i64 0
  %call5 = call noundef <2 x i64> @_ZL15simde_vld1q_s64PKl(ptr noundef %arraydecay4)
  store <2 x i64> %call5, ptr %b, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #18
  %3 = load <2 x i64>, ptr %a, align 16, !tbaa !18
  %4 = load <2 x i64>, ptr %b, align 16, !tbaa !18
  %call6 = call noundef <2 x i64> @_ZL16simde_vzip2q_s64Dv2_lS_(<2 x i64> noundef %3, <2 x i64> noundef %4)
  store <2 x i64> %call6, ptr %r, align 16, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <2 x i64>, ptr %r, align 16, !tbaa !18
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.11], ptr %test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.11, ptr %arrayidx7, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [2 x i64], ptr %r8, i64 0, i64 0
  %call10 = call noundef <2 x i64> @_ZL15simde_vld1q_s64PKl(ptr noundef %arraydecay9)
  %call11 = call noundef i32 @_ZL39simde_test_arm_neon_assert_equal_i64x2_Dv2_lS_PKciS1_S1_(<2 x i64> noundef %5, <2 x i64> noundef %call10, ptr noundef @.str.19, i32 noundef 547, ptr noundef @.str.20, ptr noundef @.str.35)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !30

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %cleanup16 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %for.end, %cleanup14
  call void @llvm.lifetime.end.p0(i64 384, ptr %test_vec) #18
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL20test_simde_vzip2q_u8v() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.12], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <16 x i8>, align 16
  %b = alloca <16 x i8>, align 16
  %r = alloca <16 x i8>, align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr %test_vec) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const._ZL20test_simde_vzip2q_u8v.test_vec, i64 384, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup14

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #18
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.12], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.12, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a1, i64 0, i64 0
  %call = call noundef <16 x i8> @_ZL14simde_vld1q_u8PKh(ptr noundef %arraydecay)
  store <16 x i8> %call, ptr %a, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #18
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.12], ptr %test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.12, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [16 x i8], ptr %b3, i64 0, i64 0
  %call5 = call noundef <16 x i8> @_ZL14simde_vld1q_u8PKh(ptr noundef %arraydecay4)
  store <16 x i8> %call5, ptr %b, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #18
  %3 = load <16 x i8>, ptr %a, align 16, !tbaa !18
  %4 = load <16 x i8>, ptr %b, align 16, !tbaa !18
  %call6 = call noundef <16 x i8> @_ZL15simde_vzip2q_u8Dv16_hS_(<16 x i8> noundef %3, <16 x i8> noundef %4)
  store <16 x i8> %call6, ptr %r, align 16, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <16 x i8>, ptr %r, align 16, !tbaa !18
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.12], ptr %test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.12, ptr %arrayidx7, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [16 x i8], ptr %r8, i64 0, i64 0
  %call10 = call noundef <16 x i8> @_ZL14simde_vld1q_u8PKh(ptr noundef %arraydecay9)
  %call11 = call noundef i32 @_ZL39simde_test_arm_neon_assert_equal_u8x16_Dv16_hS_PKciS1_S1_(<16 x i8> noundef %5, <16 x i8> noundef %call10, ptr noundef @.str.19, i32 noundef 615, ptr noundef @.str.20, ptr noundef @.str.37)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !31

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %cleanup16 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %for.end, %cleanup14
  call void @llvm.lifetime.end.p0(i64 384, ptr %test_vec) #18
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL21test_simde_vzip2q_u16v() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.13], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i16>, align 16
  %b = alloca <8 x i16>, align 16
  %r = alloca <8 x i16>, align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr %test_vec) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const._ZL21test_simde_vzip2q_u16v.test_vec, i64 384, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup14

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #18
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.13], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.13, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a1, i64 0, i64 0
  %call = call noundef <8 x i16> @_ZL15simde_vld1q_u16PKt(ptr noundef %arraydecay)
  store <8 x i16> %call, ptr %a, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #18
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.13], ptr %test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.13, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [8 x i16], ptr %b3, i64 0, i64 0
  %call5 = call noundef <8 x i16> @_ZL15simde_vld1q_u16PKt(ptr noundef %arraydecay4)
  store <8 x i16> %call5, ptr %b, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #18
  %3 = load <8 x i16>, ptr %a, align 16, !tbaa !18
  %4 = load <8 x i16>, ptr %b, align 16, !tbaa !18
  %call6 = call noundef <8 x i16> @_ZL16simde_vzip2q_u16Dv8_tS_(<8 x i16> noundef %3, <8 x i16> noundef %4)
  store <8 x i16> %call6, ptr %r, align 16, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <8 x i16>, ptr %r, align 16, !tbaa !18
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.13], ptr %test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.13, ptr %arrayidx7, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [8 x i16], ptr %r8, i64 0, i64 0
  %call10 = call noundef <8 x i16> @_ZL15simde_vld1q_u16PKt(ptr noundef %arraydecay9)
  %call11 = call noundef i32 @_ZL39simde_test_arm_neon_assert_equal_u16x8_Dv8_tS_PKciS1_S1_(<8 x i16> noundef %5, <8 x i16> noundef %call10, ptr noundef @.str.19, i32 noundef 658, ptr noundef @.str.20, ptr noundef @.str.38)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !32

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %cleanup16 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %for.end, %cleanup14
  call void @llvm.lifetime.end.p0(i64 384, ptr %test_vec) #18
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL21test_simde_vzip2q_u32v() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.14], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i32>, align 16
  %b = alloca <4 x i32>, align 16
  %r = alloca <4 x i32>, align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr %test_vec) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const._ZL21test_simde_vzip2q_u32v.test_vec, i64 384, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup14

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #18
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.14], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.14, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a1, i64 0, i64 0
  %call = call noundef <4 x i32> @_ZL15simde_vld1q_u32PKj(ptr noundef %arraydecay)
  store <4 x i32> %call, ptr %a, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #18
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.14], ptr %test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.14, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [4 x i32], ptr %b3, i64 0, i64 0
  %call5 = call noundef <4 x i32> @_ZL15simde_vld1q_u32PKj(ptr noundef %arraydecay4)
  store <4 x i32> %call5, ptr %b, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #18
  %3 = load <4 x i32>, ptr %a, align 16, !tbaa !18
  %4 = load <4 x i32>, ptr %b, align 16, !tbaa !18
  %call6 = call noundef <4 x i32> @_ZL16simde_vzip2q_u32Dv4_jS_(<4 x i32> noundef %3, <4 x i32> noundef %4)
  store <4 x i32> %call6, ptr %r, align 16, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <4 x i32>, ptr %r, align 16, !tbaa !18
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.14], ptr %test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.14, ptr %arrayidx7, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [4 x i32], ptr %r8, i64 0, i64 0
  %call10 = call noundef <4 x i32> @_ZL15simde_vld1q_u32PKj(ptr noundef %arraydecay9)
  %call11 = call noundef i32 @_ZL39simde_test_arm_neon_assert_equal_u32x4_Dv4_jS_PKciS1_S1_(<4 x i32> noundef %5, <4 x i32> noundef %call10, ptr noundef @.str.19, i32 noundef 702, ptr noundef @.str.20, ptr noundef @.str.39)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !33

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %cleanup16 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %for.end, %cleanup14
  call void @llvm.lifetime.end.p0(i64 384, ptr %test_vec) #18
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL21test_simde_vzip2q_u64v() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.15], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca <2 x i64>, align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr %test_vec) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const._ZL21test_simde_vzip2q_u64v.test_vec, i64 384, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup14

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #18
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.15], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.15, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a1, i64 0, i64 0
  %call = call noundef <2 x i64> @_ZL15simde_vld1q_u64PKm(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #18
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.15], ptr %test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.15, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [2 x i64], ptr %b3, i64 0, i64 0
  %call5 = call noundef <2 x i64> @_ZL15simde_vld1q_u64PKm(ptr noundef %arraydecay4)
  store <2 x i64> %call5, ptr %b, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #18
  %3 = load <2 x i64>, ptr %a, align 16, !tbaa !18
  %4 = load <2 x i64>, ptr %b, align 16, !tbaa !18
  %call6 = call noundef <2 x i64> @_ZL16simde_vzip2q_u64Dv2_mS_(<2 x i64> noundef %3, <2 x i64> noundef %4)
  store <2 x i64> %call6, ptr %r, align 16, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <2 x i64>, ptr %r, align 16, !tbaa !18
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.15], ptr %test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.15, ptr %arrayidx7, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [2 x i64], ptr %r8, i64 0, i64 0
  %call10 = call noundef <2 x i64> @_ZL15simde_vld1q_u64PKm(ptr noundef %arraydecay9)
  %call11 = call noundef i32 @_ZL39simde_test_arm_neon_assert_equal_u64x2_Dv2_mS_PKciS1_S1_(<2 x i64> noundef %5, <2 x i64> noundef %call10, ptr noundef @.str.19, i32 noundef 745, ptr noundef @.str.20, ptr noundef @.str.40)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !34

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %cleanup16 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %for.end, %cleanup14
  call void @llvm.lifetime.end.p0(i64 384, ptr %test_vec) #18
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef double @_ZL14simde_vld1_f32PKf(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <2 x float>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_float32x2_private, align 8
  %agg.tmp = alloca %union.simde_float32x2_private, align 8
  %coerce = alloca <2 x float>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #18
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 4 %0, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %r_, i64 8, i1 false), !tbaa.struct !35
  %coerce.dive = getelementptr inbounds %union.simde_float32x2_private, ptr %agg.tmp, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call noundef double @_ZL28simde_float32x2_from_private23simde_float32x2_private(double %1) #19
  store double %call, ptr %coerce, align 8
  %2 = load <2 x float>, ptr %coerce, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr %agg.tmp) #18
  store <2 x float> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #18
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline mustprogress uwtable
define internal noundef double @_ZL15simde_vzip2_f32Dv2_fS_(double noundef %a.coerce, double noundef %b.coerce) #7 {
entry:
  %retval = alloca <2 x float>, align 8
  %a = alloca <2 x float>, align 8
  %b = alloca <2 x float>, align 8
  %a.addr = alloca <2 x float>, align 8
  %b.addr = alloca <2 x float>, align 8
  %r_ = alloca %union.simde_float32x2_private, align 8
  %a_ = alloca %union.simde_float32x2_private, align 8
  %coerce = alloca <2 x float>, align 8
  %b_ = alloca %union.simde_float32x2_private, align 8
  %coerce3 = alloca <2 x float>, align 8
  %coerce6 = alloca <1 x i64>, align 8
  %coerce7 = alloca <1 x i64>, align 8
  %coerce9 = alloca <1 x i64>, align 8
  %agg.tmp = alloca %union.simde_float32x2_private, align 8
  %coerce12 = alloca <2 x float>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <2 x float>, ptr %a, align 8, !tbaa !18
  store double %b.coerce, ptr %b, align 8
  %b2 = load <2 x float>, ptr %b, align 8, !tbaa !18
  store <2 x float> %a1, ptr %a.addr, align 8, !tbaa !18
  store <2 x float> %b2, ptr %b.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #18
  %0 = load <2 x float>, ptr %a.addr, align 8, !tbaa !18
  store <2 x float> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  %call = call double @_ZL26simde_float32x2_to_privateDv2_f(double noundef %1) #19
  %coerce.dive = getelementptr inbounds %union.simde_float32x2_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #18
  %2 = load <2 x float>, ptr %b.addr, align 8, !tbaa !18
  store <2 x float> %2, ptr %coerce3, align 8, !tbaa !18
  %3 = load double, ptr %coerce3, align 8
  %call4 = call double @_ZL26simde_float32x2_to_privateDv2_f(double noundef %3) #19
  %coerce.dive5 = getelementptr inbounds %union.simde_float32x2_private, ptr %b_, i32 0, i32 0
  store double %call4, ptr %coerce.dive5, align 8
  %4 = load <1 x i64>, ptr %a_, align 8, !tbaa !18
  %5 = load <1 x i64>, ptr %b_, align 8, !tbaa !18
  store <1 x i64> %4, ptr %coerce6, align 8, !tbaa !18
  %6 = load double, ptr %coerce6, align 8
  store <1 x i64> %5, ptr %coerce7, align 8, !tbaa !18
  %7 = load double, ptr %coerce7, align 8
  %call8 = call noundef double @_ZL17_mm_unpackhi_pi32Dv1_xS_(double noundef %6, double noundef %7)
  store double %call8, ptr %coerce9, align 8
  %8 = load <1 x i64>, ptr %coerce9, align 8, !tbaa !18
  store <1 x i64> %8, ptr %r_, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %r_, i64 8, i1 false), !tbaa.struct !35
  %coerce.dive10 = getelementptr inbounds %union.simde_float32x2_private, ptr %agg.tmp, i32 0, i32 0
  %9 = load double, ptr %coerce.dive10, align 8
  %call11 = call noundef double @_ZL28simde_float32x2_from_private23simde_float32x2_private(double %9) #19
  store double %call11, ptr %coerce12, align 8
  %10 = load <2 x float>, ptr %coerce12, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr %agg.tmp) #18
  store <2 x float> %10, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #18
  %11 = load double, ptr %retval, align 8
  ret double %11
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL39simde_test_arm_neon_assert_equal_f32x2_Dv2_fS_fPKciS1_S1_(double noundef %a.coerce, double noundef %b.coerce, float noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a = alloca <2 x float>, align 8
  %b = alloca <2 x float>, align 8
  %a.addr = alloca <2 x float>, align 8
  %b.addr = alloca <2 x float>, align 8
  %slop.addr = alloca float, align 4
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [2 x float], align 4
  %b_ = alloca [2 x float], align 4
  %coerce = alloca <2 x float>, align 8
  %coerce4 = alloca <2 x float>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <2 x float>, ptr %a, align 8, !tbaa !18
  store double %b.coerce, ptr %b, align 8
  %b2 = load <2 x float>, ptr %b, align 8, !tbaa !18
  store <2 x float> %a1, ptr %a.addr, align 8, !tbaa !18
  store <2 x float> %b2, ptr %b.addr, align 8, !tbaa !18
  store float %slop, ptr %slop.addr, align 4, !tbaa !36
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #18
  %arraydecay = getelementptr inbounds [2 x float], ptr %a_, i64 0, i64 0
  %0 = load <2 x float>, ptr %a.addr, align 8, !tbaa !18
  store <2 x float> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  call void @_ZL14simde_vst1_f32PfDv2_f(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [2 x float], ptr %b_, i64 0, i64 0
  %2 = load <2 x float>, ptr %b.addr, align 8, !tbaa !18
  store <2 x float> %2, ptr %coerce4, align 8, !tbaa !18
  %3 = load double, ptr %coerce4, align 8
  call void @_ZL14simde_vst1_f32PfDv2_f(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [2 x float], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [2 x float], ptr %b_, i64 0, i64 0
  %4 = load float, ptr %slop.addr, align 4, !tbaa !36
  %5 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %6 = load i32, ptr %line.addr, align 4, !tbaa !5
  %7 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %8 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call noundef i32 @_ZL24simde_assert_equal_vf32_mPKfS0_fPKciS2_S2_(i64 noundef 2, ptr noundef %arraydecay5, ptr noundef %arraydecay6, float noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #18
  ret i32 %call
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef float @_ZL32simde_test_f32_precision_to_slopi(i32 noundef %precision) #8 {
entry:
  %precision.addr = alloca i32, align 4
  store i32 %precision, ptr %precision.addr, align 4, !tbaa !5
  %0 = load i32, ptr %precision.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 2147483647
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %conv = zext i1 %lnot1 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, ptr %precision.addr, align 4, !tbaa !5
  %conv2 = sitofp i32 %1 to float
  %fneg = fneg float %conv2
  %call = call float @powf(float noundef 1.000000e+01, float noundef %fneg) #18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ 0.000000e+00, %cond.true ], [ %call, %cond.false ]
  ret float %cond
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal noundef double @_ZL28simde_float32x2_from_private23simde_float32x2_private(double %value.coerce) #9 {
entry:
  %retval = alloca <2 x float>, align 8
  %value = alloca %union.simde_float32x2_private, align 8
  %r = alloca <2 x float>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_float32x2_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <2 x float>, ptr %r, align 8, !tbaa !18
  store <2 x float> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #18
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal double @_ZL26simde_float32x2_to_privateDv2_f(double noundef %value.coerce) #9 {
entry:
  %retval = alloca %union.simde_float32x2_private, align 8
  %value = alloca <2 x float>, align 8
  %value.addr = alloca <2 x float>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <2 x float>, ptr %value, align 8, !tbaa !18
  store <2 x float> %value1, ptr %value.addr, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_float32x2_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef double @_ZL17_mm_unpackhi_pi32Dv1_xS_(double noundef %__m1.coerce, double noundef %__m2.coerce) #10 {
entry:
  %retval = alloca <1 x i64>, align 8
  %__m1 = alloca <1 x i64>, align 8
  %__m2 = alloca <1 x i64>, align 8
  %__m1.addr = alloca <1 x i64>, align 8
  %__m2.addr = alloca <1 x i64>, align 8
  store double %__m1.coerce, ptr %__m1, align 8
  %__m11 = load <1 x i64>, ptr %__m1, align 8, !tbaa !18
  store double %__m2.coerce, ptr %__m2, align 8
  %__m22 = load <1 x i64>, ptr %__m2, align 8, !tbaa !18
  store <1 x i64> %__m11, ptr %__m1.addr, align 8, !tbaa !18
  store <1 x i64> %__m22, ptr %__m2.addr, align 8, !tbaa !18
  %0 = load <1 x i64>, ptr %__m1.addr, align 8, !tbaa !18
  %1 = bitcast <1 x i64> %0 to <2 x i32>
  %2 = bitcast <2 x i32> %1 to <1 x i64>
  %3 = load <1 x i64>, ptr %__m2.addr, align 8, !tbaa !18
  %4 = bitcast <1 x i64> %3 to <2 x i32>
  %5 = bitcast <2 x i32> %4 to <1 x i64>
  %6 = call <1 x i64> @llvm.x86.mmx.punpckhdq(<1 x i64> %2, <1 x i64> %5)
  %7 = bitcast <1 x i64> %6 to <2 x i32>
  %8 = bitcast <2 x i32> %7 to <1 x i64>
  store <1 x i64> %8, ptr %retval, align 8
  %9 = load double, ptr %retval, align 8
  ret double %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <1 x i64> @llvm.x86.mmx.punpckhdq(<1 x i64>, <1 x i64>) #11

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @_ZL14simde_vst1_f32PfDv2_f(ptr noundef %ptr, double noundef %val.coerce) #6 {
entry:
  %val = alloca <2 x float>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <2 x float>, align 8
  %val_ = alloca %union.simde_float32x2_private, align 8
  %coerce = alloca <2 x float>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <2 x float>, ptr %val, align 8, !tbaa !18
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <2 x float> %val1, ptr %val.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #18
  %0 = load <2 x float>, ptr %val.addr, align 8, !tbaa !18
  store <2 x float> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  %call = call double @_ZL26simde_float32x2_to_privateDv2_f(double noundef %1) #19
  %coerce.dive = getelementptr inbounds %union.simde_float32x2_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL24simde_assert_equal_vf32_mPKfS0_fPKciS2_S2_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, float noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %slop.addr = alloca float, align 4
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store float %slop, ptr %slop.addr, align 4, !tbaa !36
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds float, ptr %2, i64 %3
  %4 = load float, ptr %arrayidx, align 4, !tbaa !36
  %5 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds float, ptr %5, i64 %6
  %7 = load float, ptr %arrayidx1, align 4, !tbaa !36
  %8 = load float, ptr %slop.addr, align 4, !tbaa !36
  %call = call noundef i32 @_ZL20simde_test_equal_f32fff(float noundef %4, float noundef %7, float noundef %8)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot3 = xor i1 %lnot2, true
  %conv = zext i1 %lnot3 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %10 = load i32, ptr %line.addr, align 4, !tbaa !5
  %11 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %12 = load i64, ptr %i, align 8, !tbaa !11
  %13 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %14 = load i64, ptr %i, align 8, !tbaa !11
  %15 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %16 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds float, ptr %15, i64 %16
  %17 = load float, ptr %arrayidx5, align 4, !tbaa !36
  %conv6 = fpext float %17 to double
  %18 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %19 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds float, ptr %18, i64 %19
  %20 = load float, ptr %arrayidx7, align 4, !tbaa !36
  %conv8 = fpext float %20 to double
  call void (ptr, ...) @_ZL24simde_test_debug_printf_PKcz(ptr noundef @.str.22, ptr noundef %9, i32 noundef %10, ptr noundef %11, i64 noundef %12, ptr noundef %13, i64 noundef %14, double noundef %conv6, double noundef %conv8)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %21, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !38

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %22 = load i32, ptr %retval, align 4
  ret i32 %22

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL20simde_test_equal_f32fff(float noundef %a, float noundef %b, float noundef %slop) #8 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %slop.addr = alloca float, align 4
  %lo = alloca float, align 4
  %hi = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !36
  store float %b, ptr %b.addr, align 4, !tbaa !36
  store float %slop, ptr %slop.addr, align 4, !tbaa !36
  %0 = load float, ptr %a.addr, align 4, !tbaa !36
  %1 = call i1 @llvm.is.fpclass.f32(float %0, i32 3)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load float, ptr %b.addr, align 4, !tbaa !36
  %3 = call i1 @llvm.is.fpclass.f32(float %2, i32 3)
  %4 = zext i1 %3 to i32
  store i32 %4, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load float, ptr %a.addr, align 4, !tbaa !36
  %6 = call i1 @llvm.is.fpclass.f32(float %5, i32 516)
  br i1 %6, label %if.then1, label %if.else3

if.then1:                                         ; preds = %if.else
  %7 = load float, ptr %a.addr, align 4, !tbaa !36
  %8 = load float, ptr %b.addr, align 4, !tbaa !36
  %cmp = fcmp olt float %7, %8
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then1
  %9 = load float, ptr %a.addr, align 4, !tbaa !36
  %10 = load float, ptr %b.addr, align 4, !tbaa !36
  %cmp2 = fcmp ogt float %9, %10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then1
  %11 = phi i1 [ true, %if.then1 ], [ %cmp2, %lor.rhs ]
  %lnot = xor i1 %11, true
  %conv = zext i1 %lnot to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  %12 = load float, ptr %slop.addr, align 4, !tbaa !36
  %cmp4 = fcmp oeq float %12, 0.000000e+00
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else3
  %call = call i32 @memcmp(ptr noundef %a.addr, ptr noundef %b.addr, i64 noundef 4) #18
  %tobool = icmp ne i32 %call, 0
  %lnot6 = xor i1 %tobool, true
  %conv7 = zext i1 %lnot6 to i32
  store i32 %conv7, ptr %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #18
  %13 = load float, ptr %a.addr, align 4, !tbaa !36
  %14 = load float, ptr %slop.addr, align 4, !tbaa !36
  %sub = fsub float %13, %14
  store float %sub, ptr %lo, align 4, !tbaa !36
  %15 = load float, ptr %lo, align 4, !tbaa !36
  %16 = load float, ptr %a.addr, align 4, !tbaa !36
  %cmp9 = fcmp oeq float %15, %16
  %lnot10 = xor i1 %cmp9, true
  %lnot11 = xor i1 %lnot10, true
  %conv12 = zext i1 %lnot11 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv12, i64 0)
  %tobool13 = icmp ne i64 %expval, 0
  br i1 %tobool13, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.else8
  %17 = load float, ptr %a.addr, align 4, !tbaa !36
  %call15 = call float @nextafterf(float noundef %17, float noundef 0xFFF0000000000000) #18
  store float %call15, ptr %lo, align 4, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.else8
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #18
  %18 = load float, ptr %a.addr, align 4, !tbaa !36
  %19 = load float, ptr %slop.addr, align 4, !tbaa !36
  %add = fadd float %18, %19
  store float %add, ptr %hi, align 4, !tbaa !36
  %20 = load float, ptr %hi, align 4, !tbaa !36
  %21 = load float, ptr %a.addr, align 4, !tbaa !36
  %cmp16 = fcmp oeq float %20, %21
  %lnot17 = xor i1 %cmp16, true
  %lnot18 = xor i1 %lnot17, true
  %conv19 = zext i1 %lnot18 to i64
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 0)
  %tobool21 = icmp ne i64 %expval20, 0
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end
  %22 = load float, ptr %a.addr, align 4, !tbaa !36
  %call23 = call float @nextafterf(float noundef %22, float noundef 0x7FF0000000000000) #18
  store float %call23, ptr %hi, align 4, !tbaa !36
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end
  %23 = load float, ptr %b.addr, align 4, !tbaa !36
  %24 = load float, ptr %lo, align 4, !tbaa !36
  %cmp25 = fcmp oge float %23, %24
  br i1 %cmp25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end24
  %25 = load float, ptr %b.addr, align 4, !tbaa !36
  %26 = load float, ptr %hi, align 4, !tbaa !36
  %cmp26 = fcmp ole float %25, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end24
  %27 = phi i1 [ false, %if.end24 ], [ %cmp26, %land.rhs ]
  %conv27 = zext i1 %27 to i32
  store i32 %conv27, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #18
  br label %return

return:                                           ; preds = %land.end, %if.then5, %lor.end, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: mustprogress uwtable
define internal void @_ZL24simde_test_debug_printf_PKcz(ptr noundef %format, ...) #3 {
entry:
  %format.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %format, ptr %format.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #18
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !9
  %1 = load ptr, ptr %format.addr, align 8, !tbaa !9
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %call = call i32 @vfprintf(ptr noundef %0, ptr noundef %1, ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay2)
  %2 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call3 = call i32 @fflush(ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #12

; Function Attrs: nounwind
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #13

; Function Attrs: nounwind
declare float @nextafterf(float noundef, float noundef) #13

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: nounwind
declare float @powf(float noundef, float noundef) #13

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef double @_ZL13simde_vld1_s8PKa(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <8 x i8>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int8x8_private, align 8
  %agg.tmp = alloca %union.simde_int8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #18
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 1 %0, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %r_, i64 8, i1 false), !tbaa.struct !35
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %agg.tmp, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call noundef double @_ZL25simde_int8x8_from_private20simde_int8x8_private(double %1) #19
  store double %call, ptr %coerce, align 8
  %2 = load <8 x i8>, ptr %coerce, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr %agg.tmp) #18
  store <8 x i8> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #18
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline mustprogress uwtable
define internal noundef double @_ZL14simde_vzip2_s8Dv8_aS_(double noundef %a.coerce, double noundef %b.coerce) #7 {
entry:
  %retval = alloca <8 x i8>, align 8
  %a = alloca <8 x i8>, align 8
  %b = alloca <8 x i8>, align 8
  %a.addr = alloca <8 x i8>, align 8
  %b.addr = alloca <8 x i8>, align 8
  %r_ = alloca %union.simde_int8x8_private, align 8
  %a_ = alloca %union.simde_int8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  %b_ = alloca %union.simde_int8x8_private, align 8
  %coerce3 = alloca <8 x i8>, align 8
  %coerce6 = alloca <1 x i64>, align 8
  %coerce7 = alloca <1 x i64>, align 8
  %coerce9 = alloca <1 x i64>, align 8
  %agg.tmp = alloca %union.simde_int8x8_private, align 8
  %coerce12 = alloca <8 x i8>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <8 x i8>, ptr %a, align 8, !tbaa !18
  store double %b.coerce, ptr %b, align 8
  %b2 = load <8 x i8>, ptr %b, align 8, !tbaa !18
  store <8 x i8> %a1, ptr %a.addr, align 8, !tbaa !18
  store <8 x i8> %b2, ptr %b.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #18
  %0 = load <8 x i8>, ptr %a.addr, align 8, !tbaa !18
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  %call = call double @_ZL23simde_int8x8_to_privateDv8_a(double noundef %1) #19
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #18
  %2 = load <8 x i8>, ptr %b.addr, align 8, !tbaa !18
  store <8 x i8> %2, ptr %coerce3, align 8, !tbaa !18
  %3 = load double, ptr %coerce3, align 8
  %call4 = call double @_ZL23simde_int8x8_to_privateDv8_a(double noundef %3) #19
  %coerce.dive5 = getelementptr inbounds %union.simde_int8x8_private, ptr %b_, i32 0, i32 0
  store double %call4, ptr %coerce.dive5, align 8
  %4 = load <1 x i64>, ptr %a_, align 8, !tbaa !18
  %5 = load <1 x i64>, ptr %b_, align 8, !tbaa !18
  store <1 x i64> %4, ptr %coerce6, align 8, !tbaa !18
  %6 = load double, ptr %coerce6, align 8
  store <1 x i64> %5, ptr %coerce7, align 8, !tbaa !18
  %7 = load double, ptr %coerce7, align 8
  %call8 = call noundef double @_ZL16_mm_unpackhi_pi8Dv1_xS_(double noundef %6, double noundef %7)
  store double %call8, ptr %coerce9, align 8
  %8 = load <1 x i64>, ptr %coerce9, align 8, !tbaa !18
  store <1 x i64> %8, ptr %r_, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %r_, i64 8, i1 false), !tbaa.struct !35
  %coerce.dive10 = getelementptr inbounds %union.simde_int8x8_private, ptr %agg.tmp, i32 0, i32 0
  %9 = load double, ptr %coerce.dive10, align 8
  %call11 = call noundef double @_ZL25simde_int8x8_from_private20simde_int8x8_private(double %9) #19
  store double %call11, ptr %coerce12, align 8
  %10 = load <8 x i8>, ptr %coerce12, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr %agg.tmp) #18
  store <8 x i8> %10, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #18
  %11 = load double, ptr %retval, align 8
  ret double %11
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL38simde_test_arm_neon_assert_equal_i8x8_Dv8_aS_PKciS1_S1_(double noundef %a.coerce, double noundef %b.coerce, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a = alloca <8 x i8>, align 8
  %b = alloca <8 x i8>, align 8
  %a.addr = alloca <8 x i8>, align 8
  %b.addr = alloca <8 x i8>, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [8 x i8], align 1
  %b_ = alloca [8 x i8], align 1
  %coerce = alloca <8 x i8>, align 8
  %coerce4 = alloca <8 x i8>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <8 x i8>, ptr %a, align 8, !tbaa !18
  store double %b.coerce, ptr %b, align 8
  %b2 = load <8 x i8>, ptr %b, align 8, !tbaa !18
  store <8 x i8> %a1, ptr %a.addr, align 8, !tbaa !18
  store <8 x i8> %b2, ptr %b.addr, align 8, !tbaa !18
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #18
  %arraydecay = getelementptr inbounds [8 x i8], ptr %a_, i64 0, i64 0
  %0 = load <8 x i8>, ptr %a.addr, align 8, !tbaa !18
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  call void @_ZL13simde_vst1_s8PaDv8_a(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [8 x i8], ptr %b_, i64 0, i64 0
  %2 = load <8 x i8>, ptr %b.addr, align 8, !tbaa !18
  store <8 x i8> %2, ptr %coerce4, align 8, !tbaa !18
  %3 = load double, ptr %coerce4, align 8
  call void @_ZL13simde_vst1_s8PaDv8_a(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [8 x i8], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [8 x i8], ptr %b_, i64 0, i64 0
  %4 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %5 = load i32, ptr %line.addr, align 4, !tbaa !5
  %6 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call noundef i32 @_ZL23simde_assert_equal_vi8_mPKaS0_PKciS2_S2_(i64 noundef 8, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #18
  ret i32 %call
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal noundef double @_ZL25simde_int8x8_from_private20simde_int8x8_private(double %value.coerce) #9 {
entry:
  %retval = alloca <8 x i8>, align 8
  %value = alloca %union.simde_int8x8_private, align 8
  %r = alloca <8 x i8>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <8 x i8>, ptr %r, align 8, !tbaa !18
  store <8 x i8> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #18
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal double @_ZL23simde_int8x8_to_privateDv8_a(double noundef %value.coerce) #9 {
entry:
  %retval = alloca %union.simde_int8x8_private, align 8
  %value = alloca <8 x i8>, align 8
  %value.addr = alloca <8 x i8>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <8 x i8>, ptr %value, align 8, !tbaa !18
  store <8 x i8> %value1, ptr %value.addr, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef double @_ZL16_mm_unpackhi_pi8Dv1_xS_(double noundef %__m1.coerce, double noundef %__m2.coerce) #10 {
entry:
  %retval = alloca <1 x i64>, align 8
  %__m1 = alloca <1 x i64>, align 8
  %__m2 = alloca <1 x i64>, align 8
  %__m1.addr = alloca <1 x i64>, align 8
  %__m2.addr = alloca <1 x i64>, align 8
  store double %__m1.coerce, ptr %__m1, align 8
  %__m11 = load <1 x i64>, ptr %__m1, align 8, !tbaa !18
  store double %__m2.coerce, ptr %__m2, align 8
  %__m22 = load <1 x i64>, ptr %__m2, align 8, !tbaa !18
  store <1 x i64> %__m11, ptr %__m1.addr, align 8, !tbaa !18
  store <1 x i64> %__m22, ptr %__m2.addr, align 8, !tbaa !18
  %0 = load <1 x i64>, ptr %__m1.addr, align 8, !tbaa !18
  %1 = bitcast <1 x i64> %0 to <8 x i8>
  %2 = bitcast <8 x i8> %1 to <1 x i64>
  %3 = load <1 x i64>, ptr %__m2.addr, align 8, !tbaa !18
  %4 = bitcast <1 x i64> %3 to <8 x i8>
  %5 = bitcast <8 x i8> %4 to <1 x i64>
  %6 = call <1 x i64> @llvm.x86.mmx.punpckhbw(<1 x i64> %2, <1 x i64> %5)
  %7 = bitcast <1 x i64> %6 to <8 x i8>
  %8 = bitcast <8 x i8> %7 to <1 x i64>
  store <1 x i64> %8, ptr %retval, align 8
  %9 = load double, ptr %retval, align 8
  ret double %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <1 x i64> @llvm.x86.mmx.punpckhbw(<1 x i64>, <1 x i64>) #11

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @_ZL13simde_vst1_s8PaDv8_a(ptr noundef %ptr, double noundef %val.coerce) #6 {
entry:
  %val = alloca <8 x i8>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <8 x i8>, align 8
  %val_ = alloca %union.simde_int8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <8 x i8>, ptr %val, align 8, !tbaa !18
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <8 x i8> %val1, ptr %val.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #18
  %0 = load <8 x i8>, ptr %val.addr, align 8, !tbaa !18
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  %call = call double @_ZL23simde_int8x8_to_privateDv8_a(double noundef %1) #19
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL23simde_assert_equal_vi8_mPKaS0_PKciS2_S2_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %3
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !18
  %conv = sext i8 %4 to i32
  %5 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i8, ptr %5, i64 %6
  %7 = load i8, ptr %arrayidx1, align 1, !tbaa !18
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp ne i32 %conv, %conv2
  %lnot = xor i1 %cmp3, true
  %lnot4 = xor i1 %lnot, true
  %conv5 = zext i1 %lnot4 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %12 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx6 = getelementptr inbounds i8, ptr %14, i64 %15
  %16 = load i8, ptr %arrayidx6, align 1, !tbaa !18
  %conv7 = sext i8 %16 to i32
  %17 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %18 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds i8, ptr %17, i64 %18
  %19 = load i8, ptr %arrayidx8, align 1, !tbaa !18
  %conv9 = sext i8 %19 to i32
  call void (ptr, ...) @_ZL24simde_test_debug_printf_PKcz(ptr noundef @.str.24, ptr noundef %8, i32 noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12, i64 noundef %13, i32 noundef %conv7, i32 noundef %conv9)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %20, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !39

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %21 = load i32, ptr %retval, align 4
  ret i32 %21

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef double @_ZL14simde_vld1_s16PKs(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <4 x i16>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int16x4_private, align 8
  %agg.tmp = alloca %union.simde_int16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #18
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 2 %0, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %r_, i64 8, i1 false), !tbaa.struct !35
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %agg.tmp, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call noundef double @_ZL26simde_int16x4_from_private21simde_int16x4_private(double %1) #19
  store double %call, ptr %coerce, align 8
  %2 = load <4 x i16>, ptr %coerce, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr %agg.tmp) #18
  store <4 x i16> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #18
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline mustprogress uwtable
define internal noundef double @_ZL15simde_vzip2_s16Dv4_sS_(double noundef %a.coerce, double noundef %b.coerce) #7 {
entry:
  %retval = alloca <4 x i16>, align 8
  %a = alloca <4 x i16>, align 8
  %b = alloca <4 x i16>, align 8
  %a.addr = alloca <4 x i16>, align 8
  %b.addr = alloca <4 x i16>, align 8
  %r_ = alloca %union.simde_int16x4_private, align 8
  %a_ = alloca %union.simde_int16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  %b_ = alloca %union.simde_int16x4_private, align 8
  %coerce3 = alloca <4 x i16>, align 8
  %coerce6 = alloca <1 x i64>, align 8
  %coerce7 = alloca <1 x i64>, align 8
  %coerce9 = alloca <1 x i64>, align 8
  %agg.tmp = alloca %union.simde_int16x4_private, align 8
  %coerce12 = alloca <4 x i16>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <4 x i16>, ptr %a, align 8, !tbaa !18
  store double %b.coerce, ptr %b, align 8
  %b2 = load <4 x i16>, ptr %b, align 8, !tbaa !18
  store <4 x i16> %a1, ptr %a.addr, align 8, !tbaa !18
  store <4 x i16> %b2, ptr %b.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #18
  %0 = load <4 x i16>, ptr %a.addr, align 8, !tbaa !18
  store <4 x i16> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  %call = call double @_ZL24simde_int16x4_to_privateDv4_s(double noundef %1) #19
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #18
  %2 = load <4 x i16>, ptr %b.addr, align 8, !tbaa !18
  store <4 x i16> %2, ptr %coerce3, align 8, !tbaa !18
  %3 = load double, ptr %coerce3, align 8
  %call4 = call double @_ZL24simde_int16x4_to_privateDv4_s(double noundef %3) #19
  %coerce.dive5 = getelementptr inbounds %union.simde_int16x4_private, ptr %b_, i32 0, i32 0
  store double %call4, ptr %coerce.dive5, align 8
  %4 = load <1 x i64>, ptr %a_, align 8, !tbaa !18
  %5 = load <1 x i64>, ptr %b_, align 8, !tbaa !18
  store <1 x i64> %4, ptr %coerce6, align 8, !tbaa !18
  %6 = load double, ptr %coerce6, align 8
  store <1 x i64> %5, ptr %coerce7, align 8, !tbaa !18
  %7 = load double, ptr %coerce7, align 8
  %call8 = call noundef double @_ZL17_mm_unpackhi_pi16Dv1_xS_(double noundef %6, double noundef %7)
  store double %call8, ptr %coerce9, align 8
  %8 = load <1 x i64>, ptr %coerce9, align 8, !tbaa !18
  store <1 x i64> %8, ptr %r_, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %r_, i64 8, i1 false), !tbaa.struct !35
  %coerce.dive10 = getelementptr inbounds %union.simde_int16x4_private, ptr %agg.tmp, i32 0, i32 0
  %9 = load double, ptr %coerce.dive10, align 8
  %call11 = call noundef double @_ZL26simde_int16x4_from_private21simde_int16x4_private(double %9) #19
  store double %call11, ptr %coerce12, align 8
  %10 = load <4 x i16>, ptr %coerce12, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr %agg.tmp) #18
  store <4 x i16> %10, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #18
  %11 = load double, ptr %retval, align 8
  ret double %11
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL39simde_test_arm_neon_assert_equal_i16x4_Dv4_sS_PKciS1_S1_(double noundef %a.coerce, double noundef %b.coerce, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a = alloca <4 x i16>, align 8
  %b = alloca <4 x i16>, align 8
  %a.addr = alloca <4 x i16>, align 8
  %b.addr = alloca <4 x i16>, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [4 x i16], align 2
  %b_ = alloca [4 x i16], align 2
  %coerce = alloca <4 x i16>, align 8
  %coerce4 = alloca <4 x i16>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <4 x i16>, ptr %a, align 8, !tbaa !18
  store double %b.coerce, ptr %b, align 8
  %b2 = load <4 x i16>, ptr %b, align 8, !tbaa !18
  store <4 x i16> %a1, ptr %a.addr, align 8, !tbaa !18
  store <4 x i16> %b2, ptr %b.addr, align 8, !tbaa !18
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #18
  %arraydecay = getelementptr inbounds [4 x i16], ptr %a_, i64 0, i64 0
  %0 = load <4 x i16>, ptr %a.addr, align 8, !tbaa !18
  store <4 x i16> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  call void @_ZL14simde_vst1_s16PsDv4_s(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [4 x i16], ptr %b_, i64 0, i64 0
  %2 = load <4 x i16>, ptr %b.addr, align 8, !tbaa !18
  store <4 x i16> %2, ptr %coerce4, align 8, !tbaa !18
  %3 = load double, ptr %coerce4, align 8
  call void @_ZL14simde_vst1_s16PsDv4_s(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [4 x i16], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [4 x i16], ptr %b_, i64 0, i64 0
  %4 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %5 = load i32, ptr %line.addr, align 4, !tbaa !5
  %6 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call noundef i32 @_ZL24simde_assert_equal_vi16_mPKsS0_PKciS2_S2_(i64 noundef 4, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #18
  ret i32 %call
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal noundef double @_ZL26simde_int16x4_from_private21simde_int16x4_private(double %value.coerce) #9 {
entry:
  %retval = alloca <4 x i16>, align 8
  %value = alloca %union.simde_int16x4_private, align 8
  %r = alloca <4 x i16>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <4 x i16>, ptr %r, align 8, !tbaa !18
  store <4 x i16> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #18
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal double @_ZL24simde_int16x4_to_privateDv4_s(double noundef %value.coerce) #9 {
entry:
  %retval = alloca %union.simde_int16x4_private, align 8
  %value = alloca <4 x i16>, align 8
  %value.addr = alloca <4 x i16>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <4 x i16>, ptr %value, align 8, !tbaa !18
  store <4 x i16> %value1, ptr %value.addr, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef double @_ZL17_mm_unpackhi_pi16Dv1_xS_(double noundef %__m1.coerce, double noundef %__m2.coerce) #10 {
entry:
  %retval = alloca <1 x i64>, align 8
  %__m1 = alloca <1 x i64>, align 8
  %__m2 = alloca <1 x i64>, align 8
  %__m1.addr = alloca <1 x i64>, align 8
  %__m2.addr = alloca <1 x i64>, align 8
  store double %__m1.coerce, ptr %__m1, align 8
  %__m11 = load <1 x i64>, ptr %__m1, align 8, !tbaa !18
  store double %__m2.coerce, ptr %__m2, align 8
  %__m22 = load <1 x i64>, ptr %__m2, align 8, !tbaa !18
  store <1 x i64> %__m11, ptr %__m1.addr, align 8, !tbaa !18
  store <1 x i64> %__m22, ptr %__m2.addr, align 8, !tbaa !18
  %0 = load <1 x i64>, ptr %__m1.addr, align 8, !tbaa !18
  %1 = bitcast <1 x i64> %0 to <4 x i16>
  %2 = bitcast <4 x i16> %1 to <1 x i64>
  %3 = load <1 x i64>, ptr %__m2.addr, align 8, !tbaa !18
  %4 = bitcast <1 x i64> %3 to <4 x i16>
  %5 = bitcast <4 x i16> %4 to <1 x i64>
  %6 = call <1 x i64> @llvm.x86.mmx.punpckhwd(<1 x i64> %2, <1 x i64> %5)
  %7 = bitcast <1 x i64> %6 to <4 x i16>
  %8 = bitcast <4 x i16> %7 to <1 x i64>
  store <1 x i64> %8, ptr %retval, align 8
  %9 = load double, ptr %retval, align 8
  ret double %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <1 x i64> @llvm.x86.mmx.punpckhwd(<1 x i64>, <1 x i64>) #11

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @_ZL14simde_vst1_s16PsDv4_s(ptr noundef %ptr, double noundef %val.coerce) #6 {
entry:
  %val = alloca <4 x i16>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <4 x i16>, align 8
  %val_ = alloca %union.simde_int16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <4 x i16>, ptr %val, align 8, !tbaa !18
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <4 x i16> %val1, ptr %val.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #18
  %0 = load <4 x i16>, ptr %val.addr, align 8, !tbaa !18
  store <4 x i16> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  %call = call double @_ZL24simde_int16x4_to_privateDv4_s(double noundef %1) #19
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL24simde_assert_equal_vi16_mPKsS0_PKciS2_S2_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %3
  %4 = load i16, ptr %arrayidx, align 2, !tbaa !40
  %conv = sext i16 %4 to i32
  %5 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i16, ptr %5, i64 %6
  %7 = load i16, ptr %arrayidx1, align 2, !tbaa !40
  %conv2 = sext i16 %7 to i32
  %cmp3 = icmp ne i32 %conv, %conv2
  %lnot = xor i1 %cmp3, true
  %lnot4 = xor i1 %lnot, true
  %conv5 = zext i1 %lnot4 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %12 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx6 = getelementptr inbounds i16, ptr %14, i64 %15
  %16 = load i16, ptr %arrayidx6, align 2, !tbaa !40
  %conv7 = sext i16 %16 to i32
  %17 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %18 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds i16, ptr %17, i64 %18
  %19 = load i16, ptr %arrayidx8, align 2, !tbaa !40
  %conv9 = sext i16 %19 to i32
  call void (ptr, ...) @_ZL24simde_test_debug_printf_PKcz(ptr noundef @.str.24, ptr noundef %8, i32 noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12, i64 noundef %13, i32 noundef %conv7, i32 noundef %conv9)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %20, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !42

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %21 = load i32, ptr %retval, align 4
  ret i32 %21

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef double @_ZL14simde_vld1_s32PKi(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <2 x i32>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int32x2_private, align 8
  %agg.tmp = alloca %union.simde_int32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #18
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 4 %0, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %r_, i64 8, i1 false), !tbaa.struct !35
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %agg.tmp, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call noundef double @_ZL26simde_int32x2_from_private21simde_int32x2_private(double %1) #19
  store double %call, ptr %coerce, align 8
  %2 = load <2 x i32>, ptr %coerce, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr %agg.tmp) #18
  store <2 x i32> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #18
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef double @_ZL15simde_vzip2_s32Dv2_iS_(double noundef %a.coerce, double noundef %b.coerce) #6 {
entry:
  %retval = alloca <2 x i32>, align 8
  %a = alloca <2 x i32>, align 8
  %b = alloca <2 x i32>, align 8
  %a.addr = alloca <2 x i32>, align 8
  %b.addr = alloca <2 x i32>, align 8
  %r_ = alloca %union.simde_int32x2_private, align 8
  %a_ = alloca %union.simde_int32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  %b_ = alloca %union.simde_int32x2_private, align 8
  %coerce3 = alloca <2 x i32>, align 8
  %coerce6 = alloca <1 x i64>, align 8
  %coerce7 = alloca <1 x i64>, align 8
  %coerce9 = alloca <1 x i64>, align 8
  %agg.tmp = alloca %union.simde_int32x2_private, align 8
  %coerce12 = alloca <2 x i32>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <2 x i32>, ptr %a, align 8, !tbaa !18
  store double %b.coerce, ptr %b, align 8
  %b2 = load <2 x i32>, ptr %b, align 8, !tbaa !18
  store <2 x i32> %a1, ptr %a.addr, align 8, !tbaa !18
  store <2 x i32> %b2, ptr %b.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #18
  %0 = load <2 x i32>, ptr %a.addr, align 8, !tbaa !18
  store <2 x i32> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  %call = call double @_ZL24simde_int32x2_to_privateDv2_i(double noundef %1) #19
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #18
  %2 = load <2 x i32>, ptr %b.addr, align 8, !tbaa !18
  store <2 x i32> %2, ptr %coerce3, align 8, !tbaa !18
  %3 = load double, ptr %coerce3, align 8
  %call4 = call double @_ZL24simde_int32x2_to_privateDv2_i(double noundef %3) #19
  %coerce.dive5 = getelementptr inbounds %union.simde_int32x2_private, ptr %b_, i32 0, i32 0
  store double %call4, ptr %coerce.dive5, align 8
  %4 = load <1 x i64>, ptr %a_, align 8, !tbaa !18
  %5 = load <1 x i64>, ptr %b_, align 8, !tbaa !18
  store <1 x i64> %4, ptr %coerce6, align 8, !tbaa !18
  %6 = load double, ptr %coerce6, align 8
  store <1 x i64> %5, ptr %coerce7, align 8, !tbaa !18
  %7 = load double, ptr %coerce7, align 8
  %call8 = call noundef double @_ZL17_mm_unpackhi_pi32Dv1_xS_(double noundef %6, double noundef %7)
  store double %call8, ptr %coerce9, align 8
  %8 = load <1 x i64>, ptr %coerce9, align 8, !tbaa !18
  store <1 x i64> %8, ptr %r_, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %r_, i64 8, i1 false), !tbaa.struct !35
  %coerce.dive10 = getelementptr inbounds %union.simde_int32x2_private, ptr %agg.tmp, i32 0, i32 0
  %9 = load double, ptr %coerce.dive10, align 8
  %call11 = call noundef double @_ZL26simde_int32x2_from_private21simde_int32x2_private(double %9) #19
  store double %call11, ptr %coerce12, align 8
  %10 = load <2 x i32>, ptr %coerce12, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr %agg.tmp) #18
  store <2 x i32> %10, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #18
  %11 = load double, ptr %retval, align 8
  ret double %11
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL39simde_test_arm_neon_assert_equal_i32x2_Dv2_iS_PKciS1_S1_(double noundef %a.coerce, double noundef %b.coerce, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a = alloca <2 x i32>, align 8
  %b = alloca <2 x i32>, align 8
  %a.addr = alloca <2 x i32>, align 8
  %b.addr = alloca <2 x i32>, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [2 x i32], align 4
  %b_ = alloca [2 x i32], align 4
  %coerce = alloca <2 x i32>, align 8
  %coerce4 = alloca <2 x i32>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <2 x i32>, ptr %a, align 8, !tbaa !18
  store double %b.coerce, ptr %b, align 8
  %b2 = load <2 x i32>, ptr %b, align 8, !tbaa !18
  store <2 x i32> %a1, ptr %a.addr, align 8, !tbaa !18
  store <2 x i32> %b2, ptr %b.addr, align 8, !tbaa !18
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #18
  %arraydecay = getelementptr inbounds [2 x i32], ptr %a_, i64 0, i64 0
  %0 = load <2 x i32>, ptr %a.addr, align 8, !tbaa !18
  store <2 x i32> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  call void @_ZL14simde_vst1_s32PiDv2_i(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [2 x i32], ptr %b_, i64 0, i64 0
  %2 = load <2 x i32>, ptr %b.addr, align 8, !tbaa !18
  store <2 x i32> %2, ptr %coerce4, align 8, !tbaa !18
  %3 = load double, ptr %coerce4, align 8
  call void @_ZL14simde_vst1_s32PiDv2_i(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [2 x i32], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [2 x i32], ptr %b_, i64 0, i64 0
  %4 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %5 = load i32, ptr %line.addr, align 4, !tbaa !5
  %6 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call noundef i32 @_ZL24simde_assert_equal_vi32_mPKiS0_PKciS2_S2_(i64 noundef 2, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #18
  ret i32 %call
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal noundef double @_ZL26simde_int32x2_from_private21simde_int32x2_private(double %value.coerce) #9 {
entry:
  %retval = alloca <2 x i32>, align 8
  %value = alloca %union.simde_int32x2_private, align 8
  %r = alloca <2 x i32>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <2 x i32>, ptr %r, align 8, !tbaa !18
  store <2 x i32> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #18
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal double @_ZL24simde_int32x2_to_privateDv2_i(double noundef %value.coerce) #9 {
entry:
  %retval = alloca %union.simde_int32x2_private, align 8
  %value = alloca <2 x i32>, align 8
  %value.addr = alloca <2 x i32>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <2 x i32>, ptr %value, align 8, !tbaa !18
  store <2 x i32> %value1, ptr %value.addr, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @_ZL14simde_vst1_s32PiDv2_i(ptr noundef %ptr, double noundef %val.coerce) #6 {
entry:
  %val = alloca <2 x i32>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <2 x i32>, align 8
  %val_ = alloca %union.simde_int32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <2 x i32>, ptr %val, align 8, !tbaa !18
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <2 x i32> %val1, ptr %val.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #18
  %0 = load <2 x i32>, ptr %val.addr, align 8, !tbaa !18
  store <2 x i32> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  %call = call double @_ZL24simde_int32x2_to_privateDv2_i(double noundef %1) #19
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL24simde_assert_equal_vi32_mPKiS0_PKciS2_S2_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %3
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %5 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i32, ptr %5, i64 %6
  %7 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %4, %7
  %lnot = xor i1 %cmp2, true
  %lnot3 = xor i1 %lnot, true
  %conv = zext i1 %lnot3 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %12 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds i32, ptr %14, i64 %15
  %16 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %17 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %18 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds i32, ptr %17, i64 %18
  %19 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  call void (ptr, ...) @_ZL24simde_test_debug_printf_PKcz(ptr noundef @.str.24, ptr noundef %8, i32 noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12, i64 noundef %13, i32 noundef %16, i32 noundef %19)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %20, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !43

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %21 = load i32, ptr %retval, align 4
  ret i32 %21

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef double @_ZL13simde_vld1_u8PKh(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <8 x i8>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint8x8_private, align 8
  %agg.tmp = alloca %union.simde_uint8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #18
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 1 %0, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %r_, i64 8, i1 false), !tbaa.struct !35
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %agg.tmp, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call noundef double @_ZL26simde_uint8x8_from_private21simde_uint8x8_private(double %1) #19
  store double %call, ptr %coerce, align 8
  %2 = load <8 x i8>, ptr %coerce, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr %agg.tmp) #18
  store <8 x i8> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #18
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef double @_ZL14simde_vzip2_u8Dv8_hS_(double noundef %a.coerce, double noundef %b.coerce) #6 {
entry:
  %retval = alloca <8 x i8>, align 8
  %a = alloca <8 x i8>, align 8
  %b = alloca <8 x i8>, align 8
  %a.addr = alloca <8 x i8>, align 8
  %b.addr = alloca <8 x i8>, align 8
  %r_ = alloca %union.simde_uint8x8_private, align 8
  %a_ = alloca %union.simde_uint8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  %b_ = alloca %union.simde_uint8x8_private, align 8
  %coerce3 = alloca <8 x i8>, align 8
  %coerce6 = alloca <1 x i64>, align 8
  %coerce7 = alloca <1 x i64>, align 8
  %coerce9 = alloca <1 x i64>, align 8
  %agg.tmp = alloca %union.simde_uint8x8_private, align 8
  %coerce12 = alloca <8 x i8>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <8 x i8>, ptr %a, align 8, !tbaa !18
  store double %b.coerce, ptr %b, align 8
  %b2 = load <8 x i8>, ptr %b, align 8, !tbaa !18
  store <8 x i8> %a1, ptr %a.addr, align 8, !tbaa !18
  store <8 x i8> %b2, ptr %b.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #18
  %0 = load <8 x i8>, ptr %a.addr, align 8, !tbaa !18
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  %call = call double @_ZL24simde_uint8x8_to_privateDv8_h(double noundef %1) #19
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #18
  %2 = load <8 x i8>, ptr %b.addr, align 8, !tbaa !18
  store <8 x i8> %2, ptr %coerce3, align 8, !tbaa !18
  %3 = load double, ptr %coerce3, align 8
  %call4 = call double @_ZL24simde_uint8x8_to_privateDv8_h(double noundef %3) #19
  %coerce.dive5 = getelementptr inbounds %union.simde_uint8x8_private, ptr %b_, i32 0, i32 0
  store double %call4, ptr %coerce.dive5, align 8
  %4 = load <1 x i64>, ptr %a_, align 8, !tbaa !18
  %5 = load <1 x i64>, ptr %b_, align 8, !tbaa !18
  store <1 x i64> %4, ptr %coerce6, align 8, !tbaa !18
  %6 = load double, ptr %coerce6, align 8
  store <1 x i64> %5, ptr %coerce7, align 8, !tbaa !18
  %7 = load double, ptr %coerce7, align 8
  %call8 = call noundef double @_ZL16_mm_unpackhi_pi8Dv1_xS_(double noundef %6, double noundef %7)
  store double %call8, ptr %coerce9, align 8
  %8 = load <1 x i64>, ptr %coerce9, align 8, !tbaa !18
  store <1 x i64> %8, ptr %r_, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %r_, i64 8, i1 false), !tbaa.struct !35
  %coerce.dive10 = getelementptr inbounds %union.simde_uint8x8_private, ptr %agg.tmp, i32 0, i32 0
  %9 = load double, ptr %coerce.dive10, align 8
  %call11 = call noundef double @_ZL26simde_uint8x8_from_private21simde_uint8x8_private(double %9) #19
  store double %call11, ptr %coerce12, align 8
  %10 = load <8 x i8>, ptr %coerce12, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr %agg.tmp) #18
  store <8 x i8> %10, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #18
  %11 = load double, ptr %retval, align 8
  ret double %11
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL38simde_test_arm_neon_assert_equal_u8x8_Dv8_hS_PKciS1_S1_(double noundef %a.coerce, double noundef %b.coerce, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a = alloca <8 x i8>, align 8
  %b = alloca <8 x i8>, align 8
  %a.addr = alloca <8 x i8>, align 8
  %b.addr = alloca <8 x i8>, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [8 x i8], align 1
  %b_ = alloca [8 x i8], align 1
  %coerce = alloca <8 x i8>, align 8
  %coerce4 = alloca <8 x i8>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <8 x i8>, ptr %a, align 8, !tbaa !18
  store double %b.coerce, ptr %b, align 8
  %b2 = load <8 x i8>, ptr %b, align 8, !tbaa !18
  store <8 x i8> %a1, ptr %a.addr, align 8, !tbaa !18
  store <8 x i8> %b2, ptr %b.addr, align 8, !tbaa !18
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #18
  %arraydecay = getelementptr inbounds [8 x i8], ptr %a_, i64 0, i64 0
  %0 = load <8 x i8>, ptr %a.addr, align 8, !tbaa !18
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  call void @_ZL13simde_vst1_u8PhDv8_h(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [8 x i8], ptr %b_, i64 0, i64 0
  %2 = load <8 x i8>, ptr %b.addr, align 8, !tbaa !18
  store <8 x i8> %2, ptr %coerce4, align 8, !tbaa !18
  %3 = load double, ptr %coerce4, align 8
  call void @_ZL13simde_vst1_u8PhDv8_h(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [8 x i8], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [8 x i8], ptr %b_, i64 0, i64 0
  %4 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %5 = load i32, ptr %line.addr, align 4, !tbaa !5
  %6 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call noundef i32 @_ZL23simde_assert_equal_vu8_mPKhS0_PKciS2_S2_(i64 noundef 8, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #18
  ret i32 %call
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal noundef double @_ZL26simde_uint8x8_from_private21simde_uint8x8_private(double %value.coerce) #9 {
entry:
  %retval = alloca <8 x i8>, align 8
  %value = alloca %union.simde_uint8x8_private, align 8
  %r = alloca <8 x i8>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <8 x i8>, ptr %r, align 8, !tbaa !18
  store <8 x i8> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #18
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal double @_ZL24simde_uint8x8_to_privateDv8_h(double noundef %value.coerce) #9 {
entry:
  %retval = alloca %union.simde_uint8x8_private, align 8
  %value = alloca <8 x i8>, align 8
  %value.addr = alloca <8 x i8>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <8 x i8>, ptr %value, align 8, !tbaa !18
  store <8 x i8> %value1, ptr %value.addr, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @_ZL13simde_vst1_u8PhDv8_h(ptr noundef %ptr, double noundef %val.coerce) #6 {
entry:
  %val = alloca <8 x i8>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <8 x i8>, align 8
  %val_ = alloca %union.simde_uint8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <8 x i8>, ptr %val, align 8, !tbaa !18
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <8 x i8> %val1, ptr %val.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #18
  %0 = load <8 x i8>, ptr %val.addr, align 8, !tbaa !18
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  %call = call double @_ZL24simde_uint8x8_to_privateDv8_h(double noundef %1) #19
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL23simde_assert_equal_vu8_mPKhS0_PKciS2_S2_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %3
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !18
  %conv = zext i8 %4 to i32
  %5 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i8, ptr %5, i64 %6
  %7 = load i8, ptr %arrayidx1, align 1, !tbaa !18
  %conv2 = zext i8 %7 to i32
  %cmp3 = icmp ne i32 %conv, %conv2
  %lnot = xor i1 %cmp3, true
  %lnot4 = xor i1 %lnot, true
  %conv5 = zext i1 %lnot4 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %12 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx6 = getelementptr inbounds i8, ptr %14, i64 %15
  %16 = load i8, ptr %arrayidx6, align 1, !tbaa !18
  %conv7 = zext i8 %16 to i32
  %17 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %18 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds i8, ptr %17, i64 %18
  %19 = load i8, ptr %arrayidx8, align 1, !tbaa !18
  %conv9 = zext i8 %19 to i32
  call void (ptr, ...) @_ZL24simde_test_debug_printf_PKcz(ptr noundef @.str.28, ptr noundef %8, i32 noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12, i64 noundef %13, i32 noundef %conv7, i32 noundef %conv9)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %20, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !44

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %21 = load i32, ptr %retval, align 4
  ret i32 %21

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef double @_ZL14simde_vld1_u16PKt(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <4 x i16>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint16x4_private, align 8
  %agg.tmp = alloca %union.simde_uint16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #18
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 2 %0, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %r_, i64 8, i1 false), !tbaa.struct !35
  %coerce.dive = getelementptr inbounds %union.simde_uint16x4_private, ptr %agg.tmp, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call noundef double @_ZL27simde_uint16x4_from_private22simde_uint16x4_private(double %1) #19
  store double %call, ptr %coerce, align 8
  %2 = load <4 x i16>, ptr %coerce, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr %agg.tmp) #18
  store <4 x i16> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #18
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef double @_ZL15simde_vzip2_u16Dv4_tS_(double noundef %a.coerce, double noundef %b.coerce) #6 {
entry:
  %retval = alloca <4 x i16>, align 8
  %a = alloca <4 x i16>, align 8
  %b = alloca <4 x i16>, align 8
  %a.addr = alloca <4 x i16>, align 8
  %b.addr = alloca <4 x i16>, align 8
  %r_ = alloca %union.simde_uint16x4_private, align 8
  %a_ = alloca %union.simde_uint16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  %b_ = alloca %union.simde_uint16x4_private, align 8
  %coerce3 = alloca <4 x i16>, align 8
  %coerce6 = alloca <1 x i64>, align 8
  %coerce7 = alloca <1 x i64>, align 8
  %coerce9 = alloca <1 x i64>, align 8
  %agg.tmp = alloca %union.simde_uint16x4_private, align 8
  %coerce12 = alloca <4 x i16>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <4 x i16>, ptr %a, align 8, !tbaa !18
  store double %b.coerce, ptr %b, align 8
  %b2 = load <4 x i16>, ptr %b, align 8, !tbaa !18
  store <4 x i16> %a1, ptr %a.addr, align 8, !tbaa !18
  store <4 x i16> %b2, ptr %b.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #18
  %0 = load <4 x i16>, ptr %a.addr, align 8, !tbaa !18
  store <4 x i16> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  %call = call double @_ZL25simde_uint16x4_to_privateDv4_t(double noundef %1) #19
  %coerce.dive = getelementptr inbounds %union.simde_uint16x4_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #18
  %2 = load <4 x i16>, ptr %b.addr, align 8, !tbaa !18
  store <4 x i16> %2, ptr %coerce3, align 8, !tbaa !18
  %3 = load double, ptr %coerce3, align 8
  %call4 = call double @_ZL25simde_uint16x4_to_privateDv4_t(double noundef %3) #19
  %coerce.dive5 = getelementptr inbounds %union.simde_uint16x4_private, ptr %b_, i32 0, i32 0
  store double %call4, ptr %coerce.dive5, align 8
  %4 = load <1 x i64>, ptr %a_, align 8, !tbaa !18
  %5 = load <1 x i64>, ptr %b_, align 8, !tbaa !18
  store <1 x i64> %4, ptr %coerce6, align 8, !tbaa !18
  %6 = load double, ptr %coerce6, align 8
  store <1 x i64> %5, ptr %coerce7, align 8, !tbaa !18
  %7 = load double, ptr %coerce7, align 8
  %call8 = call noundef double @_ZL17_mm_unpackhi_pi16Dv1_xS_(double noundef %6, double noundef %7)
  store double %call8, ptr %coerce9, align 8
  %8 = load <1 x i64>, ptr %coerce9, align 8, !tbaa !18
  store <1 x i64> %8, ptr %r_, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %r_, i64 8, i1 false), !tbaa.struct !35
  %coerce.dive10 = getelementptr inbounds %union.simde_uint16x4_private, ptr %agg.tmp, i32 0, i32 0
  %9 = load double, ptr %coerce.dive10, align 8
  %call11 = call noundef double @_ZL27simde_uint16x4_from_private22simde_uint16x4_private(double %9) #19
  store double %call11, ptr %coerce12, align 8
  %10 = load <4 x i16>, ptr %coerce12, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr %agg.tmp) #18
  store <4 x i16> %10, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #18
  %11 = load double, ptr %retval, align 8
  ret double %11
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL39simde_test_arm_neon_assert_equal_u16x4_Dv4_tS_PKciS1_S1_(double noundef %a.coerce, double noundef %b.coerce, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a = alloca <4 x i16>, align 8
  %b = alloca <4 x i16>, align 8
  %a.addr = alloca <4 x i16>, align 8
  %b.addr = alloca <4 x i16>, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [4 x i16], align 2
  %b_ = alloca [4 x i16], align 2
  %coerce = alloca <4 x i16>, align 8
  %coerce4 = alloca <4 x i16>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <4 x i16>, ptr %a, align 8, !tbaa !18
  store double %b.coerce, ptr %b, align 8
  %b2 = load <4 x i16>, ptr %b, align 8, !tbaa !18
  store <4 x i16> %a1, ptr %a.addr, align 8, !tbaa !18
  store <4 x i16> %b2, ptr %b.addr, align 8, !tbaa !18
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #18
  %arraydecay = getelementptr inbounds [4 x i16], ptr %a_, i64 0, i64 0
  %0 = load <4 x i16>, ptr %a.addr, align 8, !tbaa !18
  store <4 x i16> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  call void @_ZL14simde_vst1_u16PtDv4_t(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [4 x i16], ptr %b_, i64 0, i64 0
  %2 = load <4 x i16>, ptr %b.addr, align 8, !tbaa !18
  store <4 x i16> %2, ptr %coerce4, align 8, !tbaa !18
  %3 = load double, ptr %coerce4, align 8
  call void @_ZL14simde_vst1_u16PtDv4_t(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [4 x i16], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [4 x i16], ptr %b_, i64 0, i64 0
  %4 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %5 = load i32, ptr %line.addr, align 4, !tbaa !5
  %6 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call noundef i32 @_ZL24simde_assert_equal_vu16_mPKtS0_PKciS2_S2_(i64 noundef 4, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #18
  ret i32 %call
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal noundef double @_ZL27simde_uint16x4_from_private22simde_uint16x4_private(double %value.coerce) #9 {
entry:
  %retval = alloca <4 x i16>, align 8
  %value = alloca %union.simde_uint16x4_private, align 8
  %r = alloca <4 x i16>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_uint16x4_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <4 x i16>, ptr %r, align 8, !tbaa !18
  store <4 x i16> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #18
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal double @_ZL25simde_uint16x4_to_privateDv4_t(double noundef %value.coerce) #9 {
entry:
  %retval = alloca %union.simde_uint16x4_private, align 8
  %value = alloca <4 x i16>, align 8
  %value.addr = alloca <4 x i16>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <4 x i16>, ptr %value, align 8, !tbaa !18
  store <4 x i16> %value1, ptr %value.addr, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint16x4_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @_ZL14simde_vst1_u16PtDv4_t(ptr noundef %ptr, double noundef %val.coerce) #6 {
entry:
  %val = alloca <4 x i16>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <4 x i16>, align 8
  %val_ = alloca %union.simde_uint16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <4 x i16>, ptr %val, align 8, !tbaa !18
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <4 x i16> %val1, ptr %val.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #18
  %0 = load <4 x i16>, ptr %val.addr, align 8, !tbaa !18
  store <4 x i16> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  %call = call double @_ZL25simde_uint16x4_to_privateDv4_t(double noundef %1) #19
  %coerce.dive = getelementptr inbounds %union.simde_uint16x4_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL24simde_assert_equal_vu16_mPKtS0_PKciS2_S2_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %3
  %4 = load i16, ptr %arrayidx, align 2, !tbaa !40
  %conv = zext i16 %4 to i32
  %5 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i16, ptr %5, i64 %6
  %7 = load i16, ptr %arrayidx1, align 2, !tbaa !40
  %conv2 = zext i16 %7 to i32
  %cmp3 = icmp ne i32 %conv, %conv2
  %lnot = xor i1 %cmp3, true
  %lnot4 = xor i1 %lnot, true
  %conv5 = zext i1 %lnot4 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %12 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx6 = getelementptr inbounds i16, ptr %14, i64 %15
  %16 = load i16, ptr %arrayidx6, align 2, !tbaa !40
  %conv7 = zext i16 %16 to i32
  %17 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %18 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds i16, ptr %17, i64 %18
  %19 = load i16, ptr %arrayidx8, align 2, !tbaa !40
  %conv9 = zext i16 %19 to i32
  call void (ptr, ...) @_ZL24simde_test_debug_printf_PKcz(ptr noundef @.str.28, ptr noundef %8, i32 noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12, i64 noundef %13, i32 noundef %conv7, i32 noundef %conv9)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %20, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !45

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %21 = load i32, ptr %retval, align 4
  ret i32 %21

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef double @_ZL14simde_vld1_u32PKj(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <2 x i32>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint32x2_private, align 8
  %agg.tmp = alloca %union.simde_uint32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #18
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 4 %0, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %r_, i64 8, i1 false), !tbaa.struct !35
  %coerce.dive = getelementptr inbounds %union.simde_uint32x2_private, ptr %agg.tmp, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call noundef double @_ZL27simde_uint32x2_from_private22simde_uint32x2_private(double %1) #19
  store double %call, ptr %coerce, align 8
  %2 = load <2 x i32>, ptr %coerce, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr %agg.tmp) #18
  store <2 x i32> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #18
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef double @_ZL15simde_vzip2_u32Dv2_jS_(double noundef %a.coerce, double noundef %b.coerce) #6 {
entry:
  %retval = alloca <2 x i32>, align 8
  %a = alloca <2 x i32>, align 8
  %b = alloca <2 x i32>, align 8
  %a.addr = alloca <2 x i32>, align 8
  %b.addr = alloca <2 x i32>, align 8
  %r_ = alloca %union.simde_uint32x2_private, align 8
  %a_ = alloca %union.simde_uint32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  %b_ = alloca %union.simde_uint32x2_private, align 8
  %coerce3 = alloca <2 x i32>, align 8
  %coerce6 = alloca <1 x i64>, align 8
  %coerce7 = alloca <1 x i64>, align 8
  %coerce9 = alloca <1 x i64>, align 8
  %agg.tmp = alloca %union.simde_uint32x2_private, align 8
  %coerce12 = alloca <2 x i32>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <2 x i32>, ptr %a, align 8, !tbaa !18
  store double %b.coerce, ptr %b, align 8
  %b2 = load <2 x i32>, ptr %b, align 8, !tbaa !18
  store <2 x i32> %a1, ptr %a.addr, align 8, !tbaa !18
  store <2 x i32> %b2, ptr %b.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #18
  %0 = load <2 x i32>, ptr %a.addr, align 8, !tbaa !18
  store <2 x i32> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  %call = call double @_ZL25simde_uint32x2_to_privateDv2_j(double noundef %1) #19
  %coerce.dive = getelementptr inbounds %union.simde_uint32x2_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #18
  %2 = load <2 x i32>, ptr %b.addr, align 8, !tbaa !18
  store <2 x i32> %2, ptr %coerce3, align 8, !tbaa !18
  %3 = load double, ptr %coerce3, align 8
  %call4 = call double @_ZL25simde_uint32x2_to_privateDv2_j(double noundef %3) #19
  %coerce.dive5 = getelementptr inbounds %union.simde_uint32x2_private, ptr %b_, i32 0, i32 0
  store double %call4, ptr %coerce.dive5, align 8
  %4 = load <1 x i64>, ptr %a_, align 8, !tbaa !18
  %5 = load <1 x i64>, ptr %b_, align 8, !tbaa !18
  store <1 x i64> %4, ptr %coerce6, align 8, !tbaa !18
  %6 = load double, ptr %coerce6, align 8
  store <1 x i64> %5, ptr %coerce7, align 8, !tbaa !18
  %7 = load double, ptr %coerce7, align 8
  %call8 = call noundef double @_ZL17_mm_unpackhi_pi32Dv1_xS_(double noundef %6, double noundef %7)
  store double %call8, ptr %coerce9, align 8
  %8 = load <1 x i64>, ptr %coerce9, align 8, !tbaa !18
  store <1 x i64> %8, ptr %r_, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %r_, i64 8, i1 false), !tbaa.struct !35
  %coerce.dive10 = getelementptr inbounds %union.simde_uint32x2_private, ptr %agg.tmp, i32 0, i32 0
  %9 = load double, ptr %coerce.dive10, align 8
  %call11 = call noundef double @_ZL27simde_uint32x2_from_private22simde_uint32x2_private(double %9) #19
  store double %call11, ptr %coerce12, align 8
  %10 = load <2 x i32>, ptr %coerce12, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr %agg.tmp) #18
  store <2 x i32> %10, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #18
  %11 = load double, ptr %retval, align 8
  ret double %11
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL39simde_test_arm_neon_assert_equal_u32x2_Dv2_jS_PKciS1_S1_(double noundef %a.coerce, double noundef %b.coerce, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a = alloca <2 x i32>, align 8
  %b = alloca <2 x i32>, align 8
  %a.addr = alloca <2 x i32>, align 8
  %b.addr = alloca <2 x i32>, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [2 x i32], align 4
  %b_ = alloca [2 x i32], align 4
  %coerce = alloca <2 x i32>, align 8
  %coerce4 = alloca <2 x i32>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <2 x i32>, ptr %a, align 8, !tbaa !18
  store double %b.coerce, ptr %b, align 8
  %b2 = load <2 x i32>, ptr %b, align 8, !tbaa !18
  store <2 x i32> %a1, ptr %a.addr, align 8, !tbaa !18
  store <2 x i32> %b2, ptr %b.addr, align 8, !tbaa !18
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #18
  %arraydecay = getelementptr inbounds [2 x i32], ptr %a_, i64 0, i64 0
  %0 = load <2 x i32>, ptr %a.addr, align 8, !tbaa !18
  store <2 x i32> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  call void @_ZL14simde_vst1_u32PjDv2_j(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [2 x i32], ptr %b_, i64 0, i64 0
  %2 = load <2 x i32>, ptr %b.addr, align 8, !tbaa !18
  store <2 x i32> %2, ptr %coerce4, align 8, !tbaa !18
  %3 = load double, ptr %coerce4, align 8
  call void @_ZL14simde_vst1_u32PjDv2_j(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [2 x i32], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [2 x i32], ptr %b_, i64 0, i64 0
  %4 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %5 = load i32, ptr %line.addr, align 4, !tbaa !5
  %6 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call noundef i32 @_ZL24simde_assert_equal_vu32_mPKjS0_PKciS2_S2_(i64 noundef 2, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #18
  ret i32 %call
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal noundef double @_ZL27simde_uint32x2_from_private22simde_uint32x2_private(double %value.coerce) #9 {
entry:
  %retval = alloca <2 x i32>, align 8
  %value = alloca %union.simde_uint32x2_private, align 8
  %r = alloca <2 x i32>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_uint32x2_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <2 x i32>, ptr %r, align 8, !tbaa !18
  store <2 x i32> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #18
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal double @_ZL25simde_uint32x2_to_privateDv2_j(double noundef %value.coerce) #9 {
entry:
  %retval = alloca %union.simde_uint32x2_private, align 8
  %value = alloca <2 x i32>, align 8
  %value.addr = alloca <2 x i32>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <2 x i32>, ptr %value, align 8, !tbaa !18
  store <2 x i32> %value1, ptr %value.addr, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint32x2_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @_ZL14simde_vst1_u32PjDv2_j(ptr noundef %ptr, double noundef %val.coerce) #6 {
entry:
  %val = alloca <2 x i32>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <2 x i32>, align 8
  %val_ = alloca %union.simde_uint32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <2 x i32>, ptr %val, align 8, !tbaa !18
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <2 x i32> %val1, ptr %val.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #18
  %0 = load <2 x i32>, ptr %val.addr, align 8, !tbaa !18
  store <2 x i32> %0, ptr %coerce, align 8, !tbaa !18
  %1 = load double, ptr %coerce, align 8
  %call = call double @_ZL25simde_uint32x2_to_privateDv2_j(double noundef %1) #19
  %coerce.dive = getelementptr inbounds %union.simde_uint32x2_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL24simde_assert_equal_vu32_mPKjS0_PKciS2_S2_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %3
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %5 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i32, ptr %5, i64 %6
  %7 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %4, %7
  %lnot = xor i1 %cmp2, true
  %lnot3 = xor i1 %lnot, true
  %conv = zext i1 %lnot3 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %12 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds i32, ptr %14, i64 %15
  %16 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %17 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %18 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds i32, ptr %17, i64 %18
  %19 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  call void (ptr, ...) @_ZL24simde_test_debug_printf_PKcz(ptr noundef @.str.28, ptr noundef %8, i32 noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12, i64 noundef %13, i32 noundef %16, i32 noundef %19)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %20, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !46

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %21 = load i32, ptr %retval, align 4
  ret i32 %21

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef <4 x float> @_ZL15simde_vld1q_f32PKf(ptr noundef %ptr) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_float32x4_private, align 16
  %agg.tmp = alloca %union.simde_float32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #18
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 4 %0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %agg.tmp, ptr align 16 %r_, i64 16, i1 false), !tbaa.struct !47
  %coerce.dive = getelementptr inbounds %union.simde_float32x4_private, ptr %agg.tmp, i32 0, i32 0
  %1 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call noundef <4 x float> @_ZL28simde_float32x4_from_private23simde_float32x4_private(<2 x double> %1) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #18
  ret <4 x float> %call
}

; Function Attrs: alwaysinline mustprogress uwtable
define internal noundef <4 x float> @_ZL16simde_vzip2q_f32Dv4_fS_(<4 x float> noundef %a, <4 x float> noundef %b) #15 {
entry:
  %a.addr = alloca <4 x float>, align 16
  %b.addr = alloca <4 x float>, align 16
  %r_ = alloca %union.simde_float32x4_private, align 16
  %a_ = alloca %union.simde_float32x4_private, align 16
  %b_ = alloca %union.simde_float32x4_private, align 16
  %agg.tmp = alloca %union.simde_float32x4_private, align 16
  store <4 x float> %a, ptr %a.addr, align 16, !tbaa !18
  store <4 x float> %b, ptr %b.addr, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #18
  %0 = load <4 x float>, ptr %a.addr, align 16, !tbaa !18
  %call = call <2 x double> @_ZL26simde_float32x4_to_privateDv4_f(<4 x float> noundef %0) #19
  %coerce.dive = getelementptr inbounds %union.simde_float32x4_private, ptr %a_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #18
  %1 = load <4 x float>, ptr %b.addr, align 16, !tbaa !18
  %call1 = call <2 x double> @_ZL26simde_float32x4_to_privateDv4_f(<4 x float> noundef %1) #19
  %coerce.dive2 = getelementptr inbounds %union.simde_float32x4_private, ptr %b_, i32 0, i32 0
  store <2 x double> %call1, ptr %coerce.dive2, align 16
  %2 = load <4 x float>, ptr %a_, align 16, !tbaa !18
  %3 = load <4 x float>, ptr %b_, align 16, !tbaa !18
  %call3 = call noundef <4 x float> @_ZL15_mm_unpackhi_psDv4_fS_(<4 x float> noundef %2, <4 x float> noundef %3)
  store <4 x float> %call3, ptr %r_, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %agg.tmp, ptr align 16 %r_, i64 16, i1 false), !tbaa.struct !47
  %coerce.dive4 = getelementptr inbounds %union.simde_float32x4_private, ptr %agg.tmp, i32 0, i32 0
  %4 = load <2 x double>, ptr %coerce.dive4, align 16
  %call5 = call noundef <4 x float> @_ZL28simde_float32x4_from_private23simde_float32x4_private(<2 x double> %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #18
  ret <4 x float> %call5
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL39simde_test_arm_neon_assert_equal_f32x4_Dv4_fS_fPKciS1_S1_(<4 x float> noundef %a, <4 x float> noundef %b, float noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #4 {
entry:
  %a.addr = alloca <4 x float>, align 16
  %b.addr = alloca <4 x float>, align 16
  %slop.addr = alloca float, align 4
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [4 x float], align 16
  %b_ = alloca [4 x float], align 16
  store <4 x float> %a, ptr %a.addr, align 16, !tbaa !18
  store <4 x float> %b, ptr %b.addr, align 16, !tbaa !18
  store float %slop, ptr %slop.addr, align 4, !tbaa !36
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #18
  %arraydecay = getelementptr inbounds [4 x float], ptr %a_, i64 0, i64 0
  %0 = load <4 x float>, ptr %a.addr, align 16, !tbaa !18
  call void @_ZL15simde_vst1q_f32PfDv4_f(ptr noundef %arraydecay, <4 x float> noundef %0)
  %arraydecay1 = getelementptr inbounds [4 x float], ptr %b_, i64 0, i64 0
  %1 = load <4 x float>, ptr %b.addr, align 16, !tbaa !18
  call void @_ZL15simde_vst1q_f32PfDv4_f(ptr noundef %arraydecay1, <4 x float> noundef %1)
  %arraydecay2 = getelementptr inbounds [4 x float], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [4 x float], ptr %b_, i64 0, i64 0
  %2 = load float, ptr %slop.addr, align 4, !tbaa !36
  %3 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %4 = load i32, ptr %line.addr, align 4, !tbaa !5
  %5 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %6 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call noundef i32 @_ZL24simde_assert_equal_vf32_mPKfS0_fPKciS2_S2_(i64 noundef 4, ptr noundef %arraydecay2, ptr noundef %arraydecay3, float noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #18
  ret i32 %call
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal noundef <4 x float> @_ZL28simde_float32x4_from_private23simde_float32x4_private(<2 x double> %value.coerce) #16 {
entry:
  %value = alloca %union.simde_float32x4_private, align 16
  %r = alloca <4 x float>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_float32x4_private, ptr %value, i32 0, i32 0
  store <2 x double> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <4 x float>, ptr %r, align 16, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #18
  ret <4 x float> %0
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal <2 x double> @_ZL26simde_float32x4_to_privateDv4_f(<4 x float> noundef %value) #16 {
entry:
  %retval = alloca %union.simde_float32x4_private, align 16
  %value.addr = alloca <4 x float>, align 16
  store <4 x float> %value, ptr %value.addr, align 16, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_float32x4_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x double>, ptr %coerce.dive, align 16
  ret <2 x double> %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef <4 x float> @_ZL15_mm_unpackhi_psDv4_fS_(<4 x float> noundef %__a, <4 x float> noundef %__b) #14 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !18
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !18
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !18
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !18
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  ret <4 x float> %shuffle
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @_ZL15simde_vst1q_f32PfDv4_f(ptr noundef %ptr, <4 x float> noundef %val) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <4 x float>, align 16
  %val_ = alloca %union.simde_float32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <4 x float> %val, ptr %val.addr, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #18
  %0 = load <4 x float>, ptr %val.addr, align 16, !tbaa !18
  %call = call <2 x double> @_ZL26simde_float32x4_to_privateDv4_f(<4 x float> noundef %0) #19
  %coerce.dive = getelementptr inbounds %union.simde_float32x4_private, ptr %val_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #18
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef <16 x i8> @_ZL14simde_vld1q_s8PKa(ptr noundef %ptr) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int8x16_private, align 16
  %agg.tmp = alloca %union.simde_int8x16_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #18
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 1 %0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %agg.tmp, ptr align 16 %r_, i64 16, i1 false), !tbaa.struct !47
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %agg.tmp, i32 0, i32 0
  %1 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call noundef <16 x i8> @_ZL26simde_int8x16_from_private21simde_int8x16_private(<2 x double> %1) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #18
  ret <16 x i8> %call
}

; Function Attrs: alwaysinline mustprogress uwtable
define internal noundef <16 x i8> @_ZL15simde_vzip2q_s8Dv16_aS_(<16 x i8> noundef %a, <16 x i8> noundef %b) #15 {
entry:
  %a.addr = alloca <16 x i8>, align 16
  %b.addr = alloca <16 x i8>, align 16
  %r_ = alloca %union.simde_int8x16_private, align 16
  %a_ = alloca %union.simde_int8x16_private, align 16
  %b_ = alloca %union.simde_int8x16_private, align 16
  %agg.tmp = alloca %union.simde_int8x16_private, align 16
  store <16 x i8> %a, ptr %a.addr, align 16, !tbaa !18
  store <16 x i8> %b, ptr %b.addr, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #18
  %0 = load <16 x i8>, ptr %a.addr, align 16, !tbaa !18
  %call = call <2 x double> @_ZL24simde_int8x16_to_privateDv16_a(<16 x i8> noundef %0) #19
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %a_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #18
  %1 = load <16 x i8>, ptr %b.addr, align 16, !tbaa !18
  %call1 = call <2 x double> @_ZL24simde_int8x16_to_privateDv16_a(<16 x i8> noundef %1) #19
  %coerce.dive2 = getelementptr inbounds %union.simde_int8x16_private, ptr %b_, i32 0, i32 0
  store <2 x double> %call1, ptr %coerce.dive2, align 16
  %2 = load <2 x i64>, ptr %a_, align 16, !tbaa !18
  %3 = load <2 x i64>, ptr %b_, align 16, !tbaa !18
  %call3 = call noundef <2 x i64> @_ZL17_mm_unpackhi_epi8Dv2_xS_(<2 x i64> noundef %2, <2 x i64> noundef %3)
  store <2 x i64> %call3, ptr %r_, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %agg.tmp, ptr align 16 %r_, i64 16, i1 false), !tbaa.struct !47
  %coerce.dive4 = getelementptr inbounds %union.simde_int8x16_private, ptr %agg.tmp, i32 0, i32 0
  %4 = load <2 x double>, ptr %coerce.dive4, align 16
  %call5 = call noundef <16 x i8> @_ZL26simde_int8x16_from_private21simde_int8x16_private(<2 x double> %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #18
  ret <16 x i8> %call5
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL39simde_test_arm_neon_assert_equal_i8x16_Dv16_aS_PKciS1_S1_(<16 x i8> noundef %a, <16 x i8> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #4 {
entry:
  %a.addr = alloca <16 x i8>, align 16
  %b.addr = alloca <16 x i8>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [16 x i8], align 16
  %b_ = alloca [16 x i8], align 16
  store <16 x i8> %a, ptr %a.addr, align 16, !tbaa !18
  store <16 x i8> %b, ptr %b.addr, align 16, !tbaa !18
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #18
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a_, i64 0, i64 0
  %0 = load <16 x i8>, ptr %a.addr, align 16, !tbaa !18
  call void @_ZL14simde_vst1q_s8PaDv16_a(ptr noundef %arraydecay, <16 x i8> noundef %0)
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %b_, i64 0, i64 0
  %1 = load <16 x i8>, ptr %b.addr, align 16, !tbaa !18
  call void @_ZL14simde_vst1q_s8PaDv16_a(ptr noundef %arraydecay1, <16 x i8> noundef %1)
  %arraydecay2 = getelementptr inbounds [16 x i8], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [16 x i8], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call noundef i32 @_ZL23simde_assert_equal_vi8_mPKaS0_PKciS2_S2_(i64 noundef 16, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #18
  ret i32 %call
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal noundef <16 x i8> @_ZL26simde_int8x16_from_private21simde_int8x16_private(<2 x double> %value.coerce) #16 {
entry:
  %value = alloca %union.simde_int8x16_private, align 16
  %r = alloca <16 x i8>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %value, i32 0, i32 0
  store <2 x double> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <16 x i8>, ptr %r, align 16, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #18
  ret <16 x i8> %0
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal <2 x double> @_ZL24simde_int8x16_to_privateDv16_a(<16 x i8> noundef %value) #16 {
entry:
  %retval = alloca %union.simde_int8x16_private, align 16
  %value.addr = alloca <16 x i8>, align 16
  store <16 x i8> %value, ptr %value.addr, align 16, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x double>, ptr %coerce.dive, align 16
  ret <2 x double> %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef <2 x i64> @_ZL17_mm_unpackhi_epi8Dv2_xS_(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #14 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !18
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !18
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !18
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !18
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> %3, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %4 = bitcast <16 x i8> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @_ZL14simde_vst1q_s8PaDv16_a(ptr noundef %ptr, <16 x i8> noundef %val) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <16 x i8>, align 16
  %val_ = alloca %union.simde_int8x16_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <16 x i8> %val, ptr %val.addr, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #18
  %0 = load <16 x i8>, ptr %val.addr, align 16, !tbaa !18
  %call = call <2 x double> @_ZL24simde_int8x16_to_privateDv16_a(<16 x i8> noundef %0) #19
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %val_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #18
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef <8 x i16> @_ZL15simde_vld1q_s16PKs(ptr noundef %ptr) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int16x8_private, align 16
  %agg.tmp = alloca %union.simde_int16x8_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #18
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 2 %0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %agg.tmp, ptr align 16 %r_, i64 16, i1 false), !tbaa.struct !47
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %agg.tmp, i32 0, i32 0
  %1 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call noundef <8 x i16> @_ZL26simde_int16x8_from_private21simde_int16x8_private(<2 x double> %1) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #18
  ret <8 x i16> %call
}

; Function Attrs: alwaysinline mustprogress uwtable
define internal noundef <8 x i16> @_ZL16simde_vzip2q_s16Dv8_sS_(<8 x i16> noundef %a, <8 x i16> noundef %b) #15 {
entry:
  %a.addr = alloca <8 x i16>, align 16
  %b.addr = alloca <8 x i16>, align 16
  %r_ = alloca %union.simde_int16x8_private, align 16
  %a_ = alloca %union.simde_int16x8_private, align 16
  %b_ = alloca %union.simde_int16x8_private, align 16
  %agg.tmp = alloca %union.simde_int16x8_private, align 16
  store <8 x i16> %a, ptr %a.addr, align 16, !tbaa !18
  store <8 x i16> %b, ptr %b.addr, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #18
  %0 = load <8 x i16>, ptr %a.addr, align 16, !tbaa !18
  %call = call <2 x double> @_ZL24simde_int16x8_to_privateDv8_s(<8 x i16> noundef %0) #19
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %a_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #18
  %1 = load <8 x i16>, ptr %b.addr, align 16, !tbaa !18
  %call1 = call <2 x double> @_ZL24simde_int16x8_to_privateDv8_s(<8 x i16> noundef %1) #19
  %coerce.dive2 = getelementptr inbounds %union.simde_int16x8_private, ptr %b_, i32 0, i32 0
  store <2 x double> %call1, ptr %coerce.dive2, align 16
  %2 = load <2 x i64>, ptr %a_, align 16, !tbaa !18
  %3 = load <2 x i64>, ptr %b_, align 16, !tbaa !18
  %call3 = call noundef <2 x i64> @_ZL18_mm_unpackhi_epi16Dv2_xS_(<2 x i64> noundef %2, <2 x i64> noundef %3)
  store <2 x i64> %call3, ptr %r_, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %agg.tmp, ptr align 16 %r_, i64 16, i1 false), !tbaa.struct !47
  %coerce.dive4 = getelementptr inbounds %union.simde_int16x8_private, ptr %agg.tmp, i32 0, i32 0
  %4 = load <2 x double>, ptr %coerce.dive4, align 16
  %call5 = call noundef <8 x i16> @_ZL26simde_int16x8_from_private21simde_int16x8_private(<2 x double> %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #18
  ret <8 x i16> %call5
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL39simde_test_arm_neon_assert_equal_i16x8_Dv8_sS_PKciS1_S1_(<8 x i16> noundef %a, <8 x i16> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #4 {
entry:
  %a.addr = alloca <8 x i16>, align 16
  %b.addr = alloca <8 x i16>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [8 x i16], align 16
  %b_ = alloca [8 x i16], align 16
  store <8 x i16> %a, ptr %a.addr, align 16, !tbaa !18
  store <8 x i16> %b, ptr %b.addr, align 16, !tbaa !18
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #18
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a_, i64 0, i64 0
  %0 = load <8 x i16>, ptr %a.addr, align 16, !tbaa !18
  call void @_ZL15simde_vst1q_s16PsDv8_s(ptr noundef %arraydecay, <8 x i16> noundef %0)
  %arraydecay1 = getelementptr inbounds [8 x i16], ptr %b_, i64 0, i64 0
  %1 = load <8 x i16>, ptr %b.addr, align 16, !tbaa !18
  call void @_ZL15simde_vst1q_s16PsDv8_s(ptr noundef %arraydecay1, <8 x i16> noundef %1)
  %arraydecay2 = getelementptr inbounds [8 x i16], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [8 x i16], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call noundef i32 @_ZL24simde_assert_equal_vi16_mPKsS0_PKciS2_S2_(i64 noundef 8, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #18
  ret i32 %call
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal noundef <8 x i16> @_ZL26simde_int16x8_from_private21simde_int16x8_private(<2 x double> %value.coerce) #16 {
entry:
  %value = alloca %union.simde_int16x8_private, align 16
  %r = alloca <8 x i16>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %value, i32 0, i32 0
  store <2 x double> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <8 x i16>, ptr %r, align 16, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #18
  ret <8 x i16> %0
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal <2 x double> @_ZL24simde_int16x8_to_privateDv8_s(<8 x i16> noundef %value) #16 {
entry:
  %retval = alloca %union.simde_int16x8_private, align 16
  %value.addr = alloca <8 x i16>, align 16
  store <8 x i16> %value, ptr %value.addr, align 16, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x double>, ptr %coerce.dive, align 16
  ret <2 x double> %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef <2 x i64> @_ZL18_mm_unpackhi_epi16Dv2_xS_(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #14 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !18
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !18
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !18
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !18
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %shuffle = shufflevector <8 x i16> %1, <8 x i16> %3, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %4 = bitcast <8 x i16> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @_ZL15simde_vst1q_s16PsDv8_s(ptr noundef %ptr, <8 x i16> noundef %val) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <8 x i16>, align 16
  %val_ = alloca %union.simde_int16x8_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <8 x i16> %val, ptr %val.addr, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #18
  %0 = load <8 x i16>, ptr %val.addr, align 16, !tbaa !18
  %call = call <2 x double> @_ZL24simde_int16x8_to_privateDv8_s(<8 x i16> noundef %0) #19
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %val_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #18
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef <4 x i32> @_ZL15simde_vld1q_s32PKi(ptr noundef %ptr) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int32x4_private, align 16
  %agg.tmp = alloca %union.simde_int32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #18
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 4 %0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %agg.tmp, ptr align 16 %r_, i64 16, i1 false), !tbaa.struct !47
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %agg.tmp, i32 0, i32 0
  %1 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call noundef <4 x i32> @_ZL26simde_int32x4_from_private21simde_int32x4_private(<2 x double> %1) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #18
  ret <4 x i32> %call
}

; Function Attrs: alwaysinline mustprogress uwtable
define internal noundef <4 x i32> @_ZL16simde_vzip2q_s32Dv4_iS_(<4 x i32> noundef %a, <4 x i32> noundef %b) #15 {
entry:
  %a.addr = alloca <4 x i32>, align 16
  %b.addr = alloca <4 x i32>, align 16
  %r_ = alloca %union.simde_int32x4_private, align 16
  %a_ = alloca %union.simde_int32x4_private, align 16
  %b_ = alloca %union.simde_int32x4_private, align 16
  %agg.tmp = alloca %union.simde_int32x4_private, align 16
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !18
  store <4 x i32> %b, ptr %b.addr, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #18
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !18
  %call = call <2 x double> @_ZL24simde_int32x4_to_privateDv4_i(<4 x i32> noundef %0) #19
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %a_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #18
  %1 = load <4 x i32>, ptr %b.addr, align 16, !tbaa !18
  %call1 = call <2 x double> @_ZL24simde_int32x4_to_privateDv4_i(<4 x i32> noundef %1) #19
  %coerce.dive2 = getelementptr inbounds %union.simde_int32x4_private, ptr %b_, i32 0, i32 0
  store <2 x double> %call1, ptr %coerce.dive2, align 16
  %2 = load <2 x i64>, ptr %a_, align 16, !tbaa !18
  %3 = load <2 x i64>, ptr %b_, align 16, !tbaa !18
  %call3 = call noundef <2 x i64> @_ZL18_mm_unpackhi_epi32Dv2_xS_(<2 x i64> noundef %2, <2 x i64> noundef %3)
  store <2 x i64> %call3, ptr %r_, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %agg.tmp, ptr align 16 %r_, i64 16, i1 false), !tbaa.struct !47
  %coerce.dive4 = getelementptr inbounds %union.simde_int32x4_private, ptr %agg.tmp, i32 0, i32 0
  %4 = load <2 x double>, ptr %coerce.dive4, align 16
  %call5 = call noundef <4 x i32> @_ZL26simde_int32x4_from_private21simde_int32x4_private(<2 x double> %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #18
  ret <4 x i32> %call5
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL39simde_test_arm_neon_assert_equal_i32x4_Dv4_iS_PKciS1_S1_(<4 x i32> noundef %a, <4 x i32> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #4 {
entry:
  %a.addr = alloca <4 x i32>, align 16
  %b.addr = alloca <4 x i32>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [4 x i32], align 16
  %b_ = alloca [4 x i32], align 16
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !18
  store <4 x i32> %b, ptr %b.addr, align 16, !tbaa !18
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #18
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a_, i64 0, i64 0
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !18
  call void @_ZL15simde_vst1q_s32PiDv4_i(ptr noundef %arraydecay, <4 x i32> noundef %0)
  %arraydecay1 = getelementptr inbounds [4 x i32], ptr %b_, i64 0, i64 0
  %1 = load <4 x i32>, ptr %b.addr, align 16, !tbaa !18
  call void @_ZL15simde_vst1q_s32PiDv4_i(ptr noundef %arraydecay1, <4 x i32> noundef %1)
  %arraydecay2 = getelementptr inbounds [4 x i32], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [4 x i32], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call noundef i32 @_ZL24simde_assert_equal_vi32_mPKiS0_PKciS2_S2_(i64 noundef 4, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #18
  ret i32 %call
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal noundef <4 x i32> @_ZL26simde_int32x4_from_private21simde_int32x4_private(<2 x double> %value.coerce) #16 {
entry:
  %value = alloca %union.simde_int32x4_private, align 16
  %r = alloca <4 x i32>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %value, i32 0, i32 0
  store <2 x double> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <4 x i32>, ptr %r, align 16, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #18
  ret <4 x i32> %0
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal <2 x double> @_ZL24simde_int32x4_to_privateDv4_i(<4 x i32> noundef %value) #16 {
entry:
  %retval = alloca %union.simde_int32x4_private, align 16
  %value.addr = alloca <4 x i32>, align 16
  store <4 x i32> %value, ptr %value.addr, align 16, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x double>, ptr %coerce.dive, align 16
  ret <2 x double> %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef <2 x i64> @_ZL18_mm_unpackhi_epi32Dv2_xS_(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #14 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !18
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !18
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !18
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !18
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %shuffle = shufflevector <4 x i32> %1, <4 x i32> %3, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %4 = bitcast <4 x i32> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @_ZL15simde_vst1q_s32PiDv4_i(ptr noundef %ptr, <4 x i32> noundef %val) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <4 x i32>, align 16
  %val_ = alloca %union.simde_int32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <4 x i32> %val, ptr %val.addr, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #18
  %0 = load <4 x i32>, ptr %val.addr, align 16, !tbaa !18
  %call = call <2 x double> @_ZL24simde_int32x4_to_privateDv4_i(<4 x i32> noundef %0) #19
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %val_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #18
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef <2 x i64> @_ZL15simde_vld1q_s64PKl(ptr noundef %ptr) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int64x2_private, align 16
  %agg.tmp = alloca %union.simde_int64x2_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #18
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 8 %0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %agg.tmp, ptr align 16 %r_, i64 16, i1 false), !tbaa.struct !47
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %agg.tmp, i32 0, i32 0
  %1 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call noundef <2 x i64> @_ZL26simde_int64x2_from_private21simde_int64x2_private(<2 x double> %1) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #18
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline mustprogress uwtable
define internal noundef <2 x i64> @_ZL16simde_vzip2q_s64Dv2_lS_(<2 x i64> noundef %a, <2 x i64> noundef %b) #15 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %r_ = alloca %union.simde_int64x2_private, align 16
  %a_ = alloca %union.simde_int64x2_private, align 16
  %b_ = alloca %union.simde_int64x2_private, align 16
  %agg.tmp = alloca %union.simde_int64x2_private, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !18
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #18
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !18
  %call = call <2 x double> @_ZL24simde_int64x2_to_privateDv2_l(<2 x i64> noundef %0) #19
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %a_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #18
  %1 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !18
  %call1 = call <2 x double> @_ZL24simde_int64x2_to_privateDv2_l(<2 x i64> noundef %1) #19
  %coerce.dive2 = getelementptr inbounds %union.simde_int64x2_private, ptr %b_, i32 0, i32 0
  store <2 x double> %call1, ptr %coerce.dive2, align 16
  %2 = load <2 x i64>, ptr %a_, align 16, !tbaa !18
  %3 = load <2 x i64>, ptr %b_, align 16, !tbaa !18
  %call3 = call noundef <2 x i64> @_ZL18_mm_unpackhi_epi64Dv2_xS_(<2 x i64> noundef %2, <2 x i64> noundef %3)
  store <2 x i64> %call3, ptr %r_, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %agg.tmp, ptr align 16 %r_, i64 16, i1 false), !tbaa.struct !47
  %coerce.dive4 = getelementptr inbounds %union.simde_int64x2_private, ptr %agg.tmp, i32 0, i32 0
  %4 = load <2 x double>, ptr %coerce.dive4, align 16
  %call5 = call noundef <2 x i64> @_ZL26simde_int64x2_from_private21simde_int64x2_private(<2 x double> %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #18
  ret <2 x i64> %call5
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL39simde_test_arm_neon_assert_equal_i64x2_Dv2_lS_PKciS1_S1_(<2 x i64> noundef %a, <2 x i64> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #4 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [2 x i64], align 16
  %b_ = alloca [2 x i64], align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !18
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !18
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #18
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a_, i64 0, i64 0
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !18
  call void @_ZL15simde_vst1q_s64PlDv2_l(ptr noundef %arraydecay, <2 x i64> noundef %0)
  %arraydecay1 = getelementptr inbounds [2 x i64], ptr %b_, i64 0, i64 0
  %1 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !18
  call void @_ZL15simde_vst1q_s64PlDv2_l(ptr noundef %arraydecay1, <2 x i64> noundef %1)
  %arraydecay2 = getelementptr inbounds [2 x i64], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [2 x i64], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call noundef i32 @_ZL24simde_assert_equal_vi64_mPKlS0_PKciS2_S2_(i64 noundef 2, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #18
  ret i32 %call
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal noundef <2 x i64> @_ZL26simde_int64x2_from_private21simde_int64x2_private(<2 x double> %value.coerce) #16 {
entry:
  %value = alloca %union.simde_int64x2_private, align 16
  %r = alloca <2 x i64>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %value, i32 0, i32 0
  store <2 x double> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <2 x i64>, ptr %r, align 16, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #18
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal <2 x double> @_ZL24simde_int64x2_to_privateDv2_l(<2 x i64> noundef %value) #16 {
entry:
  %retval = alloca %union.simde_int64x2_private, align 16
  %value.addr = alloca <2 x i64>, align 16
  store <2 x i64> %value, ptr %value.addr, align 16, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x double>, ptr %coerce.dive, align 16
  ret <2 x double> %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef <2 x i64> @_ZL18_mm_unpackhi_epi64Dv2_xS_(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #14 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !18
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !18
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !18
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !18
  %shuffle = shufflevector <2 x i64> %0, <2 x i64> %1, <2 x i32> <i32 1, i32 3>
  ret <2 x i64> %shuffle
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @_ZL15simde_vst1q_s64PlDv2_l(ptr noundef %ptr, <2 x i64> noundef %val) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <2 x i64>, align 16
  %val_ = alloca %union.simde_int64x2_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <2 x i64> %val, ptr %val.addr, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #18
  %0 = load <2 x i64>, ptr %val.addr, align 16, !tbaa !18
  %call = call <2 x double> @_ZL24simde_int64x2_to_privateDv2_l(<2 x i64> noundef %0) #19
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %val_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL24simde_assert_equal_vi64_mPKlS0_PKciS2_S2_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %3
  %4 = load i64, ptr %arrayidx, align 8, !tbaa !11
  %5 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i64, ptr %5, i64 %6
  %7 = load i64, ptr %arrayidx1, align 8, !tbaa !11
  %cmp2 = icmp ne i64 %4, %7
  %lnot = xor i1 %cmp2, true
  %lnot3 = xor i1 %lnot, true
  %conv = zext i1 %lnot3 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %12 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds i64, ptr %14, i64 %15
  %16 = load i64, ptr %arrayidx4, align 8, !tbaa !11
  %17 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %18 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds i64, ptr %17, i64 %18
  %19 = load i64, ptr %arrayidx5, align 8, !tbaa !11
  call void (ptr, ...) @_ZL24simde_test_debug_printf_PKcz(ptr noundef @.str.36, ptr noundef %8, i32 noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12, i64 noundef %13, i64 noundef %16, i64 noundef %19)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %20, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !48

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %21 = load i32, ptr %retval, align 4
  ret i32 %21

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef <16 x i8> @_ZL14simde_vld1q_u8PKh(ptr noundef %ptr) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint8x16_private, align 16
  %agg.tmp = alloca %union.simde_uint8x16_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #18
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 1 %0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %agg.tmp, ptr align 16 %r_, i64 16, i1 false), !tbaa.struct !47
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %agg.tmp, i32 0, i32 0
  %1 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call noundef <16 x i8> @_ZL27simde_uint8x16_from_private22simde_uint8x16_private(<2 x double> %1) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #18
  ret <16 x i8> %call
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef <16 x i8> @_ZL15simde_vzip2q_u8Dv16_hS_(<16 x i8> noundef %a, <16 x i8> noundef %b) #14 {
entry:
  %a.addr = alloca <16 x i8>, align 16
  %b.addr = alloca <16 x i8>, align 16
  %r_ = alloca %union.simde_uint8x16_private, align 16
  %a_ = alloca %union.simde_uint8x16_private, align 16
  %b_ = alloca %union.simde_uint8x16_private, align 16
  %agg.tmp = alloca %union.simde_uint8x16_private, align 16
  store <16 x i8> %a, ptr %a.addr, align 16, !tbaa !18
  store <16 x i8> %b, ptr %b.addr, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #18
  %0 = load <16 x i8>, ptr %a.addr, align 16, !tbaa !18
  %call = call <2 x double> @_ZL25simde_uint8x16_to_privateDv16_h(<16 x i8> noundef %0) #19
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %a_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #18
  %1 = load <16 x i8>, ptr %b.addr, align 16, !tbaa !18
  %call1 = call <2 x double> @_ZL25simde_uint8x16_to_privateDv16_h(<16 x i8> noundef %1) #19
  %coerce.dive2 = getelementptr inbounds %union.simde_uint8x16_private, ptr %b_, i32 0, i32 0
  store <2 x double> %call1, ptr %coerce.dive2, align 16
  %2 = load <2 x i64>, ptr %a_, align 16, !tbaa !18
  %3 = load <2 x i64>, ptr %b_, align 16, !tbaa !18
  %call3 = call noundef <2 x i64> @_ZL17_mm_unpackhi_epi8Dv2_xS_(<2 x i64> noundef %2, <2 x i64> noundef %3)
  store <2 x i64> %call3, ptr %r_, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %agg.tmp, ptr align 16 %r_, i64 16, i1 false), !tbaa.struct !47
  %coerce.dive4 = getelementptr inbounds %union.simde_uint8x16_private, ptr %agg.tmp, i32 0, i32 0
  %4 = load <2 x double>, ptr %coerce.dive4, align 16
  %call5 = call noundef <16 x i8> @_ZL27simde_uint8x16_from_private22simde_uint8x16_private(<2 x double> %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #18
  ret <16 x i8> %call5
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL39simde_test_arm_neon_assert_equal_u8x16_Dv16_hS_PKciS1_S1_(<16 x i8> noundef %a, <16 x i8> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #4 {
entry:
  %a.addr = alloca <16 x i8>, align 16
  %b.addr = alloca <16 x i8>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [16 x i8], align 16
  %b_ = alloca [16 x i8], align 16
  store <16 x i8> %a, ptr %a.addr, align 16, !tbaa !18
  store <16 x i8> %b, ptr %b.addr, align 16, !tbaa !18
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #18
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a_, i64 0, i64 0
  %0 = load <16 x i8>, ptr %a.addr, align 16, !tbaa !18
  call void @_ZL14simde_vst1q_u8PhDv16_h(ptr noundef %arraydecay, <16 x i8> noundef %0)
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %b_, i64 0, i64 0
  %1 = load <16 x i8>, ptr %b.addr, align 16, !tbaa !18
  call void @_ZL14simde_vst1q_u8PhDv16_h(ptr noundef %arraydecay1, <16 x i8> noundef %1)
  %arraydecay2 = getelementptr inbounds [16 x i8], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [16 x i8], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call noundef i32 @_ZL23simde_assert_equal_vu8_mPKhS0_PKciS2_S2_(i64 noundef 16, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #18
  ret i32 %call
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal noundef <16 x i8> @_ZL27simde_uint8x16_from_private22simde_uint8x16_private(<2 x double> %value.coerce) #16 {
entry:
  %value = alloca %union.simde_uint8x16_private, align 16
  %r = alloca <16 x i8>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %value, i32 0, i32 0
  store <2 x double> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <16 x i8>, ptr %r, align 16, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #18
  ret <16 x i8> %0
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal <2 x double> @_ZL25simde_uint8x16_to_privateDv16_h(<16 x i8> noundef %value) #16 {
entry:
  %retval = alloca %union.simde_uint8x16_private, align 16
  %value.addr = alloca <16 x i8>, align 16
  store <16 x i8> %value, ptr %value.addr, align 16, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x double>, ptr %coerce.dive, align 16
  ret <2 x double> %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @_ZL14simde_vst1q_u8PhDv16_h(ptr noundef %ptr, <16 x i8> noundef %val) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <16 x i8>, align 16
  %val_ = alloca %union.simde_uint8x16_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <16 x i8> %val, ptr %val.addr, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #18
  %0 = load <16 x i8>, ptr %val.addr, align 16, !tbaa !18
  %call = call <2 x double> @_ZL25simde_uint8x16_to_privateDv16_h(<16 x i8> noundef %0) #19
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %val_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #18
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef <8 x i16> @_ZL15simde_vld1q_u16PKt(ptr noundef %ptr) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint16x8_private, align 16
  %agg.tmp = alloca %union.simde_uint16x8_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #18
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 2 %0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %agg.tmp, ptr align 16 %r_, i64 16, i1 false), !tbaa.struct !47
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %agg.tmp, i32 0, i32 0
  %1 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call noundef <8 x i16> @_ZL27simde_uint16x8_from_private22simde_uint16x8_private(<2 x double> %1) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #18
  ret <8 x i16> %call
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef <8 x i16> @_ZL16simde_vzip2q_u16Dv8_tS_(<8 x i16> noundef %a, <8 x i16> noundef %b) #14 {
entry:
  %a.addr = alloca <8 x i16>, align 16
  %b.addr = alloca <8 x i16>, align 16
  %r_ = alloca %union.simde_uint16x8_private, align 16
  %a_ = alloca %union.simde_uint16x8_private, align 16
  %b_ = alloca %union.simde_uint16x8_private, align 16
  %agg.tmp = alloca %union.simde_uint16x8_private, align 16
  store <8 x i16> %a, ptr %a.addr, align 16, !tbaa !18
  store <8 x i16> %b, ptr %b.addr, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #18
  %0 = load <8 x i16>, ptr %a.addr, align 16, !tbaa !18
  %call = call <2 x double> @_ZL25simde_uint16x8_to_privateDv8_t(<8 x i16> noundef %0) #19
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %a_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #18
  %1 = load <8 x i16>, ptr %b.addr, align 16, !tbaa !18
  %call1 = call <2 x double> @_ZL25simde_uint16x8_to_privateDv8_t(<8 x i16> noundef %1) #19
  %coerce.dive2 = getelementptr inbounds %union.simde_uint16x8_private, ptr %b_, i32 0, i32 0
  store <2 x double> %call1, ptr %coerce.dive2, align 16
  %2 = load <2 x i64>, ptr %a_, align 16, !tbaa !18
  %3 = load <2 x i64>, ptr %b_, align 16, !tbaa !18
  %call3 = call noundef <2 x i64> @_ZL18_mm_unpackhi_epi16Dv2_xS_(<2 x i64> noundef %2, <2 x i64> noundef %3)
  store <2 x i64> %call3, ptr %r_, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %agg.tmp, ptr align 16 %r_, i64 16, i1 false), !tbaa.struct !47
  %coerce.dive4 = getelementptr inbounds %union.simde_uint16x8_private, ptr %agg.tmp, i32 0, i32 0
  %4 = load <2 x double>, ptr %coerce.dive4, align 16
  %call5 = call noundef <8 x i16> @_ZL27simde_uint16x8_from_private22simde_uint16x8_private(<2 x double> %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #18
  ret <8 x i16> %call5
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL39simde_test_arm_neon_assert_equal_u16x8_Dv8_tS_PKciS1_S1_(<8 x i16> noundef %a, <8 x i16> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #4 {
entry:
  %a.addr = alloca <8 x i16>, align 16
  %b.addr = alloca <8 x i16>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [8 x i16], align 16
  %b_ = alloca [8 x i16], align 16
  store <8 x i16> %a, ptr %a.addr, align 16, !tbaa !18
  store <8 x i16> %b, ptr %b.addr, align 16, !tbaa !18
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #18
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a_, i64 0, i64 0
  %0 = load <8 x i16>, ptr %a.addr, align 16, !tbaa !18
  call void @_ZL15simde_vst1q_u16PtDv8_t(ptr noundef %arraydecay, <8 x i16> noundef %0)
  %arraydecay1 = getelementptr inbounds [8 x i16], ptr %b_, i64 0, i64 0
  %1 = load <8 x i16>, ptr %b.addr, align 16, !tbaa !18
  call void @_ZL15simde_vst1q_u16PtDv8_t(ptr noundef %arraydecay1, <8 x i16> noundef %1)
  %arraydecay2 = getelementptr inbounds [8 x i16], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [8 x i16], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call noundef i32 @_ZL24simde_assert_equal_vu16_mPKtS0_PKciS2_S2_(i64 noundef 8, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #18
  ret i32 %call
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal noundef <8 x i16> @_ZL27simde_uint16x8_from_private22simde_uint16x8_private(<2 x double> %value.coerce) #16 {
entry:
  %value = alloca %union.simde_uint16x8_private, align 16
  %r = alloca <8 x i16>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %value, i32 0, i32 0
  store <2 x double> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <8 x i16>, ptr %r, align 16, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #18
  ret <8 x i16> %0
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal <2 x double> @_ZL25simde_uint16x8_to_privateDv8_t(<8 x i16> noundef %value) #16 {
entry:
  %retval = alloca %union.simde_uint16x8_private, align 16
  %value.addr = alloca <8 x i16>, align 16
  store <8 x i16> %value, ptr %value.addr, align 16, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x double>, ptr %coerce.dive, align 16
  ret <2 x double> %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @_ZL15simde_vst1q_u16PtDv8_t(ptr noundef %ptr, <8 x i16> noundef %val) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <8 x i16>, align 16
  %val_ = alloca %union.simde_uint16x8_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <8 x i16> %val, ptr %val.addr, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #18
  %0 = load <8 x i16>, ptr %val.addr, align 16, !tbaa !18
  %call = call <2 x double> @_ZL25simde_uint16x8_to_privateDv8_t(<8 x i16> noundef %0) #19
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %val_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #18
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef <4 x i32> @_ZL15simde_vld1q_u32PKj(ptr noundef %ptr) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint32x4_private, align 16
  %agg.tmp = alloca %union.simde_uint32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #18
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 4 %0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %agg.tmp, ptr align 16 %r_, i64 16, i1 false), !tbaa.struct !47
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %agg.tmp, i32 0, i32 0
  %1 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call noundef <4 x i32> @_ZL27simde_uint32x4_from_private22simde_uint32x4_private(<2 x double> %1) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #18
  ret <4 x i32> %call
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef <4 x i32> @_ZL16simde_vzip2q_u32Dv4_jS_(<4 x i32> noundef %a, <4 x i32> noundef %b) #14 {
entry:
  %a.addr = alloca <4 x i32>, align 16
  %b.addr = alloca <4 x i32>, align 16
  %r_ = alloca %union.simde_uint32x4_private, align 16
  %a_ = alloca %union.simde_uint32x4_private, align 16
  %b_ = alloca %union.simde_uint32x4_private, align 16
  %agg.tmp = alloca %union.simde_uint32x4_private, align 16
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !18
  store <4 x i32> %b, ptr %b.addr, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #18
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !18
  %call = call <2 x double> @_ZL25simde_uint32x4_to_privateDv4_j(<4 x i32> noundef %0) #19
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %a_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #18
  %1 = load <4 x i32>, ptr %b.addr, align 16, !tbaa !18
  %call1 = call <2 x double> @_ZL25simde_uint32x4_to_privateDv4_j(<4 x i32> noundef %1) #19
  %coerce.dive2 = getelementptr inbounds %union.simde_uint32x4_private, ptr %b_, i32 0, i32 0
  store <2 x double> %call1, ptr %coerce.dive2, align 16
  %2 = load <2 x i64>, ptr %a_, align 16, !tbaa !18
  %3 = load <2 x i64>, ptr %b_, align 16, !tbaa !18
  %call3 = call noundef <2 x i64> @_ZL18_mm_unpackhi_epi32Dv2_xS_(<2 x i64> noundef %2, <2 x i64> noundef %3)
  store <2 x i64> %call3, ptr %r_, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %agg.tmp, ptr align 16 %r_, i64 16, i1 false), !tbaa.struct !47
  %coerce.dive4 = getelementptr inbounds %union.simde_uint32x4_private, ptr %agg.tmp, i32 0, i32 0
  %4 = load <2 x double>, ptr %coerce.dive4, align 16
  %call5 = call noundef <4 x i32> @_ZL27simde_uint32x4_from_private22simde_uint32x4_private(<2 x double> %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #18
  ret <4 x i32> %call5
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL39simde_test_arm_neon_assert_equal_u32x4_Dv4_jS_PKciS1_S1_(<4 x i32> noundef %a, <4 x i32> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #4 {
entry:
  %a.addr = alloca <4 x i32>, align 16
  %b.addr = alloca <4 x i32>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [4 x i32], align 16
  %b_ = alloca [4 x i32], align 16
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !18
  store <4 x i32> %b, ptr %b.addr, align 16, !tbaa !18
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #18
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a_, i64 0, i64 0
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !18
  call void @_ZL15simde_vst1q_u32PjDv4_j(ptr noundef %arraydecay, <4 x i32> noundef %0)
  %arraydecay1 = getelementptr inbounds [4 x i32], ptr %b_, i64 0, i64 0
  %1 = load <4 x i32>, ptr %b.addr, align 16, !tbaa !18
  call void @_ZL15simde_vst1q_u32PjDv4_j(ptr noundef %arraydecay1, <4 x i32> noundef %1)
  %arraydecay2 = getelementptr inbounds [4 x i32], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [4 x i32], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call noundef i32 @_ZL24simde_assert_equal_vu32_mPKjS0_PKciS2_S2_(i64 noundef 4, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #18
  ret i32 %call
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal noundef <4 x i32> @_ZL27simde_uint32x4_from_private22simde_uint32x4_private(<2 x double> %value.coerce) #16 {
entry:
  %value = alloca %union.simde_uint32x4_private, align 16
  %r = alloca <4 x i32>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %value, i32 0, i32 0
  store <2 x double> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <4 x i32>, ptr %r, align 16, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #18
  ret <4 x i32> %0
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal <2 x double> @_ZL25simde_uint32x4_to_privateDv4_j(<4 x i32> noundef %value) #16 {
entry:
  %retval = alloca %union.simde_uint32x4_private, align 16
  %value.addr = alloca <4 x i32>, align 16
  store <4 x i32> %value, ptr %value.addr, align 16, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x double>, ptr %coerce.dive, align 16
  ret <2 x double> %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @_ZL15simde_vst1q_u32PjDv4_j(ptr noundef %ptr, <4 x i32> noundef %val) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <4 x i32>, align 16
  %val_ = alloca %union.simde_uint32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <4 x i32> %val, ptr %val.addr, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #18
  %0 = load <4 x i32>, ptr %val.addr, align 16, !tbaa !18
  %call = call <2 x double> @_ZL25simde_uint32x4_to_privateDv4_j(<4 x i32> noundef %0) #19
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %val_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #18
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef <2 x i64> @_ZL15simde_vld1q_u64PKm(ptr noundef %ptr) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint64x2_private, align 16
  %agg.tmp = alloca %union.simde_uint64x2_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #18
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 8 %0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %agg.tmp, ptr align 16 %r_, i64 16, i1 false), !tbaa.struct !47
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %agg.tmp, i32 0, i32 0
  %1 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call noundef <2 x i64> @_ZL27simde_uint64x2_from_private22simde_uint64x2_private(<2 x double> %1) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #18
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef <2 x i64> @_ZL16simde_vzip2q_u64Dv2_mS_(<2 x i64> noundef %a, <2 x i64> noundef %b) #14 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %r_ = alloca %union.simde_uint64x2_private, align 16
  %a_ = alloca %union.simde_uint64x2_private, align 16
  %b_ = alloca %union.simde_uint64x2_private, align 16
  %agg.tmp = alloca %union.simde_uint64x2_private, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !18
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #18
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !18
  %call = call <2 x double> @_ZL25simde_uint64x2_to_privateDv2_m(<2 x i64> noundef %0) #19
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %a_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #18
  %1 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !18
  %call1 = call <2 x double> @_ZL25simde_uint64x2_to_privateDv2_m(<2 x i64> noundef %1) #19
  %coerce.dive2 = getelementptr inbounds %union.simde_uint64x2_private, ptr %b_, i32 0, i32 0
  store <2 x double> %call1, ptr %coerce.dive2, align 16
  %2 = load <2 x i64>, ptr %a_, align 16, !tbaa !18
  %3 = load <2 x i64>, ptr %b_, align 16, !tbaa !18
  %call3 = call noundef <2 x i64> @_ZL18_mm_unpackhi_epi64Dv2_xS_(<2 x i64> noundef %2, <2 x i64> noundef %3)
  store <2 x i64> %call3, ptr %r_, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %agg.tmp, ptr align 16 %r_, i64 16, i1 false), !tbaa.struct !47
  %coerce.dive4 = getelementptr inbounds %union.simde_uint64x2_private, ptr %agg.tmp, i32 0, i32 0
  %4 = load <2 x double>, ptr %coerce.dive4, align 16
  %call5 = call noundef <2 x i64> @_ZL27simde_uint64x2_from_private22simde_uint64x2_private(<2 x double> %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #18
  ret <2 x i64> %call5
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL39simde_test_arm_neon_assert_equal_u64x2_Dv2_mS_PKciS1_S1_(<2 x i64> noundef %a, <2 x i64> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #4 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [2 x i64], align 16
  %b_ = alloca [2 x i64], align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !18
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !18
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #18
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a_, i64 0, i64 0
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !18
  call void @_ZL15simde_vst1q_u64PmDv2_m(ptr noundef %arraydecay, <2 x i64> noundef %0)
  %arraydecay1 = getelementptr inbounds [2 x i64], ptr %b_, i64 0, i64 0
  %1 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !18
  call void @_ZL15simde_vst1q_u64PmDv2_m(ptr noundef %arraydecay1, <2 x i64> noundef %1)
  %arraydecay2 = getelementptr inbounds [2 x i64], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [2 x i64], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call noundef i32 @_ZL24simde_assert_equal_vu64_mPKmS0_PKciS2_S2_(i64 noundef 2, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #18
  ret i32 %call
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal noundef <2 x i64> @_ZL27simde_uint64x2_from_private22simde_uint64x2_private(<2 x double> %value.coerce) #16 {
entry:
  %value = alloca %union.simde_uint64x2_private, align 16
  %r = alloca <2 x i64>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %value, i32 0, i32 0
  store <2 x double> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <2 x i64>, ptr %r, align 16, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #18
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline mustprogress nounwind willreturn memory(none) uwtable
define internal <2 x double> @_ZL25simde_uint64x2_to_privateDv2_m(<2 x i64> noundef %value) #16 {
entry:
  %retval = alloca %union.simde_uint64x2_private, align 16
  %value.addr = alloca <2 x i64>, align 16
  store <2 x i64> %value, ptr %value.addr, align 16, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x double>, ptr %coerce.dive, align 16
  ret <2 x double> %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @_ZL15simde_vst1q_u64PmDv2_m(ptr noundef %ptr, <2 x i64> noundef %val) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <2 x i64>, align 16
  %val_ = alloca %union.simde_uint64x2_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <2 x i64> %val, ptr %val.addr, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #18
  %0 = load <2 x i64>, ptr %val.addr, align 16, !tbaa !18
  %call = call <2 x double> @_ZL25simde_uint64x2_to_privateDv2_m(<2 x i64> noundef %0) #19
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %val_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL24simde_assert_equal_vu64_mPKmS0_PKciS2_S2_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %3
  %4 = load i64, ptr %arrayidx, align 8, !tbaa !11
  %5 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i64, ptr %5, i64 %6
  %7 = load i64, ptr %arrayidx1, align 8, !tbaa !11
  %cmp2 = icmp ne i64 %4, %7
  %lnot = xor i1 %cmp2, true
  %lnot3 = xor i1 %lnot, true
  %conv = zext i1 %lnot3 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %12 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds i64, ptr %14, i64 %15
  %16 = load i64, ptr %arrayidx4, align 8, !tbaa !11
  %17 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %18 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds i64, ptr %17, i64 %18
  %19 = load i64, ptr %arrayidx5, align 8, !tbaa !11
  call void (ptr, ...) @_ZL24simde_test_debug_printf_PKcz(ptr noundef @.str.41, ptr noundef %8, i32 noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12, i64 noundef %13, i64 noundef %16, i64 noundef %19)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %20, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !49

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %21 = load i32, ptr %retval, align 4
  ret i32 %21

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #17

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { alwaysinline mustprogress nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { alwaysinline mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { alwaysinline mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { alwaysinline mustprogress nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!14, !10, i64 0}
!14 = !{!"_ZTS3$_0", !10, i64 0, !10, i64 8}
!15 = !{!14, !10, i64 8}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!7, !7, i64 0}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = !{i64 0, i64 8, !18, i64 0, i64 8, !18}
!36 = !{!37, !37, i64 0}
!37 = !{!"float", !7, i64 0}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !17}
!40 = !{!41, !41, i64 0}
!41 = !{!"short", !7, i64 0}
!42 = distinct !{!42, !17}
!43 = distinct !{!43, !17}
!44 = distinct !{!44, !17}
!45 = distinct !{!45, !17}
!46 = distinct !{!46, !17}
!47 = !{i64 0, i64 16, !18, i64 0, i64 16, !18}
!48 = distinct !{!48, !17}
!49 = distinct !{!49, !17}
