//
//  RoutineBuilderApp.swift
//  RoutineBuilder
//
//  Created by Sofia Vykhrystyuk on 19/06/2024.
//

import SwiftData
import SwiftUI

@main
struct RoutineBuilderApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Routine.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            RoutinesMainView()
        }
        .modelContainer(sharedModelContainer)
    }
}
