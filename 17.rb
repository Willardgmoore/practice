#Number letter counts
#Problem 17
#If the idxs 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

#If all the idxs from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


#NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out idxs is in compliance with British usage.

def num_string?(num)
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
  #Tens
  if num == 10
    return "Ten"
  end
  if num == 11
    return "Eleven"
  end
  if num == 12
    return "Twelve"
  end
  if num == 13
    return "Thirteen"
  end
  if num == 14
    return "Fourteen"
  end
  if num == 15
    return "Fifteen"
  end
  if num == 16
    return "Sixteen"
  end
  if num == 17
    return "Seventeen"
  end
  if num == 18
    return "Eighteen"
  end
  if num == 19
    return "Nineteen"
  end
  #Tens
  if num == 20 
    return "Twenty"
  end
  if num == 30
    return "Thirty"
  end
  if num == 40
    return "Fourty"
  end
  if num == 50
    return "Fifty"
  end
  if num == 60 
    return "Sixty"
  end
  if num == 70
    return "Seventy"
  end
  if num == 80
    return "Eighty"
  end
  if num == 90
    return "Ninety"
  end
end


number = 1111  # Testing , supposed to be 1000
result = ""

idx = 0
while idx < number + 1
  
  #Thousands
  if idx > 999
    result << num_string?(idx[0]) + "Thousand"
    idx = idx % 1000
  end

  #Hundreds
  if idx > 99
    result << num_string?(idx[0]) + "Hundred"
    idx = idx % 100
  end

  #Tens and Ones 
  if idx > 0
    result << "And" + num_string?(idx)
  end

  idx += 1
end

puts "result = #{result}"

