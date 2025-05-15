Module ClockhandsTime
    Sub Main()
        Dim noon = #12:00:00#
        For i = 0 To 10
            Console.WriteLine(Format(noon.AddSeconds((43200 * i + 21600) / 11), "hh:mm:ss"))
        Next 
    End Sub
End Module