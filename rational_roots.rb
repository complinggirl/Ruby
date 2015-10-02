
# a good deal of help from the interwebs but the actual code is mine.

def  get_factors num
  myArray=[]
  (1..num).step do |n|
    if num % n == 0
      myArray.push(n)
    end
  end
  return myArray
end

# this is shamelessly pilfered

# class EquationSolver
#   def solve(x, *args)
#     args.reverse.map.with_index { |coefficient, index| coefficient * x ** index }.inject(:+)
#   end
# end


class Polynomial
  attr_accessor :coefficients

  def initialize(coefficients)
    self.coefficients = coefficients.reverse
  end

  def evaluate(x)
    coefficients.map.with_index { |k, power| k * (x**power) }.reduce(0, :+)
  end
end


# 3x^3-2x^2-x+5

$coeffs = [3, 2, -1, 5]

my_ps = get_factors($coeffs.last)
my_qs = get_factors($coeffs.first)


my_solver = Polynomial.new($coeffs)

$zeros = []

my_ps.each do |numerator|
  puts numerator
  #
  my_qs.each do |denominator|
    puts denominator
    puts numerator.to_s+" "+denomioator.to_s+" a zero"
    # if my_solver(numerator/Float(denominator)) == 0
  end
end




# puts polynomial.evaluate(3)
