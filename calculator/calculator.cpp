#include <bits/stdc++.h>
using namespace std;

int main(int argc, char *argv[]) {
    int var1, var2;
    char op;
    cin >> var1 >> op >> var2;
    if(op == '+') cout << var1+var2 << endl;
    else if(op == '-') cout << var1-var2 << endl;
    else if(op == '*') cout << var1*var2 << endl;
    else if(op == '/') cout << var1/var2 << endl;
    else cout << "ERR0" << endl;
    return 0;
}