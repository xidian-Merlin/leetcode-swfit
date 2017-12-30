//: Playground - noun: a place where people can play

import UIKit

class SodokuSolve{
    func solveSodoku(board: inout [[Character]]){
        if(board.count == 0){
            return;
        }
        helper(board: &board)
    }
    
    func helper(board: inout [[Character]]) ->Bool{
        for i in 0 ..< board.count{
            for j in 0 ..< board[0].count{
                if board[i][j] == "."{
                    let range:[Character] = ["1","2","3","4","5","6","7","8","9"]
                   // let interRange = "1" ... "9"
                    //try
                    for char in range{
                        if(isValid(board: &board, i: i, j: j, c: char)){
                            board[i][j] = char
                            
                            if(helper(board: &board)){
                                return true
                            }else{
                                board[i][j] = "."  //traceback
                            }
                        }
                    }
                    return false
                }
            }
        }
        
        return true;
    }
    
    func isValid(board: inout [[Character]],i:Int,j:Int,c:Character) -> Bool{
       // var set = Set<Character>()
        //check row
        for col in 0 ... 8{
            if (board[i][col] == c){
                return false
            }
        }
        //check column
        for row in 0 ... 8{
            if(board[row][j] == c){
                return false
            }
        }
        //check block
        for row in i/3*3 ..< i/3*3+3{
            for col in j/3*3 ..< j/3*3+3{
                if(i != row && j != col && board[row][col] == c){
                    return false
                }
            }
        }
        return true
    }
}
