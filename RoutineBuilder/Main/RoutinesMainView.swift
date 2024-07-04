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
    @Query private var items: [Item]

    private let listCornerRadius: CGFloat = 30

    @State private var staticItems = testItems

    var body: some View {
        NavigationView {
            ZStack {
                Color.basicBackground
                    .ignoresSafeArea(.all, edges: .top)

                VStack(spacing: 0) {
                    HStack {
                        Text("routines")
                            .font(.title)
                            .fontWeight(.semibold)
                            .padding(.vertical, 20)
                    }

                    RoutinesListView(items: $staticItems)
                        .clipShape(.rect(topLeadingRadius: listCornerRadius, topTrailingRadius: listCornerRadius))
                        .shadow(color: .black.opacity(0.2), radius: 10)
                }
                .ignoresSafeArea(.all, edges: .bottom)
            }
        }
    }
}

#Preview {
    RoutinesMainView()
        .modelContainer(for: Item.self, inMemory: true)
}
