=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  attr_reader :string_of_digits

  def initialize(string_of_digits)
    @string_of_digits = string_of_digits
  end

  def slices(digit)
    raise ArgumentError if digit > string_of_digits.length
    return string_of_digits.chars if digit == 1
    
    series = []
    iterator = 0

    while iterator + digit <= string_of_digits.length
      series << string_of_digits[iterator..iterator + digit - 1]
      iterator += 1
    end

    series
  end
end