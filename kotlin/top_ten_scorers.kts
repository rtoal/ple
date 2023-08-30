data class Player(val team: String, val name: String, val games: Int, val ppg: Double) {
    companion object {
        fun fromLine(line: List<String>): Player {
            val points = line[3].toDouble()
            val games = line[2].toInt()
            return Player(line[0], line[1], games, points / games)
        }
    }

    fun reportLine(): String {
        return String.format("%-22s%-4s%8.2f", name, team, ppg)
    }
}

generateSequence { readLine() }
    .map { it.split(",") }
    .map { Player.fromLine(it) }
    .filter { it.games >= 15 }
    .sortedByDescending { it.ppg }
    .take(10)
    .map { it.reportLine() }
    .forEach { println(it) }
