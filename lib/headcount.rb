class HeadCount
  def initialize coin = Coin.new
    @coin = coin
    @head_count = 0
  end

  def flip_coin
    result = @coin.flip()
    @head_count += 1 if result == "heads"
    result
  end

  def score
    @head_count
  end
end
