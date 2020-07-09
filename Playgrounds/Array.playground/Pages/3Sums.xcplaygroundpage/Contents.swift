//: [Previous](@previous)

import Foundation

func threeSum(_ nums: [Int]) -> [[Int]] {
    guard nums.count >= 3 else { return [] }
    var input = nums.sorted()
    var output = [[Int]]()
    for i in 0..<input.count - 2 {
        var j = i + 1
        var k = input.count - 1
        
        if i > 0 && input[i] == input[i - 1] {
            continue
        }
        
        while (j < k) {
            let sum = input[i] + input[j] + input[k]
            if sum > 0 {
                k -= 1
            } else if sum < 0 {
                j += 1
            } else {
                output.append([input[i], input[j], input[k]])
                j += 1
                k -= 1
                
                while j < k && (input[j] == input[j-1]) {
                     j += 1
                }
                  
                while j < k && (input[k] == input[k+1]) {
                  k -= 1
                }
                    
            }
        }
    }
    return output
}

let arr1 = [-1, 0, 1, 2, -1, -1]
let arr2 = [-2,0,0,2,2]
let arr3 = [0,0,0]
let arr4 = [-4,-2,1,-5,-4,-4,4,-2,0,4,0,-2,3,1,-5,0]

let output1 = threeSum(arr1)
let output2 = threeSum(arr2)
let output3 = threeSum(arr3)
let output4 = threeSum(arr4)
