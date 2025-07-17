//
//  ScalableButtonStyle.swift
//  swiftUIPlaygrounds
//
//  Created by Armond Schneider on 7/16/25.
//

import SwiftUI

struct ScalableButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.spring(response: 0.3, dampingFraction: 0.5), value: configuration.isPressed)
    }
}
