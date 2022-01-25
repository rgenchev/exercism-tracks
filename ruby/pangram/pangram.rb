class Pangram
  ALPHABET = "abcdefghijklmnopqrstuvwxyz"

  def self.pangram?(sentence)
    ALPHABET.chars.each.all? { |letter| sentence.downcase.include?(letter) }
  end
end