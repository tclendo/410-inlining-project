; ModuleID = 'evalloop.ll'
source_filename = "evalloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sum = dso_local global i32 0, align 4
@eval.dispatch = internal global [32 x i8*] [i8* blockaddress(@eval, %L0), i8* blockaddress(@eval, %L1), i8* blockaddress(@eval, %L2), i8* blockaddress(@eval, %L3), i8* blockaddress(@eval, %L4), i8* blockaddress(@eval, %L5), i8* blockaddress(@eval, %L6), i8* blockaddress(@eval, %L7), i8* blockaddress(@eval, %L8), i8* blockaddress(@eval, %L9), i8* blockaddress(@eval, %L10), i8* blockaddress(@eval, %L11), i8* blockaddress(@eval, %L12), i8* blockaddress(@eval, %L13), i8* blockaddress(@eval, %L14), i8* blockaddress(@eval, %L15), i8* blockaddress(@eval, %L16), i8* blockaddress(@eval, %L17), i8* blockaddress(@eval, %L18), i8* blockaddress(@eval, %L19), i8* blockaddress(@eval, %L20), i8* blockaddress(@eval, %L21), i8* blockaddress(@eval, %L22), i8* blockaddress(@eval, %L23), i8* blockaddress(@eval, %L24), i8* blockaddress(@eval, %L25), i8* blockaddress(@eval, %L26), i8* blockaddress(@eval, %L27), i8* blockaddress(@eval, %L28), i8* blockaddress(@eval, %L29), i8* blockaddress(@eval, %L30), i8* blockaddress(@eval, %L31)], align 16
@.str = private unnamed_addr constant [9 x i8] c"Sum: %u\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @execute(i32 %code) #0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  %1 = load i32, i32* @sum, align 4
  %add = add i32 %1, %0
  store i32 %add, i32* @sum, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @eval(i32* %p) #0 {
entry:
  %code.addr.i59 = alloca i32, align 4
  %code.addr.i57 = alloca i32, align 4
  %code.addr.i55 = alloca i32, align 4
  %code.addr.i53 = alloca i32, align 4
  %code.addr.i51 = alloca i32, align 4
  %code.addr.i49 = alloca i32, align 4
  %code.addr.i47 = alloca i32, align 4
  %code.addr.i45 = alloca i32, align 4
  %code.addr.i43 = alloca i32, align 4
  %code.addr.i41 = alloca i32, align 4
  %code.addr.i39 = alloca i32, align 4
  %code.addr.i37 = alloca i32, align 4
  %code.addr.i35 = alloca i32, align 4
  %code.addr.i33 = alloca i32, align 4
  %code.addr.i31 = alloca i32, align 4
  %code.addr.i29 = alloca i32, align 4
  %code.addr.i27 = alloca i32, align 4
  %code.addr.i25 = alloca i32, align 4
  %code.addr.i23 = alloca i32, align 4
  %code.addr.i21 = alloca i32, align 4
  %code.addr.i19 = alloca i32, align 4
  %code.addr.i17 = alloca i32, align 4
  %code.addr.i15 = alloca i32, align 4
  %code.addr.i13 = alloca i32, align 4
  %code.addr.i11 = alloca i32, align 4
  %code.addr.i9 = alloca i32, align 4
  %code.addr.i7 = alloca i32, align 4
  %code.addr.i5 = alloca i32, align 4
  %code.addr.i3 = alloca i32, align 4
  %code.addr.i1 = alloca i32, align 4
  %code.addr.i = alloca i32, align 4
  %p.addr = alloca i32*, align 8
  %opcode = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 0, i32* %opcode, align 4
  br label %while.body

while.body:                                       ; preds = %sw.epilog, %entry
  %0 = load i32*, i32** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %0, i32 1
  store i32* %incdec.ptr, i32** %p.addr, align 8
  %1 = load i32, i32* %0, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb7
    i32 4, label %sw.bb11
    i32 5, label %sw.bb15
    i32 6, label %sw.bb19
    i32 7, label %sw.bb23
    i32 8, label %sw.bb27
    i32 9, label %sw.bb31
    i32 10, label %sw.bb35
    i32 11, label %sw.bb39
    i32 12, label %sw.bb43
    i32 13, label %sw.bb47
    i32 14, label %sw.bb51
    i32 15, label %sw.bb55
    i32 16, label %sw.bb59
    i32 17, label %sw.bb63
    i32 18, label %sw.bb67
    i32 19, label %sw.bb71
    i32 20, label %sw.bb75
    i32 21, label %sw.bb79
    i32 22, label %sw.bb83
    i32 23, label %sw.bb87
    i32 24, label %sw.bb91
    i32 25, label %sw.bb95
    i32 26, label %sw.bb99
    i32 27, label %sw.bb103
    i32 28, label %sw.bb107
    i32 29, label %sw.bb111
    i32 30, label %sw.bb115
    i32 31, label %sw.bb119
  ]

L0:                                               ; preds = %indirectgoto
  store i32 0, i32* %opcode, align 4
  br label %sw.bb

