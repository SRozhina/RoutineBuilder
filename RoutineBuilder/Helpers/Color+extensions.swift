//
//  Color+extensions.swift
//  RoutineBuilder
//
//  Created by Sofia Vykhrystyuk on 04/07/2024.
//

import SwiftUI

extension Color {
    static let basicBackground = Color("navBar")

    static let itemBackground1 = Color("item1")
    static let itemBackground2 = Color("item2")
    static let itemBackground3 = Color("item3")

    static let colorsMap = [
        BackgroundColor.purple: itemBackground1,
        .green: itemBackground2,
        .yellow: itemBackground3
    ]
}

enum BackgroundColor: CaseIterable, Codable {
    case purple
    case green
    case yellow

    var color: Color {
        Color.colorsMap[self] ?? .itemBackground1
    }
}
