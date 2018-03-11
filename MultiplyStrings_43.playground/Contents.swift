//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func multiply(_ num1: String, _ num2: String) -> String {
        if num1 == "" || num2 == ""{
            return ""
        }
        
        var n1 = num1.map{(c) -> Int in
            return Int("\(c)")!
        }
        n1 = n1.reversed()
        
        var n2 = num2.map{(c) -> Int in
            return Int("\(c)")!
        }
        
        n2 = n2.reversed()
    
        var  k = num1.count + num2.count
        
        var n3:[Int] = Array(repeating: 0, count: k)
        
        
        for i in 0 ..< num1.count {
            for j in 0 ..< num2.count{
             n3[i + j] += n1[i] * n2[j]
            
        }
        }
            
            var result:String =  String()
            
            for i in 0 ..< n3.count{
                let digit = n3[i] % 10
                print(digit)
                let carry = n3[i] / 10
                
                result.insert(contentsOf: "\(digit)", at: result.startIndex)
                print(result)
                if i < n3.count - 1{
                    n3[i + 1] += carry
                }
            }
            
            while result.count > 0 && result[result.startIndex] == "0" {
                result.remove(at: result.startIndex)
            }
        return result.count == 0 ? "0" : result
    }
}

print(Solution().multiply("0", "0"))




