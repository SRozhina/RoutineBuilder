//
//  testModels.swift
//  RoutineBuilder
//
//  Created by Sofia Vykhrystyuk on 04/07/2024.
//

let testItems = [
    Item(title: "Item 1"),
    Item(title: "Item 2"),
    Item(title: "Item 3"),
    Item(title: "Item 4"),
    Item(title: "Item 5"),
    Item(title: "Item 6"),
    Item(title: "Item 7"),
    Item(title: "Item 8")
]

let testItemGroups = [
    ItemsGroup(items: testItems, header: .init(title: "Section 1", isExpanded: true)),
    ItemsGroup(items: testItems, header: .init(title: "Section 2", isExpanded: false)),
    ItemsGroup(items: testItems, header: .init(title: "Section 3", isExpanded: true))
]
