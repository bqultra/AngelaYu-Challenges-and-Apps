
protocol AdvancedLifeSupport {
    
    func performCPR()
    
}

class EmergencyCallHandler {
    
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        
        print("What happened?")
        
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
    
}

struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("Paramedic is working")
    }
    
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("Doctor is working")
    }
    
}

class Surgeon: Doctor {
    
    override func performCPR() {
        print("Surgeon is working")
    }
    
}

let emilio = EmergencyCallHandler()
let gio = Doctor(handler: emilio)


emilio.medicalEmergency()