sw.bb:                                            ; preds = %L0, %while.body
  ret void

indirectgoto:                                     ; preds = %sw.bb119, %sw.bb115, %sw.bb111, %sw.bb107, %sw.bb103, %sw.bb99, %sw.bb95, %sw.bb91, %sw.bb87, %sw.bb83, %sw.bb79, %sw.bb75, %sw.bb71, %sw.bb67, %sw.bb63, %sw.bb59, %sw.bb55, %sw.bb51, %sw.bb47, %sw.bb43, %sw.bb39, %sw.bb35, %sw.bb31, %sw.bb27, %sw.bb23, %sw.bb19, %sw.bb15, %sw.bb11, %sw.bb7, %sw.bb3, %sw.bb1
  %indirect.goto.dest = phi i8* [ %9, %sw.bb1 ], [ %17, %sw.bb3 ], [ %25, %sw.bb7 ], [ %33, %sw.bb11 ], [ %41, %sw.bb15 ], [ %49, %sw.bb19 ], [ %57, %sw.bb23 ], [ %65, %sw.bb27 ], [ %73, %sw.bb31 ], [ %81, %sw.bb35 ], [ %89, %sw.bb39 ], [ %97, %sw.bb43 ], [ %105, %sw.bb47 ], [ %113, %sw.bb51 ], [ %121, %sw.bb55 ], [ %129, %sw.bb59 ], [ %137, %sw.bb63 ], [ %145, %sw.bb67 ], [ %153, %sw.bb71 ], [ %161, %sw.bb75 ], [ %169, %sw.bb79 ], [ %177, %sw.bb83 ], [ %185, %sw.bb87 ], [ %193, %sw.bb91 ], [ %201, %sw.bb95 ], [ %209, %sw.bb99 ], [ %217, %sw.bb103 ], [ %225, %sw.bb107 ], [ %233, %sw.bb111 ], [ %241, %sw.bb115 ], [ %249, %sw.bb119 ]
  indirectbr i8* %indirect.goto.dest, [label %L0, label %L1, label %L2, label %L3, label %L4, label %L5, label %L6, label %L7, label %L8, label %L9, label %L10, label %L11, label %L12, label %L13, label %L14, label %L15, label %L16, label %L17, label %L18, label %L19, label %L20, label %L21, label %L22, label %L23, label %L24, label %L25, label %L26, label %L27, label %L28, label %L29, label %L30, label %L31]

L1:                                               ; preds = %indirectgoto
  store i32 1, i32* %opcode, align 4
  br label %sw.bb1

sw.bb1:                                           ; preds = %L1, %while.body
  %2 = load i32, i32* %opcode, align 4
  %3 = bitcast i32* %code.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3)
  store i32 %2, i32* %code.addr.i, align 4
  %4 = load i32, i32* %code.addr.i, align 4
  %5 = load i32, i32* @sum, align 4
  %add.i = add i32 %5, %4
  store i32 %add.i, i32* @sum, align 4
  %6 = bitcast i32* %code.addr.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6)
  %7 = load i32*, i32** %p.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %incdec.ptr2, i32** %p.addr, align 8
  %8 = load i32, i32* %7, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  br label %indirectgoto

L2:                                               ; preds = %indirectgoto
  store i32 2, i32* %opcode, align 4
  br label %sw.bb3

sw.bb3:                                           ; preds = %L2, %while.body
  %10 = load i32, i32* %opcode, align 4
  %11 = bitcast i32* %code.addr.i1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11)
  store i32 %10, i32* %code.addr.i1, align 4
  %12 = load i32, i32* %code.addr.i1, align 4
  %13 = load i32, i32* @sum, align 4
  %add.i2 = add i32 %13, %12
  store i32 %add.i2, i32* @sum, align 4
  %14 = bitcast i32* %code.addr.i1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14)
  %15 = load i32*, i32** %p.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %incdec.ptr4, i32** %p.addr, align 8
  %16 = load i32, i32* %15, align 4
  %idxprom5 = sext i32 %16 to i64
  %arrayidx6 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom5
  %17 = load i8*, i8** %arrayidx6, align 8
  br label %indirectgoto

L3:                                               ; preds = %indirectgoto
  store i32 3, i32* %opcode, align 4
  br label %sw.bb7

sw.bb7:                                           ; preds = %L3, %while.body
  %18 = load i32, i32* %opcode, align 4
  %19 = bitcast i32* %code.addr.i3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19)
  store i32 %18, i32* %code.addr.i3, align 4
  %20 = load i32, i32* %code.addr.i3, align 4
  %21 = load i32, i32* @sum, align 4
  %add.i4 = add i32 %21, %20
  store i32 %add.i4, i32* @sum, align 4
  %22 = bitcast i32* %code.addr.i3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22)
  %23 = load i32*, i32** %p.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %incdec.ptr8, i32** %p.addr, align 8
  %24 = load i32, i32* %23, align 4
  %idxprom9 = sext i32 %24 to i64
  %arrayidx10 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom9
  %25 = load i8*, i8** %arrayidx10, align 8
  br label %indirectgoto

