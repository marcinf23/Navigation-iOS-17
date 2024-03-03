//
//  CustomNavBar.swift
//  9 Navigation iOS 17
//
//  Created by Marcin Frydrych on 03/03/2024.
//

import SwiftUI

struct CustomNavBar: View {
    
    
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                    Text("Row \(i)")
            }
            .navigationTitle("Title goes here")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.blue, for: .navigationBar)
            .toolbarColorScheme(.dark)
//            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

#Preview {
    CustomNavBar()
}
