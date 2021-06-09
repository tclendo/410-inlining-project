; ModuleID = 'flops.c'
source_filename = "flops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@A0 = dso_local global double 1.000000e+00, align 8
@A1 = dso_local global double 0xBFC5555555559705, align 8
@A2 = dso_local global double 0x3F811111113AE9A3, align 8
@A3 = dso_local global double 0x3F2A01A03FB1CA71, align 8
@A4 = dso_local global double 0x3EC71DF284AA3566, align 8
@A5 = dso_local global double 0x3E5AEB5A8CF8A426, align 8
@A6 = dso_local global double 0x3DE68DF75229C1A6, align 8
@B0 = dso_local global double 1.000000e+00, align 8
@B1 = dso_local global double 0xBFDFFFFFFFFF8156, align 8
@B2 = dso_local global double 0x3FA5555555290224, align 8
@B3 = dso_local global double 0xBF56C16BFFE76516, align 8
@B4 = dso_local global double 0x3EFA019528242DB7, align 8
@B5 = dso_local global double 0xBE927BB3D47DDB8E, align 8
@B6 = dso_local global double 0x3E2157B275DF182A, align 8
@C0 = dso_local global double 1.000000e+00, align 8
@C1 = dso_local global double 0x3FEFFFFFFE37B3E2, align 8
@C2 = dso_local global double 0x3FDFFFFFCC2BA4B8, align 8
@C3 = dso_local global double 0x3FC555587C476915, align 8
@C4 = dso_local global double 0x3FA5555B7E795548, align 8
@C5 = dso_local global double 0x3F810D9A4AD9120C, align 8
@C6 = dso_local global double 0x3F5713187EDB8C05, align 8
@C7 = dso_local global double 0x3F26C077C8173F3A, align 8
@C8 = dso_local global double 0x3F049D03FE04B1CF, align 8
@D1 = dso_local global double 0x3FA47AE143138374, align 8
@D2 = dso_local global double 9.600000e-04, align 8
@D3 = dso_local global double 0x3EB4B05A0FF4A728, align 8
@E2 = dso_local global double 4.800000e-04, align 8
@E3 = dso_local global double 4.110510e-07, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\0A\00", align 1
@T = dso_local global [36 x double] zeroinitializer, align 16
@TLimit = dso_local global double 0.000000e+00, align 8
@piref = dso_local global double 0.000000e+00, align 8
@one = dso_local global double 0.000000e+00, align 8
@two = dso_local global double 0.000000e+00, align 8
@three = dso_local global double 0.000000e+00, align 8
@four = dso_local global double 0.000000e+00, align 8
@five = dso_local global double 0.000000e+00, align 8
@scale = dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"   Module     Error        RunTime      MFLOPS\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"                            (usec)\0A\00", align 1
@TimeArray = dso_local global [3 x double] zeroinitializer, align 16
@sa = dso_local global double 0.000000e+00, align 8
@nulltime = dso_local global double 0.000000e+00, align 8
@sb = dso_local global double 0.000000e+00, align 8
@sc = dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"     1   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@piprg = dso_local global double 0.000000e+00, align 8
@pierr = dso_local global double 0.000000e+00, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"     2   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"     3   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"     4   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"     5   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"     6   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"     7   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"     8   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"   Iterations      = %10ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"   NullTime (usec) = %10.4lf\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"   MFLOPS(1)       = %10.4lf\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"   MFLOPS(2)       = %10.4lf\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"   MFLOPS(3)       = %10.4lf\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"   MFLOPS(4)       = %10.4lf\0A\0A\00", align 1
@tnow = dso_local global %struct.timeval zeroinitializer, align 8
@sd = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca double, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  %w = alloca double, align 8
  %x = alloca double, align 8
  %loops = alloca i64, align 8
  %NLimit = alloca i64, align 8
  %i = alloca i64, align 8
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i64 15625, i64* %loops, align 8
  %0 = load i64, i64* %loops, align 8
  %conv = sitofp i64 %0 to double
  %div = fdiv double 1.000000e+06, %conv
  store double %div, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  store double 1.000000e+00, double* @TLimit, align 8
  store i64 512000000, i64* %NLimit, align 8
  store double 0x400921FB54442D18, double* @piref, align 8
  store double 1.000000e+00, double* @one, align 8
  store double 2.000000e+00, double* @two, align 8
  store double 3.000000e+00, double* @three, align 8
  store double 4.000000e+00, double* @four, align 8
  store double 5.000000e+00, double* @five, align 8
  %1 = load double, double* @one, align 8
  store double %1, double* @scale, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %call4 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  %call5 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  %2 = load i64, i64* %loops, align 8
  store i64 %2, i64* %n, align 8
  store double 0.000000e+00, double* @sa, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load double, double* @sa, align 8
  %4 = load double, double* @TLimit, align 8
  %cmp = fcmp olt double %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i64, i64* %n, align 8
  %mul = mul nsw i64 2, %5
  store i64 %mul, i64* %n, align 8
  %6 = load double, double* @one, align 8
  %7 = load i64, i64* %n, align 8
  %conv7 = sitofp i64 %7 to double
  %div8 = fdiv double %6, %conv7
  store double %div8, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  %8 = load double, double* @one, align 8
  store double %8, double* %w, align 8
  %call9 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %n, align 8
  %sub = sub nsw i64 %10, 1
  %cmp10 = icmp sle i64 %9, %sub
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load double, double* %v, align 8
  %12 = load double, double* %w, align 8
  %add = fadd double %11, %12
  store double %add, double* %v, align 8
  %13 = load double, double* %v, align 8
  %14 = load double, double* %x, align 8
  %mul12 = fmul double %13, %14
  store double %mul12, double* %u, align 8
  %15 = load double, double* %s, align 8
  %16 = load double, double* @D1, align 8
  %17 = load double, double* %u, align 8
  %18 = load double, double* @D2, align 8
  %19 = load double, double* %u, align 8
  %20 = load double, double* @D3, align 8
  %mul13 = fmul double %19, %20
  %add14 = fadd double %18, %mul13
  %mul15 = fmul double %17, %add14
  %add16 = fadd double %16, %mul15
  %21 = load double, double* %w, align 8
  %22 = load double, double* %u, align 8
  %23 = load double, double* @D1, align 8
  %24 = load double, double* %u, align 8
  %25 = load double, double* @E2, align 8
  %26 = load double, double* %u, align 8
  %27 = load double, double* @E3, align 8
  %mul17 = fmul double %26, %27
  %add18 = fadd double %25, %mul17
  %mul19 = fmul double %24, %add18
  %add20 = fadd double %23, %mul19
  %mul21 = fmul double %22, %add20
  %add22 = fadd double %21, %mul21
  %div23 = fdiv double %add16, %add22
  %add24 = fadd double %15, %div23
  store double %add24, double* %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i64, i64* %i, align 8
  %inc = add nsw i64 %28, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !2

for.end:                                          ; preds = %for.cond
  %call25 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  %29 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  store double %29, double* @sa, align 8
  %30 = load i64, i64* %n, align 8
  %31 = load i64, i64* %NLimit, align 8
  %cmp26 = icmp eq i64 %30, %31
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %while.end

if.end:                                           ; preds = %for.end
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %if.then, %while.cond
  store double 1.589500e-02, double* @scale, align 8
  %32 = load double, double* @scale, align 8
  store double %32, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %call28 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  store i64 1, i64* %i, align 8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc34, %while.end
  %33 = load i64, i64* %i, align 8
  %34 = load i64, i64* %n, align 8
  %sub30 = sub nsw i64 %34, 1
  %cmp31 = icmp sle i64 %33, %sub30
  br i1 %cmp31, label %for.body33, label %for.end36

for.body33:                                       ; preds = %for.cond29
  br label %for.inc34

for.inc34:                                        ; preds = %for.body33
  %35 = load i64, i64* %i, align 8
  %inc35 = add nsw i64 %35, 1
  store i64 %inc35, i64* %i, align 8
  br label %for.cond29, !llvm.loop !5

