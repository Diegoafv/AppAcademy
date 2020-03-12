
#
# Complete the 'rational_repeats' method below.
#
# The method is expected to return a STRING.
# The method accepts following parameters:
#  1. STRING string
#  2. HASH h
#

def rational_repeats(string, h)
    # Write your code here
    
    newString = ""
    
    string.each_char do | char |
       if h.has_key?(char)
           h[char].times do 
              newString = newString + char 
           end
       else
           newString = newString + char
       end
    end
    
    return newString

end


p rational_repeats('taco', {'a'=>3, 'c'=>2})              # 'taaacco'
p rational_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3})  # 'ffffeeveerisssh'
p rational_repeats('misispi', {'s'=>2, 'p'=>2})           # 'mississppi'
p rational_repeats('faarm', {'e'=>3, 'a'=>2})             # 'faaaarm'
