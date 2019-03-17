#define _GNU_SOURCE

#include <stdlib.h>
#include <stdio.h>
#include <dlfcn.h>
#include <stdint.h>
extern char **environ;

struct LOG {
    unsigned char* addr;
    int size;
};

struct LOG logs[100];
int log_count = 0;

ssize_t (*original_readlink)(const char *path, char *buf, size_t bufsiz);
char* (*original_strstr)(const char*, const char*);
char* (*original_getenv)(const char *name);
ssize_t (*original_recv)(int sockfd, void *buf, size_t len, int flags);
void *(*original_mmap)(void *addr, size_t length, int prot, int flags, int fd, off_t offset);

__attribute__((constructor)) void init()
{
    for (int i = 0; environ[i]; ++i) {
        if (strstr(environ[i], "LD_PRELOAD=")) {
            environ[i] = "123";
        }
    }
}

unsigned char* arg2[4] = {0};

void *mmap(void *addr, size_t length, int prot, int flags, int fd, off_t offset)
{
    if (!original_mmap)
        original_mmap = dlsym(RTLD_NEXT, "mmap");

    void* p = original_mmap(addr, length, prot, flags, fd, offset);
    if (prot == 3 && length < 0x1000)
        printf("mmap %d = 0x%x\n", length, p);

    logs[log_count].addr = p;
    logs[log_count].size = length;
    log_count ++;
    return p;
}

ssize_t recv(int sockfd, void *buf, size_t len, int flags)
{
    if (!original_recv)
        original_recv = dlsym(RTLD_NEXT, "recv");

    size_t ret = original_recv(sockfd, buf, len, flags);
    if (len == 8) {
        uint64_t addr = *(uint64_t*)buf;
        printf("recv %x\n", addr);

        for (int i = 0; i < log_count ;++i ){
            if (addr == logs[i].addr ) {
                for (int j = 0; j < logs[i].size; ++j)
                    printf("%02x", logs[i].addr[j]);
                printf("\n");
            }
        }
    }

    return ret;
}

ssize_t readlink(const char *path, char *buf, size_t bufsiz)
{
    if (!original_readlink)
        original_readlink = dlsym(RTLD_NEXT, "readlink");

    printf("readlink called with %s\n", path);
    if (!strcmp(path, "/proc/self/exe"))
    {
        strcpy(buf, "/root/CTF/dragon/chains/chains");
        return 100;
    }
    return original_readlink(path, buf, bufsiz);
}

char* getenv (const char* name)
{
    if (!original_getenv)
        original_getenv = dlsym(RTLD_NEXT, "getenv");

    if (!strcmp(name, "LD_PRELOAD"))
        return NULL;
    return original_getenv(name);
}

const char *strstr( const char * str1, const char * str2 )
{
    if (!original_strstr)
        original_strstr = dlsym(RTLD_NEXT, "strstr");

    if (!strcmp(str2, "/libc.so.6") || !strcmp(str2, "/libpthread.so.0") || !strcmp(str2, "/libstdc++.so.6") || !strcmp(str2, "/gdb"))
        return 0;

    return original_strstr(str1, str2);
}

