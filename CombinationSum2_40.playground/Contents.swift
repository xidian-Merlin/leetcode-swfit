//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        
        let sortCandidates = candidates.sorted(by:<)
        var resultArray:[[Int]] = [[Int]]()
        var result:[Int] = [Int]()
        
        helper(resultArray: &resultArray, result: &result, candidates: sortCandidates, target: target, index1: 0)
        
        
        return resultArray
    }
    
    func helper(resultArray:inout [[Int]], result: inout [Int], candidates: [Int], target: Int,index1: Int ){
        if (target < 0) {return}
        if (target == 0){
            //meet the requirement
            resultArray.append(result)
        }else {
            
         
            for  sub in index1 ..< candidates.count {
                if(sub > index1 && candidates[sub] == candidates[sub - 1]){
                    continue
                }
               
                result.append(candidates[sub])
                helper(resultArray: &resultArray, result: &result, candidates: candidates, target: target-candidates[sub], index1: sub+1)
                result.removeLast()
               
               
            }
            
        }
    }
}




