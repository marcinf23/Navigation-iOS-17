//
//  ToolbarPlacement.swift
//  9 Navigation iOS 17
//
//  Created by Marcin Frydrych on 03/03/2024.
//

import SwiftUI

struct ToolbarPlacement: View {
    var body: some View {
        NavigationStack {
            Text("Hello, world")
                .toolbar {
                    ToolbarItemGroup(placement: .topBarLeading) {
                        Button("Tap me") {
                            
                        }
                        Button("Or Tap Me") {
                            
                        }
                    }
                }
        }
    }
}

#Preview {
    ToolbarPlacement()
}
