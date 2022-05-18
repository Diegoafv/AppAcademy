
#
# Complete the 'cryptic_conversion' method below.
#
# The method is expected to return a STRING.
# The method accepts STRING sentence as parameter.
#

#def cryptic_conversion(sentence)
 #   vowels = 'aeiou'
  #  words = sentence.split(' ')
   # words.each_with_index do |word, idx|
    #   if word.length >= 3
     #     if vowels.include?(word[0])
      #      words[idx] = word + "yay"
       #   else
        #    words[idx] = convert(word, vowels)
         # end
#       end
 #   end
  #  return words.join(' ')
#end

#def convert(word, vowels)
   
 #  word.each_char.with_index do | char, i |
  #     if vowels.include?(char)
   #        return word[i..-1] + word[0...i] + "ay"
    #   end
   #end
#end


def cryptic_conversion(sentence)

  words = sentence.split(' ')

  words.map! do | word |
    if word.length > 2
      convert(word)
    else
      word
    end
  end

  words.join(' ')
end

def convert(word)

  vowels = "aeiou"
  newWord = ""

  if vowels.include?(word[0])
      return word + "yay"
  end

  word.each_char.with_index do | char, index |
    if vowels.include?(char)
      return word[index..-1] + word[0...index] + "ay"
    end
  end

  return word

end



p cryptic_conversion('We like to eat bananas')
# "We ikelay to eatyay ananasbay"

p cryptic_conversion('I cannot find the trash')
# "I annotcay indfay ethay ashtray"

p cryptic_conversion('What an interesting problem')
# "Atwhay an interestingyay oblempray"

p cryptic_conversion('Her family flew to France')
# "Erhay amilyfay ewflay to Ancefray"