for.end36:                                        ; preds = %for.cond29
  %call37 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  %36 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %37 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul38 = fmul double %36, %37
  store double %mul38, double* @nulltime, align 8
  %38 = load double, double* @nulltime, align 8
  %cmp39 = fcmp olt double %38, 0.000000e+00
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %for.end36
  store double 0.000000e+00, double* @nulltime, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %for.end36
  %39 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %40 = load double, double* @sa, align 8
  %mul43 = fmul double %39, %40
  %41 = load double, double* @nulltime, align 8
  %sub44 = fsub double %mul43, %41
  store double %sub44, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 2), align 16
  %42 = load double, double* @D1, align 8
  %43 = load double, double* @D2, align 8
  %add45 = fadd double %42, %43
  %44 = load double, double* @D3, align 8
  %add46 = fadd double %add45, %44
  %45 = load double, double* @one, align 8
  %46 = load double, double* @D1, align 8
  %add47 = fadd double %45, %46
  %47 = load double, double* @E2, align 8
  %add48 = fadd double %add47, %47
  %48 = load double, double* @E3, align 8
  %add49 = fadd double %add48, %48
  %div50 = fdiv double %add46, %add49
  store double %div50, double* @sa, align 8
  %49 = load double, double* @D1, align 8
  store double %49, double* @sb, align 8
  %50 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 2), align 16
  %div51 = fdiv double %50, 1.400000e+01
  store double %div51, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 3), align 8
  %51 = load double, double* %x, align 8
  %52 = load double, double* @sa, align 8
  %53 = load double, double* @sb, align 8
  %add52 = fadd double %52, %53
  %54 = load double, double* @two, align 8
  %55 = load double, double* %s, align 8
  %mul53 = fmul double %54, %55
  %add54 = fadd double %add52, %mul53
  %mul55 = fmul double %51, %add54
  %56 = load double, double* @two, align 8
  %div56 = fdiv double %mul55, %56
  store double %div56, double* @sa, align 8
  %57 = load double, double* @one, align 8
  %58 = load double, double* @sa, align 8
  %div57 = fdiv double %57, %58
  store double %div57, double* @sb, align 8
  %59 = load double, double* @sb, align 8
  %conv58 = fptosi double %59 to i64
  %mul59 = mul nsw i64 40000, %conv58
  %conv60 = sitofp i64 %mul59 to double
  %60 = load double, double* @scale, align 8
  %div61 = fdiv double %conv60, %60
  %conv62 = fptosi double %div61 to i64
  store i64 %conv62, i64* %n, align 8
  %61 = load double, double* @sb, align 8
  %sub63 = fsub double %61, 2.520000e+01
  store double %sub63, double* @sc, align 8
  %62 = load double, double* @one, align 8
  %63 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 3), align 8
  %div64 = fdiv double %62, %63
  store double %div64, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 4), align 16
  %64 = load double, double* @sc, align 8
  %mul65 = fmul double %64, 1.000000e-30
  %65 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 2), align 16
  %mul66 = fmul double %65, 1.000000e-30
  %66 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 4), align 16
  %mul67 = fmul double %66, 1.000000e-30
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), double %mul65, double %mul66, double %mul67)
  %67 = load i64, i64* %n, align 8
  store i64 %67, i64* %m, align 8
  %68 = load double, double* @five, align 8
  %fneg = fneg double %68
  store double %fneg, double* %s, align 8
  %69 = load double, double* @one, align 8
  %fneg69 = fneg double %69
  store double %fneg69, double* @sa, align 8
  %call70 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  store i64 1, i64* %i, align 8
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc77, %if.end42
  %70 = load i64, i64* %i, align 8
  %71 = load i64, i64* %m, align 8
  %cmp72 = icmp sle i64 %70, %71
  br i1 %cmp72, label %for.body74, label %for.end79

for.body74:                                       ; preds = %for.cond71
  %72 = load double, double* %s, align 8
  %fneg75 = fneg double %72
  store double %fneg75, double* %s, align 8
  %73 = load double, double* @sa, align 8
  %74 = load double, double* %s, align 8
  %add76 = fadd double %73, %74
  store double %add76, double* @sa, align 8
  br label %for.inc77

for.inc77:                                        ; preds = %for.body74
  %75 = load i64, i64* %i, align 8
  %inc78 = add nsw i64 %75, 1
  store i64 %inc78, i64* %i, align 8
  br label %for.cond71, !llvm.loop !6

for.end79:                                        ; preds = %for.cond71
  %call80 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  %76 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %77 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul81 = fmul double %76, %77
  store double %mul81, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 5), align 8
  %78 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 5), align 8
  %cmp82 = fcmp olt double %78, 0.000000e+00
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %for.end79
  store double 0.000000e+00, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 5), align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %for.end79
  %79 = load i64, i64* %m, align 8
  %conv86 = sitofp i64 %79 to double
  store double %conv86, double* @sc, align 8
  %80 = load double, double* @sa, align 8
  store double %80, double* %u, align 8
  store double 0.000000e+00, double* %v, align 8
  store double 0.000000e+00, double* %w, align 8
  store double 0.000000e+00, double* %x, align 8
  %call87 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  store i64 1, i64* %i, align 8
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc101, %if.end85
  %81 = load i64, i64* %i, align 8
  %82 = load i64, i64* %m, align 8
  %cmp89 = icmp sle i64 %81, %82
  br i1 %cmp89, label %for.body91, label %for.end103

for.body91:                                       ; preds = %for.cond88
  %83 = load double, double* %s, align 8
  %fneg92 = fneg double %83
  store double %fneg92, double* %s, align 8
  %84 = load double, double* @sa, align 8
  %85 = load double, double* %s, align 8
  %add93 = fadd double %84, %85
  store double %add93, double* @sa, align 8
  %86 = load double, double* %u, align 8
  %87 = load double, double* @two, align 8
  %add94 = fadd double %86, %87
  store double %add94, double* %u, align 8
  %88 = load double, double* %x, align 8
  %89 = load double, double* %s, align 8
  %90 = load double, double* %u, align 8
  %sub95 = fsub double %89, %90
  %add96 = fadd double %88, %sub95
  store double %add96, double* %x, align 8
  %91 = load double, double* %v, align 8
  %92 = load double, double* %s, align 8
  %93 = load double, double* %u, align 8
  %mul97 = fmul double %92, %93
  %sub98 = fsub double %91, %mul97
  store double %sub98, double* %v, align 8
  %94 = load double, double* %w, align 8
  %95 = load double, double* %s, align 8
  %96 = load double, double* %u, align 8
  %div99 = fdiv double %95, %96
  %add100 = fadd double %94, %div99
  store double %add100, double* %w, align 8
  br label %for.inc101

for.inc101:                                       ; preds = %for.body91
  %97 = load i64, i64* %i, align 8
  %inc102 = add nsw i64 %97, 1
  store i64 %inc102, i64* %i, align 8
  br label %for.cond88, !llvm.loop !7

for.end103:                                       ; preds = %for.cond88
  %call104 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  %98 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %99 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul105 = fmul double %98, %99
  store double %mul105, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 6), align 16
  %100 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 6), align 16
  %101 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 5), align 8
  %sub106 = fsub double %100, %101
  %div107 = fdiv double %sub106, 7.000000e+00
  store double %div107, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 7), align 8
  %102 = load double, double* @sa, align 8
  %103 = load double, double* %x, align 8
  %mul108 = fmul double %102, %103
  %104 = load double, double* @sc, align 8
  %div109 = fdiv double %mul108, %104
  %conv110 = fptosi double %div109 to i64
  store i64 %conv110, i64* %m, align 8
  %105 = load double, double* @four, align 8
  %106 = load double, double* %w, align 8
  %mul111 = fmul double %105, %106
  %107 = load double, double* @five, align 8
  %div112 = fdiv double %mul111, %107
  store double %div112, double* @sa, align 8
  %108 = load double, double* @sa, align 8
  %109 = load double, double* @five, align 8
  %110 = load double, double* %v, align 8
  %div113 = fdiv double %109, %110
  %add114 = fadd double %108, %div113
  store double %add114, double* @sb, align 8
  store double 3.125000e+01, double* @sc, align 8
  %111 = load double, double* @sb, align 8
  %112 = load double, double* @sc, align 8
  %113 = load double, double* %v, align 8
  %114 = load double, double* %v, align 8
  %mul115 = fmul double %113, %114
  %115 = load double, double* %v, align 8
  %mul116 = fmul double %mul115, %115
  %div117 = fdiv double %112, %mul116
  %sub118 = fsub double %111, %div117
  store double %sub118, double* @piprg, align 8
  %116 = load double, double* @piprg, align 8
  %117 = load double, double* @piref, align 8
  %sub119 = fsub double %116, %117
  store double %sub119, double* @pierr, align 8
  %118 = load double, double* @one, align 8
  %119 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 7), align 8
  %div120 = fdiv double %118, %119
  store double %div120, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 8), align 16
  %120 = load double, double* @pierr, align 8
  %mul121 = fmul double %120, 1.000000e-30
  %121 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 6), align 16
  %122 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 5), align 8
  %sub122 = fsub double %121, %122
  %mul123 = fmul double %sub122, 1.000000e-30
  %123 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 8), align 16
  %mul124 = fmul double %123, 1.000000e-30
  %call125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), double %mul121, double %mul123, double %mul124)
  %124 = load double, double* @piref, align 8
  %125 = load double, double* @three, align 8
  %126 = load i64, i64* %m, align 8
  %conv126 = sitofp i64 %126 to double
  %mul127 = fmul double %125, %conv126
  %div128 = fdiv double %124, %mul127
  store double %div128, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  %call129 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  store i64 1, i64* %i, align 8
  br label %for.cond130

