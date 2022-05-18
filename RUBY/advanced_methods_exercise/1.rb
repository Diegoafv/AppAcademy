
#
# Complete the 'trifling_triplet' method below.
#
# The method is expected to return a BOOLEAN.
# The method accepts STRING string as parameter.
#

def trifling_triplet(string)
    # Write your code here
    
    counter = 1
    
    string.each_char.with_index do | char, index |
        if index != string.length-1
            if char == string[index + 1]
                counter += 1
                if counter == 3
                    return true
                end
            else
                counter = 1
            end
        end
    end
    return false

end


p trifling_triplet('caaabb')        # true
p trifling_triplet('terrrrrible')   # true
p trifling_triplet('runninggg')     # true
p trifling_triplet('bootcamp')      # false
p trifling_triplet('e')             # false
