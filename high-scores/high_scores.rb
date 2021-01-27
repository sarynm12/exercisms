class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max_by do |score|
      score
    end
  end

  def personal_top_three
    result = scores.max_by(3) do |score|
      score
    end
    result.sort.reverse
  end

  def latest_is_personal_best?
    if latest >= personal_best
      true
    else
      false
    end
  end

end
