typedef unsigned short u16;

enum {
    BLACK,
    BLUE,
    GREEN,
    CYAN,
    RED,
    MAGENTA,
    YELLOW,
    GRAY,
    BRIGHT,
};

static const int ROWS = 25;
static const int COLS = 80;
static u16 *vram = (u16 *)0xB8000;

void kmain(void) {
    for (int i = 0; i < ROWS * COLS; ++i)
        vram[i] = 0;

    const char hello[] = "Hello, world!";
    int i = 0;
    for (const char *c = hello; *c; ++c)
        vram[i++] = BLUE << 12 | (BRIGHT | GRAY) << 8 | *c;
}
