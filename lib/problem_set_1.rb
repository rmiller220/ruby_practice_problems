##Create a method that checks if two words are an anagram for one another

def anagram?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

##Create a method that checks if a word is a palindrome

def palindrome?(word)
  word.reverse == word
end



