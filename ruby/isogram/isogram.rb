class Isogram
  def self.isogram?(input)
    return true if input.empty?

    occurrences = Hash.new 0

    input.chars.each do |char|
      next if ['-', ' '].include?(char)

      occurrences[char.downcase] += 1
    end

    occurrences.values.none? { |v| v > 1 }
  end
end