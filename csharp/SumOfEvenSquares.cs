using System;
using System.Diagnostics;
using System.Linq;

static class SES
{
    static int SumOfEvenSquares(int[] a) => 
        (from n in a 
         where n % 2 == 0 
         select n * n
        ).Sum();

    static void Main()
    {
        Debug.Assert(SumOfEvenSquares([]) == 0);
        Debug.Assert(SumOfEvenSquares([1]) == 0);
        Debug.Assert(SumOfEvenSquares([1,2]) == 4);
        Debug.Assert(SumOfEvenSquares([1,2,3]) == 4);
        Debug.Assert(SumOfEvenSquares([1,2,3,4]) == 20);
        Debug.Assert(SumOfEvenSquares([4,6,7,2]) == 56);
    }
}