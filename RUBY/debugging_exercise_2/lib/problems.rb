# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(n)

    largest = 0

    (2..n).each do | i |
        if (n % i == 0) && isPrime(i)
            largest = i
        end
    end
    largest
end

def isPrime(n)
    return false if n < 2

    (2...n).each do | i |
        return false if n % i == 0
    end

    true
end

def unique_chars?(string)

    hashVowels = Hash.new(0)
    repeated = {}

    string.each_char do | char |
        hashVowels[char] += 1
    end

    repeated = hashVowels.select { | k, v | v >= 2 }

    return true if repeated == {}

    false

end

def dupe_indices(array)

    hash = Hash.new([])
    #hash = Hash.new { |h, k| h[k] = []}

    array.each_with_index do | elem, i |
        hash[elem] = [hash[elem], i].flatten
        #hash[elem] << i
    end

    hash.filter { | k, v | v.length > 1}

end

def ana_array(array1, array2)

    hash1 = Hash.new(0)
    hash2 = Hash.new(0)

    array1.each do | elem |
        hash1[elem] += 1
    end

    array2.each do | elem |
        hash2[elem] += 1
    end

    return true if hash1 == hash2

    false

end