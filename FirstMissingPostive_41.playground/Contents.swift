//: Playground - noun: a place where people can play

import UIKit

class Solution{
    func firstMissingPositive(_ nums: [Int]) -> Int {
        if nums.count == 0 {return 1}
        var result = 1
        let filterArray = nums.filter({$0 > 0}).sorted()
        if(filterArray.count == 0){return 1}
        if (filterArray[0] > 1) {return 1}
        for (index,num) in filterArray.enumerated(){
            if index < filterArray.count-1 && num+1 < filterArray[index+1]{
                result = num + 1
                break}
            if index == filterArray.count - 1 { return num+1}
        }
        return result
    }
}
