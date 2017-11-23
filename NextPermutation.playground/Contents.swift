//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func nextPermutation(_ nums: inout [Int]) {
        if(nums.count < 2) {return}
        
        //from right to search to find the first index to make leftAdj > rightAdj
        var i = nums.count - 2
        var j = nums.count - 1
        while(i >= 0){
            if (nums[i] < nums[i + 1]){
                
                //from right to find the first num that less than it
                
                while(j > 0){
                    if (nums[j] > nums[i]){
                        var temp: Int
                        temp = nums[j]
                        nums[j] = nums[i]
                        nums[i] = temp
                        break
                    }else{
                        j = j - 1

                    }
                }

                //rerange the right part
                for k in (i+1)..<nums.count {
                    
                    for m in ((i + 1)..<nums.count - 1) {
                        if nums[m] > nums[m + 1] {
                            
                            let tmp = nums[m]
                            
                            nums[m] = nums[m + 1]
                            
                            nums[m + 1] = tmp
                            
                        }
                        
                    }
                    
                }
                return
            }
            i = i - 1
        }
        nums.sort()
       
    }
}

let solution = Solution()
var array = [5,4,7,5,3,2]
solution.nextPermutation(&array)
print(array)