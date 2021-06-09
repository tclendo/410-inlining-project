; ModuleID = 'lowercase.ll'
source_filename = "lowercase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@staticData = internal global [16 x i16] [i16 72, i16 69, i16 76, i16 76, i16 79, i16 32, i16 87, i16 79, i16 82, i16 76, i16 68, i16 33, i16 72, i16 69, i16 76, i16 76], align 16
@.str = private unnamed_addr constant [29 x i8] c"iterations (%ld characters)\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %c.addr.i.i.i = alloca i16, align 2
  %retval.i.i = alloca i64, align 8
  %data.addr.i.i = alloca i16*, align 8
  %length.addr.i.i = alloca i64, align 8
  %output.addr.i.i = alloca i16*, align 8
  %ored.i.i = alloca i16, align 2
  %i.i.i = alloca i64, align 8
  %c.i.i = alloca i16, align 2
  %numberOfIterations.addr.i = alloca i64, align 8
  %numberOfCharacters.i = alloca i64, align 8
  %testDataLength.i = alloca i64, align 8
  %testData.i = alloca i16*, align 8
  %i.i = alloca i64, align 8
  %result.i = alloca i16*, align 8
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
  %2 = bitcast i64* %numberOfIterations.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2)
  %3 = bitcast i64* %numberOfCharacters.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3)
  %4 = bitcast i64* %testDataLength.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4)
  %5 = bitcast i16** %testData.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5)
  %6 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6)
  %7 = bitcast i16** %result.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7)
  store i64 %1, i64* %numberOfIterations.addr.i, align 8
  %8 = load i64, i64* %numberOfIterations.addr.i, align 8
  store i64 %8, i64* %numberOfCharacters.i, align 8
  %9 = load i64, i64* %numberOfCharacters.i, align 8
  %add.i = add i64 %9, 16
  %sub.i = sub i64 %add.i, 1
  %div.i = udiv i64 %sub.i, 16
  %mul.i = mul i64 %div.i, 16
  store i64 %mul.i, i64* %testDataLength.i, align 8
  %10 = load i64, i64* %testDataLength.i, align 8
  %mul1.i = mul i64 2, %10
  %call.i = call i8* @malloc(i64 %mul1.i) #5
  %11 = bitcast i8* %call.i to i16*
  store i16* %11, i16** %testData.i, align 8
  store i64 0, i64* %i.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.body
  %12 = load i64, i64* %i.i, align 8
  %13 = load i64, i64* %testDataLength.i, align 8
  %cmp.i = icmp ult i64 %12, %13
  br i1 %cmp.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %14 = load i16*, i16** %testData.i, align 8
  %15 = load i64, i64* %i.i, align 8
  %add.ptr.i = getelementptr inbounds i16, i16* %14, i64 %15
  %16 = bitcast i16* %add.ptr.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %16, i8* align 16 bitcast ([16 x i16]* @staticData to i8*), i64 32, i1 false) #5
  %17 = load i64, i64* %i.i, align 8
  %add2.i = add i64 %17, 16
  store i64 %add2.i, i64* %i.i, align 8
  br label %for.cond.i, !llvm.loop !2

for.end.i:                                        ; preds = %for.cond.i
  %18 = load i64, i64* %testDataLength.i, align 8
  %mul3.i = mul i64 2, %18
  %call4.i = call i8* @malloc(i64 %mul3.i) #5
  %19 = bitcast i8* %call4.i to i16*
  store i16* %19, i16** %result.i, align 8
  %20 = load i64, i64* %numberOfIterations.addr.i, align 8
  %21 = load i64, i64* %numberOfCharacters.i, align 8
  %call5.i = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %21) #5
  %22 = load i16*, i16** %result.i, align 8
  %23 = bitcast i16* %22 to i8*
  %24 = load i64, i64* %testDataLength.i, align 8
  %mul6.i = mul i64 2, %24
  call void @llvm.memset.p0i8.i64(i8* align 2 %23, i8 0, i64 %mul6.i, i1 false) #5
  store i64 0, i64* %i.i, align 8
  br label %for.cond7.i

for.cond7.i:                                      ; preds = %lower_StringImpl.exit.i, %for.end.i
  %25 = load i64, i64* %i.i, align 8
  %cmp8.i = icmp ult i64 %25, 10000000
  br i1 %cmp8.i, label %for.body9.i, label %doTest.exit

