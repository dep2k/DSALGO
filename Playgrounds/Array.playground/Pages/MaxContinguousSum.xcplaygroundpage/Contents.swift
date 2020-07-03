
import Foundation

func maxSubArray(_ nums: [Int]) -> Int {
    var maxSoFar = nums[0]
    var maxCurrent = nums[0]
    for i in 1..<nums.count {
        maxCurrent = max(nums[i], maxCurrent + nums[i])
        maxSoFar = max(maxSoFar, maxCurrent)
    }
    return maxSoFar
}

var a = [-2,1,-3,4,-1,2,1,-5,4]
let b = [-1,-2]
let c = [1]
let ans = maxSubArray(c)
