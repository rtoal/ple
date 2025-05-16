Module ClockhandsTime
    Sub Main()
        For i = 0 To 10
            Console.WriteLine(Format(#12:00:00#.AddSeconds((43200 * i + 21600) / 11), "hh:mm:ss"))
        Next 
    End Sub
End Module