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
