require 'headcount'

describe HeadCount do
  let(:coin) { double :coin }
  subject { HeadCount.new coin }

  before(:each) { allow(coin).to receive(:flip).and_return("heads") }

  describe "#flip_coin" do
    it "should return the coin flip result" do
      expect(subject.flip_coin).to eq "heads"
    end

    it "should return the coin flip result 2" do
      allow(coin).to receive(:flip).and_return("tails")
      expect(subject.flip_coin).to eq "tails"
    end
  end

  describe "#score" do
    it "should return 0 by default" do
      expect(subject.score).to eq 0
    end

    it "should add to the score if 'heads'" do
      subject.flip_coin
      expect(subject.score).to eq 1
    end
  end
end
