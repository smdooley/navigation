//
//  SmartNavigation.swift
//  Navigation
//
//  Created by Sean Dooley on 20/11/2024.
//

import SwiftUI

struct SmartNavigationDestination: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                NavigationLink("Select \(i)", value: i)
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selected \(selection)")
            }
        }
    }
    
    struct Student: Hashable {
        var id = UUID()
        var name: String
        var age: Int
    }
}

#Preview {
    SmartNavigationDestination()
}
