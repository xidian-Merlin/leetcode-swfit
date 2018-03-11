//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func countAndSay(_ n: Int) -> String {
        if (n == 0) {return ""}
        if(n == 1) {return "1"}
        //get the value of n-1
        let temp = countAndSay(n-1);
        
        return sayFormPrevious(Previous: temp)
        
    }
    
    func sayFormPrevious(Previous:String) -> String {
        var result:[(Int,Character)] = [(Int,Character)]()
        var tempPrevious:Character = "s"
        var count:Int = 0
        var current:Character
        for (index,char) in Previous.enumerated(){
                current = char
                count += 1
           if (index != 0 && current != tempPrevious){
                result.append((count-1,tempPrevious))
                count = 1
            }
            tempPrevious = char
            if(index == Previous.count - 1){
                result.append((count,current))
            }
            
        }
        var ret = ""
        for tuple in result{
            ret = ret + "\(tuple.0)"
            ret = ret + tuple.1.description
        }
    return ret
    }
    
    
}

print (Solution().sayFormPrevious(Previous: "1211"))
print("fdsfsa")
print(Solution().countAndSay(5))
