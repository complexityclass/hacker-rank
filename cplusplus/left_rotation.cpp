#include <map>
#include <set>
#include <list>
#include <cmath>
#include <ctime>
#include <deque>
#include <queue>
#include <stack>
#include <string>
#include <bitset>
#include <cstdio>
#include <limits>
#include <vector>
#include <climits>
#include <cstring>
#include <cstdlib>
#include <fstream>
#include <numeric>
#include <sstream>
#include <iostream>
#include <algorithm>
#include <unordered_map>

using namespace std;

deque<int> array_left_rotation(deque<int> deq, int n, int k) {
    int i = 0;
    while (i < k) {
        deque<int>::iterator begin = deq.begin();
        auto head = *begin;
        deq.pop_front();
        deq.push_back(head);
        ++i;
    }
    return deq;
}

int main(int argc, const char * argv[]){
    int n, k;
    cin >> n >> k;
    
    deque<int> mDeque {};
    for(int a_i = 0; a_i < n; a_i++) {
        int elem = 0;
        cin >> elem;
        mDeque.push_back(elem);
    }
    deque<int> output = array_left_rotation(mDeque, n, k);
    for (auto elem: output) {
        cout << elem << " ";
    }
    cout << endl;
    
    return 0;
}