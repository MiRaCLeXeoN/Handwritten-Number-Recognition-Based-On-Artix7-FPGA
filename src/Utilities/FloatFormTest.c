#include <stdio.h>

void printHex(unsigned char *ptr, int len)
{
    int tmp;
    for (int i = len - 1; i >= 0; i--) //必须要反过来打印
    {
        tmp = ptr[i];
        printf("%02x", tmp);
    }
    printf("\n");
}

int main()
{
    float a, b;
    float add, sub, mul, div;
    a = 0.0052766679;
    b = -0.0170026999;
    add = a + b;
    sub = a - b;
    mul = a * b;
    div = a / b;
    printHex((unsigned char *)&a, sizeof(float));
    printHex((unsigned char *)&b, sizeof(float));
    printHex((unsigned char *)&add, sizeof(float));
    printHex((unsigned char *)&sub, sizeof(float));
    printHex((unsigned char *)&mul, sizeof(float));
    printHex((unsigned char *)&div, sizeof(float));

    return 0;
}