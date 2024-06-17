//
//  main.swift
//  advancedSwiftProject
//
//  Created by Faruk Eymen Baltaci on 9.01.2023.
//

import Foundation

let classEymen = MusicianClass(name: "James", age: 50, ınstrument: "Guitar")

//print(classJames.age)
var structYaren = MusicianStruct(name: "James", age: 50, ınstrument: "Guitar")

//IMMUTABLE STRUCT
//print(structJames.age)
classEymen.age = 51

//print(classJames.age)
structYaren.age = 51

//print(structJames.age)

//REFERENCE vs VALUE
let copyOfClassEymen = classEymen

var copyOfStructYaren = structYaren

//print(copyOfClassEymen.age)
//print(copyOfStructYaren.age)

copyOfClassEymen.age = 52
copyOfStructYaren.age = 52


//print(copyOfClassEymen.age)
//print(copyOfStructYaren.age)
//print(classEymen.age)
//print(structYaren.age)

// Reference Types -> Class
// Copy -> Same object new reference -> 1 object + 2 Reference
// Value Types -> Struct
// Copy -> new object -> 2 Objects

//Function vs Mutating Function
print(classEymen.age)
classEymen.happyBirthday()
//print(classJames.age)
print(structYaren.age)
structYaren.happyBirthday()
print(structYaren.age)


// TUPLE
let myTuple = (1,3)
//print(myTuple.0)
var myTuple2 = (1,3,5)
myTuple2.2 = 10
//print(myTuple2.2)
let myTuple3 = ("Eymen", 100)

let myTuple4 = (10,[10,20,30])

//print(myTuple4.1[1])
let myString : String?

let predefinedTuple : (String, String)

predefinedTuple.0 = "Faruk"
predefinedTuple.1 = "Eren"

//print(predefinedTuple)

let newTuple = (name:"Eymen", metallica: true)
print(newTuple.metallica)
print(newTuple.name)

// Guard Let vs If Let
// Guard -> Negative && Confident
// If -> Positive
let myNumber = "Elma"

func convertToIntegerGuard (stringInput : String) -> Int {
    guard let myInteger = Int(stringInput) else {
        return 0
    }
    return myInteger
}

func convertToIntegerIf (stringInput : String) -> Int {
    if let myInteger = Int(stringInput) {
        return myInteger
    } else {
        return 0
    }
}

//print(convertToIntegerIf(stringInput: myNumber))
//print(convertToIntegerGuard(stringInput: myNumber))
//Switch
let myNum = 11

//remainder
let myRemainder = myNum % 4

//print(myRemainder)
/*
if myRemainder == 1 {
    print("it's 1")
} else if myRemainder == 2 {
    print("it's 2")
} else if myRemainder == 3 {
    print("it's 3")
}
 */

switch myRemainder {
case 1...3:
    print("it's 1 - 3")
default:
    print("none of the above")
}

//Breakpoint
var x = 5

print (x)

x += 1

print(x)

