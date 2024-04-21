//
//  CacheEntryObject.swift
//  Earthquakes
//
//  Created by Natalie Hiehle on 4/20/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import Foundation

final class CacheEntryObject {
    let entry: CacheEntry
    init(entry: CacheEntry) { self.entry = entry }
}

enum CacheEntry {
    case inProgress(Task<QuakeLocation, Error>)
    case ready(QuakeLocation)
}
