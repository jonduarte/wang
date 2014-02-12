require 'flog'
require 'flay'

module Wang
  class Score
    attr_reader :flog

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

  class Duplication
    attr_reader :flay

    def initialize(file)
      @flay = Flay.new
      @flay.process(file)
      @flay.analyze
    end

    def total
      @flay.total
    end
  end
end
