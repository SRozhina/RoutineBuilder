//
//  RoutineDetailsView.swift
//  RoutineBuilder
//
//  Created by Sofia Vykhrystyuk on 04/07/2024.
//

import SwiftUI

struct RoutineDetailsView: View {
    private let item: Item

    init(item: Item) {
        self.item = item
    }

    var body: some View {
        Text(item.title)
    }
}

#Preview {
    RoutineDetailsView(item: testItems[0])
}
