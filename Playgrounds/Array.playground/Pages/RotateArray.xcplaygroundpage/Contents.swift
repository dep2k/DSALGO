//: [Previous](@previous)

import Foundation

// Time n*k, space O(1)
func rotateKTimes(_ nums: inout [Int], _ k: Int) {
    
    if nums.isEmpty { return }
    var temp = 0
    let count = nums.count
    
    for _ in 0..<k {
        temp = nums[count - 1]
        for j in stride(from: count - 1, to: 0, by: -1) {
            nums[j] = nums[j - 1]
        }
        nums[0] = temp
    }
    
}

var a = [1,2,3]
rotateKTimes(&a, 0)


// Time O(n), space O(1)
func rotate(_ nums: inout [Int], _ k: Int) {
    
    let count = nums.count
    guard !nums.isEmpty, k >= 1, k != count else { return }
    
    nums.reverse()
    var i = 0
    var j = (k - 1) % count
    
    while j > i {
        nums.swapAt(i, j)
        i += 1
        j -= 1
    }
    
    i = k % count
    j = count - 1
    
    while j > i {
        nums.swapAt(i, j)
        i += 1
        j -= 1
    }
}

var arr = [1,2]
rotate(&arr, 1)
print(arr)


