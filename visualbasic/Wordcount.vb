Imports System.Text.RegularExpressions
Module Wordcount
    Sub Main(args As String())
        Dim frequencies As Dictionary(Of String, Integer) = New Dictionary(Of String, Integer)
        For Each line in args
            line = line.ToLower()
            Dim matchedWords As MatchCollection = Regex.Matches(line, "[a-z']+")
            Dim match As Match
            For Each match In matchedWords
                If frequencies.ContainsKey(match.Value) Then
                    frequencies(match.Value) += 1
                Else
                    frequencies.Add(match.Value, 1)
                End If
            Next match
        Next line
        Dim sortedFrequencies = (From word In frequencies Order By word.Key Ascending) _
                                .ToDictionary(Function(pair) pair.Key, Function(pair) pair.Value)
        For Each frequency As KeyValuePair(Of String, Integer) In sortedFrequencies
            Console.WriteLine("{0} {1}", frequency.Key, frequency.Value)
        Next frequency
    End Sub
End Module