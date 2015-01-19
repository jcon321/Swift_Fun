// Playground - noun: a place where people can play

import UIKit

println("ISBN Validator")

//var theISBN = "0-7475-3269-9"
var theISBN = "0-8114-7346-5"


if(checkValidISBN(theISBN)) {
    println("The ISBN is a valid number")
} else {
    println("The ISBN is not a valid number")
}





func checkValidISBN(theISBN : String) -> Bool {
    var result:Bool = false
    var theNumbers = [Int]()
    var total = 0
    
    theNumbers.append(theISBN[0].toInt()!)
    theNumbers.append(theISBN[2].toInt()!)
    theNumbers.append(theISBN[3].toInt()!)
    theNumbers.append(theISBN[4].toInt()!)
    theNumbers.append(theISBN[5].toInt()!)
    theNumbers.append(theISBN[7].toInt()!)
    theNumbers.append(theISBN[8].toInt()!)
    theNumbers.append(theISBN[9].toInt()!)
    theNumbers.append(theISBN[10].toInt()!)
    theNumbers.append(theISBN[12].toInt()!)
    
    var index = 0
    for var x = 10; x > 0; x-- {
        total += (x * theNumbers[index])
        index++
    }
    
    if(total % 11 == 0) {
        result = true
    }
    
    return (result)
}


extension String {
    subscript (i: Int) -> String {
        return String(self[advance(self.startIndex, i)])
    }
}

