def stock_picker(stock_prices)
  buy_day = 0
  sell_day = 0
  max_profit = -1.0/0
  stock_prices.each_with_index do |buy_price, i|
    stock_prices[i+1..-1].each_with_index do |sell_price, j|
      if (sell_price - buy_price > max_profit)
        max_profit = sell_price - buy_price
        #add 1 to get actual day instead of array index
        buy_day = i+1 
        sell_day = j+i+2
      end
    end
  end
  return[buy_day, sell_day]
end

puts "Enter stock prices, one for each day, separated by commas: "
user_prices = gets.chomp.split(',').map{ |price| price.to_i }
puts stock_picker(user_prices)
