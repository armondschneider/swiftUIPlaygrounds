//
//  ContentView.swift
//  swiftUIPlaygrounds
//
//  Created by Armond Schneider on 11/20/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Button(action: {}) {
                    NavigationLink(destination: ImageInteractionView()) {
                        Text("See Image Interaction View")
                            .padding()
                            .fontWeight(.bold)
                            .frame(maxWidth: 280)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                }
            }
            .padding()
            .navigationTitle("swiftUIPlaygrounds")
        }
    }
}

#Preview {
    ContentView()
}
