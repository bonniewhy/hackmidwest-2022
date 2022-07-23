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
    var tags: [String]
    
    init(id: UUID = UUID(), title: String, description: String, tags: [String]) {
        self.id = id
        self.title = title
        self.description = description
        self.tags = tags
    }
}

extension BragEntry {
    static let sampleData: [BragEntry] =
    [
        BragEntry(title: "Pastry Card Component", description: "I created a card view in SwiftUI for bakery shop's application.", tags: ["short-term", "front-end", "web design", "swift ui", "component"]),
        BragEntry(title: "Navigation Bar Animation", description: "I implemented an animation for the navigation bar's cta's hover states.", tags: ["Web Design", "front-end"]),
        BragEntry(title: "Search Component - AEM", description: "I build the foundational functionality for the search component for a telecommunications company", tags: ["AEM", "Docker"]),
    ]
}
