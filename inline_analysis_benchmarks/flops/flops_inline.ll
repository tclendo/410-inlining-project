; ModuleID = 'flops.ll'
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

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %p.addr.i241 = alloca double*, align 8
  %q.i242 = alloca double, align 8
  %p.addr.i229 = alloca double*, align 8
  %q.i230 = alloca double, align 8
  %p.addr.i217 = alloca double*, align 8
  %q.i218 = alloca double, align 8
  %p.addr.i205 = alloca double*, align 8
  %q.i206 = alloca double, align 8
  %p.addr.i193 = alloca double*, align 8
  %q.i194 = alloca double, align 8
  %p.addr.i181 = alloca double*, align 8
  %q.i182 = alloca double, align 8
  %p.addr.i169 = alloca double*, align 8
  %q.i170 = alloca double, align 8
  %p.addr.i157 = alloca double*, align 8
  %q.i158 = alloca double, align 8
  %p.addr.i145 = alloca double*, align 8
  %q.i146 = alloca double, align 8
  %p.addr.i133 = alloca double*, align 8
  %q.i134 = alloca double, align 8
  %p.addr.i121 = alloca double*, align 8
  %q.i122 = alloca double, align 8
  %p.addr.i109 = alloca double*, align 8
  %q.i110 = alloca double, align 8
  %p.addr.i97 = alloca double*, align 8
  %q.i98 = alloca double, align 8
  %p.addr.i85 = alloca double*, align 8
  %q.i86 = alloca double, align 8
  %p.addr.i73 = alloca double*, align 8
  %q.i74 = alloca double, align 8
  %p.addr.i61 = alloca double*, align 8
  %q.i62 = alloca double, align 8
  %p.addr.i49 = alloca double*, align 8
  %q.i50 = alloca double, align 8
  %p.addr.i37 = alloca double*, align 8
  %q.i38 = alloca double, align 8
  %p.addr.i25 = alloca double*, align 8
  %q.i26 = alloca double, align 8
  %p.addr.i13 = alloca double*, align 8
  %q.i14 = alloca double, align 8
  %p.addr.i1 = alloca double*, align 8
  %q.i2 = alloca double, align 8
  %p.addr.i = alloca double*, align 8
  %q.i = alloca double, align 8
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
  %2 = bitcast double** %p.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2)
  %3 = bitcast double* %q.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i, align 8
  %4 = load double*, double** %p.addr.i, align 8
  %arrayidx.i = getelementptr inbounds double, double* %4, i64 2
  %5 = load double, double* %arrayidx.i, align 8
  store double %5, double* %q.i, align 8
  %call.i = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %6 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i = sitofp i64 %6 to double
  %7 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i = sitofp i64 %7 to double
  %mul.i = fmul double %conv1.i, 0x3EB0C6F7A0B5ED8D
  %add.i = fadd double %conv.i, %mul.i
  %8 = load double*, double** %p.addr.i, align 8
  %arrayidx2.i = getelementptr inbounds double, double* %8, i64 2
  store double %add.i, double* %arrayidx2.i, align 8
  %9 = load double*, double** %p.addr.i, align 8
  %arrayidx3.i = getelementptr inbounds double, double* %9, i64 2
  %10 = load double, double* %arrayidx3.i, align 8
  %11 = load double, double* %q.i, align 8
  %sub.i = fsub double %10, %11
  %12 = load double*, double** %p.addr.i, align 8
  %arrayidx4.i = getelementptr inbounds double, double* %12, i64 1
  store double %sub.i, double* %arrayidx4.i, align 8
  %13 = bitcast double** %p.addr.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %13)
  %14 = bitcast double* %q.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %14)
  %15 = bitcast double** %p.addr.i1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15)
  %16 = bitcast double* %q.i2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i1, align 8
  %17 = load double*, double** %p.addr.i1, align 8
  %arrayidx.i3 = getelementptr inbounds double, double* %17, i64 2
  %18 = load double, double* %arrayidx.i3, align 8
  store double %18, double* %q.i2, align 8
  %call.i4 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %19 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i5 = sitofp i64 %19 to double
  %20 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i6 = sitofp i64 %20 to double
  %mul.i7 = fmul double %conv1.i6, 0x3EB0C6F7A0B5ED8D
  %add.i8 = fadd double %conv.i5, %mul.i7
  %21 = load double*, double** %p.addr.i1, align 8
  %arrayidx2.i9 = getelementptr inbounds double, double* %21, i64 2
  store double %add.i8, double* %arrayidx2.i9, align 8
  %22 = load double*, double** %p.addr.i1, align 8
  %arrayidx3.i10 = getelementptr inbounds double, double* %22, i64 2
  %23 = load double, double* %arrayidx3.i10, align 8
  %24 = load double, double* %q.i2, align 8
  %sub.i11 = fsub double %23, %24
  %25 = load double*, double** %p.addr.i1, align 8
  %arrayidx4.i12 = getelementptr inbounds double, double* %25, i64 1
  store double %sub.i11, double* %arrayidx4.i12, align 8
  %26 = bitcast double** %p.addr.i1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %26)
  %27 = bitcast double* %q.i2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %27)
  %28 = load i64, i64* %loops, align 8
  store i64 %28, i64* %n, align 8
  store double 0.000000e+00, double* @sa, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %29 = load double, double* @sa, align 8
  %30 = load double, double* @TLimit, align 8
  %cmp = fcmp olt double %29, %30
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load i64, i64* %n, align 8
  %mul = mul nsw i64 2, %31
  store i64 %mul, i64* %n, align 8
  %32 = load double, double* @one, align 8
  %33 = load i64, i64* %n, align 8
  %conv7 = sitofp i64 %33 to double
  %div8 = fdiv double %32, %conv7
  store double %div8, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  %34 = load double, double* @one, align 8
  store double %34, double* %w, align 8
  %35 = bitcast double** %p.addr.i13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %35)
  %36 = bitcast double* %q.i14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %36)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i13, align 8
  %37 = load double*, double** %p.addr.i13, align 8
  %arrayidx.i15 = getelementptr inbounds double, double* %37, i64 2
  %38 = load double, double* %arrayidx.i15, align 8
  store double %38, double* %q.i14, align 8
  %call.i16 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %39 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i17 = sitofp i64 %39 to double
  %40 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i18 = sitofp i64 %40 to double
  %mul.i19 = fmul double %conv1.i18, 0x3EB0C6F7A0B5ED8D
  %add.i20 = fadd double %conv.i17, %mul.i19
  %41 = load double*, double** %p.addr.i13, align 8
  %arrayidx2.i21 = getelementptr inbounds double, double* %41, i64 2
  store double %add.i20, double* %arrayidx2.i21, align 8
  %42 = load double*, double** %p.addr.i13, align 8
  %arrayidx3.i22 = getelementptr inbounds double, double* %42, i64 2
  %43 = load double, double* %arrayidx3.i22, align 8
  %44 = load double, double* %q.i14, align 8
  %sub.i23 = fsub double %43, %44
  %45 = load double*, double** %p.addr.i13, align 8
  %arrayidx4.i24 = getelementptr inbounds double, double* %45, i64 1
  store double %sub.i23, double* %arrayidx4.i24, align 8
  %46 = bitcast double** %p.addr.i13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %46)
  %47 = bitcast double* %q.i14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47)
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %48 = load i64, i64* %i, align 8
  %49 = load i64, i64* %n, align 8
  %sub = sub nsw i64 %49, 1
  %cmp10 = icmp sle i64 %48, %sub
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load double, double* %v, align 8
  %51 = load double, double* %w, align 8
  %add = fadd double %50, %51
  store double %add, double* %v, align 8
  %52 = load double, double* %v, align 8
  %53 = load double, double* %x, align 8
  %mul12 = fmul double %52, %53
  store double %mul12, double* %u, align 8
  %54 = load double, double* %s, align 8
  %55 = load double, double* @D1, align 8
  %56 = load double, double* %u, align 8
  %57 = load double, double* @D2, align 8
  %58 = load double, double* %u, align 8
  %59 = load double, double* @D3, align 8
  %mul13 = fmul double %58, %59
  %add14 = fadd double %57, %mul13
  %mul15 = fmul double %56, %add14
  %add16 = fadd double %55, %mul15
  %60 = load double, double* %w, align 8
  %61 = load double, double* %u, align 8
  %62 = load double, double* @D1, align 8
  %63 = load double, double* %u, align 8
  %64 = load double, double* @E2, align 8
  %65 = load double, double* %u, align 8
  %66 = load double, double* @E3, align 8
  %mul17 = fmul double %65, %66
  %add18 = fadd double %64, %mul17
  %mul19 = fmul double %63, %add18
  %add20 = fadd double %62, %mul19
  %mul21 = fmul double %61, %add20
  %add22 = fadd double %60, %mul21
  %div23 = fdiv double %add16, %add22
  %add24 = fadd double %54, %div23
  store double %add24, double* %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %67 = load i64, i64* %i, align 8
  %inc = add nsw i64 %67, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !2

for.end:                                          ; preds = %for.cond
  %68 = bitcast double** %p.addr.i25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %68)
  %69 = bitcast double* %q.i26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %69)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i25, align 8
  %70 = load double*, double** %p.addr.i25, align 8
  %arrayidx.i27 = getelementptr inbounds double, double* %70, i64 2
  %71 = load double, double* %arrayidx.i27, align 8
  store double %71, double* %q.i26, align 8
  %call.i28 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %72 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i29 = sitofp i64 %72 to double
  %73 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i30 = sitofp i64 %73 to double
  %mul.i31 = fmul double %conv1.i30, 0x3EB0C6F7A0B5ED8D
  %add.i32 = fadd double %conv.i29, %mul.i31
  %74 = load double*, double** %p.addr.i25, align 8
  %arrayidx2.i33 = getelementptr inbounds double, double* %74, i64 2
  store double %add.i32, double* %arrayidx2.i33, align 8
  %75 = load double*, double** %p.addr.i25, align 8
  %arrayidx3.i34 = getelementptr inbounds double, double* %75, i64 2
  %76 = load double, double* %arrayidx3.i34, align 8
  %77 = load double, double* %q.i26, align 8
  %sub.i35 = fsub double %76, %77
  %78 = load double*, double** %p.addr.i25, align 8
  %arrayidx4.i36 = getelementptr inbounds double, double* %78, i64 1
  store double %sub.i35, double* %arrayidx4.i36, align 8
  %79 = bitcast double** %p.addr.i25 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %79)
  %80 = bitcast double* %q.i26 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %80)
  %81 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  store double %81, double* @sa, align 8
  %82 = load i64, i64* %n, align 8
  %83 = load i64, i64* %NLimit, align 8
  %cmp26 = icmp eq i64 %82, %83
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %while.end

if.end:                                           ; preds = %for.end
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %if.then, %while.cond
  store double 1.589500e-02, double* @scale, align 8
  %84 = load double, double* @scale, align 8
  store double %84, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %85 = bitcast double** %p.addr.i37 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %85)
  %86 = bitcast double* %q.i38 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %86)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i37, align 8
  %87 = load double*, double** %p.addr.i37, align 8
  %arrayidx.i39 = getelementptr inbounds double, double* %87, i64 2
  %88 = load double, double* %arrayidx.i39, align 8
  store double %88, double* %q.i38, align 8
  %call.i40 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %89 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i41 = sitofp i64 %89 to double
  %90 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i42 = sitofp i64 %90 to double
  %mul.i43 = fmul double %conv1.i42, 0x3EB0C6F7A0B5ED8D
  %add.i44 = fadd double %conv.i41, %mul.i43
  %91 = load double*, double** %p.addr.i37, align 8
  %arrayidx2.i45 = getelementptr inbounds double, double* %91, i64 2
  store double %add.i44, double* %arrayidx2.i45, align 8
  %92 = load double*, double** %p.addr.i37, align 8
  %arrayidx3.i46 = getelementptr inbounds double, double* %92, i64 2
  %93 = load double, double* %arrayidx3.i46, align 8
  %94 = load double, double* %q.i38, align 8
  %sub.i47 = fsub double %93, %94
  %95 = load double*, double** %p.addr.i37, align 8
  %arrayidx4.i48 = getelementptr inbounds double, double* %95, i64 1
  store double %sub.i47, double* %arrayidx4.i48, align 8
  %96 = bitcast double** %p.addr.i37 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %96)
  %97 = bitcast double* %q.i38 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %97)
  store i64 1, i64* %i, align 8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc34, %while.end
  %98 = load i64, i64* %i, align 8
  %99 = load i64, i64* %n, align 8
  %sub30 = sub nsw i64 %99, 1
  %cmp31 = icmp sle i64 %98, %sub30
  br i1 %cmp31, label %for.body33, label %for.end36

