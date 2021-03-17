//
//  main.swift
//  L2_VCherepanova
//
//  Created by Виктория Черепанова on 12.03.2021.
//

import Foundation


//1. Написать функцию, которая определяет, четное число или нет.

func isEven(number: Int) -> Bool {
     number % 2 == 0
}

let number: Int = 2

if isEven(number: number) {
    print ("\(number) — это чётное число")
} else {
    print ("\(number) — это нечётное число")
}

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func isSafeDivide(dividend: Int, divider: Int) -> Bool {
    return dividend % divider == 0
}

let number1: Int = 47
let number2: Int = 3

if isSafeDivide(dividend: number1, divider: number2) {
    print ("Число \(number1) делится на \(number2) без остатка")
} else {
    print ("Число \(number1) не делится на \(number2) без остатка")
}

//3. Создать возрастающий массив из 100 чисел.

func createArray(count: Int) -> Array<Int> {
    var createdArray: [Int] = []
    while createdArray.count < counter {
        createdArray.append(createdArray.count + 1)
    }
    return createdArray
}

let counter = 100
var ascArray = createArray(count: counter)
print(ascArray)

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

func isDivide(dividend: Int, divider1: Int, divider2: Int) -> Bool  {
    return dividend % divider1 == 0 || dividend % divider2 != 0
}


func cleanArray(array: Array<Int>) -> Array<Int>{
    let div1: Int = 2
    let div2: Int = 3
    let filteredArray = array.filter({$0 % div1 != 0 && $0 % div2 == 0})
    
 return filteredArray
}

ascArray = cleanArray(array: ascArray)
print(ascArray)

//5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.
//Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.

func Fibonaccinator(numbers: Int) -> Array<Int> {
    var fibSequence: [Int] = []
    let maxNumber = numbers
    while fibSequence.count < maxNumber {
        switch fibSequence {
        case []:
            fibSequence.append(0)
        case [0]:
            fibSequence.append(1)
        default:
            fibSequence.append(fibSequence[fibSequence.count - 2]+fibSequence[fibSequence.count - 1])
        }
    }
    return fibSequence
}

let fibArray = Fibonaccinator(numbers: 50)
print(fibArray)

//6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:
//a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
//b. Пусть переменная p изначально равна двум — первому простому числу.
//c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p..
//d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
//e. Повторять шаги c и d, пока возможно.

   
func isSimpleNumber (sequence: Array<Int>, number: Int ) -> Bool {
    let n = number
    var simpleNum = true
    for i in sequence {
        if n % i == 0 {
            simpleNum = false
            break
        }else{
            continue
        }
    }
    return simpleNum
}



func createNatArray (number: Int, max: Int, array: Array<Int>) -> Array<Int> {
    var natArray = array
    var checkNum = startNum
    while natArray.count < 100 {
        if isSimpleNumber(sequence: natArray, number: checkNum) == true {
            natArray.append(checkNum)
            checkNum += 1
        } else {
            checkNum += 1
        }
    }
    return natArray
}


let startArray = [2]
let startNum = startArray.last! + 1
let maxNum = 100
let natNums = createNatArray (number: startNum, max: maxNum, array: startArray)
print(natNums)

