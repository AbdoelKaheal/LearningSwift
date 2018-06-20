//: Playground - noun: a place where people can play

import UIKit

//Comments

/*
 
        Multi-Line comments :)))
 
 */


//get ready for your mind to be blown :))))

/*
 
    /*
 nested multil-line comments ::::::::::::::::::::::: we can nest this even further, but I don't want to cause health issues
    */
 
 */




//declaring Variables

var name = "Abdoelsamea" //Variable
let lastName = "Kaheal" //Constant

//Declaring Variables on multipile lines

var x = 0.0, y = 0.0, z = 0.0 //use Commas to declare multiple values

//USE VARIABLES ONLY FOR STORING VALUES THAT NEED TO BE CHANGED ELSE USE CONSTANTS

//Type annotation
//Types can always be inferered by the complier so you don't need to specify

var welcomeMessage: String // Declare a var called welcomeMessage of Type String (Will only store strings)


var red, green, blue: String //In this case they are all strings

var yellow = "The color yellow", orange = "the color orange" //Checks out  as well ;)

print(orange)

//naming variables and constants

let 😀 = "Emoji face ;)" //Perfectly fine with swift

let `let` = "Very cool huh?" //Use backticks (`) when you NEED to use a reserved keyword as a name ;)

print(`let`) //again when you need to call it use bacticks



//Printing constants and variables

//print(_: separator: terminator:) -> We will have a look at this in a the functions chapter so don't worry too much about it ;)))


//for example

print("Hello", terminator:" put here things like a line break woohoo") //Use of terminator :)



// Semicolons are not required unless on the same line code ie

let realName = "Abdoelsamea kaheal"; print("is so cool")//


//INT -> 34 -23 12 99990 123121 0

let minValue = UInt8.min
print(minValue)
let maxValue = UInt8.max
print(maxValue)





// Important to note -------- Type inference

/*
 Swift uses type inference to determine types if not defined. if you dont define a float
 such as
 let b:Float = 42.12312 than it will think it is a Double type
 */

let numericLiterals = 0x11 //can be anything from hex, binary, octal, and plain (decimal(17 etc))

print(numericLiterals)




let bigNumber = 1.25e12 //totally fine with swift


//Amazing things that you should know in swift :)))))))


let paddedDouble = 000123.456 //again here it is a float but swift inferces it as a double :OOOO

let oneMillion = 1_000_000 //all of this is for readiabllity and does not acctually change how the number behaves

print(oneMillion) //should print out 1 million

let justOverOneMillion = 1_000_000.000_000_1 //same thing here

let stringToNumber = Int("12")

print(stringToNumber)


let three = 3

let pointOneFourOneFiveNine = 0.14159

let pi = Double(three) + pointOneFourOneFiveNine //YOU MUST Convert to a double in order to add





let integerPi = Int(pi) //truncated down to 3

let doubleNum = 3.999999

let intDoubleNum = Int(doubleNum) // truncated down to 3 and not rounded up to 4 NOTE

//type aliases basically allows you to rename types ;)

//for example -
typealias AudioSample = UInt16 //here were renaming UInt16 to be AudioSample

let uint16Number: AudioSample = AudioSample.max //use it like  you would use UInt16 and max just gets the highest value it can hold

print(uint16Number)


//BOOLEANS WOOHOOO

let turnipsAreDelicious = false

let orangesAreOrange = true

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
};

//TUPLES

let http404Error = (404, "Page not found ;(")

let (statusCode, statusMessage) = http404Error

//print("the status code is \(statusCode)")
//print("The status message is \(statusMessage)")

//ignore the values you don't want with _ so for example ---

let (_, justTheStatusMessage) = http404Error

//print(justTheStatusMessage)

//You can also access them using index

//print(http404Error.0, http404Error.1)

//you can also name the elments in a tuple like so

let http200Status = (statusCode:200,description:"OK")

///And you can access them using there names like so

http200Status.statusCode


var serverResponseCode: Int? = 404
//serverResponseCode contains an actual Int value of 404
print(serverResponseCode)

serverResponseCode = nil

print(serverResponseCode) // now it has nil or no value at all


var defaultOfOptional: Int? //automatically gets set to nil since there is no value

if serverResponseCode != nil {
    print("This will only pass if an optional has a value")
} else {
    print("It did not pass due to the fact we set it to nil above ;)")
}


let convertedNumber = Int("255") // returns an optional

if(convertedNumber != nil){
    print(convertedNumber!) //we are now unwrapping the value and we only do it if it has a value else it will fail
}


//Optional binding


//Syntax

/*
 
 if let constantName = someOptional {
        //will only pass if someOptional is not nil
        // if it does pass constantName is now equal to the value of someOptional unwrapped
    }
 
 */

let exampleOptional: String? = "Hello World!"


if let noLongerOptional = exampleOptional {
    print("It was \(exampleOptional) and so now it is \(noLongerOptional)")
} else {
    print("it's got a value of nil :(")
}

//use commas to seperate many nested if statements and include more than one optional binding for example

if let firstNumber = Int("1"), var secondNumber = Int("2"), firstNumber < secondNumber && secondNumber < 100 {
    secondNumber = 12 // These variables are only temporary and can only be used inside this if block
    print("YES You can do that ;)")
}

//print(secondNumber) // should throw an error if run

//AND DON'T DO THIS

if let firstNumber = Int("1") {
    if var secondNumber = Int("2") {
        if firstNumber < secondNumber && secondNumber < 100 {
            secondNumber = 12
            print("They are the same thing though")
        }
    }
}



//implicityly unwrapped optionals

let implicitlyUnwrapped: String! = "NOT nil"
//It will throw an error at runtime if implicitlyUnwrapped is nil
let implicitlyString: String = implicitlyUnwrapped //You have to specify the type or else it will make it optional

print(implicitlyString)


func canThrowError(_ name:String) throws -> String  {
    print("No Error was thrown YET muhahahahaha")
    
    return "\(name), \(name), \(name)";
}

do {
   let myName = try canThrowError("Abdoelsamea")
    print("the name is \(myName)")
} catch {
    print("ERROR WAS THROWNNNNNN")
}



let age = 1
//if assesrtion fails it will stop your app from running.

assert(age >= 0, "Assertion failed due to impossible age")


if age > 10 {
    print("You may ride the roller-coaster or the ferris wheel")
} else if age > 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A persons age can not be less than zero")
};


let index = 0
//precondition(index > 0, "Index must be greater than zero")

let (x1, y1) = (1,2)
//preconditionFailure(_:file:line:)
//fatalError()



//remainder operator

// a % b and a % -b always return the same thing because b is always ignored with its sign



























