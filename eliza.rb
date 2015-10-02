require_relative 'eliza_questions'

puts "The psychiatrist is in. Type q to finish."

loop do
  entered = gets.chomp

  exit if entered == 'q'

  if entered == ""
    puts "Go on"
  else
    puts Response.get_answer entered
  end
end
