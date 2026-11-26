//
//  variables.swift
//  Learning
//
//  Created by Jonathan Parker on 11/26/26.
//

import Foundation

enum variables {
    /// The run method
    static func run() {
        // Variables - Here myVariable is declared but not initialized
        
        var myVariable: Int
        
        myVariable = 94

        // Constants
        
        let implicitDouble = 70.0
        let explicitDouble: Double = 70

        print("Implicit Double: \(implicitDouble)")
        print("Explicit Double: \(explicitDouble)")

        let label = "The width is "
        let width = myVariable
        let widthLabel = label + String(width)

        printWidth(value: widthLabel)
        
        applesAndOranges()
    }
    
    
    /// Print the value as a width
    /// - Parameter value: The width as a string
    static func printWidth(value: String) {
        print(value)
    }

    
    /// The apples and oranges function
    static func applesAndOranges() {
        let apples = 3
        let oranges = 5
        let appleSummary = "I have \(apples) apples."
        let fruitSummary = "I have \(apples + oranges) pieces of fruit."

        print(appleSummary)
        print(fruitSummary)
    }
}
