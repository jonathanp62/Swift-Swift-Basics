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
    /// The main function
    static func main() {
        print("Hello, World!")
        print(hello(person: "Jonathan"))
        
        Variables.run()
        Arrays.run()
        Dictionaries.run()
        ControlFlow.run()
    }
    
    /// The hello function
    /// - Parameter person: The name of the person
    /// - Returns: A personalized greeting string
    static func hello(person: String) -> String {
        return "Hello, \(person)!"
    }
}
