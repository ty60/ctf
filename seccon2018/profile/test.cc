#include <iostream>
#include <cstdlib>
#include <malloc.h>

using namespace std;


int main()
{
    string s;
    cout << "input string: ";
    cin >> s;
    cout << "usable size: ";
    unsigned int size = malloc_usable_size((void *)s.data());
    cout << size << endl;
}
