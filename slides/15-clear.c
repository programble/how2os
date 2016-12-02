
typedef unsigned short u16;

static const int ROWS = 25;
static const int COLS = 80;

static u16 *vram = (u16 *)0xB8000;

void kmain(void) {
    for (int i = 0; i < ROWS * COLS; ++)
        vram[i] = 0;
}