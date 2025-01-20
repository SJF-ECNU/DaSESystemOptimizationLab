#include "./util.h"
#include "./sort.h"
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <time.h>

// Function prototypes
static inline void merge_m(data_t* A, int p, int q, int r);
static inline void insertion_sort(data_t* A, int p, int r);

#define THRESHOLD 32

void copy(data_t* source, data_t* dest, int n) {
  assert(dest);
  assert(source);

  data_t* src_end = source + n; // Calculate the end pointer
  while (source < src_end) {
    *dest = *source;           // Copy value
    source++;                  // Advance source pointer
    dest++;                    // Advance destination pointer
  }
}

void sort_m(data_t* A, int p, int r) {
  assert(A);

  if ((r - p + 1) <= THRESHOLD) {
    insertion_sort(A, p, r);
    return;
  }

  if (p < r) {
    int q = (p + r) / 2;
    sort_m(A, p, q);
    sort_m(A, q + 1, r);
    merge_m(A, p, q, r);
  }
}

// Optimized merge routine using only one temporary array
static inline void merge_m(data_t* A, int p, int q, int r) {
  assert(A);
  int n1 = q - p + 1;
  int n2 = r - q;

  data_t* temp = NULL;
  mem_alloc(&temp, n1);

  if (temp == NULL) {
    mem_free(&temp);
    return;
  }

  copy(&(A[p]), temp, n1);

  int i = 0; 
  int j = q + 1; 
  int k = p; 

  while (i < n1 && j <= r) {
    if (temp[i] <= A[j]) {
      A[k] = temp[i];
      i++;
    } else {
      A[k] = A[j];
      j++;
    }
    k++;
  }

  // Copy the remaining elements of the left subarray, if any
  while (i < n1) {
    A[k] = temp[i];
    i++;
    k++;
  }

  // No need to copy the remaining elements of the right subarray,
  // as they are already in their correct positions in A.

  mem_free(&temp);
}

// Insertion sort routine for small subarrays
static inline void insertion_sort(data_t* A, int p, int r) {
  assert(A);

  for (int i = p + 1; i <= r; i++) {
    data_t key = A[i];
    int j = i - 1;

    // Move elements greater than key to one position ahead
    while (j >= p && A[j] > key) {
      A[j + 1] = A[j];
      j--;
    }
    A[j + 1] = key;
  }
}

// Main function for testing
int main() {
  const int ARRAY_SIZE = 1000000;
  data_t* array = (data_t*)malloc(ARRAY_SIZE * sizeof(data_t));

  if (!array) {
    fprintf(stderr, "内存分配失败\n");
    return EXIT_FAILURE;
  }

  srand(time(NULL));
  for (int i = 0; i < ARRAY_SIZE; i++) {
    array[i] = rand() % 1000000;
  }

  sort_m(array, 0, ARRAY_SIZE - 1);

  free(array);
  return EXIT_SUCCESS;
}