for.body33:                                       ; preds = %for.cond29
  br label %for.inc34

for.inc34:                                        ; preds = %for.body33
  %100 = load i64, i64* %i, align 8
  %inc35 = add nsw i64 %100, 1
  store i64 %inc35, i64* %i, align 8
  br label %for.cond29, !llvm.loop !5

for.end36:                                        ; preds = %for.cond29
  %101 = bitcast double** %p.addr.i49 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %101)
  %102 = bitcast double* %q.i50 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %102)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i49, align 8
  %103 = load double*, double** %p.addr.i49, align 8
  %arrayidx.i51 = getelementptr inbounds double, double* %103, i64 2
  %104 = load double, double* %arrayidx.i51, align 8
  store double %104, double* %q.i50, align 8
  %call.i52 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %105 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i53 = sitofp i64 %105 to double
  %106 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i54 = sitofp i64 %106 to double
  %mul.i55 = fmul double %conv1.i54, 0x3EB0C6F7A0B5ED8D
  %add.i56 = fadd double %conv.i53, %mul.i55
  %107 = load double*, double** %p.addr.i49, align 8
  %arrayidx2.i57 = getelementptr inbounds double, double* %107, i64 2
  store double %add.i56, double* %arrayidx2.i57, align 8
  %108 = load double*, double** %p.addr.i49, align 8
  %arrayidx3.i58 = getelementptr inbounds double, double* %108, i64 2
  %109 = load double, double* %arrayidx3.i58, align 8
  %110 = load double, double* %q.i50, align 8
  %sub.i59 = fsub double %109, %110
  %111 = load double*, double** %p.addr.i49, align 8
  %arrayidx4.i60 = getelementptr inbounds double, double* %111, i64 1
  store double %sub.i59, double* %arrayidx4.i60, align 8
  %112 = bitcast double** %p.addr.i49 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %112)
  %113 = bitcast double* %q.i50 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %113)
  %114 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %115 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul38 = fmul double %114, %115
  store double %mul38, double* @nulltime, align 8
  %116 = load double, double* @nulltime, align 8
  %cmp39 = fcmp olt double %116, 0.000000e+00
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %for.end36
  store double 0.000000e+00, double* @nulltime, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %for.end36
  %117 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %118 = load double, double* @sa, align 8
  %mul43 = fmul double %117, %118
  %119 = load double, double* @nulltime, align 8
  %sub44 = fsub double %mul43, %119
  store double %sub44, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 2), align 16
  %120 = load double, double* @D1, align 8
  %121 = load double, double* @D2, align 8
  %add45 = fadd double %120, %121
  %122 = load double, double* @D3, align 8
  %add46 = fadd double %add45, %122
  %123 = load double, double* @one, align 8
  %124 = load double, double* @D1, align 8
  %add47 = fadd double %123, %124
  %125 = load double, double* @E2, align 8
  %add48 = fadd double %add47, %125
  %126 = load double, double* @E3, align 8
  %add49 = fadd double %add48, %126
  %div50 = fdiv double %add46, %add49
  store double %div50, double* @sa, align 8
  %127 = load double, double* @D1, align 8
  store double %127, double* @sb, align 8
  %128 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 2), align 16
  %div51 = fdiv double %128, 1.400000e+01
  store double %div51, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 3), align 8
  %129 = load double, double* %x, align 8
  %130 = load double, double* @sa, align 8
  %131 = load double, double* @sb, align 8
  %add52 = fadd double %130, %131
  %132 = load double, double* @two, align 8
  %133 = load double, double* %s, align 8
  %mul53 = fmul double %132, %133
  %add54 = fadd double %add52, %mul53
  %mul55 = fmul double %129, %add54
  %134 = load double, double* @two, align 8
  %div56 = fdiv double %mul55, %134
  store double %div56, double* @sa, align 8
  %135 = load double, double* @one, align 8
  %136 = load double, double* @sa, align 8
  %div57 = fdiv double %135, %136
  store double %div57, double* @sb, align 8
  %137 = load double, double* @sb, align 8
  %conv58 = fptosi double %137 to i64
  %mul59 = mul nsw i64 40000, %conv58
  %conv60 = sitofp i64 %mul59 to double
  %138 = load double, double* @scale, align 8
  %div61 = fdiv double %conv60, %138
  %conv62 = fptosi double %div61 to i64
  store i64 %conv62, i64* %n, align 8
  %139 = load double, double* @sb, align 8
  %sub63 = fsub double %139, 2.520000e+01
  store double %sub63, double* @sc, align 8
  %140 = load double, double* @one, align 8
  %141 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 3), align 8
  %div64 = fdiv double %140, %141
  store double %div64, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 4), align 16
  %142 = load double, double* @sc, align 8
  %mul65 = fmul double %142, 1.000000e-30
  %143 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 2), align 16
  %mul66 = fmul double %143, 1.000000e-30
  %144 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 4), align 16
  %mul67 = fmul double %144, 1.000000e-30
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), double %mul65, double %mul66, double %mul67)
  %145 = load i64, i64* %n, align 8
  store i64 %145, i64* %m, align 8
  %146 = load double, double* @five, align 8
  %fneg = fneg double %146
  store double %fneg, double* %s, align 8
  %147 = load double, double* @one, align 8
  %fneg69 = fneg double %147
  store double %fneg69, double* @sa, align 8
  %148 = bitcast double** %p.addr.i61 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %148)
  %149 = bitcast double* %q.i62 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %149)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i61, align 8
  %150 = load double*, double** %p.addr.i61, align 8
  %arrayidx.i63 = getelementptr inbounds double, double* %150, i64 2
  %151 = load double, double* %arrayidx.i63, align 8
  store double %151, double* %q.i62, align 8
  %call.i64 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %152 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i65 = sitofp i64 %152 to double
  %153 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i66 = sitofp i64 %153 to double
  %mul.i67 = fmul double %conv1.i66, 0x3EB0C6F7A0B5ED8D
  %add.i68 = fadd double %conv.i65, %mul.i67
  %154 = load double*, double** %p.addr.i61, align 8
  %arrayidx2.i69 = getelementptr inbounds double, double* %154, i64 2
  store double %add.i68, double* %arrayidx2.i69, align 8
  %155 = load double*, double** %p.addr.i61, align 8
  %arrayidx3.i70 = getelementptr inbounds double, double* %155, i64 2
  %156 = load double, double* %arrayidx3.i70, align 8
  %157 = load double, double* %q.i62, align 8
  %sub.i71 = fsub double %156, %157
  %158 = load double*, double** %p.addr.i61, align 8
  %arrayidx4.i72 = getelementptr inbounds double, double* %158, i64 1
  store double %sub.i71, double* %arrayidx4.i72, align 8
  %159 = bitcast double** %p.addr.i61 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %159)
  %160 = bitcast double* %q.i62 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %160)
  store i64 1, i64* %i, align 8
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc77, %if.end42
  %161 = load i64, i64* %i, align 8
  %162 = load i64, i64* %m, align 8
  %cmp72 = icmp sle i64 %161, %162
  br i1 %cmp72, label %for.body74, label %for.end79

for.body74:                                       ; preds = %for.cond71
  %163 = load double, double* %s, align 8
  %fneg75 = fneg double %163
  store double %fneg75, double* %s, align 8
  %164 = load double, double* @sa, align 8
  %165 = load double, double* %s, align 8
  %add76 = fadd double %164, %165
  store double %add76, double* @sa, align 8
  br label %for.inc77

for.inc77:                                        ; preds = %for.body74
  %166 = load i64, i64* %i, align 8
  %inc78 = add nsw i64 %166, 1
  store i64 %inc78, i64* %i, align 8
  br label %for.cond71, !llvm.loop !6

for.end79:                                        ; preds = %for.cond71
  %167 = bitcast double** %p.addr.i73 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %167)
  %168 = bitcast double* %q.i74 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %168)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i73, align 8
  %169 = load double*, double** %p.addr.i73, align 8
  %arrayidx.i75 = getelementptr inbounds double, double* %169, i64 2
  %170 = load double, double* %arrayidx.i75, align 8
  store double %170, double* %q.i74, align 8
  %call.i76 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %171 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i77 = sitofp i64 %171 to double
  %172 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i78 = sitofp i64 %172 to double
  %mul.i79 = fmul double %conv1.i78, 0x3EB0C6F7A0B5ED8D
  %add.i80 = fadd double %conv.i77, %mul.i79
  %173 = load double*, double** %p.addr.i73, align 8
  %arrayidx2.i81 = getelementptr inbounds double, double* %173, i64 2
  store double %add.i80, double* %arrayidx2.i81, align 8
  %174 = load double*, double** %p.addr.i73, align 8
  %arrayidx3.i82 = getelementptr inbounds double, double* %174, i64 2
  %175 = load double, double* %arrayidx3.i82, align 8
  %176 = load double, double* %q.i74, align 8
  %sub.i83 = fsub double %175, %176
  %177 = load double*, double** %p.addr.i73, align 8
  %arrayidx4.i84 = getelementptr inbounds double, double* %177, i64 1
  store double %sub.i83, double* %arrayidx4.i84, align 8
  %178 = bitcast double** %p.addr.i73 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %178)
  %179 = bitcast double* %q.i74 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %179)
  %180 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %181 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul81 = fmul double %180, %181
  store double %mul81, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 5), align 8
  %182 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 5), align 8
  %cmp82 = fcmp olt double %182, 0.000000e+00
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %for.end79
  store double 0.000000e+00, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 5), align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %for.end79
  %183 = load i64, i64* %m, align 8
  %conv86 = sitofp i64 %183 to double
  store double %conv86, double* @sc, align 8
  %184 = load double, double* @sa, align 8
  store double %184, double* %u, align 8
  store double 0.000000e+00, double* %v, align 8
  store double 0.000000e+00, double* %w, align 8
  store double 0.000000e+00, double* %x, align 8
  %185 = bitcast double** %p.addr.i85 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %185)
  %186 = bitcast double* %q.i86 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %186)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i85, align 8
  %187 = load double*, double** %p.addr.i85, align 8
  %arrayidx.i87 = getelementptr inbounds double, double* %187, i64 2
  %188 = load double, double* %arrayidx.i87, align 8
  store double %188, double* %q.i86, align 8
  %call.i88 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %189 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i89 = sitofp i64 %189 to double
  %190 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i90 = sitofp i64 %190 to double
  %mul.i91 = fmul double %conv1.i90, 0x3EB0C6F7A0B5ED8D
  %add.i92 = fadd double %conv.i89, %mul.i91
  %191 = load double*, double** %p.addr.i85, align 8
  %arrayidx2.i93 = getelementptr inbounds double, double* %191, i64 2
  store double %add.i92, double* %arrayidx2.i93, align 8
  %192 = load double*, double** %p.addr.i85, align 8
  %arrayidx3.i94 = getelementptr inbounds double, double* %192, i64 2
  %193 = load double, double* %arrayidx3.i94, align 8
  %194 = load double, double* %q.i86, align 8
  %sub.i95 = fsub double %193, %194
  %195 = load double*, double** %p.addr.i85, align 8
  %arrayidx4.i96 = getelementptr inbounds double, double* %195, i64 1
  store double %sub.i95, double* %arrayidx4.i96, align 8
  %196 = bitcast double** %p.addr.i85 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %196)
  %197 = bitcast double* %q.i86 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %197)
  store i64 1, i64* %i, align 8
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc101, %if.end85
  %198 = load i64, i64* %i, align 8
  %199 = load i64, i64* %m, align 8
  %cmp89 = icmp sle i64 %198, %199
  br i1 %cmp89, label %for.body91, label %for.end103

