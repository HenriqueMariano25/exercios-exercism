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
    @scores.max
  end

  def personal_top_three
    score_sort.take(3)
  end

  def latest_is_personal_best?
    personal_best == latest
  end

  private

  def score_sort
    @scores.sort{ |a, b| b <=> a }
  end
end
