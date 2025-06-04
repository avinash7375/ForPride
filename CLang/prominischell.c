#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>

#define MAX_LINE 1024
#define MAX_ARGS 64

// Tokenizer
void tokenize(char *line, char **args) {
    int i = 0;
    char *token = strtok(line, " \t\r\n");
    while (token != NULL && i < MAX_ARGS - 1) {
        args[i++] = token;
        token = strtok(NULL, " \t\r\n");
    }
    args[i] = NULL;
}

// Check for background execution
int is_background(char **args) {
    int i = 0;
    while (args[i] != NULL) i++;
    if (i > 0 && strcmp(args[i - 1], "&") == 0) {
        args[i - 1] = NULL;
        return 1;
    }
    return 0;
}

// Join arguments into a single command line string
void build_command(char **args, char *command_line) {
    command_line[0] = '\0';
    for (int i = 0; args[i] != NULL; i++) {
        strcat(command_line, args[i]);
        strcat(command_line, " ");
    }
}

// Execute command using CreateProcess
void execute_command(char **args, int background) {
    if (args[0] == NULL) return;

    // Built-in: exit
    if (strcmp(args[0], "exit") == 0) exit(0);

    // Built-in: cd
    if (strcmp(args[0], "cd") == 0) {
        if (args[1]) {
            if (!SetCurrentDirectory(args[1])) {
                printf("cd: The system cannot find the path specified.\n");
            }
        }
        return;
    }

    // Prepare command line
    char command_line[MAX_LINE];
    build_command(args, command_line);

    STARTUPINFO si = { sizeof(si) };
    PROCESS_INFORMATION pi;

    BOOL success = CreateProcess(
        NULL,
        command_line,
        NULL,
        NULL,
        FALSE,
        0,
        NULL,
        NULL,
        &si,
        &pi
    );

    if (!success) {
        printf("Command not found: %s\n", args[0]);
    } else {
        if (!background) {
            WaitForSingleObject(pi.hProcess, INFINITE);
        }
        CloseHandle(pi.hProcess);
        CloseHandle(pi.hThread);
    }
}

int main() {
    char line[MAX_LINE];
    char *args[MAX_ARGS];

    while (1) {
        char cwd[MAX_LINE];
        GetCurrentDirectory(MAX_LINE, cwd);
        printf("mini-shell-win:%s$ ", cwd);
        fflush(stdout);

        if (!fgets(line, MAX_LINE, stdin)) break;

        tokenize(line, args);
        int background = is_background(args);
        execute_command(args, background);
    }

    return 0;
}
