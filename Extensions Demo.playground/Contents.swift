import UIKit

extension Double {

    func round(to places: Int) -> Double {

        let precisionNumber = pow(10, Double(places))
        //pow - potęgowanie liczby 10 do liczby miejsc po przecinku podanej przez użytkownika; liczba miejsc jest typu Int dlatego zamieniamy na Double w  celu zwrócenia wartości Double

        var n = self //jest to liczba która będzie przypisana do zmiennej typu    Double, np. let myDouble = 3.14159 (n = 3.14159)

        n = n * precisionNumber //pomnożenie przez wielokrotność liczby 10

        n.round() //zaokrąglenie do liczby całkowitej
        
        n = n / precisionNumber //podzielenie przez wielokrotność liczby 10
        
        return n

    }

}

var myDouble = 3.14159

myDouble.round(to: 3)

//Wynik: 3.142


let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .green

extension UIButton {
    
    func makeCircularButton() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
    
}

button.makeCircularButton()

//Extensions for protocols

protocol CanFly {
    func fly()
}

extension CanFly {
    func fly() {
        print("Object can fly")
    }
}

struct Eagle: CanFly {
    
}

let myEagle = Eagle()
myEagle.fly()
