//
//  GetThePairsOfTwoNumberSum.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 11/12/21.
//

import Foundation

func getNumberPairs(_ array:[Int], _ sum:Int) -> [[Int]] {
    var resultArray:[[Int]] = []
    var hashMap:[Int:Bool] = [:]
    
    for number in array{
        let match = sum - number
        if let exist = hashMap[match], exist{
            resultArray.append([number, match])
        }else{
            hashMap[number] = true
        }
        print(number)
    }
    
    return resultArray
}

func getConsecutiveNumberPairs(_ array:[Int]) -> [[Int]] {
    print(array)
    var resultArray:[[Int]] = []
    var hashMap:[Int:Bool]=[:]
    for number in array {
        if(array.contains(number-1)){
           hashMap[number] = false
            if let exist = hashMap[number-2], exist{
              continue
            }else{
                hashMap[number-1] = true
            }
        }else{
            hashMap[number] = true
        }
    }
    
    for(key, value) in hashMap{
        if(value){
            var inValue = key
            var pair:[Int] = [inValue]
            while(hashMap.keys.contains(inValue + 1)){
                inValue += 1
                pair.append(inValue)
            }
            resultArray.append(pair)
        }
    }
    
    return resultArray
}
