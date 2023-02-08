# Solutions

## even_word.rb

```ruby
list_of_words = gets.chomp.split

list_of_words.each do |a_word|
  if a_word.length.even?
    p a_word
  end
end
```

## letter_count.rb

```ruby
word = gets.chomp
letters = word.split("")

letters.each do |letter|
  p "#{letter} appears #{word.count(letter)} times"
end
```

## spell_word.rb

```ruby
word = gets.chomp
letters = word.split("")

letters.each do |letter|
  p letter.upcase
end
```
