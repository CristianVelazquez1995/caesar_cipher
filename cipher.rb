puts 'Enter a word to cipher:'
word = gets.chomp
shifet_number = true
while shifet_number
    puts 'Enter a number to shift the word (1-25):'
    shifter = gets.chomp.to_i
    if shifter < 26
        shifet_number = false
    end
end

def cipher(word, shifter)
    # loop through the word, changing each letter to ASCII
    # add the shifted number to the ASCII with .ord
    # if the new number goes over the ASCII code, loop it
    # doing it with the new number % max ASCII (for that type of character)
    # then minus the (minimum - 1)
    # return a character with .chr and add it to a new word
    cipher_word = ""
    split_word = word.split("").each do |char|
        char_number = char.ord
        new_char = char_number + shifter
        if (char_number >= 65 && char_number <= 90)
            if (new_char > 90)
                new_char = new_char % 90 + 64
                cipher_word += new_char.chr
            else
                cipher_word += new_char.chr
            end
        elsif (char_number >= 97 && char_number <= 122)
            if (new_char > 122)
                new_char = new_char % 122 + 96
                cipher_word += new_char.chr
            else 
                cipher_word += new_char.chr
            end
        end
    end
    return cipher_word
end

puts cipher(word, shifter)