//
//  Dictionaries.swift
//  Learning
//
//  Created by Jonathan Parker on 11/26/26.
//

import Foundation

/// The dictionaries module
enum Dictionaries {
    /// The run function
    static func run() {
        var occupations = [
            "Malcolm": "Captain",
            "Kaylee": "Mechanic",
         ]

        // Add a new entry
        occupations["Jayne"] = "Public Relations"

        print(occupations)
    }
}
