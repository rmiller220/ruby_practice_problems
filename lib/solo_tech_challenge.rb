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

# You are given three arrays of equal size. Each array has 1 million RANDOM integer values.
# Assume that each array is already sorted in ascending order and that no individual array has any duplicate values.
# Your goal is to write a method/function that will return an array of any/all values which are present in all three arrays.
# Bonus: Once you’ve found a working solution, try to optimize to run in O(n) time and 1x space complexity.
nums_1 = [1, 2, 4, 5, 8]
nums_2 = [2, 3, 5, 7, 9]
nums_3 = [1, 2, 5, 8, 9]



# In this challenge, you are working with a computer simulation of a mobile robot. The robot moves on a plane, and its movements are described by a command string consisting of one or more of the following letters:
# G instructs the robot to move forward one step
# L instructs the robot to turn left
# R instructs the robot to turn right
# The robot CANNOT go backwards - poor robot. After running all of the movement commands, you want to know if the robot returns to its original starting location.

  #sudo code
    #create a method that takes in a string of commands
    #set a variable equal to 0 for the x axis
    #set variable equal to 0 for the y axis
    #set a variable equal to the direction the robot is facing 
    #set a variable equal to the direction the robot is facing after the next command
    #iterate over the string of commands
    #if the command is equal to G, add 1 to the x axis and 0 to the y axis
    #if the command is equal to R, add 0 to the x axis and 1 to the y axis
    #if the command is equal to L, subtract 0 from the x axis and 1 from the y axis
    #check if the x axis and y axis are equal to 0
    #if they are, return true
    #if they are not, return false
 



def robot(commands)

   # Define the initial position and orientation of the robot
   x, y = 0, 0  # Starting at the origin (0, 0)
   direction = 0  # 0: North, 1: East, 2: South, 3: West
 
   # Define the direction changes when turning left and right
   direction_changes = [[0, 1], [1, 0], [0, -1], [-1, 0]]
 
   # Process each command in the command string
   commands.each_char do |command|
     case command
     when 'G'
       # Move the robot one step forward in the current direction
       dx, dy = direction_changes[direction]
       x += dx
       y += dy
     when 'L'
       # Turn the robot left by 90 degrees
       direction = (direction - 1) % 4
     when 'R'
       # Turn the robot right by 90 degrees
       direction = (direction + 1) % 4
     end
   end
 
   # Check if the robot returns to the starting position
   x == 0 && y == 0
end

  # x = 0
  # y = 0
  # head = commands[0]
  # next_command = commands[1]
  # previous_command = commands[-1]
  # commands.chars.each_with_index do |command, index|
  #   if command == "G" && index == 0
  #     x += 1
  #   elsif command == "R" && index == 0
  #     y -= 1
  #   elsif command == "L" && index == 0
  #     y += 1
  #   elsif command == "G" && index != 0
  #     if commands[index - 1] == "G"
  #   end

  #     end
  #   end
  # end
# end