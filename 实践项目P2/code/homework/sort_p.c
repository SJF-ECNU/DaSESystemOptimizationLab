#include "./util.h"

// Function prototypes
static inline void merge_p(data_t* A, int p, int q, int r);
static inline void copy_p(data_t* source, data_t* dest, int n);

// A basic merge sort routine that sorts the subarray A[p..r]
void sort_p(data_t* A, int p, int r) {
  assert(A);
  if (p < r) {
    int q = (p + r) / 2;
    sort_p(A, p, q);      
    sort_p(A, q + 1, r);   
    merge_p(A, p, q, r);  
  }
}

static inline void merge_p(data_t* A, int p, int q, int r) {
  assert(A);
  assert(p <= q);
  assert((q + 1) <= r);
  
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

  copy_p(&(A[p]), left, n1);
  copy_p(&(A[q + 1]), right, n2);

  // Sentinel values for easy comparison
  *(left + n1) = UINT_MAX;
  *(right + n2) = UINT_MAX;

  data_t* lptr = left;       
  data_t* rptr = right;     
  data_t* aptr = &A[p];       

  // Merge the two arrays using pointers
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

// Copy routine modified to use pointers
static inline void copy_p(data_t* source, data_t* dest, int n) {
  assert(dest);
  assert(source);

  data_t* src_end = source + n; 
  while (source < src_end) {
    *dest = *source;          
    source++;                
    dest++;                    
  }
}
