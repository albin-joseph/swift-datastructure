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
    @discardableResult mutating func pop()->String?{
        guard let element = data[length-1] else { return nil }
        self.length -= 1
        data.removeValue(forKey: length)
        return element
    }
    
    //Delete an item at index
    
    @discardableResult mutating func delete(_ index:Int)->String?{
        guard let itemToDelete = data[index] else { return nil }
        shiftIndices(index)
        return itemToDelete
    }
    
     mutating func shiftIndices(_ fromIndex:Int)->(){
        for i in fromIndex ..< length-1{
            data[i] = data[i+1]
        }
         self.pop()
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
    array.push("Jose")
    array.push("Lissy")
    array.delete(1)
    print(array)
}

