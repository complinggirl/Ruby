#The exercise is to make the last exercise answer clearer, shorter and simpler using methods
def to_words s
  s.split /[\W]+/
end

def starts_with_vowel s
  #FIXME Errors on an empty string
  #w{a e i o u} is a quick way of writing ['a', 'e', 'i', 'o', 'u']
  %w{a e i o u}.include? s[0].downcase #Can you see why we use downcase here?
end
# def even_number_of_words s
#   s.split.size % 2 == 0 ?  true : false
# end


def rhyming_pairs (s1, s2, s3, s4)
  return "#{to_words(s1).last} rhymes with #{to_words(s3).last} \n#{to_words(s2).last} rhymes with #{to_words(s4).last}" 
end



snowy = File.read 'the-man-from-snowy-river.txt'


snowy = snowy.gsub("\n\n", "\n")
snowy_lines = snowy.lines
snowy_words = to_words snowy

#Example
# puts "Here are the lines of Snowy that start with a vowel"
#
# snowy_lines.each do |line|
#   puts line if starts_with_vowel line
# end

# puts
# puts "Here are the lines of Snowy that have an odd number of words"
# snowy_lines.each do |line|
#   if even_number_of_words line
#     puts line
#   end
# end


#
puts "Here are all the rhyming pairs from the ends of the Snowy lines"
i = 0
while i < snowy_lines.count
  puts rhyming_pairs snowy_lines[i], snowy_lines[i+1], snowy_lines[i+2], snowy_lines[i+3]
  i += 4 # This is a short way of writing i = i + 1
end
