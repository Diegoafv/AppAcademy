def reverser(string, &prc)
    prc.call(string.reverse)
end

def word_changer(string, &prc)
    words = string.split(' ')
    words.map! do | word |
        prc.call(word)
    end
    words.join(' ')
end

def greater_proc_value(n, prc1, prc2)
    result1 = prc1.call(n)
    result2 = prc2.call(n)

    return result1 if result1 > result2

    result2
end

def and_selector(array, prc1, prc2)
    array.select { | elem | prc1.call(elem) && prc2.call(elem) }
end

def alternating_mapper(array, prc1, prc2)

    array.map.with_index do | elem, i |
        if i.even?
            prc1.call(elem)
        else
            prc2.call(elem)
        end
    end

end