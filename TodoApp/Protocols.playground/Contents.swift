import UIKit

protocol Persist {
    func save()
}

class Monster: Persist {
    func save() {
        print("Monster Save")
    }
    
    
}

class Sword: Persist {
    func save() {
        print("Sword Save")
    }
    
    
}

let monster = Monster()
let sword = Sword()

let items: [Persist] = [monster, sword]

class GameManager {
    func saveLevel(_ items: [Persist]) {
        for item in items {
            item.save()
        }
    }
}

let gameManager = GameManager()
gameManager.saveLevel(items)
