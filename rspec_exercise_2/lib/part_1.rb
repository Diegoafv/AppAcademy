def partition (array, n)

    less = []
    greater = []
    newArray = []

    array.each do | elem |
        if elem < n
            less.push(elem)
        else
            greater.push(elem)
        end
    end
    newArray = [less, greater]
end

def merge(hash1, hash2)

    newHash = {}

    hash1.each do | k, v |
        newHash[k] = v
    end

    hash2.each do | k, v |
        newHash[k] = v
    end
    newHash
end

def censor(string, array)
    words = string.split(' ')
    vowels = "aeiouAEIOU"

    words.map! do | word |
        if array.include?(word.downcase)
            newWord = ''
            word.each_char do | char |
                if vowels.include?(char)
                    newWord += '*'
                else
                    newWord += char
                end
            end
            newWord
        else
            word
        end
    end
    words.join(' ')
end

def power_of_two?(n)

    div = n
    rest = n

    return true if n == 1

    while div != 1 
        rest = div % 2
        div = div / 2
    end

    return true if rest == 0

    false
end