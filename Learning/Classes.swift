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
        shape()
        namedShape()
        square()
        circle()
        triangle()
        tringleAndSquare()
    }
    
    /// The shape function
    static func shape() {
        let shape = Shape()
        
        shape.numberOfSides = 7
        
        print(shape.simpleDescription())
    }
    
    /// The named shape function
    static func namedShape() {
        let namedShape = NamedShape(name: "Rectangle")
        
        namedShape.numberOfSides = 4
        
        print("\(namedShape.name): \(namedShape.simpleDescription())")
    }
    
    /// The square function
    static func square() {
        let square = Square(sideLength: 4.0, name: "Square")
        
        print("\(square.simpleDescription()) and an area of \(square.area())")
    }
    
    /// The circle function
    static func circle() {
        let circle = Circle(radius: 2.223, name: "Circle")
        
        print("\(circle.simpleDescription()) and an area of \(circle.area())")
    }
    
    /// The triangle
    static func triangle() {
        let triangle = EquilateralTriangle(sideLength: 3.1, name: "A triangle")
        
        print("\(triangle.name) with perimeter \(triangle.perimeter)")  // 9.3

        triangle.perimeter = 9.9
        
        print("\(triangle.name) now has a side length of \(triangle.sideLength)")  // 3.3000000000000003
    }
    
    /// The triangle and square
    static func tringleAndSquare() {
        let triangleAndSquare = TriangleAndSquare(size: 10, name: "Another test shape")
        
        print(triangleAndSquare.square.sideLength)      // 10.0
        print(triangleAndSquare.triangle.sideLength)    // 10.0

        // Change the internal square to a new, larger one
        
        triangleAndSquare.square = Square(sideLength: 50, name: "Larger square")
        
        print("The triangle now has a side length of \(triangleAndSquare.triangle.sideLength)")    // 50.0
    }
}
