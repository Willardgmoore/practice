#Number letter counts
#Problem 17
#If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

#If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


#NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.


one = 3
two = 3
three = 5
four  = 4
five  = 4
six      =3
seven =5
eight  =5
nine   =4
ten    =3
eleven =  6
twelve  =6
thirteen = 8 
fourteen =8
fifteen   =7
sixteen   =7
seventeen  = 9
eighteen   =8
nineteen  =8
twenty  =6
thirty  =6
forty  =5
fifty  =5
sixty  =5
seventy  = 7
eighty  =6
ninety  =6
hundred = 7
thousand = 8

number = 10000  # Testing , supposed to be 1000
result = 0

idx = 1 #Test idx


def id_place(num)
  if num == 1 
    return "One"
  end
  if num == 2
    return "Two"
  end
  if num == 3
    return "Three"
  end
  if num == 4
    return "Four"
  end
  if num == 5
    return "Five"
  end
  if num == 6
    return "Six"
  end
  if num == 7
    return "Seven"
  end
  if num == 8
    return "Eight"
  end
  if num == 9
    return "Nine"
  end
  
end

def id_teen
    
end

#idx = 1
while idx < (number + 1)
  letter_count = 0
  letter = idx
  
  #thousands
  if letter > 999
    letter_count += thousand
    letter -= 1000
  end
  
  #hundreds
  if letter > 99
    
    if letter % 100 != 0
      letter_count += 3 # For adding 'and'
    end
    
    
    puts letter.to_s[0]
    letter += hundred
    letter = letter % 100
  #  puts id_place(letter)
    break
    
  end
  
  # > 19
  
  # < 11
  
  
  
  result += letter_count
  idx += 1
end

#puts thousand
#puts letter_count
#result = idx


puts "result = #{result}"

