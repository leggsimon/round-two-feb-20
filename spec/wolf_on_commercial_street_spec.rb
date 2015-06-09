require 'wolf_on_commercial_street'

describe 'Stockchecker' do
  it "checks most profitable days from [0,1]" do
    expect(wolf_on_commercial_street([0,1])).to eq ({buy_day: 0, sell_day: 1})
  end

  it "checks most profitable days from [1, 2, 3]" do
    expect(wolf_on_commercial_street([1, 2, 3])).to eq ({buy_day: 0, sell_day:2})
  end

  it "checks most profitable days from [1,3,2]" do
    expect(wolf_on_commercial_street([1,3,2])).to eq ({buy_day: 0, sell_day: 1})
  end

  it "checks most profitable days from 4 days eg [1, 1, 1, 4]" do
    expect(wolf_on_commercial_street([1, 1, 1, 4])).to eq ({buy_day: 0, sell_day: 3})
  end

  it "checks most profitable days from 4 days eg [9, 1, 8, 4]" do
    expect(wolf_on_commercial_street([9, 1, 8, 4])).to eq ({buy_day: 1, sell_day: 2})
  end

  it "checks most profitable days from 4 days eg [9, 1, 4, 8]" do
    expect(wolf_on_commercial_street([9, 1, 4, 8])).to eq ({buy_day: 1, sell_day: 3})
  end

  it 'checks the answer' do
    expect(wolf_on_commercial_street([10,2,5,8,9,1,6,7,9,8])).to eq ({ buy_day: 5, sell_day: 8 })
  end
  it 'checks the answer' do
    expect(wolf_on_commercial_street([6,7,6,6,5,16,1,12,6])).to eq ({ buy_day: 6, sell_day: 7})
  end
end