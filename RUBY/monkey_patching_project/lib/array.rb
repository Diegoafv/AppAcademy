# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
   def span
        return nil if self == []
        self.max - self.min
   end

   def average
        return nil if self == []
        (1.0*self.sum)/self.length
   end

   def median
        return nil if self == []
        middle = self.length/2
        sorted = self.sort
        if self.length % 2 == 0
            left = middle - 1
            right = middle
            return (sorted[left] + sorted[right])/2.0
        else
            return sorted[middle]
        end
   end

   def counts
        hash = Hash.new(0)

        self.each do |elem|
            hash[elem] += 1
        end
        hash
   end

   def my_count(value)
        count = 0

        self.each do | elem |
            if elem == value
                count += 1
            end
        end
        count
   end

   def my_index(value)
        self.each_with_index do | elem, i |
            if elem == value
                return i
            end
        end
        nil
   end

   def my_uniq

        newArray = []

        self.each do | elem |
            if !newArray.include?(elem)
                newArray << elem
            end
        end
        newArray
   end

   def my_transpose
        len = self[0].length
        newArray = Array.new(len) { Array.new(len) }
        i = 0
        j = 0

        while i < len
            j = 0
            while j < len
                newArray[j][i] = self[i][j]
                j += 1
            end
            i += 1
        end
        newArray
   end
end