for.body91:                                       ; preds = %for.cond88
  %200 = load double, double* %s, align 8
  %fneg92 = fneg double %200
  store double %fneg92, double* %s, align 8
  %201 = load double, double* @sa, align 8
  %202 = load double, double* %s, align 8
  %add93 = fadd double %201, %202
  store double %add93, double* @sa, align 8
  %203 = load double, double* %u, align 8
  %204 = load double, double* @two, align 8
  %add94 = fadd double %203, %204
  store double %add94, double* %u, align 8
  %205 = load double, double* %x, align 8
  %206 = load double, double* %s, align 8
  %207 = load double, double* %u, align 8
  %sub95 = fsub double %206, %207
  %add96 = fadd double %205, %sub95
  store double %add96, double* %x, align 8
  %208 = load double, double* %v, align 8
  %209 = load double, double* %s, align 8
  %210 = load double, double* %u, align 8
  %mul97 = fmul double %209, %210
  %sub98 = fsub double %208, %mul97
  store double %sub98, double* %v, align 8
  %211 = load double, double* %w, align 8
  %212 = load double, double* %s, align 8
  %213 = load double, double* %u, align 8
  %div99 = fdiv double %212, %213
  %add100 = fadd double %211, %div99
  store double %add100, double* %w, align 8
  br label %for.inc101

for.inc101:                                       ; preds = %for.body91
  %214 = load i64, i64* %i, align 8
  %inc102 = add nsw i64 %214, 1
  store i64 %inc102, i64* %i, align 8
  br label %for.cond88, !llvm.loop !7

for.end103:                                       ; preds = %for.cond88
  %215 = bitcast double** %p.addr.i97 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %215)
  %216 = bitcast double* %q.i98 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %216)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i97, align 8
  %217 = load double*, double** %p.addr.i97, align 8
  %arrayidx.i99 = getelementptr inbounds double, double* %217, i64 2
  %218 = load double, double* %arrayidx.i99, align 8
  store double %218, double* %q.i98, align 8
  %call.i100 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %219 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i101 = sitofp i64 %219 to double
  %220 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i102 = sitofp i64 %220 to double
  %mul.i103 = fmul double %conv1.i102, 0x3EB0C6F7A0B5ED8D
  %add.i104 = fadd double %conv.i101, %mul.i103
  %221 = load double*, double** %p.addr.i97, align 8
  %arrayidx2.i105 = getelementptr inbounds double, double* %221, i64 2
  store double %add.i104, double* %arrayidx2.i105, align 8
  %222 = load double*, double** %p.addr.i97, align 8
  %arrayidx3.i106 = getelementptr inbounds double, double* %222, i64 2
  %223 = load double, double* %arrayidx3.i106, align 8
  %224 = load double, double* %q.i98, align 8
  %sub.i107 = fsub double %223, %224
  %225 = load double*, double** %p.addr.i97, align 8
  %arrayidx4.i108 = getelementptr inbounds double, double* %225, i64 1
  store double %sub.i107, double* %arrayidx4.i108, align 8
  %226 = bitcast double** %p.addr.i97 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %226)
  %227 = bitcast double* %q.i98 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %227)
  %228 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %229 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul105 = fmul double %228, %229
  store double %mul105, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 6), align 16
  %230 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 6), align 16
  %231 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 5), align 8
  %sub106 = fsub double %230, %231
  %div107 = fdiv double %sub106, 7.000000e+00
  store double %div107, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 7), align 8
  %232 = load double, double* @sa, align 8
  %233 = load double, double* %x, align 8
  %mul108 = fmul double %232, %233
  %234 = load double, double* @sc, align 8
  %div109 = fdiv double %mul108, %234
  %conv110 = fptosi double %div109 to i64
  store i64 %conv110, i64* %m, align 8
  %235 = load double, double* @four, align 8
  %236 = load double, double* %w, align 8
  %mul111 = fmul double %235, %236
  %237 = load double, double* @five, align 8
  %div112 = fdiv double %mul111, %237
  store double %div112, double* @sa, align 8
  %238 = load double, double* @sa, align 8
  %239 = load double, double* @five, align 8
  %240 = load double, double* %v, align 8
  %div113 = fdiv double %239, %240
  %add114 = fadd double %238, %div113
  store double %add114, double* @sb, align 8
  store double 3.125000e+01, double* @sc, align 8
  %241 = load double, double* @sb, align 8
  %242 = load double, double* @sc, align 8
  %243 = load double, double* %v, align 8
  %244 = load double, double* %v, align 8
  %mul115 = fmul double %243, %244
  %245 = load double, double* %v, align 8
  %mul116 = fmul double %mul115, %245
  %div117 = fdiv double %242, %mul116
  %sub118 = fsub double %241, %div117
  store double %sub118, double* @piprg, align 8
  %246 = load double, double* @piprg, align 8
  %247 = load double, double* @piref, align 8
  %sub119 = fsub double %246, %247
  store double %sub119, double* @pierr, align 8
  %248 = load double, double* @one, align 8
  %249 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 7), align 8
  %div120 = fdiv double %248, %249
  store double %div120, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 8), align 16
  %250 = load double, double* @pierr, align 8
  %mul121 = fmul double %250, 1.000000e-30
  %251 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 6), align 16
  %252 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 5), align 8
  %sub122 = fsub double %251, %252
  %mul123 = fmul double %sub122, 1.000000e-30
  %253 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 8), align 16
  %mul124 = fmul double %253, 1.000000e-30
  %call125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), double %mul121, double %mul123, double %mul124)
  %254 = load double, double* @piref, align 8
  %255 = load double, double* @three, align 8
  %256 = load i64, i64* %m, align 8
  %conv126 = sitofp i64 %256 to double
  %mul127 = fmul double %255, %conv126
  %div128 = fdiv double %254, %mul127
  store double %div128, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  %257 = bitcast double** %p.addr.i109 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %257)
  %258 = bitcast double* %q.i110 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %258)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i109, align 8
  %259 = load double*, double** %p.addr.i109, align 8
  %arrayidx.i111 = getelementptr inbounds double, double* %259, i64 2
  %260 = load double, double* %arrayidx.i111, align 8
  store double %260, double* %q.i110, align 8
  %call.i112 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %261 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i113 = sitofp i64 %261 to double
  %262 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i114 = sitofp i64 %262 to double
  %mul.i115 = fmul double %conv1.i114, 0x3EB0C6F7A0B5ED8D
  %add.i116 = fadd double %conv.i113, %mul.i115
  %263 = load double*, double** %p.addr.i109, align 8
  %arrayidx2.i117 = getelementptr inbounds double, double* %263, i64 2
  store double %add.i116, double* %arrayidx2.i117, align 8
  %264 = load double*, double** %p.addr.i109, align 8
  %arrayidx3.i118 = getelementptr inbounds double, double* %264, i64 2
  %265 = load double, double* %arrayidx3.i118, align 8
  %266 = load double, double* %q.i110, align 8
  %sub.i119 = fsub double %265, %266
  %267 = load double*, double** %p.addr.i109, align 8
  %arrayidx4.i120 = getelementptr inbounds double, double* %267, i64 1
  store double %sub.i119, double* %arrayidx4.i120, align 8
  %268 = bitcast double** %p.addr.i109 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %268)
  %269 = bitcast double* %q.i110 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %269)
  store i64 1, i64* %i, align 8
  br label %for.cond130

for.cond130:                                      ; preds = %for.inc152, %for.end103
  %270 = load i64, i64* %i, align 8
  %271 = load i64, i64* %m, align 8
  %sub131 = sub nsw i64 %271, 1
  %cmp132 = icmp sle i64 %270, %sub131
  br i1 %cmp132, label %for.body134, label %for.end154

for.body134:                                      ; preds = %for.cond130
  %272 = load double, double* %v, align 8
  %273 = load double, double* @one, align 8
  %add135 = fadd double %272, %273
  store double %add135, double* %v, align 8
  %274 = load double, double* %v, align 8
  %275 = load double, double* %x, align 8
  %mul136 = fmul double %274, %275
  store double %mul136, double* %u, align 8
  %276 = load double, double* %u, align 8
  %277 = load double, double* %u, align 8
  %mul137 = fmul double %276, %277
  store double %mul137, double* %w, align 8
  %278 = load double, double* %s, align 8
  %279 = load double, double* %u, align 8
  %280 = load double, double* @A6, align 8
  %281 = load double, double* %w, align 8
  %mul138 = fmul double %280, %281
  %282 = load double, double* @A5, align 8
  %sub139 = fsub double %mul138, %282
  %283 = load double, double* %w, align 8
  %mul140 = fmul double %sub139, %283
  %284 = load double, double* @A4, align 8
  %add141 = fadd double %mul140, %284
  %285 = load double, double* %w, align 8
  %mul142 = fmul double %add141, %285
  %286 = load double, double* @A3, align 8
  %sub143 = fsub double %mul142, %286
  %287 = load double, double* %w, align 8
  %mul144 = fmul double %sub143, %287
  %288 = load double, double* @A2, align 8
  %add145 = fadd double %mul144, %288
  %289 = load double, double* %w, align 8
  %mul146 = fmul double %add145, %289
  %290 = load double, double* @A1, align 8
  %add147 = fadd double %mul146, %290
  %291 = load double, double* %w, align 8
  %mul148 = fmul double %add147, %291
  %292 = load double, double* @one, align 8
  %add149 = fadd double %mul148, %292
  %mul150 = fmul double %279, %add149
  %add151 = fadd double %278, %mul150
  store double %add151, double* %s, align 8
  br label %for.inc152

for.inc152:                                       ; preds = %for.body134
  %293 = load i64, i64* %i, align 8
  %inc153 = add nsw i64 %293, 1
  store i64 %inc153, i64* %i, align 8
  br label %for.cond130, !llvm.loop !8

