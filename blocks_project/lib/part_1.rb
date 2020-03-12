def select_even_nums(array)
    array.select(&:even?)
end


def reject_puppies(dogsArray)
    dogsArray.reject { | dog | dog['age'] <= 2 }
end

def count_positive_subarrays(array)
    array.count { | elem | elem.sum > 0} 
end

def aba_translate(word)

    newWord = ''
    vowels = 'aeiou'

    word.each_char do | char |
        if vowels.include?(char)
            newWord += (char + 'b' + char)
        else
            newWord += char
        end
    end
    newWord
end

def aba_array(words)
    words.map { | word | aba_translate(word)}
end