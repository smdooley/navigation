//
//  SimpleNavigationLink.swift
//  Navigation
//
//  Created by Sean Dooley on 20/11/2024.
//

import SwiftUI

//
// Lots of DetailView instances are being created as you scroll around, often more than once
//
struct SimpleNavigationLink: View {
    var body: some View {
        NavigationStack {
            List(0..<1000) { i in
                NavigationLink("Tap Me") {
                    DetailView(number: i)
                }
            }
        }
    }
    
    struct DetailView: View {
        var number: Int

        var body: some View {
            Text("Detail View \(number)")
        }

        init(number: Int) {
            self.number = number
            print("Creating detail view \(number)")
        }
    }
}

#Preview {
    SimpleNavigationLink()
}
