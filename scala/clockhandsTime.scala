import java.time.LocalTime
import java.time.format.DateTimeFormatter

@main def clockhandsTime() =
  for i <- 0 to 10 do
    val time = LocalTime.MIDNIGHT.plusSeconds((43200 * i + 21600) / 11)
    println(DateTimeFormatter.ofPattern("hh:mm:ss").format(time))