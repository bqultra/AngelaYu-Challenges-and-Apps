import UIKit

var a = 5
var b = 8
var d = 0

d = b
b = a
a = d

//print(a)
//print(b)

    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

    var pass = ""
    var i = 0
    //The number of letters in alphabet equals 26

    pass += alphabet[Int.random(in: 0 ... 27)]
    pass += alphabet[Int.random(in: 0 ... 27)]
    pass += alphabet[Int.random(in: 0 ... 27)]
    pass += alphabet[Int.random(in: 0 ... 27)]
    pass += alphabet[Int.random(in: 0 ... 27)]
    pass += alphabet[Int.random(in: 0 ... 27)]

    let password = pass//Replace this comment with your code.
    
    print(password)

func greeting(whoToGreet: String) {
    print("Hello \(whoToGreet)")
}

greeting(whoToGreet: "Simon")

//Don't change this code:
func calculator() {
let a = 3 //example first input
let b = 4 //example second input

func add(n1: Int, n2: Int) {
print(n1 + n2)
}

func subtract(n1: Int, n2: Int) {
print(n1 - n2)
}

func multiply(n1: Int, n2: Int) {
print(n1 * n2)
}

func divide(n1: Int, n2: Int) {
print(n1 / n2)
}

add(n1: a, n2: b)
subtract(n1: a, n2: b)
multiply(n1: a, n2: b)
divide(n1: a, n2: b)

}
calculator()

//Conditional statements
func loveCalculator() {
    
    let loveScore = Int.random(in: 0 ... 100)
    
//    if(loveScore == 100) {
//        print("Forza Ferrari")
//    } else {
//        print("It's hard to be a Ferrari fan")
//    }
    
    switch loveScore {
    case 81...100:
        print("Forza Ferrari")
    case 41..<81:
        print("It's hard to be a Ferrari fan")
    case ...40:
        print("Next year will be our year")
    default:
        print("Error")
    }
    
}

loveCalculator()
