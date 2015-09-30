
$num1 = 0
$num2 = 0


def get_two_nums
  puts "please enter the first number"
  $num1 = gets.to_i
  puts "please enter second number"
  $num2 = gets.to_i
end


def  get_factors num
  myArray=[]
  (1..num).step do |n|
    if num % n == 0
      myArray.push(n)
    end
  end
  return myArray
end




def has_factors(arr, n)
  my_bool = false
  arr.each  {|x| n % x == 0 ? my_bool = true : my_bool = false}
  return my_bool
end


def find_uniq(arr)
  temp = []
  arr.each do
    |x| has_factors(arr, x) ? temp = temp : temp.push(x)
  end
  return temp
end


get_two_nums

# puts $num1
# puts $num2

arr1 = get_factors $num1
print arr1

arr11 = find_uniq arr1
print arr11

arr2 = get_factors $num2
print arr2

arr22 = find_uniq arr2
print arr22






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