L4:                                               ; preds = %indirectgoto
  store i32 4, i32* %opcode, align 4
  br label %sw.bb11

sw.bb11:                                          ; preds = %L4, %while.body
  %26 = load i32, i32* %opcode, align 4
  %27 = bitcast i32* %code.addr.i5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %27)
  store i32 %26, i32* %code.addr.i5, align 4
  %28 = load i32, i32* %code.addr.i5, align 4
  %29 = load i32, i32* @sum, align 4
  %add.i6 = add i32 %29, %28
  store i32 %add.i6, i32* @sum, align 4
  %30 = bitcast i32* %code.addr.i5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30)
  %31 = load i32*, i32** %p.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %incdec.ptr12, i32** %p.addr, align 8
  %32 = load i32, i32* %31, align 4
  %idxprom13 = sext i32 %32 to i64
  %arrayidx14 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom13
  %33 = load i8*, i8** %arrayidx14, align 8
  br label %indirectgoto

L5:                                               ; preds = %indirectgoto
  store i32 5, i32* %opcode, align 4
  br label %sw.bb15

sw.bb15:                                          ; preds = %L5, %while.body
  %34 = load i32, i32* %opcode, align 4
  %35 = bitcast i32* %code.addr.i7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %35)
  store i32 %34, i32* %code.addr.i7, align 4
  %36 = load i32, i32* %code.addr.i7, align 4
  %37 = load i32, i32* @sum, align 4
  %add.i8 = add i32 %37, %36
  store i32 %add.i8, i32* @sum, align 4
  %38 = bitcast i32* %code.addr.i7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38)
  %39 = load i32*, i32** %p.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %incdec.ptr16, i32** %p.addr, align 8
  %40 = load i32, i32* %39, align 4
  %idxprom17 = sext i32 %40 to i64
  %arrayidx18 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom17
  %41 = load i8*, i8** %arrayidx18, align 8
  br label %indirectgoto

L6:                                               ; preds = %indirectgoto
  store i32 6, i32* %opcode, align 4
  br label %sw.bb19

sw.bb19:                                          ; preds = %L6, %while.body
  %42 = load i32, i32* %opcode, align 4
  %43 = bitcast i32* %code.addr.i9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %43)
  store i32 %42, i32* %code.addr.i9, align 4
  %44 = load i32, i32* %code.addr.i9, align 4
  %45 = load i32, i32* @sum, align 4
  %add.i10 = add i32 %45, %44
  store i32 %add.i10, i32* @sum, align 4
  %46 = bitcast i32* %code.addr.i9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46)
  %47 = load i32*, i32** %p.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %incdec.ptr20, i32** %p.addr, align 8
  %48 = load i32, i32* %47, align 4
  %idxprom21 = sext i32 %48 to i64
  %arrayidx22 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom21
  %49 = load i8*, i8** %arrayidx22, align 8
  br label %indirectgoto

L7:                                               ; preds = %indirectgoto
  store i32 7, i32* %opcode, align 4
  br label %sw.bb23

sw.bb23:                                          ; preds = %L7, %while.body
  %50 = load i32, i32* %opcode, align 4
  %51 = bitcast i32* %code.addr.i11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %51)
  store i32 %50, i32* %code.addr.i11, align 4
  %52 = load i32, i32* %code.addr.i11, align 4
  %53 = load i32, i32* @sum, align 4
  %add.i12 = add i32 %53, %52
  store i32 %add.i12, i32* @sum, align 4
  %54 = bitcast i32* %code.addr.i11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54)
  %55 = load i32*, i32** %p.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %incdec.ptr24, i32** %p.addr, align 8
  %56 = load i32, i32* %55, align 4
  %idxprom25 = sext i32 %56 to i64
  %arrayidx26 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom25
  %57 = load i8*, i8** %arrayidx26, align 8
  br label %indirectgoto

L8:                                               ; preds = %indirectgoto
  store i32 8, i32* %opcode, align 4
  br label %sw.bb27

sw.bb27:                                          ; preds = %L8, %while.body
  %58 = load i32, i32* %opcode, align 4
  %59 = bitcast i32* %code.addr.i13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %59)
  store i32 %58, i32* %code.addr.i13, align 4
  %60 = load i32, i32* %code.addr.i13, align 4
  %61 = load i32, i32* @sum, align 4
  %add.i14 = add i32 %61, %60
  store i32 %add.i14, i32* @sum, align 4
  %62 = bitcast i32* %code.addr.i13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62)
  %63 = load i32*, i32** %p.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %incdec.ptr28, i32** %p.addr, align 8
  %64 = load i32, i32* %63, align 4
  %idxprom29 = sext i32 %64 to i64
  %arrayidx30 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom29
  %65 = load i8*, i8** %arrayidx30, align 8
  br label %indirectgoto

L9:                                               ; preds = %indirectgoto
  store i32 9, i32* %opcode, align 4
  br label %sw.bb31

