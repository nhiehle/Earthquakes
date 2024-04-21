//
//  QuakesProvider.swift
//  EarthquakesTests
//
//  Created by Natalie Hiehle on 4/20/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import Foundation

class QuakesProvider: ObservableObject {
    @Published var quakes: [Quake] = []

    let client: QuakeClient

    func fetchQuakes() async throws {
        let latestQuakes = try await client.quakes
        quakes = latestQuakes
    }

    func deleteQuakes(atOffsets offsets: IndexSet) {
        quakes.remove(atOffsets: offsets)
    }

    init(client: QuakeClient = QuakeClient()) {
        self.client = client
    }
}
