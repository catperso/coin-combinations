#!/usr/bin/env ruby

require ('./lib/coin_combinations.rb')

combo = CoinCombiner.new
puts "Please input a number:"
puts combo.counter(gets.chomp)

