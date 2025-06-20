Module Permutations
    Sub PrintPermutations(ByVal a As String(), ByVal n as Integer)
        If (n <= 0) Then
            Console.WriteLine(String.Join(vbTab, a))
        Else
            For i = 0 To n - 1
                PrintPermutations(a, n - 1)
                Dim j as Integer = If(n MOD 2 = 0, 0, i)
                Dim temp as String = a(j)
                a(j) = a(n)
                a(n) = temp
            Next
            PrintPermutations(a, n - 1)
        End If
    End Sub

    Sub Main(args As String())
        If (args.Length < 1) Then
            Throw New System.Exception("ERROR: There must be at least 1 argument.")
        End If
        PrintPermutations(args, args.Length - 1)
    End Sub
End Module