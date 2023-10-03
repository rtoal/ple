val text = "😉🫀🙆‍♀️🦉👩🏿‍🔬🌙🇲🇽"
for (codePoint in text.codePoints()) {
    println(Character.getName(codePoint))
}

// Use this part for the book, since LaTeX has issues with emojis
val message = "←\uD83C\uDF53→"
// LEFTWARDS ARROW, STRAWBERRY, RIGHTWARDS ARROW 
for (codePoint in message.codePoints()) {
    println(Character.getName(codePoint))
}
