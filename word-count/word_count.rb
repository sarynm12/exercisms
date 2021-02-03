class Phrase
  attr_reader :string

  def initialize(string)
    @string = string.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    result = Hash.new(0)
    @string.each_with_object(Hash.new(0)) do |word, acc|
      acc[word] += 1
    end
  end

end
