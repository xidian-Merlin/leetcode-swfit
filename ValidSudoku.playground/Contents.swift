//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var set:Set<Character> = Set<Character>()
       //each row must have the number 1-9 occuring just once
        for row in board {
            for num in row {
                if(num == "."){
                    continue
                }
                if(set.contains(num)){
                    return false
                    
                }
                    set.insert(num)
            }
            set.removeAll()
        }
        //each column must have the numbers 1-9 occuring just once
        
        for j in 0 ... 8 {
            for i in 0 ... 8 {
                if board[i][j] == "."{
                    continue
                }
                if (set.contains(board[i][j])){
                    return false
                }
                set.insert(board[i][j])
            }
            set.removeAll()
        }
        //And the numbers 1-9 must occur just once in each of the 9 sub-boxer of the grid
        for k in 0 ... 8 {
            for i in k/3*3 ... k/3*3+2 {
                for j in k%3*3 ... k%3*3+2 {
                    if board[i][j] == "."{
                        continue
                    }
                    if set.contains(board[i][j]){
                        return false
                    }
                    set.insert(board[i][j])
                }
            }
           set.removeAll()
        }
        return true
    }
    

}




