import UIKit

var str = "hello"

func removeDuplicates (str : String) {
    var set = Set<Character>()
    let squeezed = str.filter{ set.insert($0).inserted}
    print(squeezed)
    
}
removeDuplicates(str: str)

let set = Set(str)
print(set)
