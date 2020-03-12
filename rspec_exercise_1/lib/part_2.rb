 def hipsterfy(string) 

    i = string.length-1
    vowels = 'aeiou'

    while i >= 0
        if vowels.include?(string[i])
            temp = string[0...i]
            if i < string.length-1
                temp += string[i+1..-1]
            end
            return temp
        end
        i -= 1
    end
    string
 end


 def vowel_counts(string)
    vowels = 'aeiou'
    hash = Hash.new(0)

    chars = string.downcase.split('')

    chars.each do | char |
        if vowels.include?(char)
            hash[char] += 1
        end
    end
    hash
 end


 def caesar_cipher(string, n)

    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    chars = string.split('')

    chars.map! do | char |
        if alphabet.include?(char)
            newIndex = (alphabet.index(char) + n) % 26
            alphabet[newIndex]
        else
            char
        end
    end
    chars.join('')

 end