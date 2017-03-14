#include <time.h>
#include <unistd.h>
#include <sys/types.h>
#include <stdio.h>


int main() {
  struct timeval t;
  gettimeofday(&t, NULL);
  printf("%ld %ld\n", t.tv_sec, t.tv_usec);
  return 0;
}
