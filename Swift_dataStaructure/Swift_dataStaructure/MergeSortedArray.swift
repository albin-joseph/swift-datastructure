//
//  MergeSortedArray.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 15/10/21.
//

import Foundation

func mergeSortedArray(_ array1:[Int], _ array2:[Int]) -> [Int] {
    var sortedArray = [Int]()
    if(array1.count == 0){
        return array2
    }
    if(array2.count == 0){
        return array1
    }
    var array1Item:Int? = array1[0]
    var array2Item:Int? = array2[0]
    var i = 1
    var j = 1
    while (array1Item != nil || array2Item != nil) {
        if(array1Item == nil){
            sortedArray.append(array2Item!)
            if(j<array2.count){
                array2Item = array2[j]
                j+=1
            }else{
                array2Item = nil
            }
            continue
        }
        if(array2Item == nil){
            sortedArray.append(array1Item!)
            if(i<array1.count){
                array1Item = array1[i]
                i+=1
            }else{
                array1Item = nil
            }
            continue
        }
        if(array1Item! <= array2Item!){
            sortedArray.append(array1Item!)
            if(i<array1.count){
                array1Item = array1[i]
                i+=1
            }else{
                array1Item = nil
            }
        }else{
            sortedArray.append(array2Item!)
            if(j<array2.count){
                array2Item = array2[j]
                j+=1
            }else{
              array2Item = nil
            }
        }
    }
    return sortedArray
}
