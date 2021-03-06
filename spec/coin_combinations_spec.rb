require('rspec')
require('coin_combinations')

describe("CoinCombiner#counter") do
  it("will return amount in pennies") do
    piggy_bank = CoinCombiner.new
    expect(piggy_bank.counter('4')).to(eq('4 pennies'))
  end
  
  it('will return amount in nickels and pennies') do
    piggy_bank = CoinCombiner.new
    expect(piggy_bank.counter('9')).to(eq('1 nickel and 4 pennies'))
  end

  it('will return amount in dimes, nickels, and pennies') do
    piggy_bank = CoinCombiner.new
    expect(piggy_bank.counter('19')).to(eq('1 dime and 1 nickel and 4 pennies'))
  end

  it('will return amount in quarters, dimes, nickels, and pennies') do
    piggy_bank = CoinCombiner.new
    expect(piggy_bank.counter('519')).to(eq('20 quarters and 1 dime and 1 nickel and 4 pennies'))
  end

end