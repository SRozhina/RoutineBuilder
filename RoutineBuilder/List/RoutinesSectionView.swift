//
//  RoutinesSectionView.swift
//  RoutineBuilder
//
//  Created by Sofia Vykhrystyuk on 08/07/2024.
//

import SwiftUI

struct RoutinesSectionView: View {
    @Binding var routines: RoutinesGroup
    @State private var selectedRoutine: Routine?
    @Namespace var transitionNamespace

    var body: some View {
        Section(isExpanded: $routines.header.isExpanded) {
            ForEach(routines.routines) { routine in
                Button {
                    selectedRoutine = routine
                } label: {
                    RoutineItemView(routine: routine)
                }
                .matchedTransitionSource(id: routine, in: transitionNamespace)
            }
        } header: {
            RoutinesSectionHeaderView(headerViewModel: $routines.header)
        }
        .fullScreenCover(item: $selectedRoutine) { routine in
            NavigationStack {
                RoutineDetailsView(routine: routine)
            }
            .navigationTransition(.zoom(sourceID: routine, in: transitionNamespace))
        }
    }
}
