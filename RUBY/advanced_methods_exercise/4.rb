
#
# Complete the 'dynamic_duos' method below.
#
# The method is expected to return an INTEGER.
# The method accepts a STRING as parameter.
#

def dynamic_duos(string)
    # Write your code here
    
    counter = 0
    
    string.each_char.with_index do | char, index |
        if index == string.length-1
            return counter
        end
        if char == string[index + 1]
            counter += 1
        end
    end

end





p dynamic_duos('bootcamp')      # 1
p dynamic_duos('wxxyzz')        # 2
p dynamic_duos('hoooraay')      # 3
p dynamic_duos('dinosaurs')     # 0
p dynamic_duos('e')             # 0
