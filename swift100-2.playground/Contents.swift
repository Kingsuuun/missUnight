import UIKit

let john = "john Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

beatles[0]

// set 的数组没有按照创建时候的顺序， 而是随机的。并且自动剔除重复的元素
// 元素的类型必须得相同
let colors = Set(["red", "green", "blue"])

let colors2 = Set(["red", "green", "yellow", "red", "blue", "green"])

// 类似于 key value ： Tuple
var name = (first: "diyige", second: "wobuzhidao")

name.0
name.second

name.second = "24"
name.second

// arrray 适合重复的值的集合 sets 适合剔除重复的元素  tuple 适合定点键值对

// tuple 元组大小固定
let address = (house: 555, street: "daSiMaLu", city: "nanTong")
//let test = (name: "wocao", name: "apple", age: 23)
address.street

let setTest = Set(["name", "age", "num"])

let pythons = ["green", "red", "red", "blue", "apple"]

pythons[0]

// 字典 如果字典内的元素类型不同时还要在最后加，这是 fix 自动修复的还不知道什么意思，记录一下

let heights = [
    "Jay": 1.80,
    "Andy": 1.55,
    "name": "unknow"
    ] as [String : Any]

heights["Jay"]
heights["Andy"]
// 查无此数据时候， 自动用 default 的数据代替
heights["name", default: 0.0]

// 创建一个空的字典
var teams = [String: String]()

teams["name"] = "paul"
teams["from"] = "nanJing"

teams["name"]

var results = [Int]()

// 枚举 规范命名
let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure

// 依旧是枚举 关联值可以添加一些附加的信息
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")
// 不是很理解，为什么不直接用数组
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)
earth
