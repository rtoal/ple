Module SumOfEvenSquares
    Function SumOfEvenSquares(ByVal a As Integer()) As Integer
        Return Aggregate num In 
                    From n As Integer In a
                    Where n MOD 2 = 0
                    Select n ^ 2
               Into Sum()
    End Function

    Sub Main()
        Debug.Assert(SumOfEvenSquares({}) = 0)
        Debug.Assert(SumOfEvenSquares({1}) = 0)
        Debug.Assert(SumOfEvenSquares({1,2}) = 4)
        Debug.Assert(SumOfEvenSquares({1,2,3}) = 4)
        Debug.Assert(SumOfEvenSquares({1,2,3,4}) = 20)
        Debug.Assert(SumOfEvenSquares({4,6,7,2}) = 56)
    End Sub
End Module