for.cond130:                                      ; preds = %for.inc152, %for.end103
  %127 = load i64, i64* %i, align 8
  %128 = load i64, i64* %m, align 8
  %sub131 = sub nsw i64 %128, 1
  %cmp132 = icmp sle i64 %127, %sub131
  br i1 %cmp132, label %for.body134, label %for.end154

for.body134:                                      ; preds = %for.cond130
  %129 = load double, double* %v, align 8
  %130 = load double, double* @one, align 8
  %add135 = fadd double %129, %130
  store double %add135, double* %v, align 8
  %131 = load double, double* %v, align 8
  %132 = load double, double* %x, align 8
  %mul136 = fmul double %131, %132
  store double %mul136, double* %u, align 8
  %133 = load double, double* %u, align 8
  %134 = load double, double* %u, align 8
  %mul137 = fmul double %133, %134
  store double %mul137, double* %w, align 8
  %135 = load double, double* %s, align 8
  %136 = load double, double* %u, align 8
  %137 = load double, double* @A6, align 8
  %138 = load double, double* %w, align 8
  %mul138 = fmul double %137, %138
  %139 = load double, double* @A5, align 8
  %sub139 = fsub double %mul138, %139
  %140 = load double, double* %w, align 8
  %mul140 = fmul double %sub139, %140
  %141 = load double, double* @A4, align 8
  %add141 = fadd double %mul140, %141
  %142 = load double, double* %w, align 8
  %mul142 = fmul double %add141, %142
  %143 = load double, double* @A3, align 8
  %sub143 = fsub double %mul142, %143
  %144 = load double, double* %w, align 8
  %mul144 = fmul double %sub143, %144
  %145 = load double, double* @A2, align 8
  %add145 = fadd double %mul144, %145
  %146 = load double, double* %w, align 8
  %mul146 = fmul double %add145, %146
  %147 = load double, double* @A1, align 8
  %add147 = fadd double %mul146, %147
  %148 = load double, double* %w, align 8
  %mul148 = fmul double %add147, %148
  %149 = load double, double* @one, align 8
  %add149 = fadd double %mul148, %149
  %mul150 = fmul double %136, %add149
  %add151 = fadd double %135, %mul150
  store double %add151, double* %s, align 8
  br label %for.inc152

for.inc152:                                       ; preds = %for.body134
  %150 = load i64, i64* %i, align 8
  %inc153 = add nsw i64 %150, 1
  store i64 %inc153, i64* %i, align 8
  br label %for.cond130, !llvm.loop !8

for.end154:                                       ; preds = %for.cond130
  %call155 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  %151 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %152 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul156 = fmul double %151, %152
  %153 = load double, double* @nulltime, align 8
  %sub157 = fsub double %mul156, %153
  store double %sub157, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %154 = load double, double* @piref, align 8
  %155 = load double, double* @three, align 8
  %div158 = fdiv double %154, %155
  store double %div158, double* %u, align 8
  %156 = load double, double* %u, align 8
  %157 = load double, double* %u, align 8
  %mul159 = fmul double %156, %157
  store double %mul159, double* %w, align 8
  %158 = load double, double* %u, align 8
  %159 = load double, double* @A6, align 8
  %160 = load double, double* %w, align 8
  %mul160 = fmul double %159, %160
  %161 = load double, double* @A5, align 8
  %sub161 = fsub double %mul160, %161
  %162 = load double, double* %w, align 8
  %mul162 = fmul double %sub161, %162
  %163 = load double, double* @A4, align 8
  %add163 = fadd double %mul162, %163
  %164 = load double, double* %w, align 8
  %mul164 = fmul double %add163, %164
  %165 = load double, double* @A3, align 8
  %sub165 = fsub double %mul164, %165
  %166 = load double, double* %w, align 8
  %mul166 = fmul double %sub165, %166
  %167 = load double, double* @A2, align 8
  %add167 = fadd double %mul166, %167
  %168 = load double, double* %w, align 8
  %mul168 = fmul double %add167, %168
  %169 = load double, double* @A1, align 8
  %add169 = fadd double %mul168, %169
  %170 = load double, double* %w, align 8
  %mul170 = fmul double %add169, %170
  %171 = load double, double* @one, align 8
  %add171 = fadd double %mul170, %171
  %mul172 = fmul double %158, %add171
  store double %mul172, double* @sa, align 8
  %172 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %div173 = fdiv double %172, 1.700000e+01
  store double %div173, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 10), align 16
  %173 = load double, double* %x, align 8
  %174 = load double, double* @sa, align 8
  %175 = load double, double* @two, align 8
  %176 = load double, double* %s, align 8
  %mul174 = fmul double %175, %176
  %add175 = fadd double %174, %mul174
  %mul176 = fmul double %173, %add175
  %177 = load double, double* @two, align 8
  %div177 = fdiv double %mul176, %177
  store double %div177, double* @sa, align 8
  store double 5.000000e-01, double* @sb, align 8
  %178 = load double, double* @sa, align 8
  %179 = load double, double* @sb, align 8
  %sub178 = fsub double %178, %179
  store double %sub178, double* @sc, align 8
  %180 = load double, double* @one, align 8
  %181 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 10), align 16
  %div179 = fdiv double %180, %181
  store double %div179, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 11), align 8
  %182 = load double, double* @sc, align 8
  %mul180 = fmul double %182, 1.000000e-30
  %183 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %mul181 = fmul double %183, 1.000000e-30
  %184 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 11), align 8
  %mul182 = fmul double %184, 1.000000e-30
  %call183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), double %mul180, double %mul181, double %mul182)
  %185 = load double, double* @A3, align 8
  %fneg184 = fneg double %185
  store double %fneg184, double* @A3, align 8
  %186 = load double, double* @A5, align 8
  %fneg185 = fneg double %186
  store double %fneg185, double* @A5, align 8
  %187 = load double, double* @piref, align 8
  %188 = load double, double* @three, align 8
  %189 = load i64, i64* %m, align 8
  %conv186 = sitofp i64 %189 to double
  %mul187 = fmul double %188, %conv186
  %div188 = fdiv double %187, %mul187
  store double %div188, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  %call189 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  store i64 1, i64* %i, align 8
  br label %for.cond190

for.cond190:                                      ; preds = %for.inc211, %for.end154
  %190 = load i64, i64* %i, align 8
  %191 = load i64, i64* %m, align 8
  %sub191 = sub nsw i64 %191, 1
  %cmp192 = icmp sle i64 %190, %sub191
  br i1 %cmp192, label %for.body194, label %for.end213

