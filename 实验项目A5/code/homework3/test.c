#include <sys/sysctl.h>
#include <errno.h>
#include <stdio.h>

int hasAVX2Support() {
   int ret = 0;
   size_t size = sizeof(ret);
   if (sysctlbyname("hw.optional.avx2_0", &ret, &size, NULL, 0) == -1) 
   {
      if (errno == ENOENT)
         return 0;
      return -1;
   }
   return ret;
}

int main() {
    printf("%d\n", hasAVX2Support());
    return 0;
}