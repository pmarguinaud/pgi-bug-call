#include <stdio.h>

#define N 16777216
static void stackr_ ()
{
  char buf[N];
  FILE * fp = fopen ("buf.dat", "r");
  fread (buf, N, 1, fp);
  fclose (fp);
}

void stack_ ()
{
  stackr_ ();
}

