//
//  Item.swift
//  RoutineBuilder
//
//  Created by Sofia Vykhrystyuk on 19/06/2024.
//

import Foundation
import SwiftData
import SwiftUI

@Model
final class Routine: Identifiable {
    var id = UUID()
    var title: String
    var steps: [String]
    var startTime: String
    var background: BackgroundColor

    var totalTime: String {
        "1:12h"
    }

    internal init(title: String, steps: [String] = ["Step 1", "Step 2", "Step 3"], startTime: String = "8:00") {
        self.title = title
        self.steps = steps
        self.startTime = startTime
        self.background = BackgroundColor.allCases.randomElement()!
    }
}
