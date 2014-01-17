/*************************************************************************
	> File Name: unsigned_buggy.c
	> Author: leiss
	> Mail: lss.linux@gmail.com 
	> Created Time: Sun 03 Nov 2013 11:26:18 PM CST
 ************************************************************************/

#include<stdio.h>

float sum_elements(float a[], unsigned length) {
  int i;
  float result = 0;

  for (i = 0; i <= length - 1; i++)
	  result += a[i];
  return result;
}

int main(int argc, char **argv){
  float a[5] = { 1.0, 2.0, 3.0, 4.0, 5.0};

  printf("%f\n", sum_elements(a, 5));

  printf("%f\n", sum_elements(a, 0));
}


