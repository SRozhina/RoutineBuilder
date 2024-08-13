//
//  ItemsGroup.swift
//  RoutineBuilder
//
//  Created by Sofia Vykhrystyuk on 08/07/2024.
//

import Foundation

struct RoutinesGroup: Identifiable {
    let id = UUID().uuidString
    var routines: [Routine]
    var header: HeaderViewModel
}