for.body9.i:                                      ; preds = %for.cond7.i
  %26 = load i16*, i16** %testData.i, align 8
  %27 = load i64, i64* %numberOfCharacters.i, align 8
  %28 = load i16*, i16** %result.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4) #5
  call void @llvm.experimental.noalias.scope.decl(metadata !7) #5
  %29 = bitcast i64* %retval.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %29) #5
  %30 = bitcast i16** %data.addr.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %30) #5
  %31 = bitcast i64* %length.addr.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %31) #5
  %32 = bitcast i16** %output.addr.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %32) #5
  %33 = bitcast i16* %ored.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %33) #5
  %34 = bitcast i64* %i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %34) #5
  %35 = bitcast i16* %c.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %35) #5
  store i16* %26, i16** %data.addr.i.i, align 8, !noalias !9
  store i64 %27, i64* %length.addr.i.i, align 8, !noalias !9
  store i16* %28, i16** %output.addr.i.i, align 8, !noalias !9
  store i16 0, i16* %ored.i.i, align 2, !noalias !9
  store i64 0, i64* %i.i.i, align 8, !noalias !9
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %toASCIILower.exit.i.i, %for.body9.i
  %36 = load i64, i64* %i.i.i, align 8, !noalias !9
  %37 = load i64, i64* %length.addr.i.i, align 8, !noalias !9
  %cmp.i.i = icmp ult i64 %36, %37
  br i1 %cmp.i.i, label %for.body.i.i, label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %38 = load i16*, i16** %data.addr.i.i, align 8, !noalias !9
  %39 = load i64, i64* %i.i.i, align 8, !noalias !9
  %arrayidx.i.i = getelementptr inbounds i16, i16* %38, i64 %39
  %40 = load i16, i16* %arrayidx.i.i, align 2
  store i16 %40, i16* %c.i.i, align 2, !noalias !9
  %41 = load i16, i16* %c.i.i, align 2, !noalias !9
  %conv.i.i = zext i16 %41 to i32
  %42 = load i16, i16* %ored.i.i, align 2, !noalias !9
  %conv1.i.i = zext i16 %42 to i32
  %or.i.i = or i32 %conv1.i.i, %conv.i.i
  %conv2.i.i = trunc i32 %or.i.i to i16
  store i16 %conv2.i.i, i16* %ored.i.i, align 2, !noalias !9
  %43 = load i16, i16* %c.i.i, align 2, !noalias !9
  %44 = bitcast i16* %c.addr.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %44) #5, !noalias !9
  store i16 %43, i16* %c.addr.i.i.i, align 2, !noalias !9
  %45 = load i16, i16* %c.addr.i.i.i, align 2, !noalias !9
  %conv.i.i.i = zext i16 %45 to i32
  %46 = load i16, i16* %c.addr.i.i.i, align 2, !noalias !9
  %conv1.i.i.i = zext i16 %46 to i32
  %cmp.i.i.i = icmp sge i32 %conv1.i.i.i, 65
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %toASCIILower.exit.i.i

land.rhs.i.i.i:                                   ; preds = %for.body.i.i
  %47 = load i16, i16* %c.addr.i.i.i, align 2, !noalias !9
  %conv3.i.i.i = zext i16 %47 to i32
  %cmp4.i.i.i = icmp sle i32 %conv3.i.i.i, 90
  br label %toASCIILower.exit.i.i

toASCIILower.exit.i.i:                            ; preds = %land.rhs.i.i.i, %for.body.i.i
  %48 = phi i1 [ false, %for.body.i.i ], [ %cmp4.i.i.i, %land.rhs.i.i.i ]
  %land.ext.i.i.i = zext i1 %48 to i32
  %shl.i.i.i = shl i32 %land.ext.i.i.i, 5
  %or.i.i.i = or i32 %conv.i.i.i, %shl.i.i.i
  %conv6.i.i.i = trunc i32 %or.i.i.i to i16
  %49 = bitcast i16* %c.addr.i.i.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %49) #5, !noalias !9
  %50 = load i16*, i16** %output.addr.i.i, align 8, !noalias !9
  %51 = load i64, i64* %i.i.i, align 8, !noalias !9
  %arrayidx3.i.i = getelementptr inbounds i16, i16* %50, i64 %51
  store i16 %conv6.i.i.i, i16* %arrayidx3.i.i, align 2
  %52 = load i64, i64* %i.i.i, align 8, !noalias !9
  %inc.i.i = add i64 %52, 1
  store i64 %inc.i.i, i64* %i.i.i, align 8, !noalias !9
  br label %for.cond.i.i, !llvm.loop !10

for.end.i.i:                                      ; preds = %for.cond.i.i
  %53 = load i16, i16* %ored.i.i, align 2, !noalias !9
  %conv4.i.i = zext i16 %53 to i32
  %and.i.i = and i32 %conv4.i.i, -128
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.end.i.i
  store i64 1, i64* %retval.i.i, align 8, !noalias !9
  br label %lower_StringImpl.exit.i

if.end.i.i:                                       ; preds = %for.end.i.i
  store i64 0, i64* %retval.i.i, align 8, !noalias !9
  br label %lower_StringImpl.exit.i

lower_StringImpl.exit.i:                          ; preds = %if.end.i.i, %if.then.i.i
  %54 = load i64, i64* %retval.i.i, align 8, !noalias !9
  %55 = bitcast i64* %retval.i.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %55) #5
  %56 = bitcast i16** %data.addr.i.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %56) #5
  %57 = bitcast i64* %length.addr.i.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %57) #5
  %58 = bitcast i16** %output.addr.i.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %58) #5
  %59 = bitcast i16* %ored.i.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %59) #5
  %60 = bitcast i64* %i.i.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %60) #5
  %61 = bitcast i16* %c.i.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %61) #5
  %62 = load i64, i64* %i.i, align 8
  %inc.i = add i64 %62, 1
  store i64 %inc.i, i64* %i.i, align 8
  br label %for.cond7.i, !llvm.loop !11

doTest.exit:                                      ; preds = %for.cond7.i
  %63 = bitcast i64* %numberOfIterations.addr.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %63)
  %64 = bitcast i64* %numberOfCharacters.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %64)
  %65 = bitcast i64* %testDataLength.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %65)
  %66 = bitcast i16** %testData.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %66)
  %67 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %67)
  %68 = bitcast i16** %result.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %68)
  br label %for.inc

for.inc:                                          ; preds = %doTest.exit
  %69 = load i64, i64* %i, align 8
  %inc = add i64 %69, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare dso_local i8* @malloc(i64) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project.git 56ea2e2fdd691136d5e6631fa0e447173694b82c)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"lower_StringImpl: %data"}
!6 = distinct !{!6, !"lower_StringImpl"}
!7 = !{!8}
!8 = distinct !{!8, !6, !"lower_StringImpl: %output"}
!9 = !{!5, !8}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
