//
//  RoutineItemView.swift
//  RoutineBuilder
//
//  Created by Sofia Vykhrystyuk on 04/07/2024.
//

import SwiftUI

struct RoutineItemView: View {
    private let routine: Routine

    init(routine: Routine) {
        self.routine = routine
    }

    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 8) {
                HStack(alignment: .top) {
                    Text(routine.title)
                        .font(.title3)
                        .fontWeight(.bold)
                    Spacer()
                    Button {
                        print("action")
                    } label: {
                        Image(systemName: "play.fill")
                            .font(.system(size: 25))
                    }
                }
                Spacer()
                Text("\(routine.steps.count) steps")
                    .font(.footnote)
                Text(routine.totalTime)
                    .font(.footnote)
                Text(routine.steps[0])
                    .font(.footnote)
            }
            .padding()
            .foregroundStyle(.black)
        }
        .frame(minWidth: 100, maxWidth: 300, maxHeight: .infinity)
        .aspectRatio(1.0, contentMode: .fit)
        .background(routine.background.color)
        .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    RoutineItemView(routine: testItems[0])
}
