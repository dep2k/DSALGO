
func subsets(_ nums: [Int]) -> [[Int]] {
    if nums.count == 0 {
        return []
    }
    if nums.count == 1  {
        return [[nums[0]], []]
    }
    
    let first = nums[0]
    let partialResult = subsets(Array(nums.suffix(from: 1)))
    var result = combine(first, partialResult)
    return result
}

private func combine(_ n: Int, _ partialResult: [[Int]]) -> [[Int]] {
    var combinedResult = [[Int]]()
    combinedResult.append(contentsOf: partialResult)
    for arr in partialResult {
        let combined = [n] + arr
        combinedResult.append(combined)
    }
    return combinedResult
}

var a = [1,2,3]
let output = subsets(a)

printresult(output)

func printresult(_ result: [[Int]]) {
    for arr in result {
        print(arr)
    }
}
