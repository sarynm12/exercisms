class Series
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def slices(num)
    raise ArgumentError unless string.length >= num 
    split = string.split("")
    split.each_cons(num).map(&:join)
  end

end
