#include <stdio.h>

typedef struct _A {
  int *v;
} A;

void init_a(struct _A * a)
{
  a->v = (int*)calloc(5, sizeof(int));
}
