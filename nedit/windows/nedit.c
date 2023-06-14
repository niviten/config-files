#include <stdio.h>
#include <string.h>

#define BASE_DIR "C:\\smurf\\temp"
#define EDITOR_CMD "nvim"
#define WHITE_SPACE " "
#define DOUBLE_QUOTE "\""
#define BACKWARD_SLASH "\\"
#define INPUT_LENGTH_LIMIT 200

int prepare_command(char*, int, char**);
void execute_command(const char*);

void remove_trailing_whitespaces(char*);

int main(int argc, char *argv[]) {
    char command[500];
    if (!prepare_command(command, argc, argv)) {
        return 0;
    }
    execute_command(command);
    return 0;
}

int prepare_command(char *command, int argc, char *argv[]) {
    char input[300];

    if (argc < 2) {
        strcpy(command, EDITOR_CMD);
        strcat(command, WHITE_SPACE);
        strcat(command, BASE_DIR);
        return 1;
    }

    strcpy(input, argv[1]);
    remove_trailing_whitespaces(input);
    if (strlen(input) > INPUT_LENGTH_LIMIT) {
        printf("File name is too long.\n");
        printf("Maximum length is %d characters.\n", INPUT_LENGTH_LIMIT);
        return 0;
    }

    strcpy(command, EDITOR_CMD);
    strcat(command, WHITE_SPACE);
    strcat(command, DOUBLE_QUOTE);
    strcat(command, BASE_DIR);
    strcat(command, BACKWARD_SLASH);
    strcat(command, INPUT_LENGTH_LIMIT);
    strcat(command, DOUBLE_QUOTE);
    
    return 1;
}

void execute_command(const char *command) {
    printf("command: %s\n", command);
    system(command);
}

void remove_trailing_whitespaces(char *str) {
    int i;
    int len;
    int first_char_index_after_whitespace;
    int last_char_index_before_whitespace;

    len = strlen(str);

    first_char_index_after_whitespace = 0;
    for (i = 0; i < len; i++) {
        if (str[i] != ' ') {
            first_char_index_after_whitespace = i;
            break;
        }
    }

    last_char_index = len - 1;
    last_char_index_before_whitespace = last_char_index;
    for (i = last_char_index; i >= 0; i--) {
        if (str[i] != ' ') {
            last_char_index_before_whitespace = i;
            break;
        }
    }

    for (
            i = first_char_index_after_whitespace;
            i <= last_char_index_before_whitespace;
            i++
        ) {
        str[i - first_char_index_after_whitespace] = str[i];
    }

    str[last_char_index_before_whitespace - first_char_index_after_whitespace + 1] = '\0';
}
