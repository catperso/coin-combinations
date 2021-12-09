class CoinCombiner
  def initialize()
    @quarters = 0
    @dimes = 0
    @nickels = 0
    @pennies = 0
  end

  def counter(cash)
    output = []
    remainder_cash = cash.to_i
    remainder_cash = nickels(remainder_cash)
    remainder_cash = pennies(remainder_cash)

    if @nickels > 0
      if output.length > 0
        output.push("and")
      end
      output.push("#{@nickels}")
      if @nickels == 1
        output.push("nickel")
      else
        output.push("nickels")
      end
    end
    if @pennies > 0
      if output.length > 0
        output.push("and")
      end
      output.push("#{@pennies}")
      if @pennies == 1
        output.push("penny")
      else
        output.push("pennies")
      end
    end
    output.join(' ')
  end

  private
    def quarters(cash)
      @quarters = (cash - (cash % 25)) / 25
      cash % 25
    end

    def dimes(remainder)
      @dimes = (remainder - (remainder % 10)) / 10
      remainder % 10
    end

    def nickels(remainder)
      @nickels = (remainder - (remainder % 5)) / 5
      remainder % 5
    end

    def pennies(remainder)
      @pennies = remainder
      0
    end
end
