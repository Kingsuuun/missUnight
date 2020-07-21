import UIKit

var str = "Hello, friend"

let firstScore = 12
let secondScore = 4

// 简单的运算 + - * / %
let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

let fakers = "faker is"
let add = fakers + " the best"
var strTest = "wise man say"
strTest += " only full rush in"

// 数组相加建立新的数组
let firstHalf = ["faker", "teddy"]
let secondHalf = ["kehan", "sword"]
let end = firstHalf + secondHalf
// 按照字母顺序比较
"apple" > "big"

// 条件
let firstCard = 11
let secondCard = 10
if firstCard + secondCard == 20 {
    print("Waohhhhhhh")
}
else if firstCard > 12{
    print("oh no!")
}
else {
    print("hello word")
}
// 常用的判断， swiftUI 中状态判断常用
let one = 1
let two = 2
print( one == two ? "yes" : "no")

// switch
let weather = "snow"
// 加了 fallthrough 只执行下一步，不是后面所有的
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
    fallthrough
case "sunny":
    print("Wear sunscreen")
    
default:
    print("enjoy ur day!")
}

// 循环用到的范围标志
let score = 85

switch score {
case 0...85:
    print("u failed badly")
case 85..<100:
    print("u did ok")
default:
    print("u did great")
}


