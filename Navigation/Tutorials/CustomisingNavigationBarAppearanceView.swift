//
//  CustomisingNavigationBarAppearance.swift
//  Navigation
//
//  Created by Sean Dooley on 20/11/2024.
//

import SwiftUI

struct CustomisingNavigationBarAppearanceView: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                Text("Row \(i)")
            }
            .navigationTitle("Title goes here")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.blue, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

#Preview {
    CustomisingNavigationBarAppearanceView()
}
