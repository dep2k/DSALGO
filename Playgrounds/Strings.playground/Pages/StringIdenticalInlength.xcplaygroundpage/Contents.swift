import UIKit

func toFindTwoStringsAreEqual (str1: String , str2 : String) -> Bool {
    var areEqual = true
    
    if str1 == str2 {
         areEqual = true
    }
   // let difference = zip(str1, str2).filter{ $0 != $1 }
    let sequence = zip (str1 ,str2)
    var count = 0
    for (el1, el2) in sequence {
        if el1 != el2 {
            count += 1
            print (count)
        }
        if count >= 3 {
            areEqual = false
        }
    }

    return areEqual
}

toFindTwoStringsAreEqual(str1: "hellodeep", str2: "helloriep")
