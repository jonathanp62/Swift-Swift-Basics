//
//  Application.swift
//  Learning
//
//  Created by Jonathan Parker on 11/26/26.
//

import Foundation

/// The application module
@main
enum Application {
    /// The run function
    static func main() {
        print("Hello, World!")
        print(hello(person: "Jonathan"))
        
        Variables.run()
        
        arrays()
        dictionaries()
    }
    
    
    /// The hello function
    /// - Parameter person: The name of the person
    /// - Returns: A personalized greeting string
    static func hello(person: String) -> String {
        return "Hello, \(person)!"
    }

    /// The arrays function
    static func arrays() {
        var fruits = ["strawberries", "limes", "tangerines"]

        // Replace 'limes' with 'grapes'
        fruits[1] = "grapes"

        // Add elements
        fruits.append("blueberries")
        fruits.append("limes")
        
        print(fruits)
    }

    /// The dictionaries function
    static func dictionaries() {
        var occupations = [
            "Malcolm": "Captain",
            "Kaylee": "Mechanic",
         ]

        // Add a new entry
        occupations["Jayne"] = "Public Relations"

        print(occupations)
    }
}
