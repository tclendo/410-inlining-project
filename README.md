410-inlining-project

This is a project where I explore llvm's inlining utilities and work
on my own inlining passes and heuristics.

The build code is based on these instructions (also in the week7 repository)
https://medium.com/@mshockwave/writing-llvm-pass-in-2018-part-i-531c700e85eb

## Building 

```
cd llvm-pass-project
mkdir build
cd build
cmake ..
make
```

## Testing

(Make sure to run this command in the build directory)

```
opt -disable-output
    -load-pass-plugin=pass-example/libNewInliningProjectPass.so \
    -passes="new-inlining-pass" ../test.ll
```

How to compile code to emit readable llvm IR:

```
clang -emit-llvm -S -c example.c -o example.ll
```