extern void print_str(const char *str, int len);

int get_strlen(const char *str) {
    int i = 0;
    while (str[i] != '\0') i++;
    return i;
}

void print(const char *str) {
    int len = get_strlen(str);
    print_str(str, len);
}

int main() {
    print("Hello, world!\n");
    return 0;
}
