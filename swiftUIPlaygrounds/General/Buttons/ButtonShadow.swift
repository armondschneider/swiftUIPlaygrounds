//
//  ButtonShadow..swift
//  swiftUIPlaygrounds
//
//  Created by Armond Schneider on 12/1/24.
//

import SwiftUI

struct ButtonShadow: View {
    var body: some View {
        PrimaryButton(action: {
            // TODO: add action here
        }) {
            Text("Button Label")
        }
        .shadow(color: Color.black.opacity(0.2), radius: 15, x: 0, y: 8)
        .shadow(color: Color.white.opacity(0.05), radius: 20, x: 0, y: 15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonShadow()
    }
}
