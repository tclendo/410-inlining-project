; ModuleID = 'fp-convert.ll'
source_filename = "fp-convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Total is %g\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local double @loop(float* %x, float* %y, i64 %length) #0 {
entry:
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %length.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %accumulator = alloca double, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store double 0.000000e+00, double* %accumulator, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %length.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %x.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 %3
  %4 = load float, float* %arrayidx, align 4
  %conv = fpext float %4 to double
  %5 = load float*, float** %y.addr, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds float, float* %5, i64 %6
  %7 = load float, float* %arrayidx1, align 4
  %conv2 = fpext float %7 to double
  %mul = fmul double %conv, %conv2
  %8 = load double, double* %accumulator, align 8
  %add = fadd double %8, %mul
  store double %add, double* %accumulator, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add nsw i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !2

for.end:                                          ; preds = %for.cond
  %10 = load double, double* %accumulator, align 8
  ret double %10
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %x.addr.i = alloca float*, align 8
  %y.addr.i = alloca float*, align 8
  %length.addr.i = alloca i64, align 8
  %i.i = alloca i64, align 8
  %accumulator.i = alloca double, align 8
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca [2048 x float], align 16
  %y = alloca [2048 x float], align 16
  %total = alloca double, align 8
  %a = alloca float, align 4
  %b = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store double 0.000000e+00, double* %total, align 8
  store float 0.000000e+00, float* %a, align 4
  store float 1.000000e+00, float* %b, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 500000
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %rem = srem i32 %1, 10
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store float 0.000000e+00, float* %a, align 4
  store float 1.000000e+00, float* %b, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %2 = load float, float* %a, align 4
  %add = fadd float %2, 0x3FB99999A0000000
  store float %add, float* %a, align 4
  %3 = load float, float* %b, align 4
  %add1 = fadd float %3, 0x3FC99999A0000000
  store float %add1, float* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %if.end
  %4 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %4, 2048
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %5 = load float, float* %a, align 4
  %6 = load i32, i32* %j, align 4
  %conv = sitofp i32 %6 to float
  %add5 = fadd float %5, %conv
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [2048 x float], [2048 x float]* %x, i64 0, i64 %idxprom
  store float %add5, float* %arrayidx, align 4
  %8 = load float, float* %b, align 4
  %9 = load i32, i32* %j, align 4
  %conv6 = sitofp i32 %9 to float
  %add7 = fadd float %8, %conv6
  %10 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [2048 x float], [2048 x float]* %y, i64 0, i64 %idxprom8
  store float %add7, float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond2, !llvm.loop !4

for.end:                                          ; preds = %for.cond2
  %arraydecay = getelementptr inbounds [2048 x float], [2048 x float]* %x, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [2048 x float], [2048 x float]* %y, i64 0, i64 0
  %12 = bitcast float** %x.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12)
  %13 = bitcast float** %y.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13)
  %14 = bitcast i64* %length.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14)
  %15 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15)
  %16 = bitcast double* %accumulator.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16)
  store float* %arraydecay, float** %x.addr.i, align 8
  store float* %arraydecay10, float** %y.addr.i, align 8
  store i64 2048, i64* %length.addr.i, align 8
  store double 0.000000e+00, double* %accumulator.i, align 8
  store i64 0, i64* %i.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.end
  %17 = load i64, i64* %i.i, align 8
  %18 = load i64, i64* %length.addr.i, align 8
  %cmp.i = icmp slt i64 %17, %18
  br i1 %cmp.i, label %for.body.i, label %loop.exit

for.body.i:                                       ; preds = %for.cond.i
  %19 = load float*, float** %x.addr.i, align 8
  %20 = load i64, i64* %i.i, align 8
  %arrayidx.i = getelementptr inbounds float, float* %19, i64 %20
  %21 = load float, float* %arrayidx.i, align 4
  %conv.i = fpext float %21 to double
  %22 = load float*, float** %y.addr.i, align 8
  %23 = load i64, i64* %i.i, align 8
  %arrayidx1.i = getelementptr inbounds float, float* %22, i64 %23
  %24 = load float, float* %arrayidx1.i, align 4
  %conv2.i = fpext float %24 to double
  %mul.i = fmul double %conv.i, %conv2.i
  %25 = load double, double* %accumulator.i, align 8
  %add.i = fadd double %25, %mul.i
  store double %add.i, double* %accumulator.i, align 8
  %26 = load i64, i64* %i.i, align 8
  %inc.i = add nsw i64 %26, 1
  store i64 %inc.i, i64* %i.i, align 8
  br label %for.cond.i, !llvm.loop !2

loop.exit:                                        ; preds = %for.cond.i
  %27 = load double, double* %accumulator.i, align 8
  %28 = bitcast float** %x.addr.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %28)
  %29 = bitcast float** %y.addr.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %29)
  %30 = bitcast i64* %length.addr.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %30)
  %31 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %31)
  %32 = bitcast double* %accumulator.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %32)
  %33 = load double, double* %total, align 8
  %add11 = fadd double %33, %27
  store double %add11, double* %total, align 8
  br label %for.inc12

for.inc12:                                        ; preds = %loop.exit
  %34 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %34, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond, !llvm.loop !5

for.end14:                                        ; preds = %for.cond
  %35 = load double, double* %total, align 8
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %35)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project.git 56ea2e2fdd691136d5e6631fa0e447173694b82c)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
