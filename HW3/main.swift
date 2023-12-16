//
//  main.swift
//  HW3
//
//  Created by Shakir Kadirov on 16.12.2023.
//

import Foundation

// Task #1

func sorted(_ array:[Int]) ->[Int]{
    guard array.count > 1 else {return array}

    var result = array

    for i in 0..<result.count{
        for j in 0..<(result.count - 1 - i){
            if result [j] > result[j + 1]{
                let temp = result [j]
                result[j] = result[j + 1]
                result[j + 1] = temp
            }
        }
    }
    return result
}


let unsortedArray = [5, 2, 9, 1, 5, 6]
let sortedArray = sorted(unsortedArray)
print("Отсортированный массив: \(sortedArray)")

// Task #2

func isPalindrome(str: String) ->Bool{
    let formatting = str.lowercased().replacingOccurrences(of: " ", with: "")
    
    if  formatting == String(formatting.reversed()){
        return true
    }else{
        return false
    }
}

let chek = isPalindrome(str: "hamah")
print(chek)


// Task #3

func sumArray(arr: [Int]) -> Int{
    return arr.reduce(0, +)
}
print(sumArray(arr: [1,2,3,4]))

// Task #4

func converted(celsius:Double) -> Double{
    let fahrenheit = (celsius * 9.0/5.0) + 32.0
    return fahrenheit
}

print(converted(celsius: 34.12))
