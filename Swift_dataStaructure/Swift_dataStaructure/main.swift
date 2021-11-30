//
//  main.swift
//  Swift_dataStaructure
//
//  Created by Albin Joseph on 24/09/21.
//

import Foundation

let fruits = ["Apple","Orange", "Black Berry", "Avacado", "Rambutan", "Mango"];
let biscuts = ["Parle-G", "Britania", "Oreo", "Arowroot", "Tiger"]

//Big O(n)
findAvacdo(fruits);

//Big O(1)
logFirstFruit(fruits)
logFirstTwoFruit(fruits)

//Big O(n^2)
logNestedElement(fruits, biscuts)

//Test Problem 1
let isPresent = checkIdenticalPresent(["q", "a", "r", "t"], ["s", "a", "x"])
print(isPresent)
let isPresent1 = checkIdenticalPresent(["q", "b", "r", "t"], ["s", "a", "x"])
print(isPresent1)

//Test Problem 2
let hasPairSum = hasPairWithSum([1,6,8,9,12,5,7], 12);
print(hasPairSum)
let hasPairSum2 = hasPairWithSum([1,6,8,9,12,5,18], 12);
print(hasPairSum2)

//Differen operations in DataStructure
//1. Insersion
//2. Deletion
//3. Traversal
//4. Searching
//5.Sorting
//6. Access


swiftArrayOperations()

//Data structure by using array
arraActions()

let revesreStr = reverse("Hi, I am Albin Joseph!")
print(revesreStr)
print(reverse2("Hello I am Emmanuel"))

let merged = mergeSortedArray([2,7,9,10],[5,7,9,17])
print(merged)
print(mergeSortedArray([0, 3, 10, 15, 20], [1, 5, 12, 19, 25, 30, 50]))

//Data structure using Linked list
//Please check LinkedList file for getting implementations
let linkedList = LinkedList()
linkedList.append("Apple")
linkedList.append("Orange")
linkedList.prepend("Grape")
linkedList.insert(2, "Avacado")
print(linkedList.remove(2))
print(linkedList)


//Stack implement using Linkedlist
let stack = Stack()
stack.push("Ant")
stack.push("Bird")
stack.push("Cat")
print(stack)
stack.push("Dog")
print(stack)
print(stack.pop())
print(stack.pop())
print(stack.pop())
print(stack.pop())
print(stack.pop())
stack.push("Ant")
print(stack)

let stackArray = StackArray()
stackArray.push("Apple")
stackArray.push("Orange")
stackArray.push("Avacado")
stackArray.push("Abeiu")
print(stackArray.pop())
print(stackArray.pop())

print(jumpingOnClouds(c: [0,1]))

//Algorithms
var algo = AlAlgorithms()
let factorial = algo.getFactorial(5)
print(factorial)
print("nth item of Fibanocci")
print(algo.fibanocii(6))

print("Fibonocci Series")
algo.getFibnociiSeries(10)

let str = "Albin Joseph"
var characters = Array(str)
algo.reverseString(&characters)

print(algo.quickSort([1,7,9,5,6,2,4]))
var arr = [1,7,9,5,6,2,4]

print("Bubble Sort : " , bubleSort(&arr))

print("Selection Sort : " , selectionSort(&arr))

let mergeAlgo = MergeSort.init()
let sortedArray = mergeAlgo.mergeSort([90,2,5,7,89,45,20, 50,1])
print("Merge sort: ", sortedArray)
