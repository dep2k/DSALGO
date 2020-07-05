//: [Previous](@previous)

// Get Prime Numbers upto n
import Foundation

func countPrimes(_ n: Int) -> [Int] {
    if n <= 1 {
        return []
    }
    
    var numbers = Array(repeating: true, count: n + 1)
    var p = 2
    
    while (p * p < n) {
        for i in stride(from: p * p, through: n, by: p) {
            numbers[i] = false
        }
        p += 1
    }
    
    var primes = [Int]()
    for i in 2...n {
        if numbers[i] {
            primes.append(i)
        }
    }
    
    return primes
}

let primes = countPrimes(3)
