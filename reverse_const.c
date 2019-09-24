#include <stdio.h>
#include <unistd.h>
#include <stdint.h>
#include <stdlib.h>

int32_t reverse(int32_t new){
    new = ((new & 0xffff0000) >> 16) | ((new & 0x0000ffff) << 16);
    new = ((new & 0xff00ff00) >> 8) | ((new & 0x00ff00ff) << 8);
    new = ((new & 0xf0f0f0f0) >> 4) | ((new & 0x0f0f0f0f) << 4);
    new = ((new & 0xcccccccc) >> 2) | ((new & 0x33333333) << 2);
    new = ((new & 0xaaaaaaaa) >> 1) | ((new & 0x55555555) << 1);
    return new;
}

int main(int argc, char *argv[]) {

    int times = atoi(argv[1]);

    for (int32_t i=0;i<times;i++) {
        reverse(i);
    }
    return 0;
}