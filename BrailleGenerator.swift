import UIKit

// a . means raised bump
// a o means no bump
let input = "helloworld"

let braile : [String : String] = [
    "a" : ".ooooo",
    "b" : ".o.ooo",
    "c" : "..oooo",
    "d" : "..o.oo",
    "e" : ".oo.oo",
    "f" : "...ooo",
    "g" : "....oo",
    "h" : ".o..oo",
    "i" : "o..ooo",
    "j" : "o...oo",
    "k" : ".ooo.o",
    "l" : ".o.o.o",
    "m" : "..oo.o",
    "n" : "..o..o",
    "o" : ".oo..o",
    "p" : "...o.o",
    "q" : ".....o",
    "r" : ".o...o",
    "s" : "o..o.o",
    "t" : "o....o",
    "u" : ".ooo..",
    "v" : ".o.o..",
    "w" : "o...o.",
    "x" : "..oo..",
    "y" : "..o...",
    "z" : ".oo..."
]

var row0 = ""
var row1 = ""
var row2 = ""

for var x = 0; x < countElements(input); x++ {
    var currentLetter = (input as NSString).substringWithRange(NSMakeRange(x, 1))
    var braileStr : NSString = braile[currentLetter]!
    row0 += braileStr.substringWithRange(NSMakeRange(0, 2))
    row1 += braileStr.substringWithRange(NSMakeRange(2, 2))
    row2 += braileStr.substringWithRange(NSMakeRange(4, 2))
}

println(row0)
println(row1)
println(row2)