for.end154:                                       ; preds = %for.cond130
  %294 = bitcast double** %p.addr.i121 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %294)
  %295 = bitcast double* %q.i122 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %295)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i121, align 8
  %296 = load double*, double** %p.addr.i121, align 8
  %arrayidx.i123 = getelementptr inbounds double, double* %296, i64 2
  %297 = load double, double* %arrayidx.i123, align 8
  store double %297, double* %q.i122, align 8
  %call.i124 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %298 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i125 = sitofp i64 %298 to double
  %299 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i126 = sitofp i64 %299 to double
  %mul.i127 = fmul double %conv1.i126, 0x3EB0C6F7A0B5ED8D
  %add.i128 = fadd double %conv.i125, %mul.i127
  %300 = load double*, double** %p.addr.i121, align 8
  %arrayidx2.i129 = getelementptr inbounds double, double* %300, i64 2
  store double %add.i128, double* %arrayidx2.i129, align 8
  %301 = load double*, double** %p.addr.i121, align 8
  %arrayidx3.i130 = getelementptr inbounds double, double* %301, i64 2
  %302 = load double, double* %arrayidx3.i130, align 8
  %303 = load double, double* %q.i122, align 8
  %sub.i131 = fsub double %302, %303
  %304 = load double*, double** %p.addr.i121, align 8
  %arrayidx4.i132 = getelementptr inbounds double, double* %304, i64 1
  store double %sub.i131, double* %arrayidx4.i132, align 8
  %305 = bitcast double** %p.addr.i121 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %305)
  %306 = bitcast double* %q.i122 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %306)
  %307 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %308 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul156 = fmul double %307, %308
  %309 = load double, double* @nulltime, align 8
  %sub157 = fsub double %mul156, %309
  store double %sub157, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %310 = load double, double* @piref, align 8
  %311 = load double, double* @three, align 8
  %div158 = fdiv double %310, %311
  store double %div158, double* %u, align 8
  %312 = load double, double* %u, align 8
  %313 = load double, double* %u, align 8
  %mul159 = fmul double %312, %313
  store double %mul159, double* %w, align 8
  %314 = load double, double* %u, align 8
  %315 = load double, double* @A6, align 8
  %316 = load double, double* %w, align 8
  %mul160 = fmul double %315, %316
  %317 = load double, double* @A5, align 8
  %sub161 = fsub double %mul160, %317
  %318 = load double, double* %w, align 8
  %mul162 = fmul double %sub161, %318
  %319 = load double, double* @A4, align 8
  %add163 = fadd double %mul162, %319
  %320 = load double, double* %w, align 8
  %mul164 = fmul double %add163, %320
  %321 = load double, double* @A3, align 8
  %sub165 = fsub double %mul164, %321
  %322 = load double, double* %w, align 8
  %mul166 = fmul double %sub165, %322
  %323 = load double, double* @A2, align 8
  %add167 = fadd double %mul166, %323
  %324 = load double, double* %w, align 8
  %mul168 = fmul double %add167, %324
  %325 = load double, double* @A1, align 8
  %add169 = fadd double %mul168, %325
  %326 = load double, double* %w, align 8
  %mul170 = fmul double %add169, %326
  %327 = load double, double* @one, align 8
  %add171 = fadd double %mul170, %327
  %mul172 = fmul double %314, %add171
  store double %mul172, double* @sa, align 8
  %328 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %div173 = fdiv double %328, 1.700000e+01
  store double %div173, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 10), align 16
  %329 = load double, double* %x, align 8
  %330 = load double, double* @sa, align 8
  %331 = load double, double* @two, align 8
  %332 = load double, double* %s, align 8
  %mul174 = fmul double %331, %332
  %add175 = fadd double %330, %mul174
  %mul176 = fmul double %329, %add175
  %333 = load double, double* @two, align 8
  %div177 = fdiv double %mul176, %333
  store double %div177, double* @sa, align 8
  store double 5.000000e-01, double* @sb, align 8
  %334 = load double, double* @sa, align 8
  %335 = load double, double* @sb, align 8
  %sub178 = fsub double %334, %335
  store double %sub178, double* @sc, align 8
  %336 = load double, double* @one, align 8
  %337 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 10), align 16
  %div179 = fdiv double %336, %337
  store double %div179, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 11), align 8
  %338 = load double, double* @sc, align 8
  %mul180 = fmul double %338, 1.000000e-30
  %339 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %mul181 = fmul double %339, 1.000000e-30
  %340 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 11), align 8
  %mul182 = fmul double %340, 1.000000e-30
  %call183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), double %mul180, double %mul181, double %mul182)
  %341 = load double, double* @A3, align 8
  %fneg184 = fneg double %341
  store double %fneg184, double* @A3, align 8
  %342 = load double, double* @A5, align 8
  %fneg185 = fneg double %342
  store double %fneg185, double* @A5, align 8
  %343 = load double, double* @piref, align 8
  %344 = load double, double* @three, align 8
  %345 = load i64, i64* %m, align 8
  %conv186 = sitofp i64 %345 to double
  %mul187 = fmul double %344, %conv186
  %div188 = fdiv double %343, %mul187
  store double %div188, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  %346 = bitcast double** %p.addr.i133 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %346)
  %347 = bitcast double* %q.i134 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %347)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i133, align 8
  %348 = load double*, double** %p.addr.i133, align 8
  %arrayidx.i135 = getelementptr inbounds double, double* %348, i64 2
  %349 = load double, double* %arrayidx.i135, align 8
  store double %349, double* %q.i134, align 8
  %call.i136 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %350 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i137 = sitofp i64 %350 to double
  %351 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i138 = sitofp i64 %351 to double
  %mul.i139 = fmul double %conv1.i138, 0x3EB0C6F7A0B5ED8D
  %add.i140 = fadd double %conv.i137, %mul.i139
  %352 = load double*, double** %p.addr.i133, align 8
  %arrayidx2.i141 = getelementptr inbounds double, double* %352, i64 2
  store double %add.i140, double* %arrayidx2.i141, align 8
  %353 = load double*, double** %p.addr.i133, align 8
  %arrayidx3.i142 = getelementptr inbounds double, double* %353, i64 2
  %354 = load double, double* %arrayidx3.i142, align 8
  %355 = load double, double* %q.i134, align 8
  %sub.i143 = fsub double %354, %355
  %356 = load double*, double** %p.addr.i133, align 8
  %arrayidx4.i144 = getelementptr inbounds double, double* %356, i64 1
  store double %sub.i143, double* %arrayidx4.i144, align 8
  %357 = bitcast double** %p.addr.i133 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %357)
  %358 = bitcast double* %q.i134 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %358)
  store i64 1, i64* %i, align 8
  br label %for.cond190

for.cond190:                                      ; preds = %for.inc211, %for.end154
  %359 = load i64, i64* %i, align 8
  %360 = load i64, i64* %m, align 8
  %sub191 = sub nsw i64 %360, 1
  %cmp192 = icmp sle i64 %359, %sub191
  br i1 %cmp192, label %for.body194, label %for.end213

for.body194:                                      ; preds = %for.cond190
  %361 = load i64, i64* %i, align 8
  %conv195 = sitofp i64 %361 to double
  %362 = load double, double* %x, align 8
  %mul196 = fmul double %conv195, %362
  store double %mul196, double* %u, align 8
  %363 = load double, double* %u, align 8
  %364 = load double, double* %u, align 8
  %mul197 = fmul double %363, %364
  store double %mul197, double* %w, align 8
  %365 = load double, double* %s, align 8
  %366 = load double, double* %w, align 8
  %367 = load double, double* %w, align 8
  %368 = load double, double* %w, align 8
  %369 = load double, double* %w, align 8
  %370 = load double, double* %w, align 8
  %371 = load double, double* @B6, align 8
  %372 = load double, double* %w, align 8
  %mul198 = fmul double %371, %372
  %373 = load double, double* @B5, align 8
  %add199 = fadd double %mul198, %373
  %mul200 = fmul double %370, %add199
  %374 = load double, double* @B4, align 8
  %add201 = fadd double %mul200, %374
  %mul202 = fmul double %369, %add201
  %375 = load double, double* @B3, align 8
  %add203 = fadd double %mul202, %375
  %mul204 = fmul double %368, %add203
  %376 = load double, double* @B2, align 8
  %add205 = fadd double %mul204, %376
  %mul206 = fmul double %367, %add205
  %377 = load double, double* @B1, align 8
  %add207 = fadd double %mul206, %377
  %mul208 = fmul double %366, %add207
  %add209 = fadd double %365, %mul208
  %378 = load double, double* @one, align 8
  %add210 = fadd double %add209, %378
  store double %add210, double* %s, align 8
  br label %for.inc211

for.inc211:                                       ; preds = %for.body194
  %379 = load i64, i64* %i, align 8
  %inc212 = add nsw i64 %379, 1
  store i64 %inc212, i64* %i, align 8
  br label %for.cond190, !llvm.loop !9

for.end213:                                       ; preds = %for.cond190
  %380 = bitcast double** %p.addr.i145 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %380)
  %381 = bitcast double* %q.i146 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %381)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i145, align 8
  %382 = load double*, double** %p.addr.i145, align 8
  %arrayidx.i147 = getelementptr inbounds double, double* %382, i64 2
  %383 = load double, double* %arrayidx.i147, align 8
  store double %383, double* %q.i146, align 8
  %call.i148 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %384 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i149 = sitofp i64 %384 to double
  %385 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i150 = sitofp i64 %385 to double
  %mul.i151 = fmul double %conv1.i150, 0x3EB0C6F7A0B5ED8D
  %add.i152 = fadd double %conv.i149, %mul.i151
  %386 = load double*, double** %p.addr.i145, align 8
  %arrayidx2.i153 = getelementptr inbounds double, double* %386, i64 2
  store double %add.i152, double* %arrayidx2.i153, align 8
  %387 = load double*, double** %p.addr.i145, align 8
  %arrayidx3.i154 = getelementptr inbounds double, double* %387, i64 2
  %388 = load double, double* %arrayidx3.i154, align 8
  %389 = load double, double* %q.i146, align 8
  %sub.i155 = fsub double %388, %389
  %390 = load double*, double** %p.addr.i145, align 8
  %arrayidx4.i156 = getelementptr inbounds double, double* %390, i64 1
  store double %sub.i155, double* %arrayidx4.i156, align 8
  %391 = bitcast double** %p.addr.i145 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %391)
  %392 = bitcast double* %q.i146 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %392)
  %393 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %394 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul215 = fmul double %393, %394
  %395 = load double, double* @nulltime, align 8
  %sub216 = fsub double %mul215, %395
  store double %sub216, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 12), align 16
  %396 = load double, double* @piref, align 8
  %397 = load double, double* @three, align 8
  %div217 = fdiv double %396, %397
  store double %div217, double* %u, align 8
  %398 = load double, double* %u, align 8
  %399 = load double, double* %u, align 8
  %mul218 = fmul double %398, %399
  store double %mul218, double* %w, align 8
  %400 = load double, double* %w, align 8
  %401 = load double, double* %w, align 8
  %402 = load double, double* %w, align 8
  %403 = load double, double* %w, align 8
  %404 = load double, double* %w, align 8
  %405 = load double, double* @B6, align 8
  %406 = load double, double* %w, align 8
  %mul219 = fmul double %405, %406
  %407 = load double, double* @B5, align 8
  %add220 = fadd double %mul219, %407
  %mul221 = fmul double %404, %add220
  %408 = load double, double* @B4, align 8
  %add222 = fadd double %mul221, %408
  %mul223 = fmul double %403, %add222
  %409 = load double, double* @B3, align 8
  %add224 = fadd double %mul223, %409
  %mul225 = fmul double %402, %add224
  %410 = load double, double* @B2, align 8
  %add226 = fadd double %mul225, %410
  %mul227 = fmul double %401, %add226
  %411 = load double, double* @B1, align 8
  %add228 = fadd double %mul227, %411
  %mul229 = fmul double %400, %add228
  %412 = load double, double* @one, align 8
  %add230 = fadd double %mul229, %412
  store double %add230, double* @sa, align 8
  %413 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 12), align 16
  %div231 = fdiv double %413, 1.500000e+01
  store double %div231, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 13), align 8
  %414 = load double, double* %x, align 8
  %415 = load double, double* @sa, align 8
  %416 = load double, double* @one, align 8
  %add232 = fadd double %415, %416
  %417 = load double, double* @two, align 8
  %418 = load double, double* %s, align 8
  %mul233 = fmul double %417, %418
  %add234 = fadd double %add232, %mul233
  %mul235 = fmul double %414, %add234
  %419 = load double, double* @two, align 8
  %div236 = fdiv double %mul235, %419
  store double %div236, double* @sa, align 8
  %420 = load double, double* @piref, align 8
  %421 = load double, double* @three, align 8
  %div237 = fdiv double %420, %421
  store double %div237, double* %u, align 8
  %422 = load double, double* %u, align 8
  %423 = load double, double* %u, align 8
  %mul238 = fmul double %422, %423
  store double %mul238, double* %w, align 8
  %424 = load double, double* %u, align 8
  %425 = load double, double* @A6, align 8
  %426 = load double, double* %w, align 8
  %mul239 = fmul double %425, %426
  %427 = load double, double* @A5, align 8
  %add240 = fadd double %mul239, %427
  %428 = load double, double* %w, align 8
  %mul241 = fmul double %add240, %428
  %429 = load double, double* @A4, align 8
  %add242 = fadd double %mul241, %429
  %430 = load double, double* %w, align 8
  %mul243 = fmul double %add242, %430
  %431 = load double, double* @A3, align 8
  %add244 = fadd double %mul243, %431
  %432 = load double, double* %w, align 8
  %mul245 = fmul double %add244, %432
  %433 = load double, double* @A2, align 8
  %add246 = fadd double %mul245, %433
  %434 = load double, double* %w, align 8
  %mul247 = fmul double %add246, %434
  %435 = load double, double* @A1, align 8
  %add248 = fadd double %mul247, %435
  %436 = load double, double* %w, align 8
  %mul249 = fmul double %add248, %436
  %437 = load double, double* @A0, align 8
  %add250 = fadd double %mul249, %437
  %mul251 = fmul double %424, %add250
  store double %mul251, double* @sb, align 8
  %438 = load double, double* @sa, align 8
  %439 = load double, double* @sb, align 8
  %sub252 = fsub double %438, %439
  store double %sub252, double* @sc, align 8
  %440 = load double, double* @one, align 8
  %441 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 13), align 8
  %div253 = fdiv double %440, %441
  store double %div253, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 14), align 16
  %442 = load double, double* @sc, align 8
  %mul254 = fmul double %442, 1.000000e-30
  %443 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 12), align 16
  %mul255 = fmul double %443, 1.000000e-30
  %444 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 14), align 16
  %mul256 = fmul double %444, 1.000000e-30
  %call257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), double %mul254, double %mul255, double %mul256)
  %445 = load double, double* @piref, align 8
  %446 = load double, double* @three, align 8
  %447 = load i64, i64* %m, align 8
  %conv258 = sitofp i64 %447 to double
  %mul259 = fmul double %446, %conv258
  %div260 = fdiv double %445, %mul259
  store double %div260, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  %448 = bitcast double** %p.addr.i157 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %448)
  %449 = bitcast double* %q.i158 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %449)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i157, align 8
  %450 = load double*, double** %p.addr.i157, align 8
  %arrayidx.i159 = getelementptr inbounds double, double* %450, i64 2
  %451 = load double, double* %arrayidx.i159, align 8
  store double %451, double* %q.i158, align 8
  %call.i160 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %452 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i161 = sitofp i64 %452 to double
  %453 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i162 = sitofp i64 %453 to double
  %mul.i163 = fmul double %conv1.i162, 0x3EB0C6F7A0B5ED8D
  %add.i164 = fadd double %conv.i161, %mul.i163
  %454 = load double*, double** %p.addr.i157, align 8
  %arrayidx2.i165 = getelementptr inbounds double, double* %454, i64 2
  store double %add.i164, double* %arrayidx2.i165, align 8
  %455 = load double*, double** %p.addr.i157, align 8
  %arrayidx3.i166 = getelementptr inbounds double, double* %455, i64 2
  %456 = load double, double* %arrayidx3.i166, align 8
  %457 = load double, double* %q.i158, align 8
  %sub.i167 = fsub double %456, %457
  %458 = load double*, double** %p.addr.i157, align 8
  %arrayidx4.i168 = getelementptr inbounds double, double* %458, i64 1
  store double %sub.i167, double* %arrayidx4.i168, align 8
  %459 = bitcast double** %p.addr.i157 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %459)
  %460 = bitcast double* %q.i158 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %460)
  store i64 1, i64* %i, align 8
  br label %for.cond262

