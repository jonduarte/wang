require 'flog'
module Wang
  attr_reader :flog

  class Score
    def initialize(file)
      @flog = Flog.new
      @flog.flog(file)
    end

    def total
      @flog.total_score.round(1)
    end

    def average
      @flog.average.round(1)
    end
  end
end
