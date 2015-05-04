#Lattice paths
#Problem 15
#Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.


#How many such routes are there through a 20×20 grid?

#A grid of 2 really is 3, +1 to all grid sizes
result = 0
number = 2

idx = 0 
while idx < number
  
  idx1 = 0
  while idx1 < number
    result += 1
    
    idx1 +=1
  end
  result += 1
  
  idx +=1
end

puts result