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

