def wolf_on_commercial_street arr
  subsequent_days_prices = []
  profits_and_sell_date = []

  arr.each_index do |i|
    subsequent_days_prices << arr[i..-1]
  end

  subsequent_days_prices.each do |x|
    profits_and_sell_date << [x.max - x[0], x.each_with_index.max[1]]
  end

{buy_day: profits_and_sell_date.each_with_index.max[1], sell_day: profits_and_sell_date.each_with_index.max[1] + profits_and_sell_date.each_with_index.max[0][1]}
end