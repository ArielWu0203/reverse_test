#include <stdio.h>
#include <unistd.h>
#include <stdint.h>
#include <stdlib.h>

int32_t reverse(int32_t x){
    int32_t val = 0; int32_t i = 0;
    for (i = 0; i < 32; i++) {
        val = (val << 1) | (x & 0x1);
        x >>= 1;
    }
    return val;
}

int main(int argc, char *argv[]) {
    
    int times = atoi(argv[1]);
    for (int32_t i=0;i<times;i++) {
        reverse(i);
    }
    return 0;
}