for.body194:                                      ; preds = %for.cond190
  %192 = load i64, i64* %i, align 8
  %conv195 = sitofp i64 %192 to double
  %193 = load double, double* %x, align 8
  %mul196 = fmul double %conv195, %193
  store double %mul196, double* %u, align 8
  %194 = load double, double* %u, align 8
  %195 = load double, double* %u, align 8
  %mul197 = fmul double %194, %195
  store double %mul197, double* %w, align 8
  %196 = load double, double* %s, align 8
  %197 = load double, double* %w, align 8
  %198 = load double, double* %w, align 8
  %199 = load double, double* %w, align 8
  %200 = load double, double* %w, align 8
  %201 = load double, double* %w, align 8
  %202 = load double, double* @B6, align 8
  %203 = load double, double* %w, align 8
  %mul198 = fmul double %202, %203
  %204 = load double, double* @B5, align 8
  %add199 = fadd double %mul198, %204
  %mul200 = fmul double %201, %add199
  %205 = load double, double* @B4, align 8
  %add201 = fadd double %mul200, %205
  %mul202 = fmul double %200, %add201
  %206 = load double, double* @B3, align 8
  %add203 = fadd double %mul202, %206
  %mul204 = fmul double %199, %add203
  %207 = load double, double* @B2, align 8
  %add205 = fadd double %mul204, %207
  %mul206 = fmul double %198, %add205
  %208 = load double, double* @B1, align 8
  %add207 = fadd double %mul206, %208
  %mul208 = fmul double %197, %add207
  %add209 = fadd double %196, %mul208
  %209 = load double, double* @one, align 8
  %add210 = fadd double %add209, %209
  store double %add210, double* %s, align 8
  br label %for.inc211

for.inc211:                                       ; preds = %for.body194
  %210 = load i64, i64* %i, align 8
  %inc212 = add nsw i64 %210, 1
  store i64 %inc212, i64* %i, align 8
  br label %for.cond190, !llvm.loop !9

for.end213:                                       ; preds = %for.cond190
  %call214 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  %211 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %212 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul215 = fmul double %211, %212
  %213 = load double, double* @nulltime, align 8
  %sub216 = fsub double %mul215, %213
  store double %sub216, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 12), align 16
  %214 = load double, double* @piref, align 8
  %215 = load double, double* @three, align 8
  %div217 = fdiv double %214, %215
  store double %div217, double* %u, align 8
  %216 = load double, double* %u, align 8
  %217 = load double, double* %u, align 8
  %mul218 = fmul double %216, %217
  store double %mul218, double* %w, align 8
  %218 = load double, double* %w, align 8
  %219 = load double, double* %w, align 8
  %220 = load double, double* %w, align 8
  %221 = load double, double* %w, align 8
  %222 = load double, double* %w, align 8
  %223 = load double, double* @B6, align 8
  %224 = load double, double* %w, align 8
  %mul219 = fmul double %223, %224
  %225 = load double, double* @B5, align 8
  %add220 = fadd double %mul219, %225
  %mul221 = fmul double %222, %add220
  %226 = load double, double* @B4, align 8
  %add222 = fadd double %mul221, %226
  %mul223 = fmul double %221, %add222
  %227 = load double, double* @B3, align 8
  %add224 = fadd double %mul223, %227
  %mul225 = fmul double %220, %add224
  %228 = load double, double* @B2, align 8
  %add226 = fadd double %mul225, %228
  %mul227 = fmul double %219, %add226
  %229 = load double, double* @B1, align 8
  %add228 = fadd double %mul227, %229
  %mul229 = fmul double %218, %add228
  %230 = load double, double* @one, align 8
  %add230 = fadd double %mul229, %230
  store double %add230, double* @sa, align 8
  %231 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 12), align 16
  %div231 = fdiv double %231, 1.500000e+01
  store double %div231, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 13), align 8
  %232 = load double, double* %x, align 8
  %233 = load double, double* @sa, align 8
  %234 = load double, double* @one, align 8
  %add232 = fadd double %233, %234
  %235 = load double, double* @two, align 8
  %236 = load double, double* %s, align 8
  %mul233 = fmul double %235, %236
  %add234 = fadd double %add232, %mul233
  %mul235 = fmul double %232, %add234
  %237 = load double, double* @two, align 8
  %div236 = fdiv double %mul235, %237
  store double %div236, double* @sa, align 8
  %238 = load double, double* @piref, align 8
  %239 = load double, double* @three, align 8
  %div237 = fdiv double %238, %239
  store double %div237, double* %u, align 8
  %240 = load double, double* %u, align 8
  %241 = load double, double* %u, align 8
  %mul238 = fmul double %240, %241
  store double %mul238, double* %w, align 8
  %242 = load double, double* %u, align 8
  %243 = load double, double* @A6, align 8
  %244 = load double, double* %w, align 8
  %mul239 = fmul double %243, %244
  %245 = load double, double* @A5, align 8
  %add240 = fadd double %mul239, %245
  %246 = load double, double* %w, align 8
  %mul241 = fmul double %add240, %246
  %247 = load double, double* @A4, align 8
  %add242 = fadd double %mul241, %247
  %248 = load double, double* %w, align 8
  %mul243 = fmul double %add242, %248
  %249 = load double, double* @A3, align 8
  %add244 = fadd double %mul243, %249
  %250 = load double, double* %w, align 8
  %mul245 = fmul double %add244, %250
  %251 = load double, double* @A2, align 8
  %add246 = fadd double %mul245, %251
  %252 = load double, double* %w, align 8
  %mul247 = fmul double %add246, %252
  %253 = load double, double* @A1, align 8
  %add248 = fadd double %mul247, %253
  %254 = load double, double* %w, align 8
  %mul249 = fmul double %add248, %254
  %255 = load double, double* @A0, align 8
  %add250 = fadd double %mul249, %255
  %mul251 = fmul double %242, %add250
  store double %mul251, double* @sb, align 8
  %256 = load double, double* @sa, align 8
  %257 = load double, double* @sb, align 8
  %sub252 = fsub double %256, %257
  store double %sub252, double* @sc, align 8
  %258 = load double, double* @one, align 8
  %259 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 13), align 8
  %div253 = fdiv double %258, %259
  store double %div253, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 14), align 16
  %260 = load double, double* @sc, align 8
  %mul254 = fmul double %260, 1.000000e-30
  %261 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 12), align 16
  %mul255 = fmul double %261, 1.000000e-30
  %262 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 14), align 16
  %mul256 = fmul double %262, 1.000000e-30
  %call257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), double %mul254, double %mul255, double %mul256)
  %263 = load double, double* @piref, align 8
  %264 = load double, double* @three, align 8
  %265 = load i64, i64* %m, align 8
  %conv258 = sitofp i64 %265 to double
  %mul259 = fmul double %264, %conv258
  %div260 = fdiv double %263, %mul259
  store double %div260, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  %call261 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  store i64 1, i64* %i, align 8
  br label %for.cond262

for.cond262:                                      ; preds = %for.inc297, %for.end213
  %266 = load i64, i64* %i, align 8
  %267 = load i64, i64* %m, align 8
  %sub263 = sub nsw i64 %267, 1
  %cmp264 = icmp sle i64 %266, %sub263
  br i1 %cmp264, label %for.body266, label %for.end299

for.body266:                                      ; preds = %for.cond262
  %268 = load i64, i64* %i, align 8
  %conv267 = sitofp i64 %268 to double
  %269 = load double, double* %x, align 8
  %mul268 = fmul double %conv267, %269
  store double %mul268, double* %u, align 8
  %270 = load double, double* %u, align 8
  %271 = load double, double* %u, align 8
  %mul269 = fmul double %270, %271
  store double %mul269, double* %w, align 8
  %272 = load double, double* %u, align 8
  %273 = load double, double* @A6, align 8
  %274 = load double, double* %w, align 8
  %mul270 = fmul double %273, %274
  %275 = load double, double* @A5, align 8
  %add271 = fadd double %mul270, %275
  %276 = load double, double* %w, align 8
  %mul272 = fmul double %add271, %276
  %277 = load double, double* @A4, align 8
  %add273 = fadd double %mul272, %277
  %278 = load double, double* %w, align 8
  %mul274 = fmul double %add273, %278
  %279 = load double, double* @A3, align 8
  %add275 = fadd double %mul274, %279
  %280 = load double, double* %w, align 8
  %mul276 = fmul double %add275, %280
  %281 = load double, double* @A2, align 8
  %add277 = fadd double %mul276, %281
  %282 = load double, double* %w, align 8
  %mul278 = fmul double %add277, %282
  %283 = load double, double* @A1, align 8
  %add279 = fadd double %mul278, %283
  %284 = load double, double* %w, align 8
  %mul280 = fmul double %add279, %284
  %285 = load double, double* @one, align 8
  %add281 = fadd double %mul280, %285
  %mul282 = fmul double %272, %add281
  store double %mul282, double* %v, align 8
  %286 = load double, double* %s, align 8
  %287 = load double, double* %v, align 8
  %288 = load double, double* %w, align 8
  %289 = load double, double* %w, align 8
  %290 = load double, double* %w, align 8
  %291 = load double, double* %w, align 8
  %292 = load double, double* %w, align 8
  %293 = load double, double* @B6, align 8
  %294 = load double, double* %w, align 8
  %mul283 = fmul double %293, %294
  %295 = load double, double* @B5, align 8
  %add284 = fadd double %mul283, %295
  %mul285 = fmul double %292, %add284
  %296 = load double, double* @B4, align 8
  %add286 = fadd double %mul285, %296
  %mul287 = fmul double %291, %add286
  %297 = load double, double* @B3, align 8
  %add288 = fadd double %mul287, %297
  %mul289 = fmul double %290, %add288
  %298 = load double, double* @B2, align 8
  %add290 = fadd double %mul289, %298
  %mul291 = fmul double %289, %add290
  %299 = load double, double* @B1, align 8
  %add292 = fadd double %mul291, %299
  %mul293 = fmul double %288, %add292
  %300 = load double, double* @one, align 8
  %add294 = fadd double %mul293, %300
  %div295 = fdiv double %287, %add294
  %add296 = fadd double %286, %div295
  store double %add296, double* %s, align 8
  br label %for.inc297

