#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <assert.h>

#include "./fasttime.h"
#include "./tests.h"

// Extern variables
extern test_case test_cases[];

static void run_test_suite(int start_idx, int printFlag, int N, int R,
                           struct testFunc_t* testFunc, int numFunc, int threshold) {
  // Set the global THRESHOLD value for testing
  #undef THRESHOLD
  #define THRESHOLD threshold

  for (int i = 0; test_cases[i] != NULL; i++) {
    if (i < start_idx) {
      continue;
    }
    fprintf(stderr, "\nRunning test #%d with threshold %d...\n", i, threshold);
    (*test_cases[i])(printFlag, N, R, testFunc, numFunc);
  }
  fprintf(stderr, "Done testing with threshold %d.\n", threshold);
}

extern void sort_a(data_t*, int, int);
extern void sort_i(data_t*, int, int);
extern void sort_p(data_t*, int, int);
extern void sort_c(data_t*, int, int);
extern void sort_m(data_t*, int, int);
extern void sort_f(data_t*, int, int);

int main(int argc, char** argv) {
  int N, R, optchar, printFlag = 0;
  unsigned int seed = 0;

  // List of thresholds to test
  int thresholds[] = {16, 32, 64, 128, 256}; // Example thresholds
  int numThresholds = sizeof(thresholds) / sizeof(thresholds[0]);

  // an array of struct testFunc_t indicating the sort functions to test
  struct testFunc_t testFunc[] = {
    {&sort_c, "sort_c\t\t"},
  };
  const int kNumOfFunc = sizeof(testFunc) / sizeof(testFunc[0]);

  // process command line options
  while ((optchar = getopt(argc, argv, "s:p")) != -1) {
    switch (optchar) {
    case 's':
      seed = (unsigned int) atoi(optarg);
      printf("Using user-provided seed: %u\n", seed);
      srand(seed);
      break;
    case 'p':
      printFlag = 1;
      break;
    default:
      printf("Ignoring unrecognized option: %c\n", optchar);
      continue;
    }
  }

  // shift remaining arguments over
  int remaining_args = argc - optind;
  for (int i = 1; i <= remaining_args; ++i) {
    argv[i] = argv[i + optind - 1];
  }

  // check to make sure number of arguments is correct
  if (remaining_args != 2) {
    printf("Usage: %s [-p] <num_elements> <num_repeats>\n", argv[0]);
    printf("-p : print before/after arrays\n");
    exit(-1);
  }

  N = atoi(argv[1]);
  R = atoi(argv[2]);

  // Run the tests for each threshold
  for (int i = 0; i < numThresholds; i++) {
    run_test_suite(0, printFlag, N, R, testFunc, kNumOfFunc, thresholds[i]);
  }

  return 0;
}
