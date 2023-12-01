import Foundation

let myAge = 23
let yourAge = 20

myAge>yourAge

if myAge>yourAge{
    print("perfect..!")
} else if yourAge>myAge{
    print("Okay")
}

/// unary prefix
let timeOff = !true

/// unary postfix
let name = Optional("dew")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)

/// binary infix
let result = 1+2
let you = "john"+" "+"doe"


let age = 30
//let message: String
let message = age>=18 ? "Adult" : "Child"
