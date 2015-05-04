#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
#Find the largest palindrome made from the product of two 3-digit numbers.



result = 0

number = 999
while number > 0

  number1 = 999  
  while number1 > 0
    test = (number*number1)
    test1 = test.to_s
 
    if test1 == test1.reverse
      if test > result
        result = test
      end
    end

    
    #puts number1
    number1 -= 1
  end
  
  #puts number  
  number -= 1
end

puts result