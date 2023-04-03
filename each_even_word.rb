# Write a program that:
#   Asks the user to enter a list of words separated by spaces.
#   The program should only print the words that are have an even number of characters
# Look in the github README file for example output

puts "Enter a list of words separated by spaces:"
array=gets.chomp.split
array.each do |the_word|
  if the_word.length%2==0
    p the_word
  end
  # if |the_word|.length
    # p the_word
end



  
