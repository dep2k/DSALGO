import UIKit


var arr1:[Int] = [1,2,3,4,5]
var arr2:[Int] = [1,2,3,4,5]
let d = 4


// Calling Shift By 1, d Times
func rotLeft(a: [Int], d: Int) -> [Int] {
    var arr = a
    guard  a.count != 0 && a.count != d else {
        return a
    }
    
    func leftShiftArrayByOne( arr  : inout [Int]) {
        let temp = arr.first!
        for i in 0..<arr.count {
            let newIndex = i+1
            if (newIndex == arr.count) {
                arr[i] = temp
            }else{
                arr[i] = arr[newIndex]
            }
        }
    }
    for _ in 0..<d {
        leftShiftArrayByOne(arr: &arr)
    }
    
    return arr1
}


let rotatedArray = rotLeft(a: arr1, d: d)
print(rotatedArray)




// Using Array Slicing
func rotLeftUsingArraySlicing(a: [Int], d: Int) -> [Int] {
   
    guard  a.count != 0 && a.count != d else {
        return a
    }
    let a1 = a[0..<d]
    let a2 = a[d..<a.count]
    
    return Array(a2) + Array(a1)
}


rotLeftUsingArraySlicing(a: arr2, d: 2)




//  A = [1,2,3,4,5], K = 6
func rotateArrayByKExtraSpace(_ A: inout[Int], _ K: Int) -> [Int] {
    
    let count = A.count
    guard A.count > 1 else { return A }
    
    let k = K < count ? K : K % count
    
    let firstHalf = A[...(count-k-1)]
    let secondHalf = A[(count-k)...]
    
    return Array(secondHalf + firstHalf)
}
