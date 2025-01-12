#include <stdio.h>

void cause_overflow() {
    char buffer[10]; // Small buffer
    for (int i = 0; i < 20; i++) {
        buffer[i] = 'A'; // Write beyond the buffer
    }
}

int main() {
    printf("Testing stack overflow protection...\n");
    cause_overflow();
    return 0;
}
