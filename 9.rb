#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
#a2 + b2 = c2
#For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

total = 1000

a = 3
b = 4
c = 5

a2 = a
b2 = b
c2 = c

while a2 + b2 + c2 < 1000
  if a2 + b2 + c2 == 1000
    result = a2*b2*c2
    break
  end
#  puts "a #{a2} + b #{b2} + c #{c2} = #{(a2 + b2 + c2)}"
 puts (a*a) + (b*b) == (c*c) 
  a2 += a
  b2 += b
  c2 += c
end

if a2 + b2 + c2 > 1000
  a2 -= a
  b2 -= b
  c2 -= c
end

a2 += (a/3.00)
b2 += (b/3.00)
c2 += (c/3.00)


#  puts "a #{a2} + b #{b2} + c #{c2} = #{(a2 + b2 + c2)}"  
puts total - (a2 + b2 + c2)

# ------------------------------------
puts "a #{a2} + b #{b2} + c #{c2} = #{(a2 + b2 + c2)}"

result = a2*b2*c2

puts result

puts "and"
puts (200**2) + (375**2) == (425**2) 