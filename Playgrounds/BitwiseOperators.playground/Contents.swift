import UIKit
//var list = [5, 4, 3, 5, 2, 50, 8, 10, 300]
//var minValue = list[0]
//for num in list {
//    if (num < minValue){
//        minValue = num
//    }
//}
//print("Smallest value in the list is \(minValue)")

func fibs (n : Int) -> Int {
    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    } else{
        let result = fibs(n: n - 1) + fibs(n: n - 2)
        return result
    }
}

fibs(n: 9)

//var maxarrList = [5,4,8,9,1,0]
//var maxValue = list[0]
//for num in maxarrList {
//    if (num > maxValue) {
//        maxValue = num
//    }
//}
//print ("largest value in the list  is \(maxValue)")

//var arrlist = [0, 0, 8, 9, 4, 1]
//var minval = Int.max
//var secondMinVal = Int.max
//
//for num in arrlist {
//    if (num < minval){
//        minval = num
//    }
//    else if(num < secondMinVal && num != minval){
//        secondMinVal = num
//    }
//
//    else if (secondMinVal == Int.max){
//        print("there is no second max")
//    }
//}
//print ("Minimum \(minval) second minimum: \(secondMinVal)")



//var arrlist2  = [0,2,6,7,5,12,4]
//var maxVal = Int.min
//var secondMaxVal = Int.min
//for num in arrlist2  {
//    if (num > maxVal) {
//        maxVal = num
//    }
//}
//print ("Maximun \(maxVal) second max: \(secondMaxVal)")



//var arr = [1,5,9,12,13,15,18,20,23]
//var key = 9
//func binarySearch (low: Int, high: Int) -> Int {
//
//
//    let middleIndex = (high - low) / 2
//    let midValue = arr[middleIndex]
//
//    if (midValue == key){
//        return middleIndex
//    } else if (key > midValue){
//        return binarySearch(low:middleIndex + 1, high:arr.count - 1)
//    } else {
//       return  binarySearch(low: 0, high: middleIndex - 1)
//    }
//
//}


//let index = binarySearch(low: 0, high: arr.count - 1)


//func isPalindrome(word: String) -> Bool {
//    let characters  = Array(word)
//    var currentIndex = 0
//
//    while currentIndex < characters.count /  2 {
//        if characters[currentIndex ] != characters[characters.count - currentIndex - 1] {
//            return false
//        }
//        currentIndex += 1
//    }
//    return true
//}

//isPalindrome(word: "aabvccvbaa")

//FACTORIAL
//func factorial (number : Int) -> Int {
//  var fact = 1
//    for i in 1...number {
//    fact = fact * i
//
//}
//    return fact
//}
//factorial(number: 5)

//Recursion method
//func factorialWithRecursion (number : Int) -> Int {
//    if (number ==  1) {
//        return 1
//    }
//    else {
//        return number * factorialWithRecursion(number: number - 1)
//    }
//
//}
//
//factorialWithRecursion(number: 6)

//Recursion method for fibbonacci

//func fibo (stepsCount : Int) -> Int {
//    var array = [Int]()
//    if array.count == stepsCount {
//        return
//    } else {
//        var value = 0
//        value = value + array.count
//        array.append(value)
//        return fibo(stepsCount: array.count)
//    }
//}
//fibo(stepsCount: 4)



