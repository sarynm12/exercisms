class Acronym

  def self.abbreviate(string)
    phrase = string.gsub('-',' ')
    array = phrase.split
    firsts = array.map do |word|
      word[0].upcase
    end
    firsts.join
  end

end