for.inc297:                                       ; preds = %for.body266
  %301 = load i64, i64* %i, align 8
  %inc298 = add nsw i64 %301, 1
  store i64 %inc298, i64* %i, align 8
  br label %for.cond262, !llvm.loop !10

for.end299:                                       ; preds = %for.cond262
  %call300 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  %302 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %303 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul301 = fmul double %302, %303
  %304 = load double, double* @nulltime, align 8
  %sub302 = fsub double %mul301, %304
  store double %sub302, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 15), align 8
  %305 = load double, double* @piref, align 8
  %306 = load double, double* @three, align 8
  %div303 = fdiv double %305, %306
  store double %div303, double* %u, align 8
  %307 = load double, double* %u, align 8
  %308 = load double, double* %u, align 8
  %mul304 = fmul double %307, %308
  store double %mul304, double* %w, align 8
  %309 = load double, double* %u, align 8
  %310 = load double, double* @A6, align 8
  %311 = load double, double* %w, align 8
  %mul305 = fmul double %310, %311
  %312 = load double, double* @A5, align 8
  %add306 = fadd double %mul305, %312
  %313 = load double, double* %w, align 8
  %mul307 = fmul double %add306, %313
  %314 = load double, double* @A4, align 8
  %add308 = fadd double %mul307, %314
  %315 = load double, double* %w, align 8
  %mul309 = fmul double %add308, %315
  %316 = load double, double* @A3, align 8
  %add310 = fadd double %mul309, %316
  %317 = load double, double* %w, align 8
  %mul311 = fmul double %add310, %317
  %318 = load double, double* @A2, align 8
  %add312 = fadd double %mul311, %318
  %319 = load double, double* %w, align 8
  %mul313 = fmul double %add312, %319
  %320 = load double, double* @A1, align 8
  %add314 = fadd double %mul313, %320
  %321 = load double, double* %w, align 8
  %mul315 = fmul double %add314, %321
  %322 = load double, double* @one, align 8
  %add316 = fadd double %mul315, %322
  %mul317 = fmul double %309, %add316
  store double %mul317, double* @sa, align 8
  %323 = load double, double* %w, align 8
  %324 = load double, double* %w, align 8
  %325 = load double, double* %w, align 8
  %326 = load double, double* %w, align 8
  %327 = load double, double* %w, align 8
  %328 = load double, double* @B6, align 8
  %329 = load double, double* %w, align 8
  %mul318 = fmul double %328, %329
  %330 = load double, double* @B5, align 8
  %add319 = fadd double %mul318, %330
  %mul320 = fmul double %327, %add319
  %331 = load double, double* @B4, align 8
  %add321 = fadd double %mul320, %331
  %mul322 = fmul double %326, %add321
  %332 = load double, double* @B3, align 8
  %add323 = fadd double %mul322, %332
  %mul324 = fmul double %325, %add323
  %333 = load double, double* @B2, align 8
  %add325 = fadd double %mul324, %333
  %mul326 = fmul double %324, %add325
  %334 = load double, double* @B1, align 8
  %add327 = fadd double %mul326, %334
  %mul328 = fmul double %323, %add327
  %335 = load double, double* @one, align 8
  %add329 = fadd double %mul328, %335
  store double %add329, double* @sb, align 8
  %336 = load double, double* @sa, align 8
  %337 = load double, double* @sb, align 8
  %div330 = fdiv double %336, %337
  store double %div330, double* @sa, align 8
  %338 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 15), align 8
  %div331 = fdiv double %338, 2.900000e+01
  store double %div331, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 16), align 16
  %339 = load double, double* %x, align 8
  %340 = load double, double* @sa, align 8
  %341 = load double, double* @two, align 8
  %342 = load double, double* %s, align 8
  %mul332 = fmul double %341, %342
  %add333 = fadd double %340, %mul332
  %mul334 = fmul double %339, %add333
  %343 = load double, double* @two, align 8
  %div335 = fdiv double %mul334, %343
  store double %div335, double* @sa, align 8
  store double 0x3FE62E42FEFA39EF, double* @sb, align 8
  %344 = load double, double* @sa, align 8
  %345 = load double, double* @sb, align 8
  %sub336 = fsub double %344, %345
  store double %sub336, double* @sc, align 8
  %346 = load double, double* @one, align 8
  %347 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 16), align 16
  %div337 = fdiv double %346, %347
  store double %div337, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 17), align 8
  %348 = load double, double* @sc, align 8
  %mul338 = fmul double %348, 1.000000e-30
  %349 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 15), align 8
  %mul339 = fmul double %349, 1.000000e-30
  %350 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 17), align 8
  %mul340 = fmul double %350, 1.000000e-30
  %call341 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), double %mul338, double %mul339, double %mul340)
  %351 = load double, double* @piref, align 8
  %352 = load double, double* @four, align 8
  %353 = load i64, i64* %m, align 8
  %conv342 = sitofp i64 %353 to double
  %mul343 = fmul double %352, %conv342
  %div344 = fdiv double %351, %mul343
  store double %div344, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  %call345 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  store i64 1, i64* %i, align 8
  br label %for.cond346

for.cond346:                                      ; preds = %for.inc381, %for.end299
  %354 = load i64, i64* %i, align 8
  %355 = load i64, i64* %m, align 8
  %sub347 = sub nsw i64 %355, 1
  %cmp348 = icmp sle i64 %354, %sub347
  br i1 %cmp348, label %for.body350, label %for.end383

