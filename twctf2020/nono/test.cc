#include <bits/stdc++.h>


using namespace std;


class Puzzle {
    public:
        long long len;
        char *puzzle;
        string title;
        bool solved;
};


int main(void) {
    vector<Puzzle *> vec_puzzle;
    Puzzle *p;
    p = new Puzzle;
    vec_puzzle.push_back(p);
    p = new Puzzle;
    vec_puzzle.push_back(p);
    p = new Puzzle;
    vec_puzzle.push_back(p);
    p = new Puzzle;
    vec_puzzle.push_back(p);
}
