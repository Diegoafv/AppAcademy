 def my_map(array, &prc)
    newArray = []
    array.each do | elem |
        newArray << prc.call(elem)
    end
    newArray
 end

def my_select(array, &prc)
    newArray = []

    array.each do | elem |
        if prc.call(elem)
            newArray << elem
        end
    end
    newArray
end

def my_count(array, &prc)
    sum = 0

    array.each do | elem |
        if prc.call(elem)
            sum += 1
        end
    end
    sum
end

def my_any?(array, &prc)

    array.each do | elem |
        if prc.call(elem)
            return true
        end
    end
    false
end

def my_all?(array, &prc)

    array.each do | elem |
        if !prc.call(elem)
            return false
        end
    end
    true
end

def my_none?(array, &prc)

    array.each do | elem |
        if prc.call(elem)
            return false
        end
    end
    true
end


 