//
//  NavigationStackRootView.swift
//  Navigation
//
//  Created by Sean Dooley on 20/11/2024.
//

import SwiftUI

struct NavigationStackRootView: View {
    @State private var path = [Int]()

    var body: some View {
        NavigationStack(path: $path) {
            DetailView(number: 0, path: $path)
                .navigationDestination(for: Int.self) { i in
                    DetailView(number: i, path: $path)
                }
        }
    }
    
    struct DetailView: View {
        var number: Int
        
        @Binding var path: [Int]

        var body: some View {
            NavigationLink("Go to Random Number", value: Int.random(in: 1...1000))
                .navigationTitle("Number: \(number)")
                .toolbar {
                    Button("Home") {
                        path.removeAll()
                        // path = NavigationPath()
                    }
                }
        }
    }
}

#Preview {
    NavigationStackRootView()
}
