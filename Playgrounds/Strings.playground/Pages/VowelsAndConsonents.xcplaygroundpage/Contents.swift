var str = "priya"

func countCharacteres(string: String) -> (vowels: Int, consonants: Int) {
    var vowelsCount = 0, consonantsCount = 0
    for character in string {
        switch String(character).lowercased() {
        case "a","e","i","o","u":
            vowelsCount += 1
        case "b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z":
            consonantsCount += 1
        default:
            break
        }
    }
    return (vowelsCount, consonantsCount)
}
countCharacteres(string: str)


func vowelConsonants(string2: String) -> (vowels: Int, consonants: Int) {
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    var vowelCount = 0
    var consonantCount = 0
    
    for char in string2 {
        if consonants.contains(char) {
            consonantCount += 1
        } else if  vowels.contains(char){
                vowelCount += 1
        }
    }
    return (vowelCount, consonantCount)
}
vowelConsonants(string2: "deep")
