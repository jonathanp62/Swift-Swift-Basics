//
//  main.swift
//  Learning
//
//  Created by Jonathan Parker on 11/26/26.
//

import Foundation

print("Hello, World!")
print(hello(person: "Jonathan"))

variables.run()

// Arrays and dictionaries

arrays()
dictionaries()

// Control flow

// Functions

func hello(person: String) -> String {
    return "Hello, \(person)!"
}

func arrays() {
    var fruits = ["strawberries", "limes", "tangerines"]

    // Replace 'limes' with 'grapes'
    fruits[1] = "grapes"

    // Add elements
    fruits.append("blueberries")
    fruits.append("limes")
    
    print(fruits)
}

func dictionaries() {
    var occupations = [
        "Malcolm": "Captain",
        "Kaylee": "Mechanic",
     ]

    // Add a new entry
    occupations["Jayne"] = "Public Relations"

    print(occupations)
}
