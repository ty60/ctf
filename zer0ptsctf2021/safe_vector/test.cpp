#include <iostream>
#include <vector>


class hoge {
    public:
        virtual void f() {
            std::cout << "fuga" << std::endl;
        }
};


using namespace std;

int main() {
    hoge h;
    h.f();
    uint32_t v;
    cin >> v;
    cout << cin.good() << endl;
}
