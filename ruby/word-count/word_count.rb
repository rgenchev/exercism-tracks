=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    counts = {}

    phrase.downcase.scan(/[a-zA-Z0-9']+/).each do |word|
      word = word.delete("'") if word[0] == "'" && word[-1] == "'"
      counts[word] = 1 and next if counts[word].nil?
      counts[word] += 1
    end

    counts
  end

  private

  attr_reader :phrase
end