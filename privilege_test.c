#include <stdio.h>
#include <unistd.h>

int main() {
    // Attempt to change the effective user ID
    if (seteuid(0) == -1) {
        perror("seteuid");
        return 1;
    }

    printf("Privilege elevated! Effective UID: %d\n", geteuid());
    return 0;
}