for.body350:                                      ; preds = %for.cond346
  %356 = load i64, i64* %i, align 8
  %conv351 = sitofp i64 %356 to double
  %357 = load double, double* %x, align 8
  %mul352 = fmul double %conv351, %357
  store double %mul352, double* %u, align 8
  %358 = load double, double* %u, align 8
  %359 = load double, double* %u, align 8
  %mul353 = fmul double %358, %359
  store double %mul353, double* %w, align 8
  %360 = load double, double* %u, align 8
  %361 = load double, double* @A6, align 8
  %362 = load double, double* %w, align 8
  %mul354 = fmul double %361, %362
  %363 = load double, double* @A5, align 8
  %add355 = fadd double %mul354, %363
  %364 = load double, double* %w, align 8
  %mul356 = fmul double %add355, %364
  %365 = load double, double* @A4, align 8
  %add357 = fadd double %mul356, %365
  %366 = load double, double* %w, align 8
  %mul358 = fmul double %add357, %366
  %367 = load double, double* @A3, align 8
  %add359 = fadd double %mul358, %367
  %368 = load double, double* %w, align 8
  %mul360 = fmul double %add359, %368
  %369 = load double, double* @A2, align 8
  %add361 = fadd double %mul360, %369
  %370 = load double, double* %w, align 8
  %mul362 = fmul double %add361, %370
  %371 = load double, double* @A1, align 8
  %add363 = fadd double %mul362, %371
  %372 = load double, double* %w, align 8
  %mul364 = fmul double %add363, %372
  %373 = load double, double* @one, align 8
  %add365 = fadd double %mul364, %373
  %mul366 = fmul double %360, %add365
  store double %mul366, double* %v, align 8
  %374 = load double, double* %s, align 8
  %375 = load double, double* %v, align 8
  %376 = load double, double* %w, align 8
  %377 = load double, double* %w, align 8
  %378 = load double, double* %w, align 8
  %379 = load double, double* %w, align 8
  %380 = load double, double* %w, align 8
  %381 = load double, double* @B6, align 8
  %382 = load double, double* %w, align 8
  %mul367 = fmul double %381, %382
  %383 = load double, double* @B5, align 8
  %add368 = fadd double %mul367, %383
  %mul369 = fmul double %380, %add368
  %384 = load double, double* @B4, align 8
  %add370 = fadd double %mul369, %384
  %mul371 = fmul double %379, %add370
  %385 = load double, double* @B3, align 8
  %add372 = fadd double %mul371, %385
  %mul373 = fmul double %378, %add372
  %386 = load double, double* @B2, align 8
  %add374 = fadd double %mul373, %386
  %mul375 = fmul double %377, %add374
  %387 = load double, double* @B1, align 8
  %add376 = fadd double %mul375, %387
  %mul377 = fmul double %376, %add376
  %388 = load double, double* @one, align 8
  %add378 = fadd double %mul377, %388
  %mul379 = fmul double %375, %add378
  %add380 = fadd double %374, %mul379
  store double %add380, double* %s, align 8
  br label %for.inc381

for.inc381:                                       ; preds = %for.body350
  %389 = load i64, i64* %i, align 8
  %inc382 = add nsw i64 %389, 1
  store i64 %inc382, i64* %i, align 8
  br label %for.cond346, !llvm.loop !11

for.end383:                                       ; preds = %for.cond346
  %call384 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  %390 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %391 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul385 = fmul double %390, %391
  %392 = load double, double* @nulltime, align 8
  %sub386 = fsub double %mul385, %392
  store double %sub386, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 18), align 16
  %393 = load double, double* @piref, align 8
  %394 = load double, double* @four, align 8
  %div387 = fdiv double %393, %394
  store double %div387, double* %u, align 8
  %395 = load double, double* %u, align 8
  %396 = load double, double* %u, align 8
  %mul388 = fmul double %395, %396
  store double %mul388, double* %w, align 8
  %397 = load double, double* %u, align 8
  %398 = load double, double* @A6, align 8
  %399 = load double, double* %w, align 8
  %mul389 = fmul double %398, %399
  %400 = load double, double* @A5, align 8
  %add390 = fadd double %mul389, %400
  %401 = load double, double* %w, align 8
  %mul391 = fmul double %add390, %401
  %402 = load double, double* @A4, align 8
  %add392 = fadd double %mul391, %402
  %403 = load double, double* %w, align 8
  %mul393 = fmul double %add392, %403
  %404 = load double, double* @A3, align 8
  %add394 = fadd double %mul393, %404
  %405 = load double, double* %w, align 8
  %mul395 = fmul double %add394, %405
  %406 = load double, double* @A2, align 8
  %add396 = fadd double %mul395, %406
  %407 = load double, double* %w, align 8
  %mul397 = fmul double %add396, %407
  %408 = load double, double* @A1, align 8
  %add398 = fadd double %mul397, %408
  %409 = load double, double* %w, align 8
  %mul399 = fmul double %add398, %409
  %410 = load double, double* @one, align 8
  %add400 = fadd double %mul399, %410
  %mul401 = fmul double %397, %add400
  store double %mul401, double* @sa, align 8
  %411 = load double, double* %w, align 8
  %412 = load double, double* %w, align 8
  %413 = load double, double* %w, align 8
  %414 = load double, double* %w, align 8
  %415 = load double, double* %w, align 8
  %416 = load double, double* @B6, align 8
  %417 = load double, double* %w, align 8
  %mul402 = fmul double %416, %417
  %418 = load double, double* @B5, align 8
  %add403 = fadd double %mul402, %418
  %mul404 = fmul double %415, %add403
  %419 = load double, double* @B4, align 8
  %add405 = fadd double %mul404, %419
  %mul406 = fmul double %414, %add405
  %420 = load double, double* @B3, align 8
  %add407 = fadd double %mul406, %420
  %mul408 = fmul double %413, %add407
  %421 = load double, double* @B2, align 8
  %add409 = fadd double %mul408, %421
  %mul410 = fmul double %412, %add409
  %422 = load double, double* @B1, align 8
  %add411 = fadd double %mul410, %422
  %mul412 = fmul double %411, %add411
  %423 = load double, double* @one, align 8
  %add413 = fadd double %mul412, %423
  store double %add413, double* @sb, align 8
  %424 = load double, double* @sa, align 8
  %425 = load double, double* @sb, align 8
  %mul414 = fmul double %424, %425
  store double %mul414, double* @sa, align 8
  %426 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 18), align 16
  %div415 = fdiv double %426, 2.900000e+01
  store double %div415, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 19), align 8
  %427 = load double, double* %x, align 8
  %428 = load double, double* @sa, align 8
  %429 = load double, double* @two, align 8
  %430 = load double, double* %s, align 8
  %mul416 = fmul double %429, %430
  %add417 = fadd double %428, %mul416
  %mul418 = fmul double %427, %add417
  %431 = load double, double* @two, align 8
  %div419 = fdiv double %mul418, %431
  store double %div419, double* @sa, align 8
  store double 2.500000e-01, double* @sb, align 8
  %432 = load double, double* @sa, align 8
  %433 = load double, double* @sb, align 8
  %sub420 = fsub double %432, %433
  store double %sub420, double* @sc, align 8
  %434 = load double, double* @one, align 8
  %435 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 19), align 8
  %div421 = fdiv double %434, %435
  store double %div421, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 20), align 16
  %436 = load double, double* @sc, align 8
  %mul422 = fmul double %436, 1.000000e-30
  %437 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 18), align 16
  %mul423 = fmul double %437, 1.000000e-30
  %438 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 20), align 16
  %mul424 = fmul double %438, 1.000000e-30
  %call425 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), double %mul422, double %mul423, double %mul424)
  store double 0.000000e+00, double* %s, align 8
  %439 = load double, double* @one, align 8
  store double %439, double* %w, align 8
  store double 0x40599541F7F192A4, double* @sa, align 8
  %440 = load double, double* @sa, align 8
  %441 = load i64, i64* %m, align 8
  %conv426 = sitofp i64 %441 to double
  %div427 = fdiv double %440, %conv426
  store double %div427, double* %v, align 8
  %call428 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  store i64 1, i64* %i, align 8
  br label %for.cond429

for.cond429:                                      ; preds = %for.inc447, %for.end383
  %442 = load i64, i64* %i, align 8
  %443 = load i64, i64* %m, align 8
  %sub430 = sub nsw i64 %443, 1
  %cmp431 = icmp sle i64 %442, %sub430
  br i1 %cmp431, label %for.body433, label %for.end449

for.body433:                                      ; preds = %for.cond429
  %444 = load i64, i64* %i, align 8
  %conv434 = sitofp i64 %444 to double
  %445 = load double, double* %v, align 8
  %mul435 = fmul double %conv434, %445
  store double %mul435, double* %x, align 8
  %446 = load double, double* %x, align 8
  %447 = load double, double* %x, align 8
  %mul436 = fmul double %446, %447
  store double %mul436, double* %u, align 8
  %448 = load double, double* %s, align 8
  %449 = load double, double* %w, align 8
  %450 = load double, double* %x, align 8
  %451 = load double, double* %w, align 8
  %add437 = fadd double %450, %451
  %div438 = fdiv double %449, %add437
  %sub439 = fsub double %448, %div438
  %452 = load double, double* %x, align 8
  %453 = load double, double* %u, align 8
  %454 = load double, double* %w, align 8
  %add440 = fadd double %453, %454
  %div441 = fdiv double %452, %add440
  %sub442 = fsub double %sub439, %div441
  %455 = load double, double* %u, align 8
  %456 = load double, double* %x, align 8
  %457 = load double, double* %u, align 8
  %mul443 = fmul double %456, %457
  %458 = load double, double* %w, align 8
  %add444 = fadd double %mul443, %458
  %div445 = fdiv double %455, %add444
  %sub446 = fsub double %sub442, %div445
  store double %sub446, double* %s, align 8
  br label %for.inc447

