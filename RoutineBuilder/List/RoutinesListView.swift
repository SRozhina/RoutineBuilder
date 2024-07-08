//
//  RoutinesListView.swift
//  RoutineBuilder
//
//  Created by Sofia Vykhrystyuk on 04/07/2024.
//

import SwiftUI

struct RoutinesListView: View {
    @Binding var itemsGroups: [ItemsGroup]

    private static let itemsSpacing: CGFloat = 20

    private let columns = [
        GridItem(.flexible(minimum: 100, maximum: 200), spacing: itemsSpacing),
        GridItem(.flexible(minimum: 100, maximum: 200))
    ]

    var body: some View {
        ScrollView {
            Spacer().padding(5)

            LazyVGrid(columns: columns, spacing: Self.itemsSpacing) {
                ForEach($itemsGroups) { group in
                    RoutinesSectionView(itemsGroup: group)
                }
            }
            .padding([.horizontal, .bottom], Self.itemsSpacing)
            Spacer()
        }
        .background(.background.secondary)
    }
}

#Preview {
    RoutinesListView(itemsGroups: .constant(testItemGroups))
}
