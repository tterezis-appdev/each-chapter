# Write a program that:
# 
# Asks the user to enter a word.
#  The program should print each letter in the word the number of times it appears in the word.
# Look in the github README file for example output

# puts "Enter a word:"
# word=gets.chomp.split
# word.each do |theword|
#     p |theword|.count
    
#   end


  puts "Please enter a word: "
  word = gets.chomp.downcase
  word.chars do |letter|
    puts "#{letter} appears #{word.count(letter)} times"
  end
  p word
