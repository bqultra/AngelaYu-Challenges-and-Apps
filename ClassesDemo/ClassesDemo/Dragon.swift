class Dragon: Enemy {
    var wingspan = 2
    
    func talk() {
        print("I spit fire!")
    }
    
    override func attack() {
        super.attack()
        print("Deal additional \(attacHitPoints) damage spiting fire")
    }
}
