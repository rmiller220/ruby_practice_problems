##Create a method that checks if two words are an anagram for one another

def anagram?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

##Create a method that checks if a word is a palindrome

def palindrome?(word)
  word.reverse == word
end

# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# You can return the answer in any order.

def two_sum(nums, target)
  hash = {}
 nums.each_with_index do |number, index|
     if hash[target - number]
         return [hash[target - number], index]
     else
         hash[number] = index
     end
 end
end

# Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

def contains_duplicate(nums)
  nums.uniq.length != nums.length
end


# For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.
# Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:
# I can be placed before V (5) and X (10) to make 4 and 9. 
# X can be placed before L (50) and C (100) to make 40 and 90. 
# C can be placed before D (500) and M (1000) to make 400 and 900.
# Given a roman numeral, convert it to an integer.

def roman_to_int(s)

end

# Given an integer rowIndex, return the rowIndexth (0-indexed) 
# row of the Pascal's triangle.

# In Pascal's triangle, each number is the sum of the two 
# numbers directly above it as shown:

# Example 1:

# Input: rowIndex = 3
# Output: [1,3,3,1]
# Example 2:

# Input: rowIndex = 0
# Output: [1]
# Example 3:

# Input: rowIndex = 1
# Output: [1,1]
 

# Constraints:

# 0 <= rowIndex <= 33
 

# Follow up: Could you optimize your algorithm to use only O(rowIndex) extra space?

def get_row(row_index)
  result = [1]
  row_index.times do
      result = (result + [0]).zip([0] + result).map(&:sum)
  end
  result
end