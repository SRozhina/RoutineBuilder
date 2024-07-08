//
//  RoutinesSectionView.swift
//  RoutineBuilder
//
//  Created by Sofia Vykhrystyuk on 08/07/2024.
//

import SwiftUI

struct RoutinesSectionView: View {
    @Binding var itemsGroup: ItemsGroup

    var body: some View {
        Section(isExpanded: $itemsGroup.header.isExpanded) {
            ForEach(itemsGroup.items) { item in
                NavigationLink {
                    RoutineDetailsView(item: item)
                } label: {
                    RoutineItemView(item: item)
                }
            }
        } header: {
            RoutinesSectionHeaderView(headerViewModel: $itemsGroup.header)
        }
    }
}
