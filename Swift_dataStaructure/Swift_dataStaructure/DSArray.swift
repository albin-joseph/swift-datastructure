//
//  DSArray.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 29/09/21.
//

import Foundation

/**
 ARRAY
 Array is a type of data structure. In this values are saved in a equential order
 */

func swiftArrayOperations()->(){
    var fruits:[String] = ["apple","black berry", "orange"]
    //Push O(1)
    fruits.append("Abieu")
    print(fruits)
    fruits.removeLast()
    print(fruits)
}
