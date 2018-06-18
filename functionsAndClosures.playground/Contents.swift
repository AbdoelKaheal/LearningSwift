//: Playground - noun: a place where people can play

import UIKit

//Functions and Closures

func greet(_ person:String,_ Special:String) -> String {
    return "Hello \(person), Today's special is \(Special)"
}

print(greet("Abdoelsamea","Tuesday"))


//return tuples

func calculateStatistics(scores:[Int]) -> (min:Int,max:Int,sum:Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores {
        if(score > max){
            max = score
        }
       else if (score < min) {
            min = score
        }
        sum += score
    }
    return (min,max,sum)
}

let tuple = calculateStatistics(scores: [1,2,3,4,5,6,7,8,9,])

print(tuple.min) // or you can do this tuple.0

// nested functions

func returnFifteen() -> Int {
    var num = 10
    func addFive () {
        num += 5
    }
    addFive()
    return num
}


returnFifteen()

// first-class type -> function can return another function as its value

func makeIncrementer() -> ((Int)->Int) {
    func addOne(number:Int) -> Int {
        return 1 + number
    }
    return addOne
}

//from here on we can go 2 ways
//first way
makeIncrementer()(12)

//second way

let increment = makeIncrementer()

increment(1)


//functions taking other functions as their values

func hasAnyMatchs(list:[Int], condtion:(Int) -> Bool) -> Bool {
    for item in list {
        if condtion(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number:Int) -> Bool {
    return number < 10
}

var numbers = [20,19,7,12]

hasAnyMatchs(list: numbers, condtion: { // basicly a function/closure
    (number:Int) -> Bool in
    return number < 10
})

// can be also re written as

hasAnyMatchs(list: numbers, condtion: lessThanTen)

numbers.map({(number:Int)->Int in
    if number % 2 != 0 {
            return 0
    }
    let result = 3 * number
    return result
});

let mappedNumbers = numbers.map({number in 3 * number});

print(mappedNumbers)



let sortedNumbers = numbers.sorted {$1 > $0}


print(sortedNumbers)








