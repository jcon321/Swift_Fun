// Playground - noun: a place where people can play

import UIKit

struct StringStack {
    var items = [String]()
    
    mutating func push(item: String) {
        items.append(item)
    }
    
    mutating func pop() -> String {
        return items.removeLast()
    }
}


let N:Int = 13
var M:Int = 0
var stack = StringStack()

var basePad:Int = (N - 3) / 2
var pad2:String = ""

for var x = 0; x < basePad; x++ {
    pad2+=" "
}
var base: String = (pad2 + "###" + pad2)


stack.push(base)

var t = N

for var y = 0; y < N; y++ {
    var branch:String = ""
    for var x = t; x > 0; x-- {
        branch += "*"
    }
    t--
    if(y % 2 == 0) {
        var pad :String = ""
        var padLength :Int = (N - (t+1)) / 2
        for var u = 0; u < padLength; u++ {
            pad+=" "
        }
        stack.push(pad + branch)
    } else {
        M++
    }
}

for var d = 0; d <= N-M; d++ {
    println(stack.pop())
}


