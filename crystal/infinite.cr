while true
    puts "What type of temperature measurement do you prefer: Celsius (C), Farenheit (F) or Kelvin (K)?"
    
    measurement = gets
    
    if measurement == "C" || measurement == "F" || measurement == "K"
        puts "You said, #{measurement}"
    else
        puts "Invalid response"
    end

    puts "To end the infinite loop press Ctrl+C"
    puts "\n\n"
end
