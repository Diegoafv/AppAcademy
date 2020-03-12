# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    
    hash = Hash.new(0)
    
    nums.each do | num |
        hash[num] += 1
    end
    
    newHash = hash.select { | k, v | v == 1 }
    
    newHash.first[0]
    
end

puts single_number([2,2,3,2])