//
//  RoutineDetailsView.swift
//  RoutineBuilder
//
//  Created by Sofia Vykhrystyuk on 04/07/2024.
//

import SwiftUI

struct RoutineDetailsView: View {
    private let routine: Routine

    init(routine: Routine) {
        self.routine = routine
    }

    var body: some View {
        Text(routine.title)
    }
}

#Preview {
    RoutineDetailsView(routine: testItems[0])
}
