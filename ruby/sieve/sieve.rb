class Sieve
  def initialize(upper_bound)
    @upper_bound = upper_bound
  end

  def primes
    2.upto(@upper_bound).select { |n| prime?(n) }
  end

  private
    def prime?(num)
      2.upto(num - 1).each do |n|
        return false if num % n == 0
      end

      true
    end
end