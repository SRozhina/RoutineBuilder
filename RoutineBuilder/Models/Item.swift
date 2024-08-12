//
//  Item.swift
//  RoutineBuilder
//
//  Created by Sofia Vykhrystyuk on 19/06/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var title: String

    init(title: String) {
        self.title = title
    }
}
