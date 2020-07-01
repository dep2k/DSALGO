//: [Previous](@previous)

import Foundation

func findCheapestPrice(_ n: Int, _ flights: [[Int]], _ src: Int, _ dst: Int, _ K: Int) -> Int {
    
    //var dp = [Array(repeating: Int.max, count: n)]
    var dp = [[Int]](repeating: [Int](repeating: Int.max, count: n), count: K + 2)
    for i in 0...K + 1 {
        dp[i][src] = 0  // distance to reach source always zero
    }
    
    for i in 1...K + 1 {
        for flight in flights {
            let u = flight[0]
            let v = flight[1]
            let w = flight[2]
            
            if (dp[i - 1][u] != Int.max) {
                dp[i][v] = min( dp[i][v], dp[i - 1][u] + w)
            }
        }
    }
    
    return (dp[K + 1][dst] == Int.max) ? -1: dp[K + 1][dst]
}

let n = 3
let flights = [[0,1,100],[1,2,100],[0,2,500]]
let src = 0
let dst = 2
let k = 1

findCheapestPrice(n, flights, src, dst, k)
/*
 3
 [[0,1,100],[1,2,100],[0,2,500]]
 0
 2
 1
 */

