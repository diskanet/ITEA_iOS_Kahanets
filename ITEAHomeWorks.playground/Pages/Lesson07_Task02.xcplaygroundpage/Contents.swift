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
    private var firstName: String
    private var lastName: String
    private var age: UInt
    private var country: String
    private var experienceLevel: Experience
    
    init(
        firstName: String,
        lastName: String,
        age: UInt,
        country: String,
        experienceLevel: Experience
    ) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.country = country
        self.experienceLevel = experienceLevel
    }
    
    func getFullName() -> String {
        // returns the value of the "firstName + lastName" private property
        return "\(firstName) \(lastName)"
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


// The "Sport" class is used as the base for all types of sport

class Sport {
    let name: String
    let playersCount: UInt
    let durationMinutes: UInt
    let team: [Athlete]
    let goal: String
    
    init(name: String, playersCount: UInt, durationMinutes: UInt, team: [Athlete], goal: String = "Play to win") {
        self.name = name
        self.playersCount = playersCount
        self.durationMinutes = durationMinutes
        self.team = team
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


// The "TeamSport" class is used as the base class for all team sports

class TeamSport: Sport {
    let teamName: String
    let playersInTeam: UInt
    
    init(teamName: String, playersInTeam: UInt, name: String, playersCount: UInt, durationMinutes: UInt, team: [Athlete], goal: String ) {
        self.teamName = teamName
        self.playersInTeam = playersInTeam
        super.init(
            name: name,
            playersCount: playersCount,
            durationMinutes: durationMinutes,
            team: team,
            goal: "Score as many points as possible by shooting the ball into the opponent's basket"
        )
    }
}

class Basketball: TeamSport {
    init(teamName: String, playersInTeam: UInt, team: [Athlete]) {
        super.init(
            teamName: teamName,
            playersInTeam: 5,
            name: "Basketball",
            playersCount: 10,
            durationMinutes: 48,
            team: team,
            goal: "Score as many points as possible by shooting the ball into the opponent's basket"
        )
    }
}

class Football: TeamSport {
    init(teamName: String, playersInTeam: UInt, team: [Athlete]) {
        super.init(
            teamName: teamName,
            playersInTeam: 11,
            name: "Football",
            playersCount: 22,
            durationMinutes: 90,
            team: team,
            goal: "Score goals by getting the ball into the opponent's net while preventing them from doing the same"
        )
    }
}

class Tennis: Sport {
    init(team: [Athlete]) {
        super.init(
            name: "Tennis",
            playersCount: 2,
            durationMinutes: 240,
            team: team,
            goal: "Defeat the opponent by hitting the ball in a way that it lands within the opponent's court"
        )
    }
}

class PingPong: Sport {
    init(team: [Athlete]) {
        super.init(
            name: "Ping Pong",
            playersCount: 2,
            durationMinutes: 6,
            team: team,
            goal: "Score points by hitting the ball onto the opponent's table in such a way that they cannot return it"
        )
    }
}

class Volleyball: TeamSport {
    init(teamName: String, playersInTeam: UInt, team: [Athlete]) {
        super.init(
            teamName: teamName,
            playersInTeam: 6,
            name: "Volleyball",
            playersCount: 12,
            durationMinutes: 90,
            team: team,
            goal: "Win points by hitting the ball over the net into the opponent's court, preventing them from returning it effectively"
        )
    }
}

class Chess: Sport {
    init(team: [Athlete]) {
        super.init(
            name: "Chess",
            playersCount: 2,
            durationMinutes: 240,
            team: team,
            goal: "Checkmate the opponent's king using strategic moves of the pieces"
        )
    }
}

class Poker: Sport {
    init(team: [Athlete]) {
        super.init(
            name: "Poker",
            playersCount: 4,
            durationMinutes: 240,
            team: team,
            goal: "Form the best possible hand among the players or to force them to fold by betting strategically"
        )
    }
}

class Fencing: Sport {
    init(team: [Athlete]) {
        super.init(
            name: "Fencing",
            playersCount: 2,
            durationMinutes: 9,
            team: team,
            goal: "score \"touch\" points on the opponent using a sword or foil while adhering to rules and strategy"
        )
    }
}


// The "Basketball" class is used as the base class to create a basketball team. In this casy "Chicago Bulls" team

class ChicagoBulls: Basketball {
    init() {
        super.init(
            teamName: "Chicago Bulls",
            playersInTeam: 5,
            team: [
                Athlete(firstName: "Michael", lastName: "Jordan", age: 58, country: "United States", experienceLevel: .professional),
                Athlete(firstName: "Scottie", lastName: "Pippen", age: 56, country: "United States", experienceLevel: .professional),
                Athlete(firstName: "Dennis", lastName: "Rodman", age: 60, country: "United States", experienceLevel: .professional),
                Athlete(firstName: "Derrick", lastName: "Rose", age: 32, country: "United States", experienceLevel: .advanced),
                Athlete(firstName: "Luol", lastName: "Deng", age: 36, country: "South Sudan", experienceLevel: .intermediate),
                
            ]
        )
    }
}


// Creating instances of "ChicagoBulls" class

let chicagoBulls = ChicagoBulls()


// External function

func startGame(team: [Athlete], with: Equipment) {
    let equipmentDescription = with.rawValue
    // instead of accessing the private(name, age, ...) properties, we use the public(getName, getAge(), ...) methods to get the properties
    let playerList = team.enumerated().map { (index, athlete) in
        "\(index + 1): \(athlete.getFullName()), \(athlete.getAge()) years, \(athlete.getExperience()) athlete from \(athlete.getCountry())"
    }.joined(separator: "\n")
    
    let message: String = """
               Welcome to an exciting game!
               This game requires the following equipment: \(equipmentDescription)
               The game involves:
               \(playerList)
               """
    
    print(message)
}

startGame(team: chicagoBulls.team, with: .basketball)
