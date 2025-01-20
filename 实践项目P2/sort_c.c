#include "./util.h"
#include "./sort.h"
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <time.h>

// Function prototypes
static inline void merge_c(data_t* A, int p, int q, int r);
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
// Coarsened merge sort routine
void sort_c(data_t* A, int p, int r) {
  assert(A);

  // Use insertion sort for small subarrays
  if ((r - p + 1) <= THRESHOLD) {
    insertion_sort(A, p, r);
    return;
  }

  if (p < r) {
    int q = (p + r) / 2;
    sort_c(A, p, q);
    sort_c(A, q + 1, r);
    merge_c(A, p, q, r);
  }
}

// Merge routine (same as in `sort_p`)
static inline void merge_c(data_t* A, int p, int q, int r) {
  assert(A);
  int n1 = q - p + 1;
  int n2 = r - q;

  data_t* left = NULL;
  data_t* right = NULL;
  mem_alloc(&left, n1 + 1);
  mem_alloc(&right, n2 + 1);

  if (left == NULL || right == NULL) {
    mem_free(&left);
    mem_free(&right);
    return;
  }

  copy(&(A[p]), left, n1);
  copy(&(A[q + 1]), right, n2);

  left[n1] = UINT_MAX;
  right[n2] = UINT_MAX;

  data_t* lptr = left;
  data_t* rptr = right;
  data_t* aptr = &A[p];

  while (aptr <= &A[r]) {
    if (*lptr <= *rptr) {
      *aptr = *lptr;
      lptr++;
    } else {
      *aptr = *rptr;
      rptr++;
    }
    aptr++;
  }

  mem_free(&left);
  mem_free(&right);
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

  sort_c(array, 0, ARRAY_SIZE - 1);

  free(array);
  return EXIT_SUCCESS;
}