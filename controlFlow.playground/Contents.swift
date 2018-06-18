//: Playground - noun: a place where people can play

import UIKit

//Control Flow

//if and switch

let individualScores = [75,43,103,87,12]

var teamScore = 0

for score in individualScores {
    //must be a boolean expression
    //ie if score {....} will not work because score in this case is a number
    if score > 50  {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

//print(teamScore)

var optionalString: String? = "Hello"

print(optionalString == nil)

var optionalName: String? = nil

var greeting = "Hello!"

if let name = optionalName {
    greeting = "Hello, \(name)"
}

print(greeting)

let nickname: String? = nil
let fullname: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullname)"

let vegetable = "watercress"

switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in aoup.")
}

let interestingNumbers = [
    "Prime":[2,3,5,7,11,13],
    "Fibonacci":[1,1,2,3,5,8],
    "square":[1,4,9,16,25],
]


var largest = 0
var type:String = ""
for (kind,numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            type = kind
        }
    }
}

print(largest, type)

var m = 2

repeat {
    m *= 2
} while m < 100


print(m)

var total = 0

//omits upper value ..<
for i in 0..<4 {
    total += 1
}

print(total)

//does not omit uppervalue ...

for i in 0...4 {
    total += i
}

print(total)
