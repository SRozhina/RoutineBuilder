//
//  ContentView.swift
//  RoutineBuilder
//
//  Created by Sofia Vykhrystyuk on 19/06/2024.
//

import SwiftData
import SwiftUI

struct RoutinesMainView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Routine]

    private let listCornerRadius: CGFloat = 30

    @State private var staticItems = testItemGroups

    var body: some View {
        NavigationStack {
            ZStack(alignment: .topLeading) {
                RoutinesListView(routinesGroups: $staticItems)
                    .ignoresSafeArea(.all, edges: .vertical)

                BlurView(blurEffectStyle: .regular)
                    .frame(height: 120)
                    .ignoresSafeArea(.all, edges: .vertical)

                HStack {
                    Text("routines")
                        .font(.title)
                        .fontWeight(.medium)
                        .padding([.bottom, .leading], 20)
                        .padding(.top, 10)
                }
            }
        }
    }
}

#Preview {
    RoutinesMainView()
        .modelContainer(for: Routine.self, inMemory: true)
}
