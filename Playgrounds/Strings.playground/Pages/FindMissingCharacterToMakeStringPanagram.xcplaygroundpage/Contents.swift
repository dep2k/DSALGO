import UIKit
func findMissingCharacters (string : String) {
    var array = [Character]()
    let alphabets = "abcdefghijklmnopqrstuvwxyz"
    alphabets .forEach({ (char) in
        if !string.lowercased().contains(char) {
            array.append(char)
        }
        print (array)
    })
}
findMissingCharacters(string: "abcdefghijklmnoqrstuvwxy")
