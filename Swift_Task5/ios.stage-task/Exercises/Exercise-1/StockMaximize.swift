import Foundation

class StockMaximize {

    func countProfit(prices: [Int]) -> Int {
        var profit = 0
        for x in 0..<prices.count{
            var maxPrice = 0
            for y in x + 1..<prices.count{
                if prices[y] - prices[x] > maxPrice {
                    maxPrice = prices[y] - prices[x]

                }
            }
            profit += maxPrice
        }

        return profit
    }
}
