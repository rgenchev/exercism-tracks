class Triangle
  def initialize(sides_lengths)
    @sides_lengths = sides_lengths
  end

  def equilateral?
    return false unless triangle_valid?

    uniq_sides.count == 1
  end

  def isosceles?
    return false unless triangle_valid?

    uniq_sides.count == 2 || equilateral?
  end

  def scalene?
    return false unless triangle_valid?

    uniq_sides.count == 3
  end

  private
    def triangle_valid?
      sides_length_positive? && inequality_respected?
    end

    def uniq_sides
      @sides_lengths.uniq
    end

    def sides_length_positive?
      @sides_lengths.sum > 0
    end

    def inequality_respected?
      @sides_lengths[0] + @sides_lengths[1] >= @sides_lengths[2] && @sides_lengths[0] + @sides_lengths[2] >= @sides_lengths[1] && @sides_lengths[1] + @sides_lengths[2] >= @sides_lengths[0]
    end
end
