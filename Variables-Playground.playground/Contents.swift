import Foundation

let name = "swift";

var  version = 1.0;

version = 1.1;


print(name,"'s version is ",version);


var names = [
    name,
    name,
];

names.append("OH shit!")

names.removeAll{$0=="OH shit!"}

names.remove(at: 1)

let foo = "foo";
var foo2 = foo;

foo2 = "foo 2"

foo2.removeAll()


///this is not a value type, this is a referencial type
///even tho it is constant, we can mutate the class's value inside
let array = NSMutableArray(
    array: [1,2,3,4]
)

array.add(5)

///@params
///'array' needs to be a type of [NSArray].
///NSArray class is a super class and if we pas a [NSMutableArray] type,
///it will be downgraded to a NSArray
func changeArray(_ array: NSArray){
    ///also even tho we assigned a referencial object to a new variable,
    ///it is not a copy, it's a reference. so when we change the 'copy' object,
    ///it'll affect to it's origin as well.
    let copy = array as! NSMutableArray;
    copy.add(6)
}

changeArray(array)

array

