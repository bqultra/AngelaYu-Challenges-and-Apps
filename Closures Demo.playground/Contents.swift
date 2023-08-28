import UIKit

func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    
    return operation(n1, n2)
    
}

func add (no1: Int, no2: Int) -> Int {
    return no1 + no2
}

//func multiply(m1: Int, m2: Int) -> Int {
//    return m1 * m2
//}

//calculator(n1: 2, n2: 3, operation: { (m1, m2) in
//    m1 * m2
//})

//calculator(n1: 2, n2: 3, operation: {$0 * $1})

//Trailing closure:
calculator(n1: 2, n2: 3) {$0 * $1}

let array = [3,4,1,7,8]

//func addOne (n1: Int) -> Int {
//    return n1 + 1
//}

//array.map(addOne)

//array.map({$0 + 1})

//lub
array.map({n1 in n1 + 1})

