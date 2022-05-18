def average (num1, num2)
    (num1.to_f+num2.to_f)/2
end

def average_array(array)
    avg = 0

    array.each do | elem |
        avg += elem
    end

    avg.to_f/array.length
end

def repeat(string, n)
    newString = ""

    n.times do
        newString += string
    end

    newString
end

def yell(string)
    string.upcase + '!'
end

def alternating_case(string)
    newString = []
    words = string.split(' ')

    words.each_with_index do | word, index |
        if index.even?
           newString << word.upcase
        else
            newString << word.downcase
        end
    end

    newString.join(' ')

end