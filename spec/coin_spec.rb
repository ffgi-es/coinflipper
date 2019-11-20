require 'coin'

describe Coin do
  let(:randomizer) { double(:gen) }
  subject { Coin.new randomizer }
  describe "#flip" do
    it "should return 'heads'" do
      allow(randomizer).to receive(:random_number).and_return(10)
      expect(subject.flip).to eq "heads"
    end

    it "should return 'tails'" do
      allow(randomizer).to receive(:random_number).and_return(3)
      expect(subject.flip).to eq "tails"
    end
  end
end
