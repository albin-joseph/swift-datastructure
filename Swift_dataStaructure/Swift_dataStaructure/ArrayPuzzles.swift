//
//  ArrayPuzzles.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 11/12/21.
//

import Foundation

//Find intersection of Two Arrays

func getIntersectionOfTwoArrays(_ a:[Int], _ b:[Int]) -> [Int] {
    if(a.count > 0 && b.count > 0){
        var resultArray:[Int] = []
        let a1 = a.sorted()
        let b1 = b.sorted()
        var aIndex = 0
        var bIndex = 0
        while aIndex<a1.count, bIndex<b1.count {
            if(a1[aIndex] < b1[bIndex]){
                aIndex += 1
            }else if(a1[aIndex] > b1[bIndex]){
                bIndex += 1
            }else{
                resultArray.append(a1[aIndex])
                aIndex += 1
                bIndex += 1
            }
        }
        return resultArray
    }else{
        return []
    }
}
