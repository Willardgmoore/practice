# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require 'prime'

array = Prime.take_while {|p| p < 2000000 }

result = 0
idx = 0
while idx < array.length
  result += array[idx]
  
  idx += 1
end

#puts array
puts result