#include <iomanip>
#include <iostream>
using namespace std;

int main() {
  for (auto i = 0; i < 11; i++) {
    int t = (43200 * i + 21600) / 11;
    int h = t / 3600, m = t / 60 % 60, s = t % 60;
    cout << setfill('0')
         << setw(2) << (h ? h : 12)
         << ':' << setw(2) << m
         << ':' << setw(2) << s
         << endl;
    }
  return 0;
}