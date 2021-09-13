#include <stdio.h>

#define N 16777216
static void tatar_ ()
{
  char buf[N];
  FILE * fp = fopen ("buf.dat", "r");
  fread (buf, N, 1, fp);
  fclose (fp);
}

static void tataw_ ()
{
  char buf[N];
  FILE * fp = fopen ("buf.dat", "w");
  fwrite (buf, N, 1, fp);
  fclose (fp);
}

void tata_ ()
{
  tatar_ ();
}

