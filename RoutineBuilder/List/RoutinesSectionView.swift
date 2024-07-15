//
//  RoutinesSectionView.swift
//  RoutineBuilder
//
//  Created by Sofia Vykhrystyuk on 08/07/2024.
//

import SwiftUI

struct RoutinesSectionView: View {
    @Binding var routines: RoutinesGroup

    var body: some View {
        Section(isExpanded: $routines.header.isExpanded) {
            ForEach(routines.routines) { routine in
                NavigationLink {
                    RoutineDetailsView(routine: routine)
                } label: {
                    RoutineItemView(routine: routine)
                }
            }
        } header: {
            RoutinesSectionHeaderView(headerViewModel: $routines.header)
        }
    }
}
