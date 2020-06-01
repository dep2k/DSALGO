import Foundation


func subString() {
    let mystring = "This is a string"
    let startIndex = mystring.index(mystring.startIndex, offsetBy: 1)
    let endIndex = mystring.index(mystring.startIndex, offsetBy: 4)
    let sliced = String(mystring[startIndex...endIndex])
}

