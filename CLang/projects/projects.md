1. Custom Shell (Mini Bash)

    Implement your own shell that supports:

        cd, ls, exit, etc.

        input/output redirection

        piping and background processes (&)

    Concepts: fork(), exec(), wait(), dup2(), parsing

2. File Synchronizer Tool

    Monitor a directory and copy updated files to a backup folder.

    Concepts: file I/O (fopen, fread, fwrite), directory traversal (opendir, readdir), timestamp comparison

3. Simple Task Manager (CLI htop clone)

    List running processes, their CPU & memory usage.

    Concepts: reading /proc, parsing, signal handling (kill, SIGTERM)

⚙ Intermediate Projects
4. Memory Allocator (malloc, free)

    Implement a dynamic memory allocator using brk, sbrk, or mmap.

    Bonus: track memory leaks or fragmentation.

    Concepts: heap management, metadata, system calls

5. Thread Library (User-level Threads)

    Build a threading library with:

        create, yield, join

        cooperative scheduling

    Concepts: setjmp, longjmp, context switching, scheduling algorithms

6. Virtual File System (VFS)

    Implement a basic file system in a file (FAT-like).

    Support mkdir, touch, ls, cat, etc.

    Concepts: inode, blocks, directory structure, serialization

7. Mini HTTP Server

    Accept and respond to basic HTTP GET requests.

    Concepts: sockets, bind(), accept(), read(), write()

8. System Call Interceptor

    Hook system calls like open(), read(), execve(), etc.

    Concepts: LD_PRELOAD, dlsym, shared libraries, syscall tracing
