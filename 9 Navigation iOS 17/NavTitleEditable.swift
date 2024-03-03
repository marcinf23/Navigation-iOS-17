//
//  NavTitleEditable.swift
//  9 Navigation iOS 17
//
//  Created by Marcin Frydrych on 03/03/2024.
//

import SwiftUI

struct NavTitleEditable: View {
    
    @State private var title = "SwiftUI"
    
    var body: some View {
        NavigationStack {
            Text("Hello world")
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NavTitleEditable()
}
