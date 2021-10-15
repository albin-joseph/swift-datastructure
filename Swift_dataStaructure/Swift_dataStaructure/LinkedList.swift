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
        return head==nil
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

