//
//  Problem1.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 26/09/21.
//

import Foundation

// Given 2 arrays, create a function that let's a user know (true/false) whether these two arrays contain any common items
//For Example:
//const array1 = ['a', 'b', 'c', 'x'];//const array2 = ['z', 'y', 'i'];
//should return false.
//-----------
//const array1 = ['a', 'b', 'c', 'x'];//const array2 = ['z', 'y', 'x'];
//should return true.

// 2 parameters - arrays - no size limit
// return true or false

func checkIdenticalPresent(_ array1:[String], _ array2:[String]) -> Bool{
    if array1.isEmpty || array2.isEmpty {
        return false
    }else{
        var isPresent = false
        for item in array1 {
            if array2.contains(item){
                isPresent = true
                break;
            }
        }
        return isPresent
    }
}