sw.bb31:                                          ; preds = %L9, %while.body
  %66 = load i32, i32* %opcode, align 4
  %67 = bitcast i32* %code.addr.i15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %67)
  store i32 %66, i32* %code.addr.i15, align 4
  %68 = load i32, i32* %code.addr.i15, align 4
  %69 = load i32, i32* @sum, align 4
  %add.i16 = add i32 %69, %68
  store i32 %add.i16, i32* @sum, align 4
  %70 = bitcast i32* %code.addr.i15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70)
  %71 = load i32*, i32** %p.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %incdec.ptr32, i32** %p.addr, align 8
  %72 = load i32, i32* %71, align 4
  %idxprom33 = sext i32 %72 to i64
  %arrayidx34 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom33
  %73 = load i8*, i8** %arrayidx34, align 8
  br label %indirectgoto

L10:                                              ; preds = %indirectgoto
  store i32 10, i32* %opcode, align 4
  br label %sw.bb35

sw.bb35:                                          ; preds = %L10, %while.body
  %74 = load i32, i32* %opcode, align 4
  %75 = bitcast i32* %code.addr.i17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %75)
  store i32 %74, i32* %code.addr.i17, align 4
  %76 = load i32, i32* %code.addr.i17, align 4
  %77 = load i32, i32* @sum, align 4
  %add.i18 = add i32 %77, %76
  store i32 %add.i18, i32* @sum, align 4
  %78 = bitcast i32* %code.addr.i17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78)
  %79 = load i32*, i32** %p.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %incdec.ptr36, i32** %p.addr, align 8
  %80 = load i32, i32* %79, align 4
  %idxprom37 = sext i32 %80 to i64
  %arrayidx38 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom37
  %81 = load i8*, i8** %arrayidx38, align 8
  br label %indirectgoto

L11:                                              ; preds = %indirectgoto
  store i32 11, i32* %opcode, align 4
  br label %sw.bb39

sw.bb39:                                          ; preds = %L11, %while.body
  %82 = load i32, i32* %opcode, align 4
  %83 = bitcast i32* %code.addr.i19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %83)
  store i32 %82, i32* %code.addr.i19, align 4
  %84 = load i32, i32* %code.addr.i19, align 4
  %85 = load i32, i32* @sum, align 4
  %add.i20 = add i32 %85, %84
  store i32 %add.i20, i32* @sum, align 4
  %86 = bitcast i32* %code.addr.i19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %86)
  %87 = load i32*, i32** %p.addr, align 8
  %incdec.ptr40 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %incdec.ptr40, i32** %p.addr, align 8
  %88 = load i32, i32* %87, align 4
  %idxprom41 = sext i32 %88 to i64
  %arrayidx42 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom41
  %89 = load i8*, i8** %arrayidx42, align 8
  br label %indirectgoto

L12:                                              ; preds = %indirectgoto
  store i32 12, i32* %opcode, align 4
  br label %sw.bb43

sw.bb43:                                          ; preds = %L12, %while.body
  %90 = load i32, i32* %opcode, align 4
  %91 = bitcast i32* %code.addr.i21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %91)
  store i32 %90, i32* %code.addr.i21, align 4
  %92 = load i32, i32* %code.addr.i21, align 4
  %93 = load i32, i32* @sum, align 4
  %add.i22 = add i32 %93, %92
  store i32 %add.i22, i32* @sum, align 4
  %94 = bitcast i32* %code.addr.i21 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %94)
  %95 = load i32*, i32** %p.addr, align 8
  %incdec.ptr44 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %incdec.ptr44, i32** %p.addr, align 8
  %96 = load i32, i32* %95, align 4
  %idxprom45 = sext i32 %96 to i64
  %arrayidx46 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom45
  %97 = load i8*, i8** %arrayidx46, align 8
  br label %indirectgoto

L13:                                              ; preds = %indirectgoto
  store i32 13, i32* %opcode, align 4
  br label %sw.bb47

sw.bb47:                                          ; preds = %L13, %while.body
  %98 = load i32, i32* %opcode, align 4
  %99 = bitcast i32* %code.addr.i23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %99)
  store i32 %98, i32* %code.addr.i23, align 4
  %100 = load i32, i32* %code.addr.i23, align 4
  %101 = load i32, i32* @sum, align 4
  %add.i24 = add i32 %101, %100
  store i32 %add.i24, i32* @sum, align 4
  %102 = bitcast i32* %code.addr.i23 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %102)
  %103 = load i32*, i32** %p.addr, align 8
  %incdec.ptr48 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %incdec.ptr48, i32** %p.addr, align 8
  %104 = load i32, i32* %103, align 4
  %idxprom49 = sext i32 %104 to i64
  %arrayidx50 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom49
  %105 = load i8*, i8** %arrayidx50, align 8
  br label %indirectgoto

L14:                                              ; preds = %indirectgoto
  store i32 14, i32* %opcode, align 4
  br label %sw.bb51

