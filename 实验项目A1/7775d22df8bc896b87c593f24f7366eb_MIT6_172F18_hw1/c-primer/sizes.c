// Copyright (c) 2012 MIT License by 6.172 Staff

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

// 定义宏来打印类型的大小
#define PRINT_SIZE(type) printf("size of %s : %zu bytes \n", #type, sizeof(type))

int main() {
  // 使用宏来打印各种类型的大小
  PRINT_SIZE(int);
  PRINT_SIZE(short);
  PRINT_SIZE(long);
  PRINT_SIZE(char);
  PRINT_SIZE(float);
  PRINT_SIZE(double);
  PRINT_SIZE(unsigned int);
  PRINT_SIZE(long long);

  PRINT_SIZE(uint8_t);
  PRINT_SIZE(uint16_t);
  PRINT_SIZE(uint32_t);
  PRINT_SIZE(uint64_t);
  PRINT_SIZE(uint_fast8_t);
  PRINT_SIZE(uint_fast16_t);
  PRINT_SIZE(uintmax_t);
  PRINT_SIZE(intmax_t);
  PRINT_SIZE(__int128);

  // 定义一个复合类型 student
  typedef struct {
    int id;
    int year;
  } student;

  student you;
  you.id = 12345;
  you.year = 4;

  // 打印复合类型 student 的大小
  PRINT_SIZE(student);

  // 打印数组的大小
  int x[5];
  PRINT_SIZE(x);
  PRINT_SIZE(int*);
  PRINT_SIZE(short*);
  PRINT_SIZE(long*);
  PRINT_SIZE(char*);
  PRINT_SIZE(float*);
  PRINT_SIZE(double*);
  PRINT_SIZE(unsigned int*);
  PRINT_SIZE(long long*);
  PRINT_SIZE(uint8_t*);
  PRINT_SIZE(uint16_t*);
  PRINT_SIZE(uint32_t*);
  PRINT_SIZE(uint64_t*);
  PRINT_SIZE(uint_fast8_t*);
  PRINT_SIZE(uint_fast16_t*);
  PRINT_SIZE(uintmax_t*);
  PRINT_SIZE(intmax_t*);
  PRINT_SIZE(__int128*);
  PRINT_SIZE(student*);  // 打印指向 student 的指针大小
  PRINT_SIZE(&x);


  return 0;
}