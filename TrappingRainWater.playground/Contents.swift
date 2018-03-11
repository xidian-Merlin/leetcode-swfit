//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func trap(_ height: [Int]) -> Int {
        var result = 0
        //找到每个元素块，左边比它最高的，右边比它最高的，取而这二者的最小值
        for (index,num) in height.enumerated(){
            if(index == 0 || index == height.count-1){
                continue
            }
            var leftEdge = 0
            var rightEdge = 0
            //遍历左边
            for i in 0 ..< index{
                if leftEdge < height[i] {
                    leftEdge = height[i]
                }
            }
            
            //遍历右边
            for i in (index+1) ..< height.count{
                if rightEdge < height[i]{
                    rightEdge = height[i]
                }
            }
            
            let value =  (leftEdge - height[index]) < (rightEdge - height[index]) ? (leftEdge - height[index]) : (rightEdge - height[index])
            if value > 0 {
                result += value
            }
            }
            return result
        }
    
    }


