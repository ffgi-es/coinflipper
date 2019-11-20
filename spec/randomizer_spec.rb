require 'randomizer'

describe Randomizer do
  describe "#random_number" do
    it "should return an Integer" do
      expect(subject.random_number).to be_instance_of Integer
    end
  end
end
    
