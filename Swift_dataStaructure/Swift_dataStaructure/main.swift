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
