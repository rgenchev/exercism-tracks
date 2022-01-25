class ArmstrongNumbers
  def self.include?(number)
    exponent = number.digits.length

    number.digits.sum { |digit| digit ** exponent } == number
  end
end