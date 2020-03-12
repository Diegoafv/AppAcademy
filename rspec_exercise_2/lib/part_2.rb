def palindrome?(string)
    reversed = ''

    string.each_char do | char |
       reversed = char + reversed  
    end

    return true if string == reversed

    false

end

def substrings(string) 
    subs = []

    i = 0
    j = 0

    while i < string.length
        j = i
        while j < string.length
            subs << string[i..j]
            j+=1
        end
        i+=1
    end
    subs
end

def palindrome_substrings(string)
    subs = substrings(string)

    subs.filter { | elem | palindrome?(elem) && elem.length > 1 }

end