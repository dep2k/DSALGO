import UIKit

var array = [0,1,2,0,1,2
    ,2,2,1,1,1]
//var dictionary = [Int: Int]()

func rearrange () {
    let dictionary = array.reduce(into: [:]) { counts, value in
        counts[value, default: 0] += 1
    }
//    for num in 0..<array.count {
//      dictionary[num] = (dictionary[num] ?? 0) + 1
//    }
    print (dictionary)
    
    
let zeros = dictionary[0]
let ones = dictionary[1]
      
}
rearrange()


let result = array.reduce(0) { (result, value) -> Int in
    return result + value
}

print(result)