sw.bb51:                                          ; preds = %L14, %while.body
  %106 = load i32, i32* %opcode, align 4
  %107 = bitcast i32* %code.addr.i25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %107)
  store i32 %106, i32* %code.addr.i25, align 4
  %108 = load i32, i32* %code.addr.i25, align 4
  %109 = load i32, i32* @sum, align 4
  %add.i26 = add i32 %109, %108
  store i32 %add.i26, i32* @sum, align 4
  %110 = bitcast i32* %code.addr.i25 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %110)
  %111 = load i32*, i32** %p.addr, align 8
  %incdec.ptr52 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %incdec.ptr52, i32** %p.addr, align 8
  %112 = load i32, i32* %111, align 4
  %idxprom53 = sext i32 %112 to i64
  %arrayidx54 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom53
  %113 = load i8*, i8** %arrayidx54, align 8
  br label %indirectgoto

L15:                                              ; preds = %indirectgoto
  store i32 15, i32* %opcode, align 4
  br label %sw.bb55

sw.bb55:                                          ; preds = %L15, %while.body
  %114 = load i32, i32* %opcode, align 4
  %115 = bitcast i32* %code.addr.i27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %115)
  store i32 %114, i32* %code.addr.i27, align 4
  %116 = load i32, i32* %code.addr.i27, align 4
  %117 = load i32, i32* @sum, align 4
  %add.i28 = add i32 %117, %116
  store i32 %add.i28, i32* @sum, align 4
  %118 = bitcast i32* %code.addr.i27 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %118)
  %119 = load i32*, i32** %p.addr, align 8
  %incdec.ptr56 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %incdec.ptr56, i32** %p.addr, align 8
  %120 = load i32, i32* %119, align 4
  %idxprom57 = sext i32 %120 to i64
  %arrayidx58 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom57
  %121 = load i8*, i8** %arrayidx58, align 8
  br label %indirectgoto

L16:                                              ; preds = %indirectgoto
  store i32 16, i32* %opcode, align 4
  br label %sw.bb59

sw.bb59:                                          ; preds = %L16, %while.body
  %122 = load i32, i32* %opcode, align 4
  %123 = bitcast i32* %code.addr.i29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %123)
  store i32 %122, i32* %code.addr.i29, align 4
  %124 = load i32, i32* %code.addr.i29, align 4
  %125 = load i32, i32* @sum, align 4
  %add.i30 = add i32 %125, %124
  store i32 %add.i30, i32* @sum, align 4
  %126 = bitcast i32* %code.addr.i29 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %126)
  %127 = load i32*, i32** %p.addr, align 8
  %incdec.ptr60 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %incdec.ptr60, i32** %p.addr, align 8
  %128 = load i32, i32* %127, align 4
  %idxprom61 = sext i32 %128 to i64
  %arrayidx62 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom61
  %129 = load i8*, i8** %arrayidx62, align 8
  br label %indirectgoto

L17:                                              ; preds = %indirectgoto
  store i32 17, i32* %opcode, align 4
  br label %sw.bb63

sw.bb63:                                          ; preds = %L17, %while.body
  %130 = load i32, i32* %opcode, align 4
  %131 = bitcast i32* %code.addr.i31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %131)
  store i32 %130, i32* %code.addr.i31, align 4
  %132 = load i32, i32* %code.addr.i31, align 4
  %133 = load i32, i32* @sum, align 4
  %add.i32 = add i32 %133, %132
  store i32 %add.i32, i32* @sum, align 4
  %134 = bitcast i32* %code.addr.i31 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %134)
  %135 = load i32*, i32** %p.addr, align 8
  %incdec.ptr64 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %incdec.ptr64, i32** %p.addr, align 8
  %136 = load i32, i32* %135, align 4
  %idxprom65 = sext i32 %136 to i64
  %arrayidx66 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom65
  %137 = load i8*, i8** %arrayidx66, align 8
  br label %indirectgoto

L18:                                              ; preds = %indirectgoto
  store i32 18, i32* %opcode, align 4
  br label %sw.bb67

sw.bb67:                                          ; preds = %L18, %while.body
  %138 = load i32, i32* %opcode, align 4
  %139 = bitcast i32* %code.addr.i33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %139)
  store i32 %138, i32* %code.addr.i33, align 4
  %140 = load i32, i32* %code.addr.i33, align 4
  %141 = load i32, i32* @sum, align 4
  %add.i34 = add i32 %141, %140
  store i32 %add.i34, i32* @sum, align 4
  %142 = bitcast i32* %code.addr.i33 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %142)
  %143 = load i32*, i32** %p.addr, align 8
  %incdec.ptr68 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %incdec.ptr68, i32** %p.addr, align 8
  %144 = load i32, i32* %143, align 4
  %idxprom69 = sext i32 %144 to i64
  %arrayidx70 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom69
  %145 = load i8*, i8** %arrayidx70, align 8
  br label %indirectgoto

L19:                                              ; preds = %indirectgoto
  store i32 19, i32* %opcode, align 4
  br label %sw.bb71

