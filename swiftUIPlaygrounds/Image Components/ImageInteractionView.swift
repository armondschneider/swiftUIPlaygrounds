//
//  ImageInteractionView.swift
//  swiftUIPlaygrounds
//
//  Created by Armond Schneider on 11/20/24.
//

import SwiftUI

struct ImageInteractionView: View {
    @State private var isExpanded = false
    private let images = ["image1", "image2", "image4", "image3"]
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    withAnimation(.spring(response: 0.7, dampingFraction: 0.7, blendDuration: 0.3)) {
                        isExpanded = false
                    }
                }
            
            ForEach(0..<images.count, id: \ .self) { index in
                Image(images[index])
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: self.calculateWidth(for: index), height: self.calculateHeight(for: index))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white, lineWidth: 4)
                    )
                    .shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 10)
                    .rotationEffect(self.calculateRotation(for: index))
                    .offset(self.calculateOffset(for: index))
                    .onTapGesture {
                        withAnimation(.spring()) {
                            isExpanded = true
                        }
                    }
            }
        }
    }
    
    // Specific width per image
    private func calculateWidth(for index: Int) -> CGFloat {
        switch index {
        case 0: return 160
        case 1: return 180
        case 2: return 190
        case 3: return 170
        default: return 150
        }
    }
    
    // Specific height per image
    private func calculateHeight(for index: Int) -> CGFloat {
        switch index {
        case 0: return 200
        case 1: return 200
        case 2: return 140
        case 3: return 180
        default: return 210
        }
    }
    
    private func calculateOffset(for index: Int) -> CGSize {
        if isExpanded {
            switch index {
            case 0: return CGSize(width: -80, height: -180)
            case 1: return CGSize(width: 80, height: -110)
            case 2: return CGSize(width: -80, height: 50)
            case 3: return CGSize(width: 80, height: 120)
            default: return .zero
            }
        } else {
            return CGSize(width: CGFloat(index) * 0, height: CGFloat(index) * 15)
        }
    }
    
    // Random rotation expanded and collapsed
    private func calculateRotation(for index: Int) -> Angle {
        if isExpanded {
            return .degrees(Double.random(in: -15...5))
        } else {
            return .degrees(Double.random(in: -5...15))
        }
    }
}

struct ImageInteractionView_Previews: PreviewProvider {
    static var previews: some View {
        ImageInteractionView()
    }
}

