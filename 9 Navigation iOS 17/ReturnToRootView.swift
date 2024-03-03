//
//  ReturnToRootView.swift
//  9 Navigation iOS 17
//
//  Created by Marcin Frydrych on 03/03/2024.
//

import SwiftUI

struct DetailView: View {
    var number: Int
    @Binding var path: [Int]
    // @Binding var path: NavigationPath
    
    var body: some View {
        NavigationLink("Go to random number", value: Int.random(in: 1...1000))
            .navigationTitle("Number: \(number)")
            .toolbar {
                Button("Home") {
                    path.removeAll()
                    // path = NavigationPath()
                }
            }
    }
}

struct ReturnToRootView: View {
    @State private var path = [Int]()
    // @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            DetailView(number: 0, path: $path)
                .navigationDestination(for: Int.self) { i in
                    DetailView(number: i, path: $path)
                }
        }
    }
}

#Preview {
    ReturnToRootView()
}
