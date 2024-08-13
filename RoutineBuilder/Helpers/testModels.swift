//
//  testModels.swift
//  RoutineBuilder
//
//  Created by Sofia Vykhrystyuk on 04/07/2024.
//

let testItems = [
    Routine(title: "Item 1"),
    Routine(title: "Item 2"),
    Routine(title: "Item 3"),
    Routine(title: "Item 4"),
    Routine(title: "Item 5"),
    Routine(title: "Item 6"),
    Routine(title: "Item 7"),
    Routine(title: "Item 8")
]

let testItemGroups = [
    RoutinesGroup(routines: testItems, header: .init(title: "Section 1", isExpanded: true)),
    RoutinesGroup(routines: testItems, header: .init(title: "Section 2", isExpanded: false)),
    RoutinesGroup(routines: testItems, header: .init(title: "Section 3", isExpanded: true))
]
