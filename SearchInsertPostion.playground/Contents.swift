//: Playground - noun: a place where people can play

import UIKit



class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if nums.count == 0 {return 0}
        var result = 0
        for (index,num) in nums.enumerated() {
            if target > num {
                result = index + 1
                continue
            }
            if target <= num {
                return index
            }
        }
        return result
    }
}

Solution().searchInsert([1,3,6,7], 5)
