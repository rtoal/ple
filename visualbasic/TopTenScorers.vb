Class Player
    Public name As String
    Public team As String
    Public games As Integer
    Public ppg As Double

    Public Sub New(ByVal data As String())
        ' data parameter expected: (<team>,<name>,<games>,<points>)
        name = data(1)
        team = data(0)
        games = data(2)
        ppg = data(3) / data(2)
    End Sub

    Public Function getString() As String
        Return String.Format("{0,-22}{1,-4}{2,8:N2}", name, team, ppg)
    End Function

End Class

Module TopTenScorers
    Sub Main(args As String())
        Dim players = From line in args
                      Select New Player(line.split(","))
        Dim output = From player in players
                     Where player.games >= 15
                     Order By player.ppg Descending
                     Take 10
                     Select player.getString()
        Console.WriteLine(String.Join(vbCrLf, output))
    End Sub
End Module
