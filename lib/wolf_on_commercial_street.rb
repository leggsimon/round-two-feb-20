def wolf_on_commercial_street arr

  ## sort array into a decending set of arrays of the form [[1,2,3,4], [2,3,4], [3,4], [4]]

  subsequent_days_prices = create_descending_set_of_arrays(arr)

  ## compares the first day stock price in each array with following days stock prices finding the max profit and the index of the sell day.
  ## returns arrays of the form [profit, index of sell day]

  profits_and_sell_date = find_max_difference_and_index_of_max(subsequent_days_prices)

  ## the index of the highest profit equals the buy day, and the corresponding sell day in the array indicates how many days later to sell

  buy_date = profits_and_sell_date.each_with_index.max[1]
  sell_date = buy_date + profits_and_sell_date.each_with_index.max[0][1]

  {buy_day: buy_date, sell_day: sell_date}

end

def create_descending_set_of_arrays arr
  set_of_arrays = []
    arr.each_index do |i|
      set_of_arrays << arr[i..-1]
    end
  set_of_arrays
end

def find_max_difference_and_index_of_max arr
  max_value_and_index_array = []
    arr.each do |x|
      max_value_and_index_array << [x.max - x[0], x.each_with_index.max[1]]
    end
  max_value_and_index_array
end