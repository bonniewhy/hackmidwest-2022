//
//  BragTag.swift
//  BragBook
//
//  Created by Angela Mitchell on 7/23/22.
//

import Foundation

struct BragTag: Identifiable {
    let id: UUID
    var name: String
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name

    }
}

extension BragTag {
    static let sampleTags: [BragTag] =
    [
        BragTag(name: "short-term"),
        BragTag(name: "front-end"),
        BragTag(name: "web design"),
        BragTag(name: "swift ui"),
        BragTag(name: "component"),
        BragTag(name: "AEM"),
        BragTag(name: "Docker")
    ]
}

