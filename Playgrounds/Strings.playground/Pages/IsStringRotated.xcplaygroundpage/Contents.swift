import UIKit

var str = "Hello playground"
var otherString = "playground is very huge"

func checkIfOtherStringIsRotated (str: String , str2: String) -> Bool {
       let doubleString = str + " " + str
            return doubleString.contains(str2)
}
 checkIfOtherStringIsRotated(str: str, str2: otherString)
