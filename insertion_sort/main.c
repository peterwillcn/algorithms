#include "insertion_sort.h"
#include <stdlib.h>
#include <stdio.h>

void print_usage(char*);
void print_result(int[], int);

int main(int argc, char* argv[]) {
  if (argc > 1) {
    int k = argc - 1;
    int a[k];

    int i = 0;
    while (i < k) {
      a[i] = atoi(argv[i+1]);
      ++i;
    }

    insertion_sort(a, k);
    print_result(a, k);
  } else {
    print_usage(argv[0]);
  }

  return 0;
}

void print_usage(char *cmd) {
  printf("%s [NUMBERS]\n", cmd);
}

void print_result(int a[], int n) {
  int i;

  for (i = 0; i < n; ++i) {
    printf("a[%d] = %d\n", i, *(a+i));
  }
}

