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
    let id = UUID()
    let title: String
    let steps: [String]
    let startTime: String
    let background: BackgroundColor

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
