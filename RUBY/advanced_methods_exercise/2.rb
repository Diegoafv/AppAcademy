
#
# Complete the 'sneaky_sentence' method below.
#
# The method is expected to return a STRING.
# The method accepts following parameters:
#  1. STRING sentence
#  2. HASH h
#

def sneaky_sentence(sentence, h)
    # Write your code here
    
    words = sentence.split(" ")
    
    #words.each_with_index do | word, index |
     #  if h.has_key?(word)
      #     words[index] = h[word]
       #end
    #end

    words.map! do | word |
        if h.has_key?(word)
            h[word]
        else
            word
        end
    end
    return words.join(" ")

end


p sneaky_sentence('anything you can do I can do', {'anything'=>'nothing', 'do'=>'drink', 'can'=>'shall'})
# 'nothing you shall drink I shall drink'

p sneaky_sentence('what a sad ad', {'cat'=>'dog', 'sad'=>'happy', 'what'=>'make'})
# 'make a happy ad'

p sneaky_sentence('keep coding okay', {'coding'=>'running', 'kay'=>'pen'})
# 'keep running okay'
