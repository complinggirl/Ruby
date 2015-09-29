class Person
  attr_accessor :family_name, :given_name
end


peter = Person.new

peter.family_name = "bracegirdle"

puts peter.family_name
