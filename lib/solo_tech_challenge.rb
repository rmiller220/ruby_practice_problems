# A palindrome is any number, word, or phrase that reads the same forward as it does backward. In this challenge, we are going to focus on palindromic numbers. For example, 12321 is a palindromic number, whereas 123 is not.
# Write a method/function that starts at 0 and finds the first twenty-five numbers where the number plus its inverse equals a palindrome that is greater than 1,000.
# 47(number) + 74(inverse) = 121(palindrome) Note: This does not meet the greater than 1,000 rule.
# Collect the twenty-five numbers in an array as the return value. Be sure to collect the number and not the sum.

  #sudo code
    #create a method that takes in a range of numbers
    #set an variable equal to an empty array
    #set a variable equal to 0
    #do a while loop that checks the length of the array and stops at 25
    #check if the sum is greater than 1000 and the sum is equal to the sum reversed
    #if it is, shovel the number into the empty array
    #return the array from index position 0-24


def palindromic_sum
  first_25 = []
  number = 0
  while first_25.length < 25
    if (number + number.to_s.reverse.to_i) > 1000 && (number + number.to_s.reverse.to_i) == (number + number.to_s.reverse.to_i).to_s.reverse.to_i
      first_25 << number
    end
    number += 1
  end
  first_25
end

