import UIKit

var str = "Helloplayground"

func reArrangeCharacters() {
    var tempArray = [Character]()
    var characters = Array(str)
    for (index, _) in (0..<characters.count - 1).enumerated() {
        if characters[index] == characters[index + 1] {
            tempArray.append(characters[index + 1])
        }
    }
    for j in 0..<tempArray.count {
        characters[(characters.count) - (tempArray.count)] = tempArray[j]
    }
    print (characters)
}
reArrangeCharacters()



