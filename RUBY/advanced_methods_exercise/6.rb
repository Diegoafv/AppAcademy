
#
# Complete the 'troublesome_translate' method below.
#
# The method is expected to return a STRING.
# The method accepts STRING sentence as parameter.
#

def troublesome_translate(sentence)
    words = sentence.split(' ')
    words.map! do |word| 
        if word.length >= 3
            helper(word)
        else
            word
        end
    end
    words.join(' ')
end

def helper(word)
    vowels = 'aeiou'
   if vowels.include?(word[-1])
       return word + word
   else
       i = word.length - 1
       while i >= 0
            if vowels.include?(word[i])
                return word + word[i..-1]
            end
            i -= 1
        end
   end
end



p troublesome_translate('We like to go running fast') 
# "We likelike to go runninging fastast"

p troublesome_translate('He cannot find the trash') 
# "He cannotot findind thethe trashash"

p troublesome_translate('Pasta is my favorite dish') 
# "Pastapasta is my favoritefavorite dishish"

p troublesome_translate('Her family flew to France') 
# "Herer familyily flewew to Francefrance"
