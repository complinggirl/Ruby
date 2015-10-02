#500 switches problem

#flip the booleans in an array according to according

def flip_switches(num)
    i = num
    until i >= $switches.length
      $switches[i] = !$switches[i]
      i += num
    end
end


# until index == 0
#     print "Index: ", index, "\n"
#     index -= 1
# end


# create the array with 500 switches set to on

$switches = Array.new
(0..501).each {|x| $switches.push(true)}



# loop over the switches
# print $switches
# puts
(1..500).each {|x| flip_switches(x)}
# print $switches

#collect the true values and store their indices in a new array
$final = Array.new


for i in 1..$switches.length-1
   if not $switches[i]
     $final.push(i)
   end
end

# print $final
# puts



# implement fibonacci sequence

$myFib = [0,1]
(2..100).each{|x| $myFib.push($myFib[x-2] + $myFib[x-1]) }
# print $myFib
# puts

#
