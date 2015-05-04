#The sum of the squares of the first ten natural numbers is,
#
#12 + 22 + ... + 102 = 385
#The square of the sum of the first ten natural numbers is,
#
#(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

number = 100

# Sum of the squares
sq = 0
idx = 1
while idx < number + 1
  sq += (idx*idx)
  idx +=1 
end

sq_of_sum = sq

# Square of the Sum
sum = 0
idx = 0
while idx < number + 1
  sum += idx
  idx +=1
end

sum_of_sq = sum*sum

# Result = Sum of Squares - Square of Sums
result = (sum_of_sq - sq_of_sum)
puts result