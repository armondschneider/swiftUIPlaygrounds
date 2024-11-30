//
//  CardMotionView.swift
//  swiftUIPlaygrounds
//
//  Created by Armond Schneider on 11/30/24.
//

import SwiftUI

struct CardMotionView: View {
    @State var ValueTranslation : CGSize = .zero
    @State var isDragging = false
    var body: some View {
        ZStack{
            // Switch out for other image - try pika
            Image("mewtwo").resizable().scaledToFill()
                .frame(width: 316, height: 417)
                .overlay(
                    // Subtle reflection effect
                    Rectangle()
                        .frame(width: 300, height: 60)
                        .colorInvert()
                        .blur(radius: 50)
                        .opacity(0.7)
                        .offset(x: -ValueTranslation.width / 1.5, y: -ValueTranslation.height / 1.5)
                    
                )
                .clipped()
        }
        .cornerRadius(20)
        // Gradient behind card
        .shadow(color: Color.purple.opacity(0.2), radius: 20, x: 0, y: 8)
        .shadow(color: Color.red.opacity(0.1), radius: 10, x: 0, y: 2)
        
        .rotation3DEffect(
            .degrees(isDragging ? 10 : 0),
            axis: (x: -ValueTranslation.height, y: ValueTranslation.width, z: 0.0)
        )
        .gesture(DragGesture()
            .onChanged({ value in
                withAnimation {
                    ValueTranslation = value.translation
                    isDragging = true
                }
            })
                .onEnded({ vaule in
                    withAnimation {
                        ValueTranslation = .zero
                        isDragging = false
                    }
                })
        )
    }
}

// MARK: - Preview
struct CardMotionView_Previews: PreviewProvider {
    static var previews: some View {
        CardMotionView()
    }
}
