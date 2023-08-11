extern void *KERNEL_END;


void main() {

    for (;;) {
        asm("pause");
    }
}