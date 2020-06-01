import UIKit

func ifAllCharactersAreUnique (str: String ) -> Bool {
    var result = true
    for index in str.indices {
        for j in str.indices {
            
            if j == index {
                continue
            }
            
            if str[index] == str[j] {
                result =  false
            }
    }
}
    return result
}

ifAllCharactersAreUnique(str : "priya")


let string = "myString"
let set = Set(string)
set.count == string.count