sw.bb71:                                          ; preds = %L19, %while.body
  %146 = load i32, i32* %opcode, align 4
  %147 = bitcast i32* %code.addr.i35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %147)
  store i32 %146, i32* %code.addr.i35, align 4
  %148 = load i32, i32* %code.addr.i35, align 4
  %149 = load i32, i32* @sum, align 4
  %add.i36 = add i32 %149, %148
  store i32 %add.i36, i32* @sum, align 4
  %150 = bitcast i32* %code.addr.i35 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %150)
  %151 = load i32*, i32** %p.addr, align 8
  %incdec.ptr72 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %incdec.ptr72, i32** %p.addr, align 8
  %152 = load i32, i32* %151, align 4
  %idxprom73 = sext i32 %152 to i64
  %arrayidx74 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom73
  %153 = load i8*, i8** %arrayidx74, align 8
  br label %indirectgoto

L20:                                              ; preds = %indirectgoto
  store i32 20, i32* %opcode, align 4
  br label %sw.bb75

sw.bb75:                                          ; preds = %L20, %while.body
  %154 = load i32, i32* %opcode, align 4
  %155 = bitcast i32* %code.addr.i37 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %155)
  store i32 %154, i32* %code.addr.i37, align 4
  %156 = load i32, i32* %code.addr.i37, align 4
  %157 = load i32, i32* @sum, align 4
  %add.i38 = add i32 %157, %156
  store i32 %add.i38, i32* @sum, align 4
  %158 = bitcast i32* %code.addr.i37 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %158)
  %159 = load i32*, i32** %p.addr, align 8
  %incdec.ptr76 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %incdec.ptr76, i32** %p.addr, align 8
  %160 = load i32, i32* %159, align 4
  %idxprom77 = sext i32 %160 to i64
  %arrayidx78 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom77
  %161 = load i8*, i8** %arrayidx78, align 8
  br label %indirectgoto

L21:                                              ; preds = %indirectgoto
  store i32 21, i32* %opcode, align 4
  br label %sw.bb79

sw.bb79:                                          ; preds = %L21, %while.body
  %162 = load i32, i32* %opcode, align 4
  %163 = bitcast i32* %code.addr.i39 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %163)
  store i32 %162, i32* %code.addr.i39, align 4
  %164 = load i32, i32* %code.addr.i39, align 4
  %165 = load i32, i32* @sum, align 4
  %add.i40 = add i32 %165, %164
  store i32 %add.i40, i32* @sum, align 4
  %166 = bitcast i32* %code.addr.i39 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %166)
  %167 = load i32*, i32** %p.addr, align 8
  %incdec.ptr80 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %incdec.ptr80, i32** %p.addr, align 8
  %168 = load i32, i32* %167, align 4
  %idxprom81 = sext i32 %168 to i64
  %arrayidx82 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom81
  %169 = load i8*, i8** %arrayidx82, align 8
  br label %indirectgoto

L22:                                              ; preds = %indirectgoto
  store i32 22, i32* %opcode, align 4
  br label %sw.bb83

sw.bb83:                                          ; preds = %L22, %while.body
  %170 = load i32, i32* %opcode, align 4
  %171 = bitcast i32* %code.addr.i41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %171)
  store i32 %170, i32* %code.addr.i41, align 4
  %172 = load i32, i32* %code.addr.i41, align 4
  %173 = load i32, i32* @sum, align 4
  %add.i42 = add i32 %173, %172
  store i32 %add.i42, i32* @sum, align 4
  %174 = bitcast i32* %code.addr.i41 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %174)
  %175 = load i32*, i32** %p.addr, align 8
  %incdec.ptr84 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %incdec.ptr84, i32** %p.addr, align 8
  %176 = load i32, i32* %175, align 4
  %idxprom85 = sext i32 %176 to i64
  %arrayidx86 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom85
  %177 = load i8*, i8** %arrayidx86, align 8
  br label %indirectgoto

L23:                                              ; preds = %indirectgoto
  store i32 23, i32* %opcode, align 4
  br label %sw.bb87

sw.bb87:                                          ; preds = %L23, %while.body
  %178 = load i32, i32* %opcode, align 4
  %179 = bitcast i32* %code.addr.i43 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %179)
  store i32 %178, i32* %code.addr.i43, align 4
  %180 = load i32, i32* %code.addr.i43, align 4
  %181 = load i32, i32* @sum, align 4
  %add.i44 = add i32 %181, %180
  store i32 %add.i44, i32* @sum, align 4
  %182 = bitcast i32* %code.addr.i43 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %182)
  %183 = load i32*, i32** %p.addr, align 8
  %incdec.ptr88 = getelementptr inbounds i32, i32* %183, i32 1
  store i32* %incdec.ptr88, i32** %p.addr, align 8
  %184 = load i32, i32* %183, align 4
  %idxprom89 = sext i32 %184 to i64
  %arrayidx90 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom89
  %185 = load i8*, i8** %arrayidx90, align 8
  br label %indirectgoto

