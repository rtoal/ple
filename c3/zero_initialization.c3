fn void main()
{
    int mystery1;       // Value is 0
    bool mystery2;      // Value is false

    int mystery3 @noinit;   // Value must be assigned before use
    bool mystery4 @noinit;  // Same here

    mystery1 += 1;          // Safe
    mystery3 += 2;          // Unsafe

    mystery2 = !mystery2;   // Safe
    mystery4 = !mystery4;   // Unsafe
}