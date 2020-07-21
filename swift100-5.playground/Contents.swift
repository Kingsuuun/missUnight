import UIKit
// 函数
func printHelp() {
    let message = """
Welcome to MyApp!
Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}
printHelp()
// -> 后面跟着的是返回值类型
func square(number: Int) -> Int {
    return number * number
}

var result = square(number: 8)
print(result)
// 参数标签 前面用来在调用函数的时候使用，后面是函数内部使用
func sayHello (to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Yang")
// 省略的参数标签
func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Yang")
// 默认参数
func greetTwo (_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Yang")
greetTwo("Wan", nicely: false)

print("red", "blue", "green")
// 多个参数,自动打印出来每个参数的每个结果
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square(numbers: 1, 2, 3, 4)

// 投掷函数, 抛出异常
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        print("it works!")
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("that password is good!")
} catch {
    print("u can't use that password")
}
// 传参数，并变更
func doubleInplace (number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInplace(number: &myNum)