L24:                                              ; preds = %indirectgoto
  store i32 24, i32* %opcode, align 4
  br label %sw.bb91

sw.bb91:                                          ; preds = %L24, %while.body
  %186 = load i32, i32* %opcode, align 4
  %187 = bitcast i32* %code.addr.i45 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %187)
  store i32 %186, i32* %code.addr.i45, align 4
  %188 = load i32, i32* %code.addr.i45, align 4
  %189 = load i32, i32* @sum, align 4
  %add.i46 = add i32 %189, %188
  store i32 %add.i46, i32* @sum, align 4
  %190 = bitcast i32* %code.addr.i45 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %190)
  %191 = load i32*, i32** %p.addr, align 8
  %incdec.ptr92 = getelementptr inbounds i32, i32* %191, i32 1
  store i32* %incdec.ptr92, i32** %p.addr, align 8
  %192 = load i32, i32* %191, align 4
  %idxprom93 = sext i32 %192 to i64
  %arrayidx94 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom93
  %193 = load i8*, i8** %arrayidx94, align 8
  br label %indirectgoto

L25:                                              ; preds = %indirectgoto
  store i32 25, i32* %opcode, align 4
  br label %sw.bb95

sw.bb95:                                          ; preds = %L25, %while.body
  %194 = load i32, i32* %opcode, align 4
  %195 = bitcast i32* %code.addr.i47 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %195)
  store i32 %194, i32* %code.addr.i47, align 4
  %196 = load i32, i32* %code.addr.i47, align 4
  %197 = load i32, i32* @sum, align 4
  %add.i48 = add i32 %197, %196
  store i32 %add.i48, i32* @sum, align 4
  %198 = bitcast i32* %code.addr.i47 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %198)
  %199 = load i32*, i32** %p.addr, align 8
  %incdec.ptr96 = getelementptr inbounds i32, i32* %199, i32 1
  store i32* %incdec.ptr96, i32** %p.addr, align 8
  %200 = load i32, i32* %199, align 4
  %idxprom97 = sext i32 %200 to i64
  %arrayidx98 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom97
  %201 = load i8*, i8** %arrayidx98, align 8
  br label %indirectgoto

L26:                                              ; preds = %indirectgoto
  store i32 26, i32* %opcode, align 4
  br label %sw.bb99

sw.bb99:                                          ; preds = %L26, %while.body
  %202 = load i32, i32* %opcode, align 4
  %203 = bitcast i32* %code.addr.i49 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %203)
  store i32 %202, i32* %code.addr.i49, align 4
  %204 = load i32, i32* %code.addr.i49, align 4
  %205 = load i32, i32* @sum, align 4
  %add.i50 = add i32 %205, %204
  store i32 %add.i50, i32* @sum, align 4
  %206 = bitcast i32* %code.addr.i49 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %206)
  %207 = load i32*, i32** %p.addr, align 8
  %incdec.ptr100 = getelementptr inbounds i32, i32* %207, i32 1
  store i32* %incdec.ptr100, i32** %p.addr, align 8
  %208 = load i32, i32* %207, align 4
  %idxprom101 = sext i32 %208 to i64
  %arrayidx102 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom101
  %209 = load i8*, i8** %arrayidx102, align 8
  br label %indirectgoto

L27:                                              ; preds = %indirectgoto
  store i32 27, i32* %opcode, align 4
  br label %sw.bb103

sw.bb103:                                         ; preds = %L27, %while.body
  %210 = load i32, i32* %opcode, align 4
  %211 = bitcast i32* %code.addr.i51 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %211)
  store i32 %210, i32* %code.addr.i51, align 4
  %212 = load i32, i32* %code.addr.i51, align 4
  %213 = load i32, i32* @sum, align 4
  %add.i52 = add i32 %213, %212
  store i32 %add.i52, i32* @sum, align 4
  %214 = bitcast i32* %code.addr.i51 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %214)
  %215 = load i32*, i32** %p.addr, align 8
  %incdec.ptr104 = getelementptr inbounds i32, i32* %215, i32 1
  store i32* %incdec.ptr104, i32** %p.addr, align 8
  %216 = load i32, i32* %215, align 4
  %idxprom105 = sext i32 %216 to i64
  %arrayidx106 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom105
  %217 = load i8*, i8** %arrayidx106, align 8
  br label %indirectgoto

L28:                                              ; preds = %indirectgoto
  store i32 28, i32* %opcode, align 4
  br label %sw.bb107

sw.bb107:                                         ; preds = %L28, %while.body
  %218 = load i32, i32* %opcode, align 4
  %219 = bitcast i32* %code.addr.i53 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %219)
  store i32 %218, i32* %code.addr.i53, align 4
  %220 = load i32, i32* %code.addr.i53, align 4
  %221 = load i32, i32* @sum, align 4
  %add.i54 = add i32 %221, %220
  store i32 %add.i54, i32* @sum, align 4
  %222 = bitcast i32* %code.addr.i53 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %222)
  %223 = load i32*, i32** %p.addr, align 8
  %incdec.ptr108 = getelementptr inbounds i32, i32* %223, i32 1
  store i32* %incdec.ptr108, i32** %p.addr, align 8
  %224 = load i32, i32* %223, align 4
  %idxprom109 = sext i32 %224 to i64
  %arrayidx110 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom109
  %225 = load i8*, i8** %arrayidx110, align 8
  br label %indirectgoto