for.inc447:                                       ; preds = %for.body433
  %459 = load i64, i64* %i, align 8
  %inc448 = add nsw i64 %459, 1
  store i64 %inc448, i64* %i, align 8
  br label %for.cond429, !llvm.loop !12

for.end449:                                       ; preds = %for.cond429
  %call450 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  %460 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %461 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul451 = fmul double %460, %461
  %462 = load double, double* @nulltime, align 8
  %sub452 = fsub double %mul451, %462
  store double %sub452, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 21), align 8
  %463 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 21), align 8
  %div453 = fdiv double %463, 1.200000e+01
  store double %div453, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 22), align 16
  %464 = load double, double* @sa, align 8
  store double %464, double* %x, align 8
  %465 = load double, double* %x, align 8
  %466 = load double, double* %x, align 8
  %mul454 = fmul double %465, %466
  store double %mul454, double* %u, align 8
  %467 = load double, double* %w, align 8
  %fneg455 = fneg double %467
  %468 = load double, double* %w, align 8
  %469 = load double, double* %x, align 8
  %470 = load double, double* %w, align 8
  %add456 = fadd double %469, %470
  %div457 = fdiv double %468, %add456
  %sub458 = fsub double %fneg455, %div457
  %471 = load double, double* %x, align 8
  %472 = load double, double* %u, align 8
  %473 = load double, double* %w, align 8
  %add459 = fadd double %472, %473
  %div460 = fdiv double %471, %add459
  %sub461 = fsub double %sub458, %div460
  %474 = load double, double* %u, align 8
  %475 = load double, double* %x, align 8
  %476 = load double, double* %u, align 8
  %mul462 = fmul double %475, %476
  %477 = load double, double* %w, align 8
  %add463 = fadd double %mul462, %477
  %div464 = fdiv double %474, %add463
  %sub465 = fsub double %sub461, %div464
  store double %sub465, double* @sa, align 8
  %478 = load double, double* %v, align 8
  %mul466 = fmul double 1.800000e+01, %478
  %479 = load double, double* @sa, align 8
  %480 = load double, double* @two, align 8
  %481 = load double, double* %s, align 8
  %mul467 = fmul double %480, %481
  %add468 = fadd double %479, %mul467
  %mul469 = fmul double %mul466, %add468
  store double %mul469, double* @sa, align 8
  %482 = load double, double* @sa, align 8
  %conv470 = fptosi double %482 to i64
  %mul471 = mul nsw i64 -2000, %conv470
  store i64 %mul471, i64* %m, align 8
  %483 = load i64, i64* %m, align 8
  %conv472 = sitofp i64 %483 to double
  %484 = load double, double* @scale, align 8
  %div473 = fdiv double %conv472, %484
  %conv474 = fptosi double %div473 to i64
  store i64 %conv474, i64* %m, align 8
  %485 = load double, double* @sa, align 8
  %add475 = fadd double %485, 5.002000e+02
  store double %add475, double* @sc, align 8
  %486 = load double, double* @one, align 8
  %487 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 22), align 16
  %div476 = fdiv double %486, %487
  store double %div476, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 23), align 8
  %488 = load double, double* @sc, align 8
  %mul477 = fmul double %488, 1.000000e-30
  %489 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 21), align 8
  %mul478 = fmul double %489, 1.000000e-30
  %490 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 23), align 8
  %mul479 = fmul double %490, 1.000000e-30
  %call480 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), double %mul477, double %mul478, double %mul479)
  %491 = load double, double* @piref, align 8
  %492 = load double, double* @three, align 8
  %493 = load i64, i64* %m, align 8
  %conv481 = sitofp i64 %493 to double
  %mul482 = fmul double %492, %conv481
  %div483 = fdiv double %491, %mul482
  store double %div483, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  %call484 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  store i64 1, i64* %i, align 8
  br label %for.cond485

for.cond485:                                      ; preds = %for.inc521, %for.end449
  %494 = load i64, i64* %i, align 8
  %495 = load i64, i64* %m, align 8
  %sub486 = sub nsw i64 %495, 1
  %cmp487 = icmp sle i64 %494, %sub486
  br i1 %cmp487, label %for.body489, label %for.end523

for.body489:                                      ; preds = %for.cond485
  %496 = load i64, i64* %i, align 8
  %conv490 = sitofp i64 %496 to double
  %497 = load double, double* %x, align 8
  %mul491 = fmul double %conv490, %497
  store double %mul491, double* %u, align 8
  %498 = load double, double* %u, align 8
  %499 = load double, double* %u, align 8
  %mul492 = fmul double %498, %499
  store double %mul492, double* %w, align 8
  %500 = load double, double* %w, align 8
  %501 = load double, double* %w, align 8
  %502 = load double, double* %w, align 8
  %503 = load double, double* %w, align 8
  %504 = load double, double* %w, align 8
  %505 = load double, double* @B6, align 8
  %506 = load double, double* %w, align 8
  %mul493 = fmul double %505, %506
  %507 = load double, double* @B5, align 8
  %add494 = fadd double %mul493, %507
  %mul495 = fmul double %504, %add494
  %508 = load double, double* @B4, align 8
  %add496 = fadd double %mul495, %508
  %mul497 = fmul double %503, %add496
  %509 = load double, double* @B3, align 8
  %add498 = fadd double %mul497, %509
  %mul499 = fmul double %502, %add498
  %510 = load double, double* @B2, align 8
  %add500 = fadd double %mul499, %510
  %mul501 = fmul double %501, %add500
  %511 = load double, double* @B1, align 8
  %add502 = fadd double %mul501, %511
  %mul503 = fmul double %500, %add502
  %512 = load double, double* @one, align 8
  %add504 = fadd double %mul503, %512
  store double %add504, double* %v, align 8
  %513 = load double, double* %s, align 8
  %514 = load double, double* %v, align 8
  %515 = load double, double* %v, align 8
  %mul505 = fmul double %514, %515
  %516 = load double, double* %u, align 8
  %mul506 = fmul double %mul505, %516
  %517 = load double, double* @A6, align 8
  %518 = load double, double* %w, align 8
  %mul507 = fmul double %517, %518
  %519 = load double, double* @A5, align 8
  %add508 = fadd double %mul507, %519
  %520 = load double, double* %w, align 8
  %mul509 = fmul double %add508, %520
  %521 = load double, double* @A4, align 8
  %add510 = fadd double %mul509, %521
  %522 = load double, double* %w, align 8
  %mul511 = fmul double %add510, %522
  %523 = load double, double* @A3, align 8
  %add512 = fadd double %mul511, %523
  %524 = load double, double* %w, align 8
  %mul513 = fmul double %add512, %524
  %525 = load double, double* @A2, align 8
  %add514 = fadd double %mul513, %525
  %526 = load double, double* %w, align 8
  %mul515 = fmul double %add514, %526
  %527 = load double, double* @A1, align 8
  %add516 = fadd double %mul515, %527
  %528 = load double, double* %w, align 8
  %mul517 = fmul double %add516, %528
  %529 = load double, double* @one, align 8
  %add518 = fadd double %mul517, %529
  %mul519 = fmul double %mul506, %add518
  %add520 = fadd double %513, %mul519
  store double %add520, double* %s, align 8
  br label %for.inc521

for.inc521:                                       ; preds = %for.body489
  %530 = load i64, i64* %i, align 8
  %inc522 = add nsw i64 %530, 1
  store i64 %inc522, i64* %i, align 8
  br label %for.cond485, !llvm.loop !13

