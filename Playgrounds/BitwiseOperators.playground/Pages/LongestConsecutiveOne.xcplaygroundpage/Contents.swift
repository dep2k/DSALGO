//longestConsecutiveOne()
func longestConsecutiveOne() {
    var n = 233 // 11101001
    var count = 0
    while (n > 0){
        count += 1
        n = n & (n << 1)
    }
    print(n)
}
