#include <stdio.h>

extern void thread_sleep(int sec);

int main() {
    int t = 10;
    printf("Oi\n");
    thread_sleep(t);
    printf("Oi, %d segundos depois\n", t);
}
