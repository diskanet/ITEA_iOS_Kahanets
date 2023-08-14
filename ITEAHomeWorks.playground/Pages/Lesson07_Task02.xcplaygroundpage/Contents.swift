//
// Home Work Lesson 7. Create classes, Task 02
//
// Created by Dima Kahanets
//


// Прописати структуру класів
//
//Класи: Баскетбол, футбол, теніс, пінг понг, волейбол, шахи, покер, фехтування
//Функції: 3+
//Атрибути: 5+
//Зовнішні функції: startGame(team: [Athlete], with: Equipment)


enum Equipment: String {
    case football = "ball and nets"
    case basketball = "ball and baskets"
    case tennis = "ball and rackets"
    case pingPong = "ping pong ball and paddles"
    case volleyball = "ball and net"
    case chess = "chess set"
    case poker = "deck of cards"
    case fencing = "fencing sword"
}

enum Experience {
    case newbie
    case beginner
    case intermediate
    case advanced
    case professional
}


// The "Athlete" class is used as the base class for all athletes

class Athlete {
    private var name: String
    private var age: UInt
    private var country: String
    private var experienceLevel: Experience
    
    init(name: String, age: UInt, country: String = "Unknown", experienceLevel: Experience = .beginner) {
        self.name = name
        self.age = age
        self.country = country
        self.experienceLevel = experienceLevel
    }
    
    func getName() -> String {
        // returns the value of the "name" private property
        return name
    }
    
    func getAge() -> UInt {
        // returns the value of the "age" private property
        return age
    }
    
    func getCountry() -> String {
        // returns the value of the "country" private property
        return country
    }
    
    func getExperience() -> Experience {
        // returns the value of the "experienceLevel" private property
        return experienceLevel
    }
    
    
    
    func birthday() {
        age += 1
    }
    
    func train() {
        switch experienceLevel {
        case .newbie:
            experienceLevel = .beginner
        case .beginner:
            experienceLevel = .intermediate
        case .intermediate:
            experienceLevel = .advanced
        case .advanced:
            experienceLevel = .professional
        case .professional:
            experienceLevel = .professional
            print("You have reached the highest level")
        }
    }
}


// The "Game" class is used as the base for all types of games

class Game {
    let name: String
    let playersCount: UInt
    var durationMinutes: UInt
    let goal: String
    
    init(name: String, playersCount: UInt, durationMinutes: UInt, goal: String = "Play to win") {
        self.name = name
        self.playersCount = playersCount
        self.durationMinutes = durationMinutes
        self.goal = goal
    }
    
    
    func startGame() {
        print("The \(name) game has started")
    }
    
    func startBreak() {
        print("The break has started")
    }
    
    func endBreak() {
        print("The break has ended")
    }
    
    func endGame() {
        print("The \(name) game has ended")
    }
}

class Basketball: Game {
    init() {
        super.init(
            name: "Basketball",
            playersCount: 10,
            durationMinutes: 48,
            goal: "Score as many points as possible by shooting the ball into the opponent's basket"
        )
    }
}

class Football: Game {
    init() {
        super.init(
            name: "Football",
            playersCount: 22,
            durationMinutes: 90,
            goal: "Score goals by getting the ball into the opponent's net while preventing them from doing the same"
        )
    }
}

class Tennis: Game {
    init() {
        super.init(
            name: "Tennis",
            playersCount: 2,
            durationMinutes: 240,
            goal: "Defeat the opponent by hitting the ball in a way that it lands within the opponent's court"
        )
    }
}

class PingPong: Game {
    init() {
        super.init(
            name: "Ping Pong",
            playersCount: 2,
            durationMinutes: 6,
            goal: "Score points by hitting the ball onto the opponent's table in such a way that they cannot return it"
        )
    }
}

class Volleyball: Game {
    init() {
        super.init(
            name: "Volleyball",
            playersCount: 12,
            durationMinutes: 90,
            goal: "Win points by hitting the ball over the net into the opponent's court, preventing them from returning it effectively"
        )
    }
}

class Chess: Game {
    init() {
        super.init(
            name: "Chess",
            playersCount: 2,
            durationMinutes: 240,
            goal: "Checkmate the opponent's king using strategic moves of the pieces"
        )
    }
}

class Poker: Game {
    init() {
        super.init(
            name: "Poker",
            playersCount: 4,
            durationMinutes: 240,
            goal: "Form the best possible hand among the players or to force them to fold by betting strategically"
        )
    }
}

class Fencing: Game {
    init() {
        super.init(
            name: "Fencing",
            playersCount: 2,
            durationMinutes: 9,
            goal: "score \"touch\" points on the opponent using a sword or foil while adhering to rules and strategy"
        )
    }
}


// Creating instances of Athlete class

let dima = Athlete(name: "Dima", age: 28, country: "Ukraine", experienceLevel: .advanced)
let oleg = Athlete(name: "Oleg", age: 31, country: "Ukraine", experienceLevel: .intermediate)
let kaleo = Athlete(name: "Kaleo", age: 18, country: "Iceland", experienceLevel: .beginner)
let george = Athlete(name: "George", age: 37, country: "Australia", experienceLevel: .professional)
let johnny = Athlete(name: "Johnny", age: 15, country: "USA", experienceLevel: .newbie)
let vadym = Athlete(name: "Vadym", age: 27, country: "Ukraine", experienceLevel: .advanced)
let olena = Athlete(name: "Olena", age: 30, country: "Ukraine", experienceLevel: .professional)
let victoria = Athlete(name: "Victoria", age: 17, country: "Spain", experienceLevel: .beginner)

let team: [Athlete] = [dima, oleg]


// Creating instances of Game class

let basketball = Basketball()
let football = Football()
let tennis = Tennis()
let pingPong = PingPong()
let volleyball = Volleyball()
let chess = Chess()
let poker = Poker()
let fencing = Fencing()


// External function

func startGame(game: Game, team: [Athlete], with: Equipment) {
    let message: String
    let equipmentDescription = with.rawValue
    // instead of accessing the private(name, age, ...) properties, we use the public(getName, getAge(), ...) methods to get the properties
    let playerList = team.enumerated().map { (index, athlete) in
        "\(index + 1): \(athlete.getName()), \(athlete.getAge()), \(athlete.getExperience()) athlete from \(athlete.getCountry())"
    }.joined(separator: "\n")
    
    if team.count == game.playersCount {
        message = """
               Welcome to an exciting \(game.name) game!
               This game requires \(team.count) players and the following equipment: \(equipmentDescription)
               The game involves:
               \(playerList)
               To win this game, players must: \(game.goal)
               """
    } else {
        message = "\(game.name) requires \(game.playersCount) players"
    }
    
    print(message)
}

startGame(game: fencing, team: team, with: .fencing)
