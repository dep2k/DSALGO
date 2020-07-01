//: [Previous](@previous)

/*
 X X X X
 X O O X
 X X O X
 X O X X
 After running your function, the board should be:
 
 X X X X
 X X X X
 X X X X
 X O X X
 */

import Foundation

func solveMe(_ board: inout [[Character]]) {
    
    if board.count == 0 {
        return
    }
    let rows = board.count
    let cols = board[0].count
    for row in 0..<rows {
        for col in 0..<cols {
            let value = board[row][col]
            if value == "X" {
                if col + 1 < cols {
                    let xNeighbor = board[row][col + 1]
                    if (xNeighbor == "O" && !isConnectedToBorder(board, row: row, col: col + 1)) {
                        board[row][col + 1] = "X"
                    }
                }
                
                if row + 1 < rows {
                    let yNeighbor = board[row + 1][col]
                    if (yNeighbor == "O" && !isConnectedToBorder(board, row: row + 1, col: col)) {
                        board[row + 1][col] = "X"
                    }
                }
            }
        }
    }
}

private func isConnectedToBorder(_ board: [[Character]], row: Int, col: Int) -> Bool {
    guard board[row][col] == "O" else { return false }
    if ((col == board[0].count - 1) || (row == board.count - 1)) || col == 0 || row == 0 {
        return true
    }
    return isConnectedToBorder(board, row: row + 1, col: col) ||    isConnectedToBorder(board, row: row, col: col + 1) ||
        isConnectedToBorder(board, row: row , col: col - 1) ||
        isConnectedToBorder(board, row: row + 1, col: col )
}


//var board: [[Character]] = [["X","X","X","X"],["X","O","O","X"],["X","X","O","X"],["X","O","X","X"]]
//
/*var board: [[Character]] = [["X","O","X"],
 ["O","X","O"],
 ["X","O","X"]]*/
/*
 var board:[[Character]] = [["O","O","O","O","X","X"],["O","O","O","O","O","O"],["O","X","O","X","O","O"],["O","X","O","O","X","O"],["O","X","O","X","O","O"],["O","X","O","O","O","O"]]*/

var board:[[Character]] = [["X","X","X","X"],["X","O","O","X"],["X","X","O","X"],["X","O","X","X"]]

//printBoard(board)
//solve(&board)
//print("Updated Region")
//printBoard(board)


private func printBoard(_ board:[[Character]]) {
    let rows = board.count
    let cols = board[0].count
    
    for row in 0..<rows {
        for col in 0..<cols {
            print(board[row][col], terminator: " ")
        }
        print("\n")
    }
}


func solve(_ board: inout [[Character]]) {
    
    if board.count <= 1 { return }
    if board[0].count <= 1 { return }
    
    let rows = board.count
    let cols = board[0].count
    
    for row in 0..<rows {
        for col in 0..<cols {
            if board[row][col] == "O" {
                board[row][col] = "-"
            }
        }
    }
    
    for row in 0..<rows {
        if board[row][0] == "-" {
            fillBoard(&board, row: row, col: 0)
        }
        if board[row][cols - 1] == "-" {
            fillBoard(&board, row: row, col: cols - 1)
        }
        
    }
    
    
    for col in 0..<cols {
        if board[0][col] == "-" {
            fillBoard(&board, row: 0, col: col)
        }
        if board[rows - 1][col] == "-" {
            fillBoard(&board, row: rows - 1, col: col)
        }
    }
    

    for row in 0..<rows {
        for col in 0..<cols {
            if board[row][col] == "-" {
                board[row][col] = "X"
            }
        }
    }
}

private func fillBoard(_ board: inout [[Character]], row: Int, col: Int) {
    if row < 0 || col < 0 || row >= board.count  || col >= board[0].count {
        return
    }
    
    if board[row][col] == "-" {
        board[row][col] = "O"
    } else {
        return
    }
    
    fillBoard(&board, row: row + 1, col: col)
    fillBoard(&board, row: row - 1, col: col)
    fillBoard(&board, row: row, col: col + 1)
    fillBoard(&board, row: row, col: col - 1)
}

printBoard(board)
solve(&board)
print("Solved")
printBoard(board)

