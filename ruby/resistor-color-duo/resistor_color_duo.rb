class ResistorColorDuo
  RESISTANCE_VALUES = {
    'black': 0,
    'brown': 1,
    'red': 2,
    'orange': 3,
    'yellow': 4,
    'green': 5,
    'blue': 6,
    'violet': 7,
    'grey': 8,
    'white': 9
  }.freeze

  def self.value(color_names)
    color_names[0..1].map { |color| RESISTANCE_VALUES[color.to_sym] }.join('').to_i
  end
end