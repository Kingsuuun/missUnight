import UIKit

// 创建基本的闭包， 将函数分配给变量

let driving = {
    print("i'm driving in my car")
}
driving()
// 带参数的闭包
let driving2 = {
    ( place: String ) in
    print("i'm going to \(place) in my car")
}
driving2("NanTong")
// 带返回值的闭包
let drivingWithReturn = {
    ( place: String ) -> String in
    return "i'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)


// 闭包作为参数
func travel(num: Int, action: () -> Void) {
    print("i'm getting ready to go to \(num)")
    action()
    print("i arrived!")
}

travel( num: 2, action: driving)

// 尾随闭包语法 本来参数就是闭包赋予的，直接省略了,不需要括号里面写
travel(num: 2) {
    print("test two")
}

// 闭包接受参数时，使用闭包作为参数

func travel1(num: Int, action: (String) -> Void) {
    print("i'm getting ready to go to \(num)")
    action("London")
    print("i arrived!")
}
travel1(num: 1){
    (place: String) in
    print("use \(place) to do something")
}
// 有返回值的闭包
func travel2(action: (String) -> String) {
    print("i'm getting ready to go")
    let test = action("nantong")
    print(test)
    print("end")
}
travel2 {
    (place: String) -> String in
    return "i'm going to \(place) in my car"
}
// 简写代码
travel2 {
    "i'm going to \($0) in my car"
}

// 具有多个参数的闭包
func travel3(action: (String, Int) -> String) {
    print("travel3 test")
    let test = action("London", 60)
    print(test)
    print("travel3 test end")
}
// 速记参数名称是按照0开始记述参数的数量
travel3 {
    "i'm going to \($0) in my car, with \($1) speed"
}
// 从函数返回闭包,捕获值
func travel4() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). this is test4 i'm going to \($0)")
        counter += 1
    }
}
let result4 = travel4()
result4("london")
result4("london")
result4("london")
result4("london")


func login(then action: (String) -> Void) {
    print("Authenticating...")
    let username = "twostraws"
    action(username)
}
login {
    place in
    print("\(place) it is works")
}
