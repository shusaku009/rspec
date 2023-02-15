require 'spec_helper'

RSpec.describe You do
  describe '#read_this_entry' do
    let(:you) { You.new }
    it 'この記事を読むとマッチャを使いこなせるようになっていること' do
      expect{ you.read_this_entry }.to \
        change{ you.matcher_expert? }.from(be_falsey).to(be_truthy)
    end
  end
end