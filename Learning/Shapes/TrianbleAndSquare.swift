//
//  TrianbleAndSquare.swift
//  Learning
//
//  Created by Jonathan Parker on 11/28/26.
//

import Foundation

/// The triangle and square class
class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    /// The initializer
    /// - Parameters:
    ///   - size: The size (length) of each side
    ///   - name: The name of this composite shape
    init(size: Double, name: String) {
        self.square = Square(sideLength: size, name: name)
        self.triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
