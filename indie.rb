# promps for user input
# finds the prime factors of the input
#
# $num1 = 0
#
#
# def pass
# end
#
# def get_nums
#   puts "please enter a number"
#   $num1 = gets.to_i
# end
#
#
# def  get_factors num
#   myArray=[]
#   (1..num).step do |n|
#     if num % n == 0
#       myArray.push(n)
#     end
#   end
#   return myArray
# end
#
#
#
#


# I should have used a sieve
# def is_prime?(num)
#   (2...num).each do |divisor|
#     return true if num % divisor == 0
#   end
#   false
# end

#
# def find_prime(arr)
#   temp = []
#   arr.each {|x| is_prime?(x) ?  pass : temp.push(x)}
#   return temp
# end
#
#
# get_nums
#
#
#
# arr1 = get_factors $num1
# arr11 = find_prime arr1
# print arr1
# puts
# print arr11
# puts

# promps for two number and finds if they are co_prime

# $num1
# $num2
#
#
#  again I should have google this
# def  get_factors num
#   myArray=[]
#   (2..num).step do |n|
#     if num % n == 0
#       myArray.push(n)
#     end
#   end
#   # myArray.shift
#   return myArray
# end
#
#
# def get_nums
#   puts "please enter a number"
#   $num1 = gets.to_i
#   puts "please enter another number"
#   $num2 = gets.to_i
# end
#
# def compare(arr_1, arr_2)
#   arr_1.each do |x|
#     return false if arr_2.include?(x)
#   end
#   true
# end
#
#
#
# get_nums
#
# arr1 = get_factors $num1
# arr2 = get_factors $num2
# print arr1
# puts
# print arr2
# puts
#
#
# if compare(arr1, arr2)
#   puts "these numbers are coprime"
# else
#   puts "these numbers are not coprime"
# end

# check input is an integer This took MUCH longer than it should have done


#
# puts("Enter a number: " )
#
# input = nil
#
# until input.is_a?(Fixnum) do
#   print "Please enter a number: "
#   input = Integer(gets) rescue nil
# end

same as above but prompt for a positive odd number
this is SO counter intuitive. You have to check that something is an int BEFORE
you cast it to an int and check other things about it

def okay(number)
  puts number.class
  Integer(number) rescue return(false)
  number = number.to_i
  if number % 2 != 0 && number > 0
    return true
  else
    return false
  end
end



puts("Enter a number: " )
input = gets.chomp

while not okay(input) do
  puts "Please enter a positive odd number: "
  input = gets.chomp
end



# some small exercises Paul asked me to do

# array = Array(1..10)
# array.each { |x| puts x }
#
#
# array = Array(1..10)
# array.reverse.each { |x| puts x }


# (10..100).step(10) do |n|
#   puts n
# end


# puts "what is your number?"
# num = gets.to_i
#
# (0..100).step(num) do |n|
#   puts n
#   end


# array[string] returns 1
# array[float] return nil

# array = Array(1..10)
# puts "enter a number"
#
# num = gets.to_i
#
# puts array[num].class.to_s


# array = Array(1..14)
#
# puts array.length.to_s

# array = %w(the way things are going)
# i = 0
#
#
# while i < array.length  do
#   print array[i]
#    i +=1
# end

# array = %w(the way things are going)
#
# array<<"today"
#
# temp = %w(I think that)
#
# puts temp<<array

# puts array
# array.pop
# array.pop
# puts array
#
# array.push("ME")
# puts array

#
# array = Array.new(5)
# puts array[2].class
