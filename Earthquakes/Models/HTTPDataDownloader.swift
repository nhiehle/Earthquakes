//
//  HTTPDataDownloader.swift
//  Earthquakes-iOS
//
//  Created by Natalie Hiehle on 4/20/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import Foundation

protocol HTTPDataDownloader {
    func httpData(from: URL) async throws -> Data
}
