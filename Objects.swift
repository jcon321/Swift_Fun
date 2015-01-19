import UIKit

class Vehicle {
    
    var make:String
    var model:String
    var year:Int
    var speed:Int
    
    init(make:String, model:String, year:Int, speed:Int) {
        self.year = year
        self.model = model
        self.make = make
        self.speed = speed
    }
    
    func go() {
        println("vroom vroom @ \(self.speed) mph")
    }
    
}

class BMW:Vehicle {
    
    var autoStart:Bool
    
    init (make:String, model:String, year:Int, speed:Int, autoStart:Bool) {
        self.autoStart = autoStart
        super.init(make: make, model: model, year: year, speed: speed)
    }
    
}

class Ford:Vehicle {
    
    var fourByFour:Bool
    
    init (make:String, model:String, year:Int, speed:Int, fourByFour:Bool) {
        self.fourByFour = fourByFour
        super.init(make: make, model: model, year: year, speed: speed)
    }
    
    override func go() {
        if fourByFour {
            self.speed = 70
            super.go()
        }
    }
}

let car1 = BMW(make: "BMW", model: "328i", year: 2010, speed: 100, autoStart: true)

car1.go();

let car2 = Ford(make: "Ford", model: "F150", year: 2009, speed: 90, fourByFour: true)
car2.go()

let car3 = Vehicle(make: "Honda", model: "Civic", year: 1998, speed: 80)
car3.go()

