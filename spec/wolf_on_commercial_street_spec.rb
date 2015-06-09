require 'wolf_on_commercial_street'

describe 'Stockchecker' do
  it "checks most prifitable days" do
    expect(wolf_on_commercial_street([10,2,5,8,9,1,6,7,9,8])).is eq "Buy day: 5, Sell day: 9"
  end
end