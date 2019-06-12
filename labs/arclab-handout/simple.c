/*
 * simple.c - Arc Lab
 * 
 * A short benchmark that would need some optimization work.
 *
 */

#include <stdlib.h>
#include <stdio.h>
#include <sys/time.h>
#include <assert.h>
#include <time.h>
#include <unistd.h>
#include <stdbool.h>
#include "archlab.h"

/* do not change the following */
#define N 11
#define SEED 18600
static void usage(char *prog);
static void verify();

int square[N];
int factorial[N];
int fibonacci[N];

int main(int argc, char **argv)
{
    char c;
    int i;
    int fibonacci_0 = 0, fibonacci_1 = 1;
    bool gem5 = false;
    while ((c = getopt(argc, argv, "hgr")) != EOF) {
        switch (c) {
            case 'h': 
                usage(argv[0]);
                exit(0);
            case 'g':
                printf("gem5 routines\n");
                gem5 = true;
                break;
            case 'r':
                printf("random initialization\n");
                srand(SEED);
                fibonacci_0 = rand() % 10;
                fibonacci_1 = rand() % 10;
                break;
            default:
                usage(argv[0]);
                exit(1);
        }
    }
    
    ROI_START(gem5);
    /* Change here */
    for (i = 0; i < N; i++) {
        square[i] = i * i;
        if (i > 0) {
            factorial[i] = i * factorial[i-1];
            if(i > 1) {
                fibonacci[i] = fibonacci[i - 1] + fibonacci[i - 2];
            } else {
                fibonacci[i] = fibonacci_1;
            }
        } else {
            factorial[i] = 1;
            fibonacci[i] = fibonacci_0;
        }
    }
    int ret = square[(fibonacci[N-1] + factorial[N-1]) % N] - 100;
    /* Do not change below */
    ROI_END(gem5);
    
    // use all the computations to make GCC happy
    printf("%d\n", square[(fibonacci[N-1] + factorial[N-1]) % N]);
    verify();
    return ret;
}

/*
 * usage - Describe the command line arguments 
 */
static void usage(char *prog)
{
    fprintf(stderr, "Usage %s [-hg]\n", prog);
    fprintf(stderr, "Options\n");
    fprintf(stderr, "\t-h       Print this message.\n");
    fprintf(stderr, "\t-g       Enable gem5 regio of interest.\n");
}

static void verify() {
   for (int i = 0; i < N; i++) {
       if (square[i] != i * i) {
           goto error;
       }
   }
   for (int i = 1; i < N; i++) {
       if (factorial[i] != factorial[i-1] * i) {
           goto error;
       }
   }
   for (int i = 2; i < N; i++) {
       if (fibonacci[i] - fibonacci[i - 1] != fibonacci[i-2]) {
           goto error;
       }
   }

   printf("Verified!\n");
   return;
error:
   printf("Incorrect\n");
   return;
}
