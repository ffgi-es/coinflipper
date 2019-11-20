class Coin
  def initialize randomizer = Randomizer.new
    @randomizer = randomizer
  end
  def flip
    @randomizer.random_number % 2 == 0 ? "heads" : "tails"
  end
end
