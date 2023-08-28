
protocol CanFly {
    func fly()
}

class Bird {
    let Female = true
    
    func layEggs() {
        if Female {
            print("Bird is laying eggs")
        }
    }

}

class Penguin: Bird{
    func swim() {
        print("Penguin can swim")
    }
}

class Eagle: Bird, CanFly {
    
    func fly() {
        print("The eagle can fly")
    }
    
    func attack() {
        print("Eagle can attack")
    }
}

class Airplane: CanFly {
    func fly() {
        print("An Airplane can fly")
    }
    
    
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

let myPenguin = Penguin()
let myEagle = Eagle()
let myMusem = FlyingMuseum()
let myAirplane = Airplane()

myMusem.flyingDemo(flyingObject: myEagle)
myMusem.flyingDemo(flyingObject: myAirplane)

myEagle.fly()
