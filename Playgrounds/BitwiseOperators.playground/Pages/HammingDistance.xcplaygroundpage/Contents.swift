//: [Previous](@previous)

import Foundation

func hammingDistance(_ x: Int, _ y: Int) -> Int {
      var count = 0
      var val = x ^ y
      print(val)
      while (val > 0) {
          if (val & 1) == 1 {
              count += 1
          }
          val = val >> 1
      }
      return count
}
