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


struct AJArray{
    var length:Int
    var data:[Int:String]
    init(){
        length = 0
        data = [:]
    }
    
    @discardableResult mutating func push(_ newElement:String)->Int{
        self.data[length] = newElement
        self.length += 1
        return self.length
    }
}

func arraActions(){
    var array = AJArray.init()
    array.push("Albin")
    array.push("Anu")
    print(array)
}

