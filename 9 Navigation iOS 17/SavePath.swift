//
//  SavePath.swift
//  9 Navigation iOS 17
//
//  Created by Marcin Frydrych on 03/03/2024.
//

import SwiftUI

@Observable
class PathStore {
    var path: /*[Int]*/ NavigationPath {
        didSet {
            save()
        }
    }
    
    private let savePath = URL.documentsDirectory.appending(path: "SavedPath")
    
    init() {
        if let data = try? Data(contentsOf: savePath) {
            if let decoded = try? JSONDecoder().decode(/*[Int]*/NavigationPath.CodableRepresentation.self, from: data) {
                path = /*decoded*/NavigationPath(decoded)
                return
            }
        }
        
        path = /*[]*/NavigationPath()
    }
    
    func save() {
        guard let representation = path.codable else { return }
        
        do {
            let data = try JSONEncoder().encode(representation)
            try data.write(to: savePath)
        } catch {
            print("Failed to save navigatin data.")
        }
    }
}

struct DetailView2: View {
    var number: Int
    
    var body: some View {
        NavigationLink("Go to random number", value: Int.random(in: 1...1000))
            .navigationTitle("Number: \(number)")
            
    }
}

struct SavePath: View {
    
    @State private var pathStore = PathStore()
    
    var body: some View {
        NavigationStack(path: $pathStore.path) {
            DetailView2(number: 0)
                .navigationDestination(for: Int.self) { i in
                    DetailView2(number: i)
                }
        }
    }
}


#Preview {
    SavePath()
}
