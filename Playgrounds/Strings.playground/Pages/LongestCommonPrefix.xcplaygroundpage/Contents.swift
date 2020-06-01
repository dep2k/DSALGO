import UIKit

var str = "Hello, playground"

func longestCommonPrefix(strings: [String]) -> String {
    
    guard let first = strings.first else { return "" }
    
    var (minString, maxString) = (first, first)
    for str in strings.dropFirst() {
        if str < minString { minString = str }
        else if str > maxString { maxString = str }
    }
    
    return minString.commonPrefix(with: maxString)
}
longestCommonPrefix(strings: ["flop", "flower", "flow"])

