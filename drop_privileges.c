#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main() {
    // Drop privileges
    if (setuid(getuid()) == -1) {
        perror("setuid");
        return 1;
    }
    
    printf("Privileges dropped! Effective UID: %d\n", geteuid());

    // Simulate privileged action
    system("echo 'Performing a low-privilege action...'");
    return 0;
}