L29:                                              ; preds = %indirectgoto
  store i32 29, i32* %opcode, align 4
  br label %sw.bb111

sw.bb111:                                         ; preds = %L29, %while.body
  %226 = load i32, i32* %opcode, align 4
  %227 = bitcast i32* %code.addr.i55 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %227)
  store i32 %226, i32* %code.addr.i55, align 4
  %228 = load i32, i32* %code.addr.i55, align 4
  %229 = load i32, i32* @sum, align 4
  %add.i56 = add i32 %229, %228
  store i32 %add.i56, i32* @sum, align 4
  %230 = bitcast i32* %code.addr.i55 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %230)
  %231 = load i32*, i32** %p.addr, align 8
  %incdec.ptr112 = getelementptr inbounds i32, i32* %231, i32 1
  store i32* %incdec.ptr112, i32** %p.addr, align 8
  %232 = load i32, i32* %231, align 4
  %idxprom113 = sext i32 %232 to i64
  %arrayidx114 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom113
  %233 = load i8*, i8** %arrayidx114, align 8
  br label %indirectgoto

L30:                                              ; preds = %indirectgoto
  store i32 30, i32* %opcode, align 4
  br label %sw.bb115

sw.bb115:                                         ; preds = %L30, %while.body
  %234 = load i32, i32* %opcode, align 4
  %235 = bitcast i32* %code.addr.i57 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %235)
  store i32 %234, i32* %code.addr.i57, align 4
  %236 = load i32, i32* %code.addr.i57, align 4
  %237 = load i32, i32* @sum, align 4
  %add.i58 = add i32 %237, %236
  store i32 %add.i58, i32* @sum, align 4
  %238 = bitcast i32* %code.addr.i57 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %238)
  %239 = load i32*, i32** %p.addr, align 8
  %incdec.ptr116 = getelementptr inbounds i32, i32* %239, i32 1
  store i32* %incdec.ptr116, i32** %p.addr, align 8
  %240 = load i32, i32* %239, align 4
  %idxprom117 = sext i32 %240 to i64
  %arrayidx118 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom117
  %241 = load i8*, i8** %arrayidx118, align 8
  br label %indirectgoto

L31:                                              ; preds = %indirectgoto
  store i32 31, i32* %opcode, align 4
  br label %sw.bb119

sw.bb119:                                         ; preds = %L31, %while.body
  %242 = load i32, i32* %opcode, align 4
  %243 = bitcast i32* %code.addr.i59 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %243)
  store i32 %242, i32* %code.addr.i59, align 4
  %244 = load i32, i32* %code.addr.i59, align 4
  %245 = load i32, i32* @sum, align 4
  %add.i60 = add i32 %245, %244
  store i32 %add.i60, i32* @sum, align 4
  %246 = bitcast i32* %code.addr.i59 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %246)
  %247 = load i32*, i32** %p.addr, align 8
  %incdec.ptr120 = getelementptr inbounds i32, i32* %247, i32 1
  store i32* %incdec.ptr120, i32** %p.addr, align 8
  %248 = load i32, i32* %247, align 4
  %idxprom121 = sext i32 %248 to i64
  %arrayidx122 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom121
  %249 = load i8*, i8** %arrayidx122, align 8
  br label %indirectgoto

sw.epilog:                                        ; preds = %while.body
  br label %while.body
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %BUFSIZE = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 2048, i32* %BUFSIZE, align 4
  %0 = call i8* @llvm.stacksave()
  store i8* %0, i8** %saved_stack, align 8
  %vla = alloca i32, i64 2048, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 2047
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %rem = srem i32 %2, 31
  %add = add nsw i32 %rem, 1
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 %add, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !2

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds i32, i32* %vla, i64 2047
  store i32 0, i32* %arrayidx1, align 4
  store i32 0, i32* %i2, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc6, %for.end
  %5 = load i32, i32* %i2, align 4
  %cmp4 = icmp slt i32 %5, 100000
  br i1 %cmp4, label %for.body5, label %for.end8

for.body5:                                        ; preds = %for.cond3
  call void @eval(i32* %vla)
  br label %for.inc6

for.inc6:                                         ; preds = %for.body5
  %6 = load i32, i32* %i2, align 4
  %inc7 = add nsw i32 %6, 1
  store i32 %inc7, i32* %i2, align 4
  br label %for.cond3, !llvm.loop !4

for.end8:                                         ; preds = %for.cond3
  %7 = load i32, i32* @sum, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %7)
  store i32 0, i32* %retval, align 4
  %8 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %8)
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project.git 56ea2e2fdd691136d5e6631fa0e447173694b82c)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
