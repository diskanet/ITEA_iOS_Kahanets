import UIKit


//
// Home Work Lesson 3. Create 4 functions
//
// Created by Dima Kahanets
//

//
// 1. iAmOlder - приймає 2 числа, перевіряє хто старший та повертає bool
//

func iAmOlder(firstAge: Int, secondAge: Int) -> Bool {
    
    if firstAge > secondAge {
        print("A person who is \(firstAge) is older than a person who is \(secondAge)")
        return true
    } else if firstAge < secondAge {
        print("A person who is \(secondAge) is older than a person who is \(firstAge)")
        return true
    } else {
        print("Both person are the same age")
        return false
    }
    
    
}

iAmOlder(firstAge: 30, secondAge: 31)

//
// 2. yearOfBirth - приймає 2 числа (ваш вік і поточний рік), обчислює рік народження та виводить у консоль
//

func yearOfBirth(userAge: Int, currentYear: Int) {
    
    let yearOfBirth = currentYear - userAge
    print("You were born in \(yearOfBirth).")
    
}

yearOfBirth(userAge: 28, currentYear: 2023)

//
// 3. onlyEvenNumbers - приймає range чисел та виводить у консоль тільки парні числа
//

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

//
// 4. getSum - приймає 4 числа, з яких перші 2 додає, після чого множить на третє і знаходить залишок від поділу з четвертого числа - виводить у консоль та повертає
//

func getSum(
    firstNum a:Int,
    secondNum b:Int,
    thirdNum c:Int,
    fourthNum d:Int
) -> Int {
    
    let result = (a + b) * c % d
    print(result)
    return result
}

let sumResult = getSum(firstNum: 20, secondNum: 20, thirdNum: 5, fourthNum: 30)
print(sumResult)



