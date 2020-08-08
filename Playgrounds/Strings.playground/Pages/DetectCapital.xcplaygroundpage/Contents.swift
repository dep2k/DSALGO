//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func detectCapitalUse(_ word: String) -> Bool {
    var firstCapital: Bool = false
    var secondCapital: Bool = false
    for (index, char) in word.enumerated() {
        if index == 0 {
            if (isCapitalLetter(char)) {
                firstCapital =  true
                 continue;
            }
        } 
        
        if index == 1 {
            if (isCapitalLetter(char)) {
                secondCapital = true
            }
           
        }
        
        if firstCapital == true && secondCapital != true && isCapitalLetter(char) {
            return false
        }
        
        // if all letters not capital, return false
        if firstCapital == true && secondCapital == true && !isCapitalLetter(char) {
            return false
        }
        
        if firstCapital == false && isCapitalLetter(char) {
            return false
        }
    }
    return true
}

private func isCapitalLetter(_ char: Character) -> Bool {
    if char >= "A" && char <= "Z" {
        return true
    }
    return false
}


let result = detectCapitalUse("mL")
