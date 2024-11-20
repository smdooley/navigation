//
//  PlacingToolbarButtonsView.swift
//  Navigation
//
//  Created by Sean Dooley on 20/11/2024.
//

import SwiftUI

struct PlacingToolbarButtonsView: View {
    var body: some View {
        NavigationStack {
            Text("Hello, world!")
//            .toolbar {
//                ToolbarItem(placement: .topBarLeading) {
//                    Button("Tap Me") {
//                        // button action here
//                    }
//                }
//            }
//            .toolbar {
//                ToolbarItem(placement: .topBarLeading) {
//                    Button("Tap Me") {
//                        // button action here
//                    }
//                }
//
//                ToolbarItem(placement: .topBarLeading) {
//                    Button("Or Tap Me") {
//                        // button action here
//                    }
//                }
//            }
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    Button("Tap Me") {
                        // button action here
                    }

                    Button("Tap Me 2") {
                        // button action here
                    }
                }
            }
        }
    }
}

#Preview {
    PlacingToolbarButtonsView()
}
