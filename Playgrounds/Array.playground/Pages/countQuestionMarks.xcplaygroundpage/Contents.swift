//: [Previous](@previous)

func LongestConsecutive(_ arr: [Int]) -> Int {
    
    if arr.isEmpty {
        return 0
    }
    // code goes here
    // Note: feel free to modify the return type of this function
    
    let sorted = arr.sorted()
    var max = 1
    var continous = 1
    for i in 0..<sorted.count - 1 {
        if sorted[i]  == (sorted[i + 1] - 1) {
            continous += 1
            if continous > max {
                max = continous
            }
        } else {
            continous = 1
        }
        
    }
    
    return max
    
}

//let a = [6, 7, 3, 1, 100, 102, 6, 12]
let a = [5, 6, 1, 2, 8, 9, 7]
let l = LongestConsecutive(a)



func QuestionsMarks(_ str: String) -> String {
    
    if str.count == 0 {
        return "false"
    }
    
    var array = [(Int,Int)]() // index, value
    // code goes here
    // Note: feel free to modify the return type of this function
    for (index,char) in str.enumerated() {
        if let intValue = Int(String(char)) {
            array.append((index, intValue))
        }
    }
    
    var pairExist = false
    for i in 0..<array.count - 1 {
        for j in (i + 1)..<array.count {
            let t1 = array[i]
            let t2 = array[j]
            if t1.1 + t2.1 == 10 {
                pairExist = true
                let count = countQuestionMarks(str: str, startIndex: t1.0, endIndex: t2.0)
                if count != 3 {
                    return "false"
                }
            }
            
        }
    }
    if !pairExist {
        return "false"
    }
    return "true"
}


private func countQuestionMarks(str: String, startIndex: Int, endIndex: Int) -> Int {
    var count = 0
    let a = Array(str)
    let slice = Array(a[startIndex...endIndex])
    
    for value in slice {
        if value == "?" {
            count += 1
        }
    }
    return count
}


let s = "acc?7??sss?3rr1??????5"
//let s = "aa6?9"
let b = QuestionsMarks(s)