for.cond262:                                      ; preds = %for.inc297, %for.end213
  %461 = load i64, i64* %i, align 8
  %462 = load i64, i64* %m, align 8
  %sub263 = sub nsw i64 %462, 1
  %cmp264 = icmp sle i64 %461, %sub263
  br i1 %cmp264, label %for.body266, label %for.end299

for.body266:                                      ; preds = %for.cond262
  %463 = load i64, i64* %i, align 8
  %conv267 = sitofp i64 %463 to double
  %464 = load double, double* %x, align 8
  %mul268 = fmul double %conv267, %464
  store double %mul268, double* %u, align 8
  %465 = load double, double* %u, align 8
  %466 = load double, double* %u, align 8
  %mul269 = fmul double %465, %466
  store double %mul269, double* %w, align 8
  %467 = load double, double* %u, align 8
  %468 = load double, double* @A6, align 8
  %469 = load double, double* %w, align 8
  %mul270 = fmul double %468, %469
  %470 = load double, double* @A5, align 8
  %add271 = fadd double %mul270, %470
  %471 = load double, double* %w, align 8
  %mul272 = fmul double %add271, %471
  %472 = load double, double* @A4, align 8
  %add273 = fadd double %mul272, %472
  %473 = load double, double* %w, align 8
  %mul274 = fmul double %add273, %473
  %474 = load double, double* @A3, align 8
  %add275 = fadd double %mul274, %474
  %475 = load double, double* %w, align 8
  %mul276 = fmul double %add275, %475
  %476 = load double, double* @A2, align 8
  %add277 = fadd double %mul276, %476
  %477 = load double, double* %w, align 8
  %mul278 = fmul double %add277, %477
  %478 = load double, double* @A1, align 8
  %add279 = fadd double %mul278, %478
  %479 = load double, double* %w, align 8
  %mul280 = fmul double %add279, %479
  %480 = load double, double* @one, align 8
  %add281 = fadd double %mul280, %480
  %mul282 = fmul double %467, %add281
  store double %mul282, double* %v, align 8
  %481 = load double, double* %s, align 8
  %482 = load double, double* %v, align 8
  %483 = load double, double* %w, align 8
  %484 = load double, double* %w, align 8
  %485 = load double, double* %w, align 8
  %486 = load double, double* %w, align 8
  %487 = load double, double* %w, align 8
  %488 = load double, double* @B6, align 8
  %489 = load double, double* %w, align 8
  %mul283 = fmul double %488, %489
  %490 = load double, double* @B5, align 8
  %add284 = fadd double %mul283, %490
  %mul285 = fmul double %487, %add284
  %491 = load double, double* @B4, align 8
  %add286 = fadd double %mul285, %491
  %mul287 = fmul double %486, %add286
  %492 = load double, double* @B3, align 8
  %add288 = fadd double %mul287, %492
  %mul289 = fmul double %485, %add288
  %493 = load double, double* @B2, align 8
  %add290 = fadd double %mul289, %493
  %mul291 = fmul double %484, %add290
  %494 = load double, double* @B1, align 8
  %add292 = fadd double %mul291, %494
  %mul293 = fmul double %483, %add292
  %495 = load double, double* @one, align 8
  %add294 = fadd double %mul293, %495
  %div295 = fdiv double %482, %add294
  %add296 = fadd double %481, %div295
  store double %add296, double* %s, align 8
  br label %for.inc297

for.inc297:                                       ; preds = %for.body266
  %496 = load i64, i64* %i, align 8
  %inc298 = add nsw i64 %496, 1
  store i64 %inc298, i64* %i, align 8
  br label %for.cond262, !llvm.loop !10

for.end299:                                       ; preds = %for.cond262
  %497 = bitcast double** %p.addr.i169 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %497)
  %498 = bitcast double* %q.i170 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %498)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i169, align 8
  %499 = load double*, double** %p.addr.i169, align 8
  %arrayidx.i171 = getelementptr inbounds double, double* %499, i64 2
  %500 = load double, double* %arrayidx.i171, align 8
  store double %500, double* %q.i170, align 8
  %call.i172 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %501 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i173 = sitofp i64 %501 to double
  %502 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i174 = sitofp i64 %502 to double
  %mul.i175 = fmul double %conv1.i174, 0x3EB0C6F7A0B5ED8D
  %add.i176 = fadd double %conv.i173, %mul.i175
  %503 = load double*, double** %p.addr.i169, align 8
  %arrayidx2.i177 = getelementptr inbounds double, double* %503, i64 2
  store double %add.i176, double* %arrayidx2.i177, align 8
  %504 = load double*, double** %p.addr.i169, align 8
  %arrayidx3.i178 = getelementptr inbounds double, double* %504, i64 2
  %505 = load double, double* %arrayidx3.i178, align 8
  %506 = load double, double* %q.i170, align 8
  %sub.i179 = fsub double %505, %506
  %507 = load double*, double** %p.addr.i169, align 8
  %arrayidx4.i180 = getelementptr inbounds double, double* %507, i64 1
  store double %sub.i179, double* %arrayidx4.i180, align 8
  %508 = bitcast double** %p.addr.i169 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %508)
  %509 = bitcast double* %q.i170 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %509)
  %510 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %511 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul301 = fmul double %510, %511
  %512 = load double, double* @nulltime, align 8
  %sub302 = fsub double %mul301, %512
  store double %sub302, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 15), align 8
  %513 = load double, double* @piref, align 8
  %514 = load double, double* @three, align 8
  %div303 = fdiv double %513, %514
  store double %div303, double* %u, align 8
  %515 = load double, double* %u, align 8
  %516 = load double, double* %u, align 8
  %mul304 = fmul double %515, %516
  store double %mul304, double* %w, align 8
  %517 = load double, double* %u, align 8
  %518 = load double, double* @A6, align 8
  %519 = load double, double* %w, align 8
  %mul305 = fmul double %518, %519
  %520 = load double, double* @A5, align 8
  %add306 = fadd double %mul305, %520
  %521 = load double, double* %w, align 8
  %mul307 = fmul double %add306, %521
  %522 = load double, double* @A4, align 8
  %add308 = fadd double %mul307, %522
  %523 = load double, double* %w, align 8
  %mul309 = fmul double %add308, %523
  %524 = load double, double* @A3, align 8
  %add310 = fadd double %mul309, %524
  %525 = load double, double* %w, align 8
  %mul311 = fmul double %add310, %525
  %526 = load double, double* @A2, align 8
  %add312 = fadd double %mul311, %526
  %527 = load double, double* %w, align 8
  %mul313 = fmul double %add312, %527
  %528 = load double, double* @A1, align 8
  %add314 = fadd double %mul313, %528
  %529 = load double, double* %w, align 8
  %mul315 = fmul double %add314, %529
  %530 = load double, double* @one, align 8
  %add316 = fadd double %mul315, %530
  %mul317 = fmul double %517, %add316
  store double %mul317, double* @sa, align 8
  %531 = load double, double* %w, align 8
  %532 = load double, double* %w, align 8
  %533 = load double, double* %w, align 8
  %534 = load double, double* %w, align 8
  %535 = load double, double* %w, align 8
  %536 = load double, double* @B6, align 8
  %537 = load double, double* %w, align 8
  %mul318 = fmul double %536, %537
  %538 = load double, double* @B5, align 8
  %add319 = fadd double %mul318, %538
  %mul320 = fmul double %535, %add319
  %539 = load double, double* @B4, align 8
  %add321 = fadd double %mul320, %539
  %mul322 = fmul double %534, %add321
  %540 = load double, double* @B3, align 8
  %add323 = fadd double %mul322, %540
  %mul324 = fmul double %533, %add323
  %541 = load double, double* @B2, align 8
  %add325 = fadd double %mul324, %541
  %mul326 = fmul double %532, %add325
  %542 = load double, double* @B1, align 8
  %add327 = fadd double %mul326, %542
  %mul328 = fmul double %531, %add327
  %543 = load double, double* @one, align 8
  %add329 = fadd double %mul328, %543
  store double %add329, double* @sb, align 8
  %544 = load double, double* @sa, align 8
  %545 = load double, double* @sb, align 8
  %div330 = fdiv double %544, %545
  store double %div330, double* @sa, align 8
  %546 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 15), align 8
  %div331 = fdiv double %546, 2.900000e+01
  store double %div331, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 16), align 16
  %547 = load double, double* %x, align 8
  %548 = load double, double* @sa, align 8
  %549 = load double, double* @two, align 8
  %550 = load double, double* %s, align 8
  %mul332 = fmul double %549, %550
  %add333 = fadd double %548, %mul332
  %mul334 = fmul double %547, %add333
  %551 = load double, double* @two, align 8
  %div335 = fdiv double %mul334, %551
  store double %div335, double* @sa, align 8
  store double 0x3FE62E42FEFA39EF, double* @sb, align 8
  %552 = load double, double* @sa, align 8
  %553 = load double, double* @sb, align 8
  %sub336 = fsub double %552, %553
  store double %sub336, double* @sc, align 8
  %554 = load double, double* @one, align 8
  %555 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 16), align 16
  %div337 = fdiv double %554, %555
  store double %div337, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 17), align 8
  %556 = load double, double* @sc, align 8
  %mul338 = fmul double %556, 1.000000e-30
  %557 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 15), align 8
  %mul339 = fmul double %557, 1.000000e-30
  %558 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 17), align 8
  %mul340 = fmul double %558, 1.000000e-30
  %call341 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), double %mul338, double %mul339, double %mul340)
  %559 = load double, double* @piref, align 8
  %560 = load double, double* @four, align 8
  %561 = load i64, i64* %m, align 8
  %conv342 = sitofp i64 %561 to double
  %mul343 = fmul double %560, %conv342
  %div344 = fdiv double %559, %mul343
  store double %div344, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  %562 = bitcast double** %p.addr.i181 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %562)
  %563 = bitcast double* %q.i182 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %563)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i181, align 8
  %564 = load double*, double** %p.addr.i181, align 8
  %arrayidx.i183 = getelementptr inbounds double, double* %564, i64 2
  %565 = load double, double* %arrayidx.i183, align 8
  store double %565, double* %q.i182, align 8
  %call.i184 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %566 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i185 = sitofp i64 %566 to double
  %567 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i186 = sitofp i64 %567 to double
  %mul.i187 = fmul double %conv1.i186, 0x3EB0C6F7A0B5ED8D
  %add.i188 = fadd double %conv.i185, %mul.i187
  %568 = load double*, double** %p.addr.i181, align 8
  %arrayidx2.i189 = getelementptr inbounds double, double* %568, i64 2
  store double %add.i188, double* %arrayidx2.i189, align 8
  %569 = load double*, double** %p.addr.i181, align 8
  %arrayidx3.i190 = getelementptr inbounds double, double* %569, i64 2
  %570 = load double, double* %arrayidx3.i190, align 8
  %571 = load double, double* %q.i182, align 8
  %sub.i191 = fsub double %570, %571
  %572 = load double*, double** %p.addr.i181, align 8
  %arrayidx4.i192 = getelementptr inbounds double, double* %572, i64 1
  store double %sub.i191, double* %arrayidx4.i192, align 8
  %573 = bitcast double** %p.addr.i181 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %573)
  %574 = bitcast double* %q.i182 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %574)
  store i64 1, i64* %i, align 8
  br label %for.cond346

