class HighScores
  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
     @scores.last
  end

  def personal_best
    personal_top_three.max
  end

  def personal_top_three
    scores.max(3)
  end

  def latest_is_personal_best?
    personal_best == latest
  end

end
