//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
let base = 3
var answer = 1
var power = 4
for _ in 1...power {
    answer = answer * base
}
print("3^4:answer is \(answer)")

var i = 0
var sum = 0;
for i; i < 10; i++ {
    sum = sum + i
}
print("sum = \(sum)")

let c:Character = "a"
switch c {
case "a", "A": print("a")
case "b", "B": print("b")
default: print("nomatch")
}

func sayHello(personName: String) -> String {
    let greeting = "hello, " + personName + "!"
    return greeting
}


