var myOptional: String?

myOptional = "Hello there!"

//----- Force unwrap -----
//let newText: String = myOptional!

//----- Check for nil value -----
//if myOptional != nil {
//    let newText: String = myOptional!
//} else {
//    print("Optional have nil value!")
//}

//----- Optional binding -----
//myOptional = nil
//
//if let safeOptional = myOptional {
//    let newText: String = safeOptional
//} else {
//    print("Optional have nil value!")
//}

//----- Nil coalescing -----
//myOptional = nil
//let text: String = myOptional ?? "This is default value"
//print(text)

//----- Optional chaining -----
//struct NewStruct {
//    var prop = 123
//    func newMethod() {
//        print("Method of new struct")
//    }
//}
//
//let structOptional: NewStruct?
//
//structOptional = NewStruct()
//
//structOptional?.newMethod()
//print(structOptional?.prop)
