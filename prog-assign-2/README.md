# Runtime checks on integer overflows


## Required packages (tested on Ubuntu 16.04)

```
sudo apt install clang-3.8 cmake
```

## Environment setup
   - Run `setup.sh` to download and build llvm (3.8).
       - LLVM source code will be placed in `llvm/llvm-3.8.1.src`.
       - LLVM build will be placed in `llvm/build`.
       
       
## Test

## Code 
- `./pass/intcheck/Intcheck.cpp`
- `./pass/intcheck/runtime/rtlib.c`

## Acknolwedgement
    - Skeleton code is based on
      https://github.com/abenkhadra/llvm-pass-tutorial
