
import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    guard prices.count > 1 else { return 0}
    var maxProfit = 0
    var minValue = prices[0]
    
    for i in 1..<prices.count {
        minValue = min(minValue, prices[i])
        maxProfit = max(maxProfit, prices[i] - minValue)
    }
    return maxProfit
}
