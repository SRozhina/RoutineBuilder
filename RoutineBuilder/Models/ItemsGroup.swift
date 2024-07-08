//
//  ItemsGroup.swift
//  RoutineBuilder
//
//  Created by Sofia Vykhrystyuk on 08/07/2024.
//

import Foundation

struct ItemsGroup: Identifiable {
    let id = UUID().uuidString
    var items: [Item]
    var header: HeaderViewModel
}
