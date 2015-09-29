snowy = File.read 'the-man-from-snowy-river.txt'

snowy_lines = snowy.lines
#
split_pattern = /[\W]+/
# snowy_words = snowy.split split_pattern
#
# #Example
# puts "Here are the lines of Snowy that start with a vowel"
#
# snowy_lines.each do |line|
#   c = line[0].downcase
#   puts '  ' + line if c == 'a' || c == 'e' || c == 'o' || c == 'u'
# end

# puts
# puts "Here are the lines of Snowy that have an odd number of words"
# #hint: a % b is the remainder after you divide a by b (called "mod" or
# "modulus")
# # for example 17 % 2 == 1
# puts "..."
#

# puts "Here are the lines of snowy that have an odd number of words"
#
# snowy_lines.each do |line|
#   puts line if line.split.size % 2 == 0
# end
#
#
#
# puts "Here is Snowy double-spaced"
#
# puts snowy.gsub(" ", "  ")
#

snowy = snowy.gsub("\n\n","\n")
snowy_lines = snowy.lines

puts "Here are all the rhyming pairs from the ends of the Snowy lines"
i = 0
while i < snowy_lines.count
  word1 = snowy_lines[i].split(split_pattern).last
  word2 = snowy_lines[i+1].split(split_pattern).last
  word3 = snowy_lines[i+2].split(split_pattern).last
  word4 = snowy_lines[i+3].split(split_pattern).last
  puts word1 +" "+word3
  puts word2 + " " + word4
  i+=4
end
