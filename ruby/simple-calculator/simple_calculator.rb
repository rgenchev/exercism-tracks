class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError; end

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError unless first_operand.is_a?(Numeric) && second_operand.is_a?(Numeric)

    case operation
    when '+'
      "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
    when '*'
      "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
    when '/'
      begin
        "#{first_operand} / #{second_operand} = #{first_operand / second_operand}"
      rescue ZeroDivisionError
        "Division by zero is not allowed."
      end
    else
      raise SimpleCalculator::UnsupportedOperation
    end
  end
end