for.cond346:                                      ; preds = %for.inc381, %for.end299
  %575 = load i64, i64* %i, align 8
  %576 = load i64, i64* %m, align 8
  %sub347 = sub nsw i64 %576, 1
  %cmp348 = icmp sle i64 %575, %sub347
  br i1 %cmp348, label %for.body350, label %for.end383

for.body350:                                      ; preds = %for.cond346
  %577 = load i64, i64* %i, align 8
  %conv351 = sitofp i64 %577 to double
  %578 = load double, double* %x, align 8
  %mul352 = fmul double %conv351, %578
  store double %mul352, double* %u, align 8
  %579 = load double, double* %u, align 8
  %580 = load double, double* %u, align 8
  %mul353 = fmul double %579, %580
  store double %mul353, double* %w, align 8
  %581 = load double, double* %u, align 8
  %582 = load double, double* @A6, align 8
  %583 = load double, double* %w, align 8
  %mul354 = fmul double %582, %583
  %584 = load double, double* @A5, align 8
  %add355 = fadd double %mul354, %584
  %585 = load double, double* %w, align 8
  %mul356 = fmul double %add355, %585
  %586 = load double, double* @A4, align 8
  %add357 = fadd double %mul356, %586
  %587 = load double, double* %w, align 8
  %mul358 = fmul double %add357, %587
  %588 = load double, double* @A3, align 8
  %add359 = fadd double %mul358, %588
  %589 = load double, double* %w, align 8
  %mul360 = fmul double %add359, %589
  %590 = load double, double* @A2, align 8
  %add361 = fadd double %mul360, %590
  %591 = load double, double* %w, align 8
  %mul362 = fmul double %add361, %591
  %592 = load double, double* @A1, align 8
  %add363 = fadd double %mul362, %592
  %593 = load double, double* %w, align 8
  %mul364 = fmul double %add363, %593
  %594 = load double, double* @one, align 8
  %add365 = fadd double %mul364, %594
  %mul366 = fmul double %581, %add365
  store double %mul366, double* %v, align 8
  %595 = load double, double* %s, align 8
  %596 = load double, double* %v, align 8
  %597 = load double, double* %w, align 8
  %598 = load double, double* %w, align 8
  %599 = load double, double* %w, align 8
  %600 = load double, double* %w, align 8
  %601 = load double, double* %w, align 8
  %602 = load double, double* @B6, align 8
  %603 = load double, double* %w, align 8
  %mul367 = fmul double %602, %603
  %604 = load double, double* @B5, align 8
  %add368 = fadd double %mul367, %604
  %mul369 = fmul double %601, %add368
  %605 = load double, double* @B4, align 8
  %add370 = fadd double %mul369, %605
  %mul371 = fmul double %600, %add370
  %606 = load double, double* @B3, align 8
  %add372 = fadd double %mul371, %606
  %mul373 = fmul double %599, %add372
  %607 = load double, double* @B2, align 8
  %add374 = fadd double %mul373, %607
  %mul375 = fmul double %598, %add374
  %608 = load double, double* @B1, align 8
  %add376 = fadd double %mul375, %608
  %mul377 = fmul double %597, %add376
  %609 = load double, double* @one, align 8
  %add378 = fadd double %mul377, %609
  %mul379 = fmul double %596, %add378
  %add380 = fadd double %595, %mul379
  store double %add380, double* %s, align 8
  br label %for.inc381

for.inc381:                                       ; preds = %for.body350
  %610 = load i64, i64* %i, align 8
  %inc382 = add nsw i64 %610, 1
  store i64 %inc382, i64* %i, align 8
  br label %for.cond346, !llvm.loop !11

for.end383:                                       ; preds = %for.cond346
  %611 = bitcast double** %p.addr.i193 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %611)
  %612 = bitcast double* %q.i194 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %612)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i193, align 8
  %613 = load double*, double** %p.addr.i193, align 8
  %arrayidx.i195 = getelementptr inbounds double, double* %613, i64 2
  %614 = load double, double* %arrayidx.i195, align 8
  store double %614, double* %q.i194, align 8
  %call.i196 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %615 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i197 = sitofp i64 %615 to double
  %616 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i198 = sitofp i64 %616 to double
  %mul.i199 = fmul double %conv1.i198, 0x3EB0C6F7A0B5ED8D
  %add.i200 = fadd double %conv.i197, %mul.i199
  %617 = load double*, double** %p.addr.i193, align 8
  %arrayidx2.i201 = getelementptr inbounds double, double* %617, i64 2
  store double %add.i200, double* %arrayidx2.i201, align 8
  %618 = load double*, double** %p.addr.i193, align 8
  %arrayidx3.i202 = getelementptr inbounds double, double* %618, i64 2
  %619 = load double, double* %arrayidx3.i202, align 8
  %620 = load double, double* %q.i194, align 8
  %sub.i203 = fsub double %619, %620
  %621 = load double*, double** %p.addr.i193, align 8
  %arrayidx4.i204 = getelementptr inbounds double, double* %621, i64 1
  store double %sub.i203, double* %arrayidx4.i204, align 8
  %622 = bitcast double** %p.addr.i193 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %622)
  %623 = bitcast double* %q.i194 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %623)
  %624 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %625 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul385 = fmul double %624, %625
  %626 = load double, double* @nulltime, align 8
  %sub386 = fsub double %mul385, %626
  store double %sub386, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 18), align 16
  %627 = load double, double* @piref, align 8
  %628 = load double, double* @four, align 8
  %div387 = fdiv double %627, %628
  store double %div387, double* %u, align 8
  %629 = load double, double* %u, align 8
  %630 = load double, double* %u, align 8
  %mul388 = fmul double %629, %630
  store double %mul388, double* %w, align 8
  %631 = load double, double* %u, align 8
  %632 = load double, double* @A6, align 8
  %633 = load double, double* %w, align 8
  %mul389 = fmul double %632, %633
  %634 = load double, double* @A5, align 8
  %add390 = fadd double %mul389, %634
  %635 = load double, double* %w, align 8
  %mul391 = fmul double %add390, %635
  %636 = load double, double* @A4, align 8
  %add392 = fadd double %mul391, %636
  %637 = load double, double* %w, align 8
  %mul393 = fmul double %add392, %637
  %638 = load double, double* @A3, align 8
  %add394 = fadd double %mul393, %638
  %639 = load double, double* %w, align 8
  %mul395 = fmul double %add394, %639
  %640 = load double, double* @A2, align 8
  %add396 = fadd double %mul395, %640
  %641 = load double, double* %w, align 8
  %mul397 = fmul double %add396, %641
  %642 = load double, double* @A1, align 8
  %add398 = fadd double %mul397, %642
  %643 = load double, double* %w, align 8
  %mul399 = fmul double %add398, %643
  %644 = load double, double* @one, align 8
  %add400 = fadd double %mul399, %644
  %mul401 = fmul double %631, %add400
  store double %mul401, double* @sa, align 8
  %645 = load double, double* %w, align 8
  %646 = load double, double* %w, align 8
  %647 = load double, double* %w, align 8
  %648 = load double, double* %w, align 8
  %649 = load double, double* %w, align 8
  %650 = load double, double* @B6, align 8
  %651 = load double, double* %w, align 8
  %mul402 = fmul double %650, %651
  %652 = load double, double* @B5, align 8
  %add403 = fadd double %mul402, %652
  %mul404 = fmul double %649, %add403
  %653 = load double, double* @B4, align 8
  %add405 = fadd double %mul404, %653
  %mul406 = fmul double %648, %add405
  %654 = load double, double* @B3, align 8
  %add407 = fadd double %mul406, %654
  %mul408 = fmul double %647, %add407
  %655 = load double, double* @B2, align 8
  %add409 = fadd double %mul408, %655
  %mul410 = fmul double %646, %add409
  %656 = load double, double* @B1, align 8
  %add411 = fadd double %mul410, %656
  %mul412 = fmul double %645, %add411
  %657 = load double, double* @one, align 8
  %add413 = fadd double %mul412, %657
  store double %add413, double* @sb, align 8
  %658 = load double, double* @sa, align 8
  %659 = load double, double* @sb, align 8
  %mul414 = fmul double %658, %659
  store double %mul414, double* @sa, align 8
  %660 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 18), align 16
  %div415 = fdiv double %660, 2.900000e+01
  store double %div415, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 19), align 8
  %661 = load double, double* %x, align 8
  %662 = load double, double* @sa, align 8
  %663 = load double, double* @two, align 8
  %664 = load double, double* %s, align 8
  %mul416 = fmul double %663, %664
  %add417 = fadd double %662, %mul416
  %mul418 = fmul double %661, %add417
  %665 = load double, double* @two, align 8
  %div419 = fdiv double %mul418, %665
  store double %div419, double* @sa, align 8
  store double 2.500000e-01, double* @sb, align 8
  %666 = load double, double* @sa, align 8
  %667 = load double, double* @sb, align 8
  %sub420 = fsub double %666, %667
  store double %sub420, double* @sc, align 8
  %668 = load double, double* @one, align 8
  %669 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 19), align 8
  %div421 = fdiv double %668, %669
  store double %div421, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 20), align 16
  %670 = load double, double* @sc, align 8
  %mul422 = fmul double %670, 1.000000e-30
  %671 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 18), align 16
  %mul423 = fmul double %671, 1.000000e-30
  %672 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 20), align 16
  %mul424 = fmul double %672, 1.000000e-30
  %call425 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), double %mul422, double %mul423, double %mul424)
  store double 0.000000e+00, double* %s, align 8
  %673 = load double, double* @one, align 8
  store double %673, double* %w, align 8
  store double 0x40599541F7F192A4, double* @sa, align 8
  %674 = load double, double* @sa, align 8
  %675 = load i64, i64* %m, align 8
  %conv426 = sitofp i64 %675 to double
  %div427 = fdiv double %674, %conv426
  store double %div427, double* %v, align 8
  %676 = bitcast double** %p.addr.i205 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %676)
  %677 = bitcast double* %q.i206 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %677)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i205, align 8
  %678 = load double*, double** %p.addr.i205, align 8
  %arrayidx.i207 = getelementptr inbounds double, double* %678, i64 2
  %679 = load double, double* %arrayidx.i207, align 8
  store double %679, double* %q.i206, align 8
  %call.i208 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %680 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i209 = sitofp i64 %680 to double
  %681 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i210 = sitofp i64 %681 to double
  %mul.i211 = fmul double %conv1.i210, 0x3EB0C6F7A0B5ED8D
  %add.i212 = fadd double %conv.i209, %mul.i211
  %682 = load double*, double** %p.addr.i205, align 8
  %arrayidx2.i213 = getelementptr inbounds double, double* %682, i64 2
  store double %add.i212, double* %arrayidx2.i213, align 8
  %683 = load double*, double** %p.addr.i205, align 8
  %arrayidx3.i214 = getelementptr inbounds double, double* %683, i64 2
  %684 = load double, double* %arrayidx3.i214, align 8
  %685 = load double, double* %q.i206, align 8
  %sub.i215 = fsub double %684, %685
  %686 = load double*, double** %p.addr.i205, align 8
  %arrayidx4.i216 = getelementptr inbounds double, double* %686, i64 1
  store double %sub.i215, double* %arrayidx4.i216, align 8
  %687 = bitcast double** %p.addr.i205 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %687)
  %688 = bitcast double* %q.i206 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %688)
  store i64 1, i64* %i, align 8
  br label %for.cond429

