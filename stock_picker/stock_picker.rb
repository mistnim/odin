#!/usr/bin/env ruby
def stock_picker days
  best = days[1] - days[0]
  pick = [0,1]
  (0..(days.size - 1)).to_a.combination(2) do |i,j|
    profit = days[j] - days[i]
    if profit > best
      best = profit
      pick = [i,j]
    end
  end
  pick
end

