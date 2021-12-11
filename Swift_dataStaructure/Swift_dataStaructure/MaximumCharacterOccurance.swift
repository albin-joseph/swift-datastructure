//
//  MaximumCharacterOccurance.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 11/12/21.
//

import Foundation
//Given a string, find the maximum frequency occur characters

func getMaxFreqChater(_ string:String) -> String {
    let charArray = Array(string)
    var hashMap:[Character:Int] = [:]
    var maxVal = 0
    var charValue:String = ""
    for char in charArray{
        if let freq = hashMap[char] {
            let newfreq = freq + 1
            hashMap[char] = newfreq
            if(maxVal < freq + 1){
                maxVal = newfreq
                charValue = String(char)
            }
        }else{
            hashMap[char] = 1
            if(hashMap.count == 1){
                maxVal = 1
                charValue = String(char)
            }
        }
    }
    return charValue
}
