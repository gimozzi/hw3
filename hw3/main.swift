//
//  main.swift
//  hw3
//
//  Created by Release on 2016. 4. 6..
//  Copyright © 2016년 gimozzi. All rights reserved.
//

import Foundation

print("Hello, World!")


var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"

print(friendlyWelcome)

print("Welcome to", "Paris", separator:" ", terminator:" ")

print("Swift Language")

print("The current value of friendlyWelcome is\(friendlyWelcome)")

//////////////////////////////
let cat = "🐱"; print(cat)

let meaningOfLife = 42 // Deduce Int
let pi = 3.14159 // inferred to be of type Double
let anotherPi = 3 + 0.14159 // inferred to be of type Double

let three = 3
let pointOneFourOneFiveNine = 0.14159
//let pi = Double(three) + pointOneFourOneFiveNine

let integerPi = Int(pi) // integerPiequals 3

//Booleans
let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious { print("Mmm, tasty turnips!") }
else { print("Eww, turnips are horrible.") }

//Tuples
let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// prints "The status code is 404"
print("The status message is \(statusMessage)")
// prints "The status message is Not Found
print("The status code is \(http404Error.0)")
// prints "The status code is 404"

let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
// prints "The status code is 200"

//Optionals (?)
let possibleNumber = "123"
//let convertedNumber = possibleNumber.Int()//toInt() 이건 사용 못함
let convertedNumber = Int(possibleNumber)
// convertedNumber: "Int?", or "optional Int"

//nil
var serverResponseCode: Int? = 404
// serverResponseCodecontains an actual Intvalue of 404
serverResponseCode = nil
// serverResponseCodenow contains no value

var surveyAnswer: String? // automatically set to nil

if convertedNumber != nil {
    print("convertedNumberhas an integer value of \(convertedNumber!).") }
// prints "convertedNumberhas an integer value of 123."

if let actualNumber = Int(possibleNumber)//possibleNumber.toInt() 는 안된다
{ print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
    // set a new constant called actualNumberto the value contained in the optional
} else { print("\'\(possibleNumber)\' could not be converted to an integer") }
// prints "'123' has an integer value of 123"

let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation mark

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation mark

if assumedString != nil {
    print(assumedString) }
// prints "An implicitly unwrapped optional string."

if let definiteString = assumedString{
    print(definiteString)
}
// prints "An implicitly unwrapped optional string."


///////////////////////
let defaultColorName = "red"
var userDefinedColorName: String? // defaults to nil
var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorNameis nil, so colorNameToUseis set to the default of "red"

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorNameis not nil, so colorNameToUseis set to "green"


//Range Operators
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)") } //1,2,.. 5

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count// count=4
for i in 0..<count {
    print("Person \(i+1) is called \(names[i])") } // 0,1,2,3


//Logical Operators
let knowsOverridePassword = true ; let hasDoorKey = false
let enteredDoorCode = true ; let passedRetinaScan = false
if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
}else {
    print("ACCESS DENIED")
}

// prints "Welcome!"

/////////////
//Swift 2

//Strings and Characters
let someString = "Some string literal value"

var emptyString = "" // empty string literal
var anotherEmptyString = String() // initializer syntax
// these two strings are both empty, equivalent to each other

if emptyString.isEmpty{ print("Nothing to see here")}
// Prints "Nothing to see here"

//string mutability
var variableString = "Horse"
variableString += " and carriage"
// variableStringis now "Horse and carriage"

/*
let constantString = "Highlander"
constantString+= " and another Highlander"
// a compile-time error -a constant string cannot be modified
*/

for character in "Dog!🐶".characters {
    print(character) }
// D // o // g // ! // 🐶


let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
// Prints "Cat!🐱"

let string1 = "hello" ; let string2 = " there"
var welcome = string1 + string2
// welcome now equals "hello there"

var instruction = "look over"
instruction += string2 // instruction now equals "look over there"
print(instruction)
let exclamationMark: Character = "!"
welcome.append(exclamationMark)
// welcome now equals "hello there!"
print(welcome)

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
// message is "3 times 2.5 is 7.5"

//Unicode
let wiseWords = "\"Imagination is more important than knowledge\" -Einstein"
// "Imagination is more important than knowledge" -Einstein
let dollarSign = "\u{24}" // $, Unicode scalar U+0024
let blackHeart = "\u{2665}" // ♥, Unicode scalar U+2665

let precomposed: Character = "\u{D55C}" // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}" // ᄒ, ᅡ, ᆫ
// precomposedis 한, decomposed is 한
let eAcute: Character = "\u{E9}" // é
let combimedAcute: Character = "\u{65}\u{301}" // é
let enclosedEAcute: Character = "\u{65}\u{20DD}" //
// eAcuteis é, enclodesEAcuteis é

let unusualMenagerie = "Koala 🐨"
print("unusualMenageriehas \(unusualMenagerie.characters.count) characters")
// Prints "unusualMenageriehas 7characters"
