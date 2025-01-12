#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    char *ptr = (char *)malloc(10); // Allocate 10 bytes
    strcpy(ptr, "test");           // Write within allocated space
    
    // Intentionally write beyond allocated memory
    ptr[11] = 'x';                 // Segmentation fault occurs here
    
    printf("This won't be printed\n");
    return 0;
}
