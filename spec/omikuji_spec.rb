require 'spec_helper'

RSpec.describe Lottery do
  it '当選確率が約25%になっていること' do
    results = Lottery.generate_results(1000)
    win_count = results.count(&:win?)
    probability = win_count.to_f / 1000 * 100

    expect(probability).to be_within(1.0).of(25.0)
  end
end