# This script takes a user's word and determines if it is a palindrome or not
print("Please enter a word to determine if it is a palindrome: ");

$user_word = lc(<STDIN>);
chomp($user_word);

$reverse = reverse($user_word);

if ($user_word =~ /^[A-Za-z]+$/){
    # Confirms that the input only contains alphabetic characters

    print("The reverse of the word $user_word is: $reverse \n");

    if ($user_word eq $reverse) {
    print("The word $user_word IS a palindrome. \n");
    } 
    else {
        print("The word $user_word is NOT a palindrome. \n");
    }
}

else {
    print("Error: Input should contain alphabetic characters only. \n");
}