// left rotate an array
//func leftRotation ()  {
//    var arrayList = [2,443,5,6,7]
//    let firstNumber =   arrayList[0]
//    for i in 1...(arrayList.count - 1) {
//        arrayList[i-1] = arrayList[i]
//    }
//
//    arrayList[arrayList.count - 1] = firstNumber
//}
//leftRotation()
//
//func rightRotation () {
//   var arr = [2,3,5,6,7,8]
//   let lastNumber = arr[arr.count-1]
//    for i in 0...arr.count - 2 {
//        let index = arr.count - i - 1   //arr.count - (arr.count - 2) - 1 = 2 - 1 = 1
//        arr[index] = arr[index - 1]
//    }
//    arr[0] = lastNumber
//    print(arr)
//}
//
//rightRotation()
//
//
//
//func mostCommonNameInArray(array:[String]) -> String {
//    var nameCountDictionary = [String : Int]()
//    for name in array {
//        if let count = nameCountDictionary[name] {
//          nameCountDictionary[name]  = count + 1
//        }else {
//            nameCountDictionary[name] = 1
//        }
//    }
//    for key in nameCountDictionary.keys {
//        print ("\(key) : \(nameCountDictionary[key]!)")
//    }
//    return ""
//}
//mostCommonNameInArray(array: ["Aman", "Nancy", "Narry", "Deep", "Priya", "Narry"])
//
//
//////find Prime Numbers from 1 to 1000
//
//func findPrimeNumbers () {
//    let numbers = 1...1000
//
//    for n in numbers {
//        var isPrime = true
//        if n == 1 {
//            isPrime = false
//        }
//        var i = 2
//        while (i < n)
//        {
//            if n % i == 0 {
//                isPrime = false
//            }
//            i += 1
//        }
//
//        if isPrime == false {
//            print("\(n) is not a prime number.")
//
//        }  else {
//            print("\(n) is a prime number.")
//
//        }
//
//
//    }
//}
//findPrimeNumbers ()
//
//
//// Reverse  a string
//var sampleSentence = "Hello how are you i am fyn thank you"
//func reverseString (sentence : String) -> String {
//
//    var allWords = sampleSentence.split(separator: " ")
//    let s = allWords.reversed().joined(separator: "<#T##String#>")
//
//    return s
//    var newSentence = ""
//    for i in 0...allWords.count - 1 {
//
//        let index = allWords.count - i - 1
//        newSentence += allWords[index];
//        newSentence += " "
//
//    }
//    return newSentence
//}
//
// reverseString(sentence: sampleSentence)
//
//
//
//for i in (1...100).reversed() {
//    print(i)
//}
//
//
//protocol SomeProtocol {
//    var mustBeSettable: Int { get set }
//    var doesNotNeedToBeSettable: Int { get }
//     init(someParameter: Int)
//}
//
//
//func leftRotation (numberOfTimes : Int)  {
//    var arrayList = [2,3,4,5,6,7,8,9]
//    for _ in 1...numberOfTimes {
//        let firstNumber =   arrayList[0]
//        for i in 1..<arrayList.count {
//            arrayList[i-1] = arrayList[i]
//        }
//        arrayList[arrayList.count - 1] = firstNumber
//    }
//    print (arrayList)
//}
//leftRotation(numberOfTimes: 1)
//
//// Recursion Method for n times Left Rotation
//
//var arrayList = [3,4,5,7,3,7,9]
//func nLeftRotations(numberOfTimes : Int) {
//
//    if 0 == numberOfTimes {
//        print(arrayList)
//        return
//    } else {
//        let firstNumber =   arrayList[0]
//        for i in 1..<arrayList.count {
//            arrayList[i-1] = arrayList[i]
//        }
//        arrayList[arrayList.count - 1] = firstNumber
//        nLeftRotations(numberOfTimes: numberOfTimes - 1)
//    }
//}
//nLeftRotations(numberOfTimes: 2)
//
//
//var arrayList2 = [3,4,5,2,1,7,9,8]
//func nleftRotations(numberOfTimes :Int) {
//    var tempArray = [Int]()
//     for i in 0..<numberOfTimes {
//        tempArray.append(arrayList2[i])
//     }
//     for j in 0..<(arrayList.count - numberOfTimes) {
//        arrayList2[j] = arrayList[ j + numberOfTimes]
//
//}
//    for k in 0..<tempArray.count {
//        arrayList2[ k + (arrayList.count - numberOfTimes)] = tempArray[k]
//    }
//    print (arrayList2)
//}
//
//nleftRotations(numberOfTimes: 3
//
//)
//
//arrayList = [3,4,5,2,1,7,9,8]
//let n = 4
//let temp = arrayList[0..<n]
//let firstHalf = arrayList[n..<arrayList.count]
//let rotated = firstHalf + temp
//print(rotated)
//print(firstHalf)
//
//arrayList = [3,4,5,2,1,7,9,8]
//let doubleArray = arrayList + arrayList
//let rotatedArray = doubleArray[n..<arrayList.count + n]
//print(rotatedArray)
//
////
////func checkIfSomeOtherStringIsARotationOfString(_ str: String, someOtherString: String)->Bool {
////
////    var double = str + str
////    return double.contains(someOtherString)
////
////    double.range
////
////}
////
////let check = checkIfSomeOtherStringIsARotationOfString(str, someOtherString: someOtherString)
////print(check)
//
//
//// Arrange negative and positive numbers in Array
//
//func rearrange () {
//    var array = [9,-2,3,5,8,-4,-1,6,-7]
//    var tempArray = [Int]()
//    var tempArray2 = [Int]()
//        for num in array {
//            if num < 0 {
//                tempArray.append(num)
//            } else if num > 0 {
//                tempArray2.append(num)
//            }
//            array = tempArray + tempArray2
//            print (array)
//        }
//}
//rearrange()
//
//func rearrangeOddEvens() {
//    var arraylist = [1,4,3,4,4,2,5,6,7,8]
//    var temp1 = [Int]()
//    var temp2 = [Int]()
//    for num in arraylist {
//        if num % 2 == 0 {
//            temp1.append(num)
//        } else {
//            temp2.append(num)
//        }
//        arraylist = temp1 + temp2
//        print (arraylist)
//    }
//}
//rearrangeOddEvens()
//
//
//class Person {
//
//    static let liveOnPlanet = "Earth"
//
//    private var _name: String
//
//    var name: String {
//
//        get {
//            return _name.uppercased()
//        }
//
//        set(value) {
//            _name = value
//
//        }
//
//    }
//
//    init(name: String){
//        _name = name
//    }
//
//}
//
//let person = Person(name: "deep")
//
//
//person.name = "Some Name"
//
//print(person.name)



