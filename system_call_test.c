#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

int main() {
    // Open a file (system call: open)
    int fd = open("test_file.txt", O_CREAT | O_WRONLY, 0644);
    if (fd == -1) {
        perror("open");
        return 1;
    }

    // Write to the file (system call: write)
    const char *message = "Hello, OS protection!\n";
    if (write(fd, message, 23) == -1) {
        perror("write");
        close(fd);
        return 1;
    }

    // Close the file (system call: close)
    close(fd);
    return 0;
}
