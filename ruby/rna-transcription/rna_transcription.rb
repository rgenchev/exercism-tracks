class Complement
  def self.of_dna(nucleotide)
    return '' if nucleotide.empty?

    nucleotide.split('').map do |n|
      case n
      when 'G'
        'C'
      when 'C'
        'G'
      when 'T'
        'A'
      when 'A'
        'U'
      end
    end.join('')
  end
end
