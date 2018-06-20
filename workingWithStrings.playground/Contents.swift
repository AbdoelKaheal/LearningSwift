import UIKit


//initializng an empty string

var emptyString = "" //empty string literal

var anotherEmptyString = String() //initializer syntax

//these two strings are both empty, and are equivalent to each other

//Check if a string is empty or not with isEmpty


if emptyString.isEmpty {
    print("Nothing to see here")
}


//Mutability



var variableString = "Horse"
variableString += " and carriage" // variableString is now "Horse and carriage"

let constantString = "Highlander" //Can Not Be Changed


//Working with Characters

for character in "Kaheal" {
    print(character) //it's gonna print out every letter in my last name
}

//Character type annotation

var letterA: Character = "!"

//letterA = "Hello" --> should throw an error because your are assigning a String to character type

let catCharacters: [Character] = ["C", "a", "t", "!"]

var catString = String(catCharacters)

print(catString) //Cat!

catString.append("!") // You can only pass Characters to append


//to find out number of characters inside a string call the count property

let longString = "Hello this is a long string" // 27 characters long

print(longString.count)




/*
 
 Accessing and Modifying a String
 
 */

//string indices

/*
 
 
 String.Index
 
 String.startIndex
 
 string.endIndex
 
 */



let greeting = "Guten Tag!"

greeting[greeting.startIndex] //G

greeting[greeting.index(before:greeting.endIndex)] // !

let index = greeting.index(greeting.startIndex, offsetBy:7)

var welcome = "hello"

welcome.insert("!", at: welcome.endIndex)


let prefixTest = "An Ant jumped on the road"

prefixTest.hasPrefix("An") // true because there is indeed a prefix of "An"

prefixTest.hasSuffix("the road") //true because there is indeed a suffix of "the road"


