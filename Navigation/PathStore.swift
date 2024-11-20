//
//  PathStore.swift
//  Navigation
//
//  Created by Sean Dooley on 20/11/2024.
//

import SwiftUI

@Observable
class PathStore {
    var path: NavigationPath {
        didSet {
            save()
        }
    }

    private let savePath = URL.documentsDirectory.appending(path: "SavedPath")

    init() {
        if let data = try? Data(contentsOf: savePath) {
            // Decode our JSON in the initializer we need to decode to a specific type, then use the decoded data to create a new NavigationPath
            if let decoded = try? JSONDecoder().decode(NavigationPath.CodableRepresentation.self, from: data) {
                path = NavigationPath(decoded)
                return
            }
        }

        // if decoding fails assign a new, empty NavigationPath instance to the path property
        path = NavigationPath()
    }

    // write the Codable representation of our navigation path
    func save() {
        // attempt to retrieve the Codable navigation path and bail out immediately if we get nothing back
        guard let representation = path.codable else { return }

        do {
            // convert that Codable representation to JSON instead of the original Int array
            let data = try JSONEncoder().encode(representation)
            try data.write(to: savePath)
        } catch {
            print("Failed to save navigation data")
        }
    }
}
