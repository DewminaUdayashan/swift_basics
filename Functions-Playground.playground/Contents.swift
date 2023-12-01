import Foundation

func noArgsAndNoReturn(){
    "I'm a basic function yoo!"
}


noArgsAndNoReturn()

func plusTwo(value: Int){
    let newValue = value+2
}

plusTwo(value: 10)

func returnPlusTwo(value: Int) -> Int{
   value + 2
}

func returnPlusTwoV2(value: Int) -> Int{
   return value + 2
}


returnPlusTwo(value: 30)
returnPlusTwoV2(value: 10)

func multiply(value1: Int,value2: Int) -> Int {
    value1*value2
}

let result = multiply(value1: 2, value2: 2)
result


func noExternalLable(_ vale : Int){
    vale+2
}

noExternalLable(10)

func customExternalLable(yourName name: String){
    print(name)
}

customExternalLable(yourName: "dew")

@discardableResult
func customFunc()-> String{
    "this function will not show warning in call site if the return value is not used!"
}


customFunc()

func getFullName(fName: String = "foo", lName: String = "bar")-> String{
    "\(fName) \(lName)"
}

getFullName()


//// CLOSURES
///
let add: (Int,Int) -> Int = {
    (lhs : Int, rhs : Int) ->  Int in
    let v = 1
   return lhs + rhs + v
}

add(10,20)

func customAdd(
    _ lhs : Int,
    _ rhs : Int,
    using function: (Int,Int) -> Int
)-> Int{
    function(lhs,rhs)
}


///mannually setting the closure
customAdd(
    10,
    23,
    using: { (lhs: Int,rhs: Int) -> Int in
        lhs+rhs
    }
)


///trailing closure syntax
customAdd(
    10,
    23
){
    (lhs: Int,rhs: Int) -> Int in
        lhs+rhs
}

customAdd(
    10,
    23
){
    (lhs,rhs) in
        lhs+rhs
}

customAdd(
    10,
    23
){$0 + $1}


customAdd(10, 2, using: add)


let ages = [44,10,20,30,40,15,23,76]

ages.sorted(by: {(lhs: Int, rhs: Int) -> Bool in
    lhs<rhs
})

/// in the above sorting method, the `<` binary infix operator is equls to below method
//
//func < (lhs: Int, rhs: Int) -> Bool {
//    lhs < rhs
//}
//
/// as you can see it is equals to the signature of requested closure of the sorted by: method. So, we can do
/// something like the below. actually infix operators like  `<` is a substitue for the requested closure

ages.sorted(by: <)



func add10To(_ value: Int) -> Int{
    value + 10
}

func add20To(number value: Int) -> Int{
    value + 20
}

func doAddition(
    on value : Int,
    using function: (Int) -> Int
) -> Int {
    function(value)
}

doAddition(on: 10) { (value) in
    value+30
}


doAddition(on: 10, using: add10To(_:))

doAddition(on: 5, using: add20To(number:))

doAddition(on: 11) {$0+10}
