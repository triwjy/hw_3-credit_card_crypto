module LuhnValidator
  # Validates credit card number using Luhn Algorithm
  # arguments: none
  # assumes: a local String called 'number' exists
  # returns: true/false whether last digit is correct
  def validate_checksum
    nums_a = number.to_s.chars.map(&:to_i).reverse
    valid=nums_a.map.with_index{|n,i| i.odd? ? n*2>9 ? n*2-9 : n*2 :n}.reduce(0, :+)
    (valid%10==0)
    # TODO: use the integers in nums_a to validate its last check digit
  end

  def control_digit
  end
end
