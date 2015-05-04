#Longest Collatz sequence
#Problem 14
#The following iterative sequence is defined for the set of positive integers:

#n → n/2 (n is even)
#n → 3n + 1 (n is odd)

#Using the rule above and starting with 13, we generate the following sequence:

#13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
#It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

#Which starting number, under one million, produces the longest chain?

#NOTE: Once the chain starts the terms are allowed to go above one million.
longest_terms = 0

idx = 1000000 #1,000,000
while idx > 1 

terms = 1

n = idx
while n != 1
  if n % 2 == 0 #True
    n = n/2 #Even
  else #False
    n = (3*n) + 1 #Odd
  end
  terms += 1

end

#puts idx
#puts terms
#puts

if terms > longest_terms 
  longest_terms = terms
  longest_idx = idx
end

idx -= 1
end

puts longest_terms
puts longest_idx