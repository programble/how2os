
int kmain(void) {
    volatile int a = 1;
    volatile int b = 0;
    return a / b;
}
