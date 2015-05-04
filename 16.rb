#Power digit sum
#Problem 16
#2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

#What is the sum of the digits of the number 2^1000?
result = 1

idx = 1000
while idx > 0
  result = result*2
  
  idx -= 1
end

puts result
result_s = result.to_s

answer = 0
idx1 = result_s.length
while idx1 > -1
  answer += (result_s[idx1]).to_i
  
  #puts idx1
  #puts result_s[idx1]
  
  idx1 -=1
end

puts
puts answer

#puts result_s[idx]
