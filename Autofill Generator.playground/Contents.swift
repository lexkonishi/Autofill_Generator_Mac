//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

struct format {
    var first = "first"
    var last = "last"
    mutating func combine()->String{
        first += " "
        first += last
        return first
    }
}

var form  = format(first:"Lex", last:"Konishi")
print(form.combine())

var form1  = format(first:"Dave", last:"Phillips")
print(form1.combine())