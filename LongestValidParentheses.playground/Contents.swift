//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Stack {
    //是否为空
    public var isEmpty: Bool {return stack.isEmpty}
    
    //栈的大小
    public var size: Int {return stack.count}
    
    //栈顶元素
    public var peek: Any?{
        return stack.last
    }
    
    var stack: [Any]
    
    public init() {
        stack = [Any] ()
    }
    
    //加入一个新元素
    public func push(_ obj: Any) {
        stack.append(obj)
    }
    
    //推出栈顶元素
    public func pop() -> Any? {
        if isEmpty {
            return nil
        } else {
            return stack.removeLast()
        }
    }
    
}

class Solution {
    func longestValidParentheses(_ s: String) -> Int {
        let ss = Stack()
        var maxLen = 0
        let array: [Character] = ([Character])(s.characters)
        for (index,value) in array.enumerated(){
            if value == "(" {
                ss.push((index,value))
            }else{
            //遇到右括号，分类讨论
                //如果当前栈顶是左括号，则消去并计算长度
                if !(ss.isEmpty) && (((ss.peek as! (Int, Character)).1) == "(") {
                    var curLen = 0
                    ss.pop()

                    if ss.isEmpty {
                        curLen = index + 1
                    } else {
                        curLen = index - (ss.peek as! (Int, Character)).0
    
                    }
                    maxLen = (maxLen > curLen ? maxLen : curLen)
                }else{
                    //如果栈顶是右括号或者是空栈，则将右括号也push进栈，它的坐标方便之后计算长度
                    ss.push((index,value))
                }
            }
            
            
        }
        
        
        return  maxLen
    }
}

var result = Solution().longestValidParentheses(")()")
print(result)
//class Node {
//    public var Index:Int?
//    public var value:Character?
//    init(_ Index:Int, _ value: Character) {
//        self.Index = Index
//        self.value = value
//    }
//}


