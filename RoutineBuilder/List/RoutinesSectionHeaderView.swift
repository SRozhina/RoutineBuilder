//
//  RoutinesSectionHeaderView.swift
//  RoutineBuilder
//
//  Created by Sofia Vykhrystyuk on 08/07/2024.
//

import SwiftUI

struct RoutinesSectionHeaderView: View {
    @Binding var headerViewModel: HeaderViewModel
    @State private var rotation: Double = 0

    var body: some View {
        HStack {
            Text(headerViewModel.title)
                .font(.title3)
                .fontWeight(.light)
            Spacer()
            Button {
                withAnimation {
                    headerViewModel.isExpanded.toggle()
                    rotation = headerViewModel.isExpanded ? 90 : 0
                }
            } label: {
                Image(systemName: "chevron.right")
                    .rotationEffect(.degrees(rotation))
            }
        }
        .onAppear { rotation = headerViewModel.isExpanded ? 90 : 0 }
    }
}
