import UIKit

func climbStairs(_ n: Int) -> Int {
    var dp: [Int] = Array(repeating: 0, count: n + 1)
    return climbStairsUtil(&dp, n)
}

private func climbStairsUtil(_ dp: inout [Int], _ n: Int) -> Int {
    if dp[n] != 0 {
        return dp[n]
    }
    if (n == 1) {
        dp[1] = 1
        return 1
    }
    if (n == 2) {
        dp[2] = 2
        return 2
    }
    
    let steps = climbStairsUtil(&dp, n - 1) + climbStairsUtil(&dp, n - 2)
    dp[n] = steps
    return  steps
}
