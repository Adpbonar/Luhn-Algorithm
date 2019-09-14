  
module Luhn
  def self.is_valid?(number)
    credit_card = []
    # Access individual digits
    check_num = number.to_s.split("")
    # Reverse numbers and access index
    check_num.reverse.each_with_index do |num, i|
      # Convert variables to integers
      num = num.to_i 
      digit = digit.to_i
      # Determine odd digit positions
      unless (i.odd?)
        credit_card << num
      else
        # Double every other digit
        digit = num * 2
        credit_card << digit unless digit > 9 
      end
      # subtract 9 from digits with value of 10 or higher
      credit_card << digit - 9 if digit > 9
    end
    # Determine divisibility of sum by 10 
    return true if credit_card.sum % 10 == 0 else return false
  end
end

if Luhn.is_valid?(377681478627336)
  puts "Approved :)"
else
  puts "Declined :("
end