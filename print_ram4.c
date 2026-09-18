#include <stdio.h>
extern unsigned char ram[];

extern void increment(void);

int main(){
    increment();
    printf("RAM contents from 50H to 58H:\n");


    for(int i = 0x50; i <= 0x58; i++){
        printf("%02X ", ram[i]);

    }

    printf("\n");
    return 0;
}