#The prime factors of 13195 are 5, 7, 13 and 29.
#
#What is the largest prime factor of the number 600851475143 ?

number = 600851475143

require 'prime'

idx = 1
while true
  
  if number % idx == 0
    num = number / idx
    if Prime.prime?(num)
      puts num
      break
    end
  end
  
  idx += 1
end

