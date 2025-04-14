int max_of_three(int x, int y, int z) {
    int t = x;
    if (t < y) t = y;
    if (t < z) t = z;
    return t;
}
