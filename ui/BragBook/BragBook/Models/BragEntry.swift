//
//  BragEntry.swift
//  BragBook
//
//  Created by Angela Mitchell on 7/23/22.
//

import Foundation

struct BragEntry: Identifiable {
    let id: UUID
    var title: String
    var description: String
    var tags: [BragTag]
    
    init(id: UUID = UUID(), title: String, description: String, tags: [BragTag]) {
        self.id = id
        self.title = title
        self.description = description
        self.tags = tags
    }
}

extension BragEntry {
    static let sampleData: [BragEntry] =
    [
        BragEntry(
            title: "Pastry Card Component",
            description: "I created a card view in SwiftUI for bakery shop's application.",
            tags: [
                BragTag.sampleTags[0],
                BragTag.sampleTags[1],
                BragTag.sampleTags[2],
                BragTag.sampleTags[3],
                BragTag.sampleTags[4]
            ]),
        BragEntry(
            title: "Navigation Bar Animation",
            description: "I implemented an animation for the navigation bar's cta's hover states.",
            tags: [
                BragTag.sampleTags[2],
                BragTag.sampleTags[1]
            ]),
        BragEntry(
            title: "Search Component - AEM",
            description: "I build the foundational functionality for the search component for a telecommunications company",
            tags: [
                BragTag.sampleTags[5],
                BragTag.sampleTags[6]
            ]),
    ]
}
