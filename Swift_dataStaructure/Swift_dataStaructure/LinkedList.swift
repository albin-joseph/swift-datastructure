//
//  LinkedList.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 15/10/21.
//

import Foundation

class Node{
    var value:String
    var next:Node?
    init(_ value:String) {
        self.value = value
    }
}

class LinkedList{
    var head:Node?
    var tail:Node?
    
    var isEmpty:Bool{
        return head == nil
    }
    
    var first:Node?{
        return head
    }
    
    var last:Node?{
        return tail
    }
    
    func append(_ value:String) -> () {
        let newNode = Node.init(value)
        if let _tail = tail{
            _tail.next = newNode
        }else{
            head = newNode
        }
        tail = newNode
    }
    
    func prepend(_ value:String) -> () {
        let newNode = Node.init(value)
        if let _head = head{
            newNode.next = _head
        }else{
            tail = newNode
        }
        head = newNode
    }
    
    func insert(_ index:Int, _ value:String) -> () {
        if isEmpty && index > 0{
          print("Can't insert value")
          return
        }
        if(index == 0){
            prepend(value)
            return
        }
        let newNode = Node.init(value)
        var traverseIndex = 0
        var node = head
        while(traverseIndex < index-1){
            node = node!.next
            traverseIndex += 1
        }
        let tempNode = node!.next
        node!.next = newNode
        newNode.next = tempNode
    }
    
    func remove(_ index:Int) -> String {
        if isEmpty{
            return "Linked list is empty"
        }
        var traverseIndex = 0
        var node = head
        var prevNode = head
        while(traverseIndex <= index-1){
            prevNode = node
            node = node!.next
            traverseIndex += 1
        }
        let tempNode = node!.next
        prevNode?.next = tempNode
        
        return node!.value
    }
}

extension LinkedList:CustomStringConvertible{
    var description: String {
        var text = "["
        var node = head
        while(node != nil){
            text += "\(node!.value)"
            node = node!.next
            if(node != nil){
                text += ", "
            }
        }
        return text + "]"
    }
}

