//
//  CopyButton.swift
//  swiftUIPlaygrounds
//
//  Created by Armond Schneider on 7/16/25.
//

import SwiftUI

struct CopyButton: View {
    @State private var isCopied = false
    @State private var blurRadius: CGFloat = 10

    var body: some View {
        PrimaryButton(action: {
            isCopied = true
            blurRadius = 10
            // TODO: perform copy action, e.g. UIPasteboard.general.string = "Your text"
            withAnimation(.easeInOut(duration: 0.6)) {
                blurRadius = 0
            }
            // Reset state after 3 seconds
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation(.easeInOut(duration: 0.2)) {
                    isCopied = false
                }
            }
        }) {
            HStack(spacing: 8) {
                Text(isCopied ? "Copied" : "Copy Text")
                Image(systemName: "square.on.square")
            }
            .blur(radius: isCopied ? blurRadius : 0)
            .animation(.easeInOut(duration: 0.3), value: blurRadius)
        }
    }
}

struct CopyButton_Previews: PreviewProvider {
    static var previews: some View {
        CopyButton()
    }
}
