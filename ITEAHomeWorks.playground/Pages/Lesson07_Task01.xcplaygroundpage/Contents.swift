//
// Home Work Lesson 7. Create classes, Task 01
//
// Created by Dima Kahanets
//


// Прописати структуру класів
//
// Класи: Кіт, собака, папуга, півень, корова
// Функції: voice, fly
// Атрибути: name, feetCount, wingsCount,
// Зовнішні функції: getMilk, getEgg


class Animal {
    var name: String
    private var feetCount: UInt
    
    init(name: String, feetCount: UInt = 4) {
        self.name = name
        self.feetCount = feetCount

    }
    
    func voice() {
        print("Each animal has its own unique voice")
    }
    
    func produceProduct() {
            // By default, no animal can produce products
            print("\(name) can't produce any product")
        }
}

class Bird: Animal {
    private var wingsCount: UInt
    private var canFly: Bool
    
    init(name: String, feetCount: UInt = 2, wingsCount: UInt = 2, canFly: Bool = true) {
        self.wingsCount = wingsCount
        self.canFly = canFly
        super.init(name: name, feetCount: feetCount)
       
    }
    
    func fly() {
        if wingsCount >= 2 && canFly {
            print("\(name) is flying")
        } else if wingsCount >= 2 && !canFly {
            print("\(name) is a flightless bird")
        }
    }
}


class Cat: Animal {
    override func voice() {
        print("The cat sounds meows, purrs, and growls")
    }
}


class Dog: Animal {
    override func voice() {
        print("The dog sounds woofs, barks, and howls")
    }
}

class Cow: Animal {
    override func voice() {
        print("The cow sounds moo")
    }
    
    override func produceProduct() {
        // Cow can produce milk
        print("\(name) is being milked...")
    }
}

class Parrot: Bird {
    override func voice() {
        print("The parrot is chirping")
    }
}

class Rooster: Bird {
    override func voice() {
        print("The rooster crowing cock-a-doodle-doo")
    }
}

class Hen: Bird {
    override func voice() {
        print("The hen sounds cluck-cluck-cluck")
    }
    
    override func produceProduct() {
        // Hen can produce eggs
        print("\(name) can't produce eggs.")
    }
}


// Creating instances of classes

let newCat = Cat(name: "Mars")
let newDog = Dog(name: "Cross")
let newCow = Cow(name: "Buronka")
let newParrot = Parrot(name: "Jako")
let newRooster = Rooster(name: "White")
let newHen = Hen(name: "Brownie")


// External functions

func getMilk(from animal: Animal) {
    animal.produceProduct()
}

func getEgg(from animal: Animal) {
    animal.produceProduct()
}




// External functions using as?

//func getMilk(from animal: Animal) {
//    if let cow = animal as? Cow {
//        print("\(cow.name) is being milked...")
//    } else {
//        print("\(animal.name) can't produce any product")
//    }
//}
//
//func getEgg(from animal: Animal) {
//    if let hen = animal as? Hen {
//        print("Collecting of eggs laid by \(hen.name)...")
//    } else {
//        print("\(animal.name) can't produce any product")
//    }
//}
