//
//  Classes.swift
//  Learning
//
//  Created by Jonathan Parker on 11/27/26.
//

import Foundation

/// The classes modules
enum Classes {
    /// The run functions
    static func run() {
        let shape = Shape()
        
        shape.numberOfSides = 7
        
        print(shape.simpleDescription())
        
        let namedShape = NamedShape(name: "Rectangle")
        
        namedShape.numberOfSides = 4
        
        print("\(namedShape.name): \(namedShape.simpleDescription())")
        
        let square = Square(sideLength: 4.0, name: "Square")
        
        print("\(square.simpleDescription()) and an area of \(square.area())")
        
        let circle = Circle(radius: 2.223, name: "Circle")
        
        print("\(circle.simpleDescription()) and an area of \(circle.area())")
    }
}
