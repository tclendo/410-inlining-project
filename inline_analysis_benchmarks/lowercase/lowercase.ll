; ModuleID = 'lowercase.c'
source_filename = "lowercase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@staticData = internal global [16 x i16] [i16 72, i16 69, i16 76, i16 76, i16 79, i16 32, i16 87, i16 79, i16 82, i16 76, i16 68, i16 33, i16 72, i16 69, i16 76, i16 76], align 16
@.str = private unnamed_addr constant [29 x i8] c"iterations (%ld characters)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  call void @doTest(i64 %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i64, i64* %i, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !2

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doTest(i64 %numberOfIterations) #0 {
entry:
  %numberOfIterations.addr = alloca i64, align 8
  %numberOfCharacters = alloca i64, align 8
  %testDataLength = alloca i64, align 8
  %testData = alloca i16*, align 8
  %i = alloca i64, align 8
  %result = alloca i16*, align 8
  store i64 %numberOfIterations, i64* %numberOfIterations.addr, align 8
  %0 = load i64, i64* %numberOfIterations.addr, align 8
  store i64 %0, i64* %numberOfCharacters, align 8
  %1 = load i64, i64* %numberOfCharacters, align 8
  %add = add i64 %1, 16
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 16
  %mul = mul i64 %div, 16
  store i64 %mul, i64* %testDataLength, align 8
  %2 = load i64, i64* %testDataLength, align 8
  %mul1 = mul i64 2, %2
  %call = call i8* @malloc(i64 %mul1)
  %3 = bitcast i8* %call to i16*
  store i16* %3, i16** %testData, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %testDataLength, align 8
  %cmp = icmp ult i64 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i16*, i16** %testData, align 8
  %7 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds i16, i16* %6, i64 %7
  %8 = bitcast i16* %add.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %8, i8* align 16 bitcast ([16 x i16]* @staticData to i8*), i64 32, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %add2 = add i64 %9, 16
  store i64 %add2, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %10 = load i64, i64* %testDataLength, align 8
  %mul3 = mul i64 2, %10
  %call4 = call i8* @malloc(i64 %mul3)
  %11 = bitcast i8* %call4 to i16*
  store i16* %11, i16** %result, align 8
  %12 = load i64, i64* %numberOfIterations.addr, align 8
  %13 = load i64, i64* %numberOfCharacters, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %13)
  %14 = load i16*, i16** %result, align 8
  %15 = bitcast i16* %14 to i8*
  %16 = load i64, i64* %testDataLength, align 8
  %mul6 = mul i64 2, %16
  call void @llvm.memset.p0i8.i64(i8* align 2 %15, i8 0, i64 %mul6, i1 false)
  store i64 0, i64* %i, align 8
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc11, %for.end
  %17 = load i64, i64* %i, align 8
  %cmp8 = icmp ult i64 %17, 10000000
  br i1 %cmp8, label %for.body9, label %for.end12

for.body9:                                        ; preds = %for.cond7
  %18 = load i16*, i16** %testData, align 8
  %19 = load i64, i64* %numberOfCharacters, align 8
  %20 = load i16*, i16** %result, align 8
  %call10 = call i64 @lower_StringImpl(i16* %18, i64 %19, i16* %20)
  br label %for.inc11

for.inc11:                                        ; preds = %for.body9
  %21 = load i64, i64* %i, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond7, !llvm.loop !5

for.end12:                                        ; preds = %for.cond7
  ret void
}

declare dso_local i8* @malloc(i64) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lower_StringImpl(i16* noalias %data, i64 %length, i16* noalias %output) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca i16*, align 8
  %length.addr = alloca i64, align 8
  %output.addr = alloca i16*, align 8
  %ored = alloca i16, align 2
  %i = alloca i64, align 8
  %c = alloca i16, align 2
  store i16* %data, i16** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i16* %output, i16** %output.addr, align 8
  store i16 0, i16* %ored, align 2
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %length.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16*, i16** %data.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %3
  %4 = load i16, i16* %arrayidx, align 2
  store i16 %4, i16* %c, align 2
  %5 = load i16, i16* %c, align 2
  %conv = zext i16 %5 to i32
  %6 = load i16, i16* %ored, align 2
  %conv1 = zext i16 %6 to i32
  %or = or i32 %conv1, %conv
  %conv2 = trunc i32 %or to i16
  store i16 %conv2, i16* %ored, align 2
  %7 = load i16, i16* %c, align 2
  %call = call zeroext i16 @toASCIILower(i16 zeroext %7)
  %8 = load i16*, i16** %output.addr, align 8
  %9 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %8, i64 %9
  store i16 %call, i16* %arrayidx3, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %11 = load i16, i16* %ored, align 2
  %conv4 = zext i16 %11 to i32
  %and = and i32 %conv4, -128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  store i64 1, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %for.end
  store i64 0, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i64, i64* %retval, align 8
  ret i64 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @toASCIILower(i16 zeroext %c) #0 {
entry:
  %c.addr = alloca i16, align 2
  store i16 %c, i16* %c.addr, align 2
  %0 = load i16, i16* %c.addr, align 2
  %conv = zext i16 %0 to i32
  %1 = load i16, i16* %c.addr, align 2
  %conv1 = zext i16 %1 to i32
  %cmp = icmp sge i32 %conv1, 65
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i16, i16* %c.addr, align 2
  %conv3 = zext i16 %2 to i32
  %cmp4 = icmp sle i32 %conv3, 90
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  %shl = shl i32 %land.ext, 5
  %or = or i32 %conv, %shl
  %conv6 = trunc i32 %or to i16
  ret i16 %conv6
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project.git 56ea2e2fdd691136d5e6631fa0e447173694b82c)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
