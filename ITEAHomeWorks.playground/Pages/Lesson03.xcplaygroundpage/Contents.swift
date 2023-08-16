//
// Home Work Lesson 3. Create 4 functions
//
// Created by Dima Kahanets
//

import UIKit

// 1. iAmOlder - приймає 2 числа, перевіряє хто старший та повертає bool

func iAmOlder(firstAge: Int, secondAge: Int) -> Bool {
    
    if firstAge > secondAge {
        print("A person who is \(firstAge) is older than a person who is \(secondAge)")
        return true
    } else if firstAge < secondAge {
        print("A person who is \(secondAge) is older than a person who is \(firstAge)")
        return false
    } else {
        print("Both person are the same age")
        return false
    }
    
}

let amIOlder = iAmOlder(firstAge: 25, secondAge: 30)


// 2. yearOfBirth - приймає 2 числа (ваш вік і поточний рік), обчислює рік народження та виводить у консоль

func yearOfBirth(yourAge: Int, currentYear: Int) {
    
    let yearOfBirth = currentYear - yourAge
    print("You were born in \(yearOfBirth).")
    
}

yearOfBirth(yourAge: 28, currentYear: 2023)


// 3. onlyEvenNumbers - приймає range чисел та виводить у консоль тільки парні числа

// Variant 1

func onlyEvenNumbers(_ range: ClosedRange<Int>) {
    
    for number in range {
        if number % 2 == 0 {
            print(number)
        }
    }
    
}

// Variant 2

func onlyEvenNumbers(range: ClosedRange<Int>) {
    
    for number in range where number.isMultiple(of: 2) {
        print(number)
    }
    
}

onlyEvenNumbers(4...13)

onlyEvenNumbers(range: 4...13)


// 4. getSum - приймає 4 числа, з яких перші 2 додає, після чого множить на третє і знаходить залишок від поділу з четвертого числа - виводить у консоль та повертає

func getSum(
    firstNum: Int,
    secondNum: Int,
    thirdNum: Int,
    fourthNum: Int
) -> Int {
    
    let result = (firstNum + secondNum) * thirdNum % fourthNum
    print(result)
    return result
    
}

let sumResult = getSum(firstNum: 30, secondNum: 20, thirdNum: 5, fourthNum: 30)
print("The remainder of the division is \(sumResult)")




