Learning Objective-C
=====

```
# コンパイル
clang-7 \
  -I /usr/lib/gcc/x86_64-linux-gnu/7/include \
  -I `gnustep-config --variable=GNUSTEP_SYSTEM_HEADERS` \
  -L `gnustep-config --variable=GNUSTEP_SYSTEM_LIBRARIES` \
  -l gnustep-base -l objc -F Foundation \
  -o main chapter2/main.m
# 実行
./main
```
