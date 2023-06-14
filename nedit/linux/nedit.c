#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define EDITOR_COMMAND "nvim"
#define BASE_DIR "/home/nivi/temp/"
#define WHITE_SPACE " "
#define DOUBLE_QUOTE "\""

int main(int argc, char *argv[]) {
    char command[310];
    if (argc < 2) {
        printf("Arguments too low\n");
        return 0;
    }
    if (strlen(argv[1]) > 300) {
        printf("File name can't be greater than 300\n");
        return 0;
    }
    strcpy(command, EDITOR_COMMAND);
    strcat(command, WHITE_SPACE);
    strcat(command, DOUBLE_QUOTE);
    strcat(command, BASE_DIR);
    strcat(command, argv[1]);
    strcat(command, DOUBLE_QUOTE);
    printf("command: %s\n", command);
    system(command);
    return 0;
}
