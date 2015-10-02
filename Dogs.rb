class Dog
  attr_accessor :name, :age, :breed

  def initialize (name = "Rover", age = 0, breed = "Mutt")
    @name =  name
    @age = age
    @breed = breed
  end


  def bark
    name = @name
    puts "#{name} say Woof"
  end

  def walkies
    name = @name
    puts "#{name} walks around"
  end
end

#{name} walks around

Dog1 = Dog.new("Rex", 5, "Lab")
Dog2 = Dog.new("Franklin", 8, "Shih tzu")
Dog3 = Dog.new("Sophy", 4, "Shih tzu")
Dog4 = Dog.new("Waffles", 4, "Bichon")

myDogs = [Dog1, Dog2, Dog3, Dog4]

myDogs.each {|dog| puts dog.bark}
puts
myDogs.each {|dog| puts dog.name if dog.age > 5}

#
# puts Dog2.bark
# puts Dog2.walkies
