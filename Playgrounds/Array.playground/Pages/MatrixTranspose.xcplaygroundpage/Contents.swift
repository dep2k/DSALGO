
import Foundation

func rotate(_ matrix: inout [[Int]]) {
     let rows = matrix.count
     let cols = matrix[0].count
     for i in 0..<rows {
         for j in (i + 1)..<cols {
            let temp = matrix[i][j]
            matrix[i][j] = matrix[j][i]
            matrix[j][i] = temp
         }
         matrix[i].reverse()
     }
 }

var a = [[1,2,3],[4,5,6],[7,8,9]]
rotate(&a)

