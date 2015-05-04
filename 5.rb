#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

result = 0
divisible_thru = 25

idx = divisible_thru

idx1 = 1
while idx1 < (divisible_thru + 1)

  if idx % idx1 == 0
  else
    idx += 1
    idx1 = 1
  end  
  
  idx1 += 1
end

puts idx


#puts result