//
// Home Work Lesson 5. Create 4 functions
//
// Created by Dima Kahanets
//


// 1. onlyThree - приймає рейндж, пробігається по ньому і повертає масив тільки з кратними числами 3

func onlyThree(_ range: ClosedRange<Int>) -> [Int] {
    let multiplesOfThree = range.filter { $0 != 0 && $0 % 3 == 0 }
    
    return multiplesOfThree
}

// Example of a function call:

onlyThree(-9...18)


// 2. printDuplicates - приймає два масиви, виводить у консоль лише числа які є у першому, та другому

// Arrays Variant

func printDuplicates(_ firstArray: [Int], _ secondArray: [Int]) {
    print(firstArray.filter(secondArray.contains))
}

// Example of a function call:

let firstArray = [4, 13, 22, 31, 40, 49, 58, 67, 76, 85, 94]
let secondArray = [1, 4, 8, 12, 13, 23, 40, 55, 85]

printDuplicates(firstArray, secondArray)

// Sets Variant

func printDuplicates(_ firstSet: Set<Int>, _ secondSet: Set<Int>) {
    print(firstSet.intersection(secondSet))
}

// Example of a function call:

let firstSet = [5, 12, 21, 30, 42, 50, 60, 65, 75, 82, 90]
let secondSet = [1, 5, 8, 12, 13, 21, 50, 60, 65, 82]

printDuplicates(firstSet, secondSet)


// 3. symbolCount - приймає строку, рахує скільки яких символів у ній є, повертає результат (тип результату на Ваш розсуд, але я захочу виконати на ньому один із циклів)

func symbolCount(_ str: String) -> [Character: Int] {
    var charCount: [Character: Int] = [:]
    
    str.forEach { char in
        charCount[char] = (charCount[char] ?? 0) + 1
    }
    
    return charCount
}

// Example of a function call:

let result = symbolCount("pneumonoultramicroscopicsilicovolcanoconiosis")


// 4. sameCharacters - приймає дві строки та completion (кложуру), після обробки строк, кложура приймає два набори символів і виводить у консоль тільки ті, що повторюються в обох рядках.

func sameCharacters(_ firstStr: String, _ secondStr: String, by completion: (Set<Character>, Set<Character>) -> Void) {
    let firstStrSet: Set<Character> = Set(firstStr)
    let secondStrSet: Set<Character> = Set(secondStr)
    
    completion(firstStrSet, secondStrSet)
}

// Example of a function call:

let firstStr = "An array stores values of the same type in an ordered list."
let secondStr = "Sets store unique values of the same type in an unordered collection."

let completion: (Set<Character>, Set<Character>) -> Void = { firstStr, secondStr in
    print("Same characters: \(firstStr.intersection(secondStr))")
}

sameCharacters(firstStr, secondStr, by: completion)



