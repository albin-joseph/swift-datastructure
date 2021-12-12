//
//  StringPuzzles.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 11/12/21.
//

import Foundation

func isAPalindrome(_ str:String) -> Bool{
    let maxIndex = str.count
    let charArray = Array(str)
    var isPalidrome = false
    for i in 0...(maxIndex/2){
        if(charArray[i] == charArray[(maxIndex-1)-i]){
            isPalidrome = true
        }else{
            return false
        }
    }
    return isPalidrome
}

func getFirstRepeatedChar(_ str:String) -> String {
    var hashMap:[Character:Bool] = [:]
    for element in str{
        if let exist = hashMap[element], exist{
            return String(element)
        }else{
            hashMap[element] = true
        }
    }
    return "No item repeating"
}
