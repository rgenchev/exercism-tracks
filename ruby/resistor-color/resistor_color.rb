class ResistorColor
  COLORS = %w(black brown red orange yellow green blue violet grey white).freeze

  def self.color_code(color)
    case color
    when "black"
      0
    when "brown"
      1
    when "red"
      2
    when "orange"
      3
    when "yellow"
      4
    when "green"
      5
    when "blue"
      6
    when "violen"
      7
    when "grey"
      8
    when "white"
      9
    else
      "Please choose a number between 0 and 9."
    end
  end
end
