//: [Previous](@previous)

import Foundation

//func prisonAfterNDays(_ cells: [Int], _ N: Int) -> [Int] {
//    var prisonCells = cells
//    print(prisonCells)
//    guard N > 0 else { return prisonCells }
//    var n = N
//
//    var loopSize = 0
//    var loopDetected = false
//
//    var startPattern = [Int]()
//
//    while(n > 0) {
//        var prev = prisonCells[0]
//        for i in 1..<prisonCells.count - 1 {
//            if prev == prisonCells[i + 1] {
//                prev = prisonCells[i]
//                prisonCells[i] = 1
//            } else {
//                prev = prisonCells[i]
//                prisonCells[i] = 0
//            }
//        }
//        prisonCells[0] = 0
//        prisonCells[cells.count - 1] = 0
//        print(prisonCells)
//
//        n -= 1
//        loopSize += 1
//
//        if (n == (N - 1)) {
//            startPattern = prisonCells
//        }
//
//        else if (!loopDetected ) {
//            if startPattern == prisonCells {
//                loopDetected = true
//                n =  ((N - 1) % 14 + 1)
//                print("Loop Detected:", loopSize, n)
//            }
//        }
//    }
//    return prisonCells
//}

func prisonAfterNDays(_ cells: [Int], _ N: Int) -> [Int] {
    var prisonCells = cells
    guard N > 0 else { return prisonCells }
    var n =  ((N - 1) % 14 + 1)
    var startPattern = [Int]()
    while(n > 0) {
        var prev = prisonCells[0]
        for i in 1..<prisonCells.count - 1 {
            if prev == prisonCells[i + 1] {
                prev = prisonCells[i]
                prisonCells[i] = 1
            } else {
                prev = prisonCells[i]
                prisonCells[i] = 0
            }
        }
        prisonCells[0] = 0
        prisonCells[cells.count - 1] = 0
        print(prisonCells)
        
        n -= 1
     
    }
    return prisonCells
}

//
//var cells = [0,1,0,1,1,0,0,1]
//var output = prisonAfterNDays(cells, 7)



//var cells = [1,1,0,0,0,0,1,1]
//var output = prisonAfterNDays(cells, 7)
//



//var cells = [1,0,0,1,0,0,1,0]
//var output = prisonAfterNDays(cells, 1000000000)


var cells = [1,0,0,1,0,0,1,0]
var output = prisonAfterNDays(cells, 1000000000)


