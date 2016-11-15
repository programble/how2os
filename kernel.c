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
}
