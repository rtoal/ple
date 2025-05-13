Module Triple
    Sub Main()
        For c = 1 To 40
            For b = 1 To c
                For a = 1 To b
                    If (a ^ 2 + b ^ 2 = c ^ 2) Then
                        Console.WriteLine("{0}, {1}, {2}", a, b, c)
                    End If
                Next
            Next
        Next
    End Sub
End Module
