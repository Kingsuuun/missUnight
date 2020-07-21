import UIKit

let count = 1...10

for num in count {
    print("num is \(num)")
}

let albums = ["red", "blue", "green"]

for album in albums {
    print("\(album) is on apple music")
}

print("Apple")
for _ in 1..<5 {
    print("print")
}

var number = 1
// 类似于 do while
repeat {
    print(number)
    number += 1
}  while number <= 20

print("ready or not, here i come!")

while false {
    print("this is false")
}

repeat {
    print("this is false")
} while false

var countDown = 3

while countDown >= 0 {
    print(countDown)
    if countDown == 2{
        print("ohhhhsssss")
        break
    }
    countDown -= 1
}

print("ohhhhh")
// 普通的break 只会跳出内部循环
for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        if product == 10 {
            print("it is time to out")
            break
        }
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("it is a bullseye!")
            break outerLoop
        }
    }
}

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

var cats: Int = 0
while cats < 10 {
    cats += 1
    print("I'm getting another cat.")
    if cats == 4 {
        print("Enough cats!")
        cats = 10
    }
}

var itemsSold: Int = 0
while itemsSold < 5000 {
    itemsSold += 100
    if itemsSold % 1000 == 1000 {
        print("\(itemsSold) items sold - a big milestone!")
    }
}

var hoursStudied = 0
var goal = 10
repeat {
    hoursStudied += 1
    if hoursStudied > 4 {
        goal -= 1
        continue
    }
    print("I've studied for \(hoursStudied) hours")
} while hoursStudied < goal
