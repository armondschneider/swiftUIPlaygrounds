//
//  ButtonShowcaseView.swift
//  swiftUIPlaygrounds
//
//  Created by Armond Schneider on 7/16/25.
//

import SwiftUI

struct ButtonShowcaseView: View {
    var body: some View {
        VStack(spacing: 30) {
            // Primary Button showcase
            VStack(spacing: 10) {
                Text("Primary Button")
                    .font(.headline)
                PrimaryButton(action: {
                    print("Primary tapped")
                }) {
                    Text("Primary")
                }
            }

            // Shadow Button showcase
            VStack(spacing: 10) {
                Text("Shadow Button")
                    .font(.headline)
                ButtonShadow()
            }

            // Copy Button showcase
            VStack(spacing: 10) {
                Text("Copy Button")
                    .font(.headline)
                CopyButton()
            }
        }
        .padding()
    }
}