for.cond429:                                      ; preds = %for.inc447, %for.end383
  %689 = load i64, i64* %i, align 8
  %690 = load i64, i64* %m, align 8
  %sub430 = sub nsw i64 %690, 1
  %cmp431 = icmp sle i64 %689, %sub430
  br i1 %cmp431, label %for.body433, label %for.end449

for.body433:                                      ; preds = %for.cond429
  %691 = load i64, i64* %i, align 8
  %conv434 = sitofp i64 %691 to double
  %692 = load double, double* %v, align 8
  %mul435 = fmul double %conv434, %692
  store double %mul435, double* %x, align 8
  %693 = load double, double* %x, align 8
  %694 = load double, double* %x, align 8
  %mul436 = fmul double %693, %694
  store double %mul436, double* %u, align 8
  %695 = load double, double* %s, align 8
  %696 = load double, double* %w, align 8
  %697 = load double, double* %x, align 8
  %698 = load double, double* %w, align 8
  %add437 = fadd double %697, %698
  %div438 = fdiv double %696, %add437
  %sub439 = fsub double %695, %div438
  %699 = load double, double* %x, align 8
  %700 = load double, double* %u, align 8
  %701 = load double, double* %w, align 8
  %add440 = fadd double %700, %701
  %div441 = fdiv double %699, %add440
  %sub442 = fsub double %sub439, %div441
  %702 = load double, double* %u, align 8
  %703 = load double, double* %x, align 8
  %704 = load double, double* %u, align 8
  %mul443 = fmul double %703, %704
  %705 = load double, double* %w, align 8
  %add444 = fadd double %mul443, %705
  %div445 = fdiv double %702, %add444
  %sub446 = fsub double %sub442, %div445
  store double %sub446, double* %s, align 8
  br label %for.inc447

for.inc447:                                       ; preds = %for.body433
  %706 = load i64, i64* %i, align 8
  %inc448 = add nsw i64 %706, 1
  store i64 %inc448, i64* %i, align 8
  br label %for.cond429, !llvm.loop !12

for.end449:                                       ; preds = %for.cond429
  %707 = bitcast double** %p.addr.i217 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %707)
  %708 = bitcast double* %q.i218 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %708)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i217, align 8
  %709 = load double*, double** %p.addr.i217, align 8
  %arrayidx.i219 = getelementptr inbounds double, double* %709, i64 2
  %710 = load double, double* %arrayidx.i219, align 8
  store double %710, double* %q.i218, align 8
  %call.i220 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %711 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i221 = sitofp i64 %711 to double
  %712 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i222 = sitofp i64 %712 to double
  %mul.i223 = fmul double %conv1.i222, 0x3EB0C6F7A0B5ED8D
  %add.i224 = fadd double %conv.i221, %mul.i223
  %713 = load double*, double** %p.addr.i217, align 8
  %arrayidx2.i225 = getelementptr inbounds double, double* %713, i64 2
  store double %add.i224, double* %arrayidx2.i225, align 8
  %714 = load double*, double** %p.addr.i217, align 8
  %arrayidx3.i226 = getelementptr inbounds double, double* %714, i64 2
  %715 = load double, double* %arrayidx3.i226, align 8
  %716 = load double, double* %q.i218, align 8
  %sub.i227 = fsub double %715, %716
  %717 = load double*, double** %p.addr.i217, align 8
  %arrayidx4.i228 = getelementptr inbounds double, double* %717, i64 1
  store double %sub.i227, double* %arrayidx4.i228, align 8
  %718 = bitcast double** %p.addr.i217 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %718)
  %719 = bitcast double* %q.i218 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %719)
  %720 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %721 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul451 = fmul double %720, %721
  %722 = load double, double* @nulltime, align 8
  %sub452 = fsub double %mul451, %722
  store double %sub452, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 21), align 8
  %723 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 21), align 8
  %div453 = fdiv double %723, 1.200000e+01
  store double %div453, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 22), align 16
  %724 = load double, double* @sa, align 8
  store double %724, double* %x, align 8
  %725 = load double, double* %x, align 8
  %726 = load double, double* %x, align 8
  %mul454 = fmul double %725, %726
  store double %mul454, double* %u, align 8
  %727 = load double, double* %w, align 8
  %fneg455 = fneg double %727
  %728 = load double, double* %w, align 8
  %729 = load double, double* %x, align 8
  %730 = load double, double* %w, align 8
  %add456 = fadd double %729, %730
  %div457 = fdiv double %728, %add456
  %sub458 = fsub double %fneg455, %div457
  %731 = load double, double* %x, align 8
  %732 = load double, double* %u, align 8
  %733 = load double, double* %w, align 8
  %add459 = fadd double %732, %733
  %div460 = fdiv double %731, %add459
  %sub461 = fsub double %sub458, %div460
  %734 = load double, double* %u, align 8
  %735 = load double, double* %x, align 8
  %736 = load double, double* %u, align 8
  %mul462 = fmul double %735, %736
  %737 = load double, double* %w, align 8
  %add463 = fadd double %mul462, %737
  %div464 = fdiv double %734, %add463
  %sub465 = fsub double %sub461, %div464
  store double %sub465, double* @sa, align 8
  %738 = load double, double* %v, align 8
  %mul466 = fmul double 1.800000e+01, %738
  %739 = load double, double* @sa, align 8
  %740 = load double, double* @two, align 8
  %741 = load double, double* %s, align 8
  %mul467 = fmul double %740, %741
  %add468 = fadd double %739, %mul467
  %mul469 = fmul double %mul466, %add468
  store double %mul469, double* @sa, align 8
  %742 = load double, double* @sa, align 8
  %conv470 = fptosi double %742 to i64
  %mul471 = mul nsw i64 -2000, %conv470
  store i64 %mul471, i64* %m, align 8
  %743 = load i64, i64* %m, align 8
  %conv472 = sitofp i64 %743 to double
  %744 = load double, double* @scale, align 8
  %div473 = fdiv double %conv472, %744
  %conv474 = fptosi double %div473 to i64
  store i64 %conv474, i64* %m, align 8
  %745 = load double, double* @sa, align 8
  %add475 = fadd double %745, 5.002000e+02
  store double %add475, double* @sc, align 8
  %746 = load double, double* @one, align 8
  %747 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 22), align 16
  %div476 = fdiv double %746, %747
  store double %div476, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 23), align 8
  %748 = load double, double* @sc, align 8
  %mul477 = fmul double %748, 1.000000e-30
  %749 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 21), align 8
  %mul478 = fmul double %749, 1.000000e-30
  %750 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 23), align 8
  %mul479 = fmul double %750, 1.000000e-30
  %call480 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), double %mul477, double %mul478, double %mul479)
  %751 = load double, double* @piref, align 8
  %752 = load double, double* @three, align 8
  %753 = load i64, i64* %m, align 8
  %conv481 = sitofp i64 %753 to double
  %mul482 = fmul double %752, %conv481
  %div483 = fdiv double %751, %mul482
  store double %div483, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  %754 = bitcast double** %p.addr.i229 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %754)
  %755 = bitcast double* %q.i230 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %755)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i229, align 8
  %756 = load double*, double** %p.addr.i229, align 8
  %arrayidx.i231 = getelementptr inbounds double, double* %756, i64 2
  %757 = load double, double* %arrayidx.i231, align 8
  store double %757, double* %q.i230, align 8
  %call.i232 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %758 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i233 = sitofp i64 %758 to double
  %759 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i234 = sitofp i64 %759 to double
  %mul.i235 = fmul double %conv1.i234, 0x3EB0C6F7A0B5ED8D
  %add.i236 = fadd double %conv.i233, %mul.i235
  %760 = load double*, double** %p.addr.i229, align 8
  %arrayidx2.i237 = getelementptr inbounds double, double* %760, i64 2
  store double %add.i236, double* %arrayidx2.i237, align 8
  %761 = load double*, double** %p.addr.i229, align 8
  %arrayidx3.i238 = getelementptr inbounds double, double* %761, i64 2
  %762 = load double, double* %arrayidx3.i238, align 8
  %763 = load double, double* %q.i230, align 8
  %sub.i239 = fsub double %762, %763
  %764 = load double*, double** %p.addr.i229, align 8
  %arrayidx4.i240 = getelementptr inbounds double, double* %764, i64 1
  store double %sub.i239, double* %arrayidx4.i240, align 8
  %765 = bitcast double** %p.addr.i229 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %765)
  %766 = bitcast double* %q.i230 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %766)
  store i64 1, i64* %i, align 8
  br label %for.cond485

for.cond485:                                      ; preds = %for.inc521, %for.end449
  %767 = load i64, i64* %i, align 8
  %768 = load i64, i64* %m, align 8
  %sub486 = sub nsw i64 %768, 1
  %cmp487 = icmp sle i64 %767, %sub486
  br i1 %cmp487, label %for.body489, label %for.end523

