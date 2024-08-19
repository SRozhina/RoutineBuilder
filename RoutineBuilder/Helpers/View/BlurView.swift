//
//  BlurView.swift
//  RoutineBuilder
//
//  Created by Sofia Vykhrystyuk on 19/08/2024.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    let blurEffectStyle: UIBlurEffect.Style
    func updateUIView(_ uiView: UIView, context: Context) {}

    func makeUIView(context: Context) -> UIView {
        let view = UIVisualEffectView(frame: .zero)
        view.effect = UIBlurEffect(style: self.blurEffectStyle)
        return view
    }
}
