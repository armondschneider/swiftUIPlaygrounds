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
            VStack(spacing: 10) {
                // Button Views
                Button(action: {}) {
                    NavigationLink(destination: ButtonShowcaseView()) {
                        Text("Buttons")
                            .padding()
                            .fontWeight(.bold)
                            .frame(maxWidth: 280)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                }
                
                // ImageInteractionView
                Button(action: {}) {
                    NavigationLink(destination: ImageInteractionView()) {
                        Text("Image Interaction View")
                            .padding()
                            .fontWeight(.bold)
                            .frame(maxWidth: 280)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                }
                
                // CardMotionView
                Button(action: {}) {
                    NavigationLink(destination: CardMotionView()) {
                        Text("Card Motion View")
                            .padding()
                            .fontWeight(.bold)
                            .frame(maxWidth: 280)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                }
                
                Link("Just some fun interactions made by Armond Schneider",
                      destination: URL(string: "https://github.com/armondschneider")!)
                    .multilineTextAlignment(.center)
                
                .padding()
                .navigationTitle("swiftUIPlaygrounds")
            }
        }
    }
}

#Preview {
    ContentView()
}