for.body489:                                      ; preds = %for.cond485
  %769 = load i64, i64* %i, align 8
  %conv490 = sitofp i64 %769 to double
  %770 = load double, double* %x, align 8
  %mul491 = fmul double %conv490, %770
  store double %mul491, double* %u, align 8
  %771 = load double, double* %u, align 8
  %772 = load double, double* %u, align 8
  %mul492 = fmul double %771, %772
  store double %mul492, double* %w, align 8
  %773 = load double, double* %w, align 8
  %774 = load double, double* %w, align 8
  %775 = load double, double* %w, align 8
  %776 = load double, double* %w, align 8
  %777 = load double, double* %w, align 8
  %778 = load double, double* @B6, align 8
  %779 = load double, double* %w, align 8
  %mul493 = fmul double %778, %779
  %780 = load double, double* @B5, align 8
  %add494 = fadd double %mul493, %780
  %mul495 = fmul double %777, %add494
  %781 = load double, double* @B4, align 8
  %add496 = fadd double %mul495, %781
  %mul497 = fmul double %776, %add496
  %782 = load double, double* @B3, align 8
  %add498 = fadd double %mul497, %782
  %mul499 = fmul double %775, %add498
  %783 = load double, double* @B2, align 8
  %add500 = fadd double %mul499, %783
  %mul501 = fmul double %774, %add500
  %784 = load double, double* @B1, align 8
  %add502 = fadd double %mul501, %784
  %mul503 = fmul double %773, %add502
  %785 = load double, double* @one, align 8
  %add504 = fadd double %mul503, %785
  store double %add504, double* %v, align 8
  %786 = load double, double* %s, align 8
  %787 = load double, double* %v, align 8
  %788 = load double, double* %v, align 8
  %mul505 = fmul double %787, %788
  %789 = load double, double* %u, align 8
  %mul506 = fmul double %mul505, %789
  %790 = load double, double* @A6, align 8
  %791 = load double, double* %w, align 8
  %mul507 = fmul double %790, %791
  %792 = load double, double* @A5, align 8
  %add508 = fadd double %mul507, %792
  %793 = load double, double* %w, align 8
  %mul509 = fmul double %add508, %793
  %794 = load double, double* @A4, align 8
  %add510 = fadd double %mul509, %794
  %795 = load double, double* %w, align 8
  %mul511 = fmul double %add510, %795
  %796 = load double, double* @A3, align 8
  %add512 = fadd double %mul511, %796
  %797 = load double, double* %w, align 8
  %mul513 = fmul double %add512, %797
  %798 = load double, double* @A2, align 8
  %add514 = fadd double %mul513, %798
  %799 = load double, double* %w, align 8
  %mul515 = fmul double %add514, %799
  %800 = load double, double* @A1, align 8
  %add516 = fadd double %mul515, %800
  %801 = load double, double* %w, align 8
  %mul517 = fmul double %add516, %801
  %802 = load double, double* @one, align 8
  %add518 = fadd double %mul517, %802
  %mul519 = fmul double %mul506, %add518
  %add520 = fadd double %786, %mul519
  store double %add520, double* %s, align 8
  br label %for.inc521

for.inc521:                                       ; preds = %for.body489
  %803 = load i64, i64* %i, align 8
  %inc522 = add nsw i64 %803, 1
  store i64 %inc522, i64* %i, align 8
  br label %for.cond485, !llvm.loop !13

for.end523:                                       ; preds = %for.cond485
  %804 = bitcast double** %p.addr.i241 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %804)
  %805 = bitcast double* %q.i242 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %805)
  store double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 0), double** %p.addr.i241, align 8
  %806 = load double*, double** %p.addr.i241, align 8
  %arrayidx.i243 = getelementptr inbounds double, double* %806, i64 2
  %807 = load double, double* %arrayidx.i243, align 8
  store double %807, double* %q.i242, align 8
  %call.i244 = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
  %808 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv.i245 = sitofp i64 %808 to double
  %809 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1.i246 = sitofp i64 %809 to double
  %mul.i247 = fmul double %conv1.i246, 0x3EB0C6F7A0B5ED8D
  %add.i248 = fadd double %conv.i245, %mul.i247
  %810 = load double*, double** %p.addr.i241, align 8
  %arrayidx2.i249 = getelementptr inbounds double, double* %810, i64 2
  store double %add.i248, double* %arrayidx2.i249, align 8
  %811 = load double*, double** %p.addr.i241, align 8
  %arrayidx3.i250 = getelementptr inbounds double, double* %811, i64 2
  %812 = load double, double* %arrayidx3.i250, align 8
  %813 = load double, double* %q.i242, align 8
  %sub.i251 = fsub double %812, %813
  %814 = load double*, double** %p.addr.i241, align 8
  %arrayidx4.i252 = getelementptr inbounds double, double* %814, i64 1
  store double %sub.i251, double* %arrayidx4.i252, align 8
  %815 = bitcast double** %p.addr.i241 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %815)
  %816 = bitcast double* %q.i242 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %816)
  %817 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %818 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul525 = fmul double %817, %818
  %819 = load double, double* @nulltime, align 8
  %sub526 = fsub double %mul525, %819
  store double %sub526, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 24), align 16
  %820 = load double, double* @piref, align 8
  %821 = load double, double* @three, align 8
  %div527 = fdiv double %820, %821
  store double %div527, double* %u, align 8
  %822 = load double, double* %u, align 8
  %823 = load double, double* %u, align 8
  %mul528 = fmul double %822, %823
  store double %mul528, double* %w, align 8
  %824 = load double, double* %u, align 8
  %825 = load double, double* @A6, align 8
  %826 = load double, double* %w, align 8
  %mul529 = fmul double %825, %826
  %827 = load double, double* @A5, align 8
  %add530 = fadd double %mul529, %827
  %828 = load double, double* %w, align 8
  %mul531 = fmul double %add530, %828
  %829 = load double, double* @A4, align 8
  %add532 = fadd double %mul531, %829
  %830 = load double, double* %w, align 8
  %mul533 = fmul double %add532, %830
  %831 = load double, double* @A3, align 8
  %add534 = fadd double %mul533, %831
  %832 = load double, double* %w, align 8
  %mul535 = fmul double %add534, %832
  %833 = load double, double* @A2, align 8
  %add536 = fadd double %mul535, %833
  %834 = load double, double* %w, align 8
  %mul537 = fmul double %add536, %834
  %835 = load double, double* @A1, align 8
  %add538 = fadd double %mul537, %835
  %836 = load double, double* %w, align 8
  %mul539 = fmul double %add538, %836
  %837 = load double, double* @one, align 8
  %add540 = fadd double %mul539, %837
  %mul541 = fmul double %824, %add540
  store double %mul541, double* @sa, align 8
  %838 = load double, double* %w, align 8
  %839 = load double, double* %w, align 8
  %840 = load double, double* %w, align 8
  %841 = load double, double* %w, align 8
  %842 = load double, double* %w, align 8
  %843 = load double, double* @B6, align 8
  %844 = load double, double* %w, align 8
  %mul542 = fmul double %843, %844
  %845 = load double, double* @B5, align 8
  %add543 = fadd double %mul542, %845
  %mul544 = fmul double %842, %add543
  %846 = load double, double* @B4, align 8
  %add545 = fadd double %mul544, %846
  %mul546 = fmul double %841, %add545
  %847 = load double, double* @B3, align 8
  %add547 = fadd double %mul546, %847
  %mul548 = fmul double %840, %add547
  %848 = load double, double* @B2, align 8
  %add549 = fadd double %mul548, %848
  %mul550 = fmul double %839, %add549
  %849 = load double, double* @B1, align 8
  %add551 = fadd double %mul550, %849
  %mul552 = fmul double %838, %add551
  %850 = load double, double* @one, align 8
  %add553 = fadd double %mul552, %850
  store double %add553, double* @sb, align 8
  %851 = load double, double* @sa, align 8
  %852 = load double, double* @sb, align 8
  %mul554 = fmul double %851, %852
  %853 = load double, double* @sb, align 8
  %mul555 = fmul double %mul554, %853
  store double %mul555, double* @sa, align 8
  %854 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 24), align 16
  %div556 = fdiv double %854, 3.000000e+01
  store double %div556, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 25), align 8
  %855 = load double, double* %x, align 8
  %856 = load double, double* @sa, align 8
  %857 = load double, double* @two, align 8
  %858 = load double, double* %s, align 8
  %mul557 = fmul double %857, %858
  %add558 = fadd double %856, %mul557
  %mul559 = fmul double %855, %add558
  %859 = load double, double* @two, align 8
  %div560 = fdiv double %mul559, %859
  store double %div560, double* @sa, align 8
  store double 0x3FD2AAAAAAAAAAAB, double* @sb, align 8
  %860 = load double, double* @sa, align 8
  %861 = load double, double* @sb, align 8
  %sub561 = fsub double %860, %861
  store double %sub561, double* @sc, align 8
  %862 = load double, double* @one, align 8
  %863 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 25), align 8
  %div562 = fdiv double %862, %863
  store double %div562, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 26), align 16
  %864 = load double, double* @sc, align 8
  %mul563 = fmul double %864, 1.000000e-30
  %865 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 24), align 16
  %mul564 = fmul double %865, 1.000000e-30
  %866 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 26), align 16
  %mul565 = fmul double %866, 1.000000e-30
  %call566 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), double %mul563, double %mul564, double %mul565)
  %867 = load double, double* @five, align 8
  %868 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 6), align 16
  %869 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 5), align 8
  %sub567 = fsub double %868, %869
  %mul568 = fmul double %867, %sub567
  %870 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %add569 = fadd double %mul568, %870
  %div570 = fdiv double %add569, 5.200000e+01
  store double %div570, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 27), align 8
  %871 = load double, double* @one, align 8
  %872 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 27), align 8
  %div571 = fdiv double %871, %872
  store double %div571, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 28), align 16
  %873 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 2), align 16
  %874 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %add572 = fadd double %873, %874
  %875 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 12), align 16
  %add573 = fadd double %add572, %875
  %876 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 15), align 8
  %add574 = fadd double %add573, %876
  %877 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 18), align 16
  %add575 = fadd double %add574, %877
  store double %add575, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 29), align 8
  %878 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 29), align 8
  %879 = load double, double* @four, align 8
  %880 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 21), align 8
  %mul576 = fmul double %879, %880
  %add577 = fadd double %878, %mul576
  %div578 = fdiv double %add577, 1.520000e+02
  store double %div578, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 29), align 8
  %881 = load double, double* @one, align 8
  %882 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 29), align 8
  %div579 = fdiv double %881, %882
  store double %div579, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 30), align 16
  %883 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 2), align 16
  %884 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %add580 = fadd double %883, %884
  %885 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 12), align 16
  %add581 = fadd double %add580, %885
  %886 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 15), align 8
  %add582 = fadd double %add581, %886
  %887 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 18), align 16
  %add583 = fadd double %add582, %887
  store double %add583, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 31), align 8
  %888 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 31), align 8
  %889 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 21), align 8
  %add584 = fadd double %888, %889
  %890 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 24), align 16
  %add585 = fadd double %add584, %890
  %div586 = fdiv double %add585, 1.460000e+02
  store double %div586, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 31), align 8
  %891 = load double, double* @one, align 8
  %892 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 31), align 8
  %div587 = fdiv double %891, %892
  store double %div587, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 32), align 16
  %893 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %894 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 12), align 16
  %add588 = fadd double %893, %894
  %895 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 18), align 16
  %add589 = fadd double %add588, %895
  %896 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 24), align 16
  %add590 = fadd double %add589, %896
  %div591 = fdiv double %add590, 9.100000e+01
  store double %div591, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 33), align 8
  %897 = load double, double* @one, align 8
  %898 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 33), align 8
  %div592 = fdiv double %897, %898
  store double %div592, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 34), align 16
  %call593 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %899 = load i64, i64* %m, align 8
  %call594 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i64 %899)
  %900 = load double, double* @nulltime, align 8
  %mul595 = fmul double %900, 1.000000e-30
  %call596 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), double %mul595)
  %901 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 28), align 16
  %mul597 = fmul double %901, 1.000000e-30
  %call598 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), double %mul597)
  %902 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 30), align 16
  %mul599 = fmul double %902, 1.000000e-30
  %call600 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), double %mul599)
  %903 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 32), align 16
  %mul601 = fmul double %903, 1.000000e-30
  %call602 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), double %mul601)
  %904 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 34), align 16
  %mul603 = fmul double %904, 1.000000e-30
  %call604 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), double %mul603)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dtime(double* %p) #0 {
entry:
  %p.addr = alloca double*, align 8
  %q = alloca double, align 8
  store double* %p, double** %p.addr, align 8
  %0 = load double*, double** %p.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 2
  %1 = load double, double* %arrayidx, align 8
  store double %1, double* %q, align 8
  %call = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #4
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

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

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
