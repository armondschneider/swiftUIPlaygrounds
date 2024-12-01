//
//  View.swift
//  swiftUIPlaygrounds
//
//  Created by Armond Schneider on 12/1/24.
//

import SwiftUI

struct RealisticDropShadowView: View {
    var body: some View {
        // Change label to what you need. You still need to add an action as well.
        Text("Button Label")
            .font(.system(size: 18, weight: .semibold))
            .foregroundColor(.white)
            .padding(.vertical, 16)
            .padding(.horizontal, 24)
            .background(Color.black)
            .cornerRadius(14)
            .shadow(color: Color.black.opacity(0.2), radius: 15, x: 0, y: 8)
            // subtle lighter shadow below
            .shadow(color: Color.white.opacity(0.05), radius: 20, x: 0, y: 15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RealisticDropShadowView()
    }
}
