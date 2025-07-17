//
//  ButtonPrimary.swift
//  swiftUIPlaygrounds
//
//  Created by Armond Schneider on 7/16/25.
//

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 18, weight: .semibold))
            .foregroundColor(.white)
            .padding(.vertical, 16)
            .padding(.horizontal, 24)
            .background(Color.black)
            .cornerRadius(14)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.spring(response: 0.3, dampingFraction: 0.5), value: configuration.isPressed)
    }
}

// A reusable primary button component
struct PrimaryButton<Label: View>: View {
    let action: () -> Void
    let label: () -> Label

    init(action: @escaping () -> Void, @ViewBuilder label: @escaping () -> Label) {
        self.action = action
        self.label = label
    }

    var body: some View {
        Button(action: action) {
            label()
        }
        .buttonStyle(PrimaryButtonStyle())
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            PrimaryButton(action: { print("Tapped") }) {
                Text("Primary")
            }
        }
        .padding()
    }
}
