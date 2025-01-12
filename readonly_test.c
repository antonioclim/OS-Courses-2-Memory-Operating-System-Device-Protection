#include <stdio.h>
#include <string.h>
#include <sys/mman.h>

int main() {
    // Create a read-only memory page
    char *addr = mmap(NULL, 4096, PROT_READ, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (addr == MAP_FAILED) {
        perror("mmap");
        return 1;
    }

    // Attempt to write to the read-only memory
    addr[0] = 'x';  // This will cause a segmentation fault
    return 0;
}
