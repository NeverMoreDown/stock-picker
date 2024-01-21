def stock_picker(prices)
    max_profit = 0
    buy_day = 0
    sell_day = 0
  
    # iterate through stock-prices array
    (0...prices.length).each do |i|
        #iterate through stock prices array from positon of i + 1 till the end of prices array
      (i + 1...prices.length).each do |j|
        #create profit as current j - i
        profit = prices[j] - prices[i]
        #check to see with all iterations if current j - i is greater than max_profit 
        #if so max_profit is now equal to profit with buy day equal to j and i 
        if profit > max_profit
          max_profit = profit
          buy_day = i
          sell_day = j
        end
      end
    end
    #return the buy_day,sell_day
    return [buy_day, sell_day]
end
