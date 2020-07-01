//: [Previous](@previous)

import Foundation

func largestDivisibleSubset(_ nums: [Int]) -> [Int] {
    let n = nums.count
    let a = nums.sorted()
    var count = Array(repeating: 0, count: n)
    var pre = Array(repeating: 0, count: n)
    var max = 0
    var index = -1
    
    for i in 0..<a.count
    {
        count[i] = 1
        pre[i] = -1
        
        for j in stride(from: i - 1, through: 0, by: -1)
        {
            if (a[i] % a[j] == 0)
            {
                if (1 + count[j] > count[i]) {
                    count[i] = count[j] + 1
                    pre[i] = j;
                }
            }
        }
        
        if (count[i] > max) {
            max = count[i]
            index = i
        }
    }
    
    var res = [Int]()
    while (index != -1) {
        res.append(a[index]);
        index = pre[index];
    }
    return res;
}
