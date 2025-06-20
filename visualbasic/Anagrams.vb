Module Anagrams
    Sub GeneratePermutations(ByVal a As Char(), ByVal n as Integer)
        If (n <= 0) Then
            Console.WriteLine(new String(a))
        Else
            For i = 0 To n - 1
                GeneratePermutations(a, n - 1)
                Dim j as Integer = If(n MOD 2 = 0, 0, i)
                Dim temp as Char = a(j)
                a(j) = a(n)
                a(n) = temp
            Next
            GeneratePermutations(a, n - 1)
        End If
    End Sub

    Sub Main(args As String())
        If (args.Length <> 1) Then
            Throw New System.Exception("ERROR: There must be exactly 1 argument.")
        End If
        Dim letters as Char() = args(0).ToCharArray()
        GeneratePermutations(letters, letters.Length - 1)
    End Sub
End Module