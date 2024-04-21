//
//  Quake+Preview.swift
//  Earthquakes
//
//  Created by Natalie Hiehle on 4/20/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import Foundation

extension Quake {
    static var preview: Quake {
        var quake = Quake(magnitude: 0.34,
                          place: "Shakey Acres",
                          time: Date(timeIntervalSinceNow: -1000),
                          code: "nc73649170",
                          detail: URL(string: "https://example.com")!)
        quake.location = QuakeLocation(latitude: 38.8093338, longitude: -122.7968369)

        return quake
    }
}
