Module Clockhands
    Sub Main()
        Dim t, h, m, s as Integer
        For i = 0 To 10
            t = (43200 * i + 21600) \ 11
            h = t \ 3600
            m = t \ 60 MOD 60
            s = t MOD 60
            Console.WriteLine("{0:D2}:{1:D2}:{2:D2}", If(h = 0, 12, h), m, s)
        Next
    End Sub
End Module
