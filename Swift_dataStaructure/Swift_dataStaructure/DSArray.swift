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
    
    //new item add to an array ds
    @discardableResult mutating func push(_ newElement:String)->Int{
        self.data[length] = newElement
        self.length += 1
        return self.length
    }
    
    //get an item from the array
    
    func getItem(_ index:Int)->String{
        guard let element = data[index] else { return "Array is empty" }
        return element
    }
    
    //Pop an item from an array
    mutating func pop()->String?{
        guard let element = data[length-1] else { return nil }
        self.length -= 1
        data.removeValue(forKey: length)
        return element
    }
}

func arraActions(){
    var array = AJArray.init()
    print(array.getItem(0))
    array.push("Albin")
    array.push("Anu")
    print(array)
    print(array.getItem(1))
    array.push("Emmanuel")
    print(array.pop() ?? "empty")
    print(array)
}

