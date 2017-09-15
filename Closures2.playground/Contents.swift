import Foundation

func ripley(spaceShip: String) {
    let name = "Ripley"
    if name == "pepe"{
        
    }
    
    func alien() {
        let alienName = "Alien 457"
        print("Destroy \(name) my name is \(alienName) in ship: \(spaceShip)")
    }
    
    let alienClosure = { () -> Void in
        let alienName = "Alien 457"
        print("Destroy \(name) my name is \(alienName) in ship: \(spaceShip)")
    }
    
    let otherAlienClosure = alienClosure
    
    alienClosure()
    otherAlienClosure()
    
    alien()
    
    print("-----")
    
    alien()
}

ripley(spaceShip: "Nostromo")
ripley(spaceShip: "Slave I")
