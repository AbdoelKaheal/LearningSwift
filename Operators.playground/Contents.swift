import UIKit


//Nil-coalescing operator

let defaultColorName = "Red"

var userDefinedColorName: String?

let colorToUse = userDefinedColorName ?? defaultColorName //They have to be both of the same type

//Range operators
        //Closed Range Operator
for index in 1...5 {
    print("This is \(index)!")
}

        //Half-open range
let names = ["Anna", "Alex", "Brian", "Jack"]

let count = names.count

for i in 0..<count {
    print("Person \(i+1) is called \(names[i])")
}

        //one sided - range

for name in names[...2]  {
    print(name)
}

print("===============IGNORE THIS PRINT=================")

for name in names[2...] {
    print(name)
}

        //half-open one side

print("===============IGNORE THIS PRINT=================")

for name in names[..<2] {
    print(name)
}

//========================================================

let range = ...5

range.contains(7) //false
range.contains(4) //true
range.contains(-1) //true




