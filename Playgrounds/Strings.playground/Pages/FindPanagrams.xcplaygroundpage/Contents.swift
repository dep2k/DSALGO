//: [Previous](@previous)

import Foundation
import UIKit

var str = "The quick brown fox jumps over the lazy dog."

func ifStringIsPangramOrNot (myString : String) -> Bool {
    var isPanagram = true
    let alphabets = "abcdefghijklmnopqrstuvwxyz"
    alphabets .forEach({ (char) in
        if !myString.lowercased().contains(char) { isPanagram = false }
    })
    
    return isPanagram
}

ifStringIsPangramOrNot(myString: str)


let S = "AAABCCCCCCDDE"


var count: Int = 1

var finalString = ""

var nextIndex = 0

for (index, char) in S.enumerated() {
    if index < nextIndex {
        continue
    }
    
    let subString = S.suffix(S.count - (index + 1))
    print(subString)
    for nextChar in subString {
        if nextChar == char {
            count += 1
        } else {
            break
        }
    }
    
    nextIndex += count
    
    if (count > 1) {
        finalString.append(contentsOf: "\(count)")
        finalString.append(char)
    } else {
        finalString.append(char)
    }
    count = 1
}

print(finalString)



