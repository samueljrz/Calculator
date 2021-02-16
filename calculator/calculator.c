#include <stdio.h>

int calculator(int v1, int v2, int op);

int main() {
    int var1, var2;
    char op;
    scanf("%d %c %d", &var1, &op, &var2);
    printf("%d", calculator(var1, var2, op));
    return 0;
}

int calculator(int v1, int v2, int op) {
    switch (op)
    {
    case '+':
        return (v1+v2);

    case '-':
        return (v1-v2);

    case '*':
        return (v1*v2);

    case '/':
        return (v1/v2);

    default:
        printf("ERR");
        return 0;
    }
}