//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Objects and Classes

//classes

class Shape {
    //initing a class
    init(name:String){
        self.name = name
    }
    var numberOfSides = 10
    func simpleDescription() ->  String {
        return "A shape with \(numberOfSides) sides."
    }
    
    var name: String
    func findArea(length:Int, width:Int) -> Int {
        self.length = length
        self.width = width
        return length * width
    }
    var length:Int?
    var width: Int?
    
    //deiniting a class
    deinit {
        self.length = 0
        self.width = 0
        
    }
}

//using a class

var shape = Shape(name: "Abdoelsamea")

shape.numberOfSides = 5

print(shape.name)

print(shape.findArea(length: 10, width: 10))

print(shape.length)


// use of subclass


class Square: Shape {
    var sideLength: Double
    
    init(sideLength:Double, name:String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area()-> Double{
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}




let test = Square(sideLength: 2, name: "My Square")

test.area()

test.simpleDescription()




