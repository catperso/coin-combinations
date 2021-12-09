class CoinCombiner
  def initialize()
    @quarters = 0
    @dimes = 0
    @nickels = 0
    @pennies = 0
  end

  def counter(cash)
    @pennies = cash.to_i
    penny_word = 'pennies'
    if @pennies == 1
      penny_word = 'penny'
    end
    if @pennies > 0
      "#{@pennies} pennies"
    end
  end

end
