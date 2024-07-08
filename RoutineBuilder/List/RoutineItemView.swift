//
//  RoutineItemView.swift
//  RoutineBuilder
//
//  Created by Sofia Vykhrystyuk on 04/07/2024.
//

import SwiftUI

struct RoutineItemView: View {
    private let item: Item

    init(item: Item) {
        self.item = item
    }

    var body: some View {
        Text(item.title)
            .frame(maxWidth: .infinity, minHeight: 200, maxHeight: 300)
            .border(.green)
    }
}

#Preview {
    RoutineItemView(item: testItems[0])
}
