require 'spec_helper'

describe Wang do
  before do
    @score = Wang::Score.new('spec/fixtures/model.rb')
  end

  it "calculates total" do
    assert_equal 18.7, @score.total
  end

  it "calculates average" do
    assert_equal 9.3, @score.average
  end
end