for.end523:                                       ; preds = %for.cond485
  %call524 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0))
  %531 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %532 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul525 = fmul double %531, %532
  %533 = load double, double* @nulltime, align 8
  %sub526 = fsub double %mul525, %533
  store double %sub526, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 24), align 16
  %534 = load double, double* @piref, align 8
  %535 = load double, double* @three, align 8
  %div527 = fdiv double %534, %535
  store double %div527, double* %u, align 8
  %536 = load double, double* %u, align 8
  %537 = load double, double* %u, align 8
  %mul528 = fmul double %536, %537
  store double %mul528, double* %w, align 8
  %538 = load double, double* %u, align 8
  %539 = load double, double* @A6, align 8
  %540 = load double, double* %w, align 8
  %mul529 = fmul double %539, %540
  %541 = load double, double* @A5, align 8
  %add530 = fadd double %mul529, %541
  %542 = load double, double* %w, align 8
  %mul531 = fmul double %add530, %542
  %543 = load double, double* @A4, align 8
  %add532 = fadd double %mul531, %543
  %544 = load double, double* %w, align 8
  %mul533 = fmul double %add532, %544
  %545 = load double, double* @A3, align 8
  %add534 = fadd double %mul533, %545
  %546 = load double, double* %w, align 8
  %mul535 = fmul double %add534, %546
  %547 = load double, double* @A2, align 8
  %add536 = fadd double %mul535, %547
  %548 = load double, double* %w, align 8
  %mul537 = fmul double %add536, %548
  %549 = load double, double* @A1, align 8
  %add538 = fadd double %mul537, %549
  %550 = load double, double* %w, align 8
  %mul539 = fmul double %add538, %550
  %551 = load double, double* @one, align 8
  %add540 = fadd double %mul539, %551
  %mul541 = fmul double %538, %add540
  store double %mul541, double* @sa, align 8
  %552 = load double, double* %w, align 8
  %553 = load double, double* %w, align 8
  %554 = load double, double* %w, align 8
  %555 = load double, double* %w, align 8
  %556 = load double, double* %w, align 8
  %557 = load double, double* @B6, align 8
  %558 = load double, double* %w, align 8
  %mul542 = fmul double %557, %558
  %559 = load double, double* @B5, align 8
  %add543 = fadd double %mul542, %559
  %mul544 = fmul double %556, %add543
  %560 = load double, double* @B4, align 8
  %add545 = fadd double %mul544, %560
  %mul546 = fmul double %555, %add545
  %561 = load double, double* @B3, align 8
  %add547 = fadd double %mul546, %561
  %mul548 = fmul double %554, %add547
  %562 = load double, double* @B2, align 8
  %add549 = fadd double %mul548, %562
  %mul550 = fmul double %553, %add549
  %563 = load double, double* @B1, align 8
  %add551 = fadd double %mul550, %563
  %mul552 = fmul double %552, %add551
  %564 = load double, double* @one, align 8
  %add553 = fadd double %mul552, %564
  store double %add553, double* @sb, align 8
  %565 = load double, double* @sa, align 8
  %566 = load double, double* @sb, align 8
  %mul554 = fmul double %565, %566
  %567 = load double, double* @sb, align 8
  %mul555 = fmul double %mul554, %567
  store double %mul555, double* @sa, align 8
  %568 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 24), align 16
  %div556 = fdiv double %568, 3.000000e+01
  store double %div556, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 25), align 8
  %569 = load double, double* %x, align 8
  %570 = load double, double* @sa, align 8
  %571 = load double, double* @two, align 8
  %572 = load double, double* %s, align 8
  %mul557 = fmul double %571, %572
  %add558 = fadd double %570, %mul557
  %mul559 = fmul double %569, %add558
  %573 = load double, double* @two, align 8
  %div560 = fdiv double %mul559, %573
  store double %div560, double* @sa, align 8
  store double 0x3FD2AAAAAAAAAAAB, double* @sb, align 8
  %574 = load double, double* @sa, align 8
  %575 = load double, double* @sb, align 8
  %sub561 = fsub double %574, %575
  store double %sub561, double* @sc, align 8
  %576 = load double, double* @one, align 8
  %577 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 25), align 8
  %div562 = fdiv double %576, %577
  store double %div562, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 26), align 16
  %578 = load double, double* @sc, align 8
  %mul563 = fmul double %578, 1.000000e-30
  %579 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 24), align 16
  %mul564 = fmul double %579, 1.000000e-30
  %580 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 26), align 16
  %mul565 = fmul double %580, 1.000000e-30
  %call566 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), double %mul563, double %mul564, double %mul565)
  %581 = load double, double* @five, align 8
  %582 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 6), align 16
  %583 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 5), align 8
  %sub567 = fsub double %582, %583
  %mul568 = fmul double %581, %sub567
  %584 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %add569 = fadd double %mul568, %584
  %div570 = fdiv double %add569, 5.200000e+01
  store double %div570, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 27), align 8
  %585 = load double, double* @one, align 8
  %586 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 27), align 8
  %div571 = fdiv double %585, %586
  store double %div571, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 28), align 16
  %587 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 2), align 16
  %588 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %add572 = fadd double %587, %588
  %589 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 12), align 16
  %add573 = fadd double %add572, %589
  %590 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 15), align 8
  %add574 = fadd double %add573, %590
  %591 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 18), align 16
  %add575 = fadd double %add574, %591
  store double %add575, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 29), align 8
  %592 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 29), align 8
  %593 = load double, double* @four, align 8
  %594 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 21), align 8
  %mul576 = fmul double %593, %594
  %add577 = fadd double %592, %mul576
  %div578 = fdiv double %add577, 1.520000e+02
  store double %div578, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 29), align 8
  %595 = load double, double* @one, align 8
  %596 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 29), align 8
  %div579 = fdiv double %595, %596
  store double %div579, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 30), align 16
  %597 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 2), align 16
  %598 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %add580 = fadd double %597, %598
  %599 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 12), align 16
  %add581 = fadd double %add580, %599
  %600 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 15), align 8
  %add582 = fadd double %add581, %600
  %601 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 18), align 16
  %add583 = fadd double %add582, %601
  store double %add583, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 31), align 8
  %602 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 31), align 8
  %603 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 21), align 8
  %add584 = fadd double %602, %603
  %604 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 24), align 16
  %add585 = fadd double %add584, %604
  %div586 = fdiv double %add585, 1.460000e+02
  store double %div586, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 31), align 8
  %605 = load double, double* @one, align 8
  %606 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 31), align 8
  %div587 = fdiv double %605, %606
  store double %div587, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 32), align 16
  %607 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %608 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 12), align 16
  %add588 = fadd double %607, %608
  %609 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 18), align 16
  %add589 = fadd double %add588, %609
  %610 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 24), align 16
  %add590 = fadd double %add589, %610
  %div591 = fdiv double %add590, 9.100000e+01
  store double %div591, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 33), align 8
  %611 = load double, double* @one, align 8
  %612 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 33), align 8
  %div592 = fdiv double %611, %612
  store double %div592, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 34), align 16
  %call593 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %613 = load i64, i64* %m, align 8
  %call594 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i64 %613)
  %614 = load double, double* @nulltime, align 8
  %mul595 = fmul double %614, 1.000000e-30
  %call596 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), double %mul595)
  %615 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 28), align 16
  %mul597 = fmul double %615, 1.000000e-30
  %call598 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), double %mul597)
  %616 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 30), align 16
  %mul599 = fmul double %616, 1.000000e-30
  %call600 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), double %mul599)
  %617 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 32), align 16
  %mul601 = fmul double %617, 1.000000e-30
  %call602 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), double %mul601)
  %618 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 34), align 16
  %mul603 = fmul double %618, 1.000000e-30
  %call604 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), double %mul603)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtime(double* %p) #0 {
entry:
  %p.addr = alloca double*, align 8
  %q = alloca double, align 8
  store double* %p, double** %p.addr, align 8
  %0 = load double*, double** %p.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 2
  %1 = load double, double* %arrayidx, align 8
  store double %1, double* %q, align 8
  %call = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #3
  %2 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv = sitofp i64 %2 to double
  %3 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1 = sitofp i64 %3 to double
  %mul = fmul double %conv1, 0x3EB0C6F7A0B5ED8D
  %add = fadd double %conv, %mul
  %4 = load double*, double** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 2
  store double %add, double* %arrayidx2, align 8
  %5 = load double*, double** %p.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %5, i64 2
  %6 = load double, double* %arrayidx3, align 8
  %7 = load double, double* %q, align 8
  %sub = fsub double %6, %7
  %8 = load double*, double** %p.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %8, i64 1
  store double %sub, double* %arrayidx4, align 8
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project.git 56ea2e2fdd691136d5e6631fa0e447173694b82c)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3}
