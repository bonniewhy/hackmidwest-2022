//
//  BragEntry.swift
//  BragBook
//
//  Created by Angela Mitchell on 7/23/22.
//

import Foundation

struct Entry: Codable, Hashable {
    let id: String
    let title: String
    let body: String
    let tags: [Tag]
    let people: [Person]
    let isPublic: Bool
    let completedDate: Date

    static func == (lhs: Entry, rhs: Entry) -> Bool {
        return lhs.id == rhs.id
    }


    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension Entry {
//    static let sampleEntry: Entry =
//    Entry(
//        id: "1",
//        title: "Pastry Card Component",
//        body: "I created a card view in SwiftUI for bakery shop's application.",
//        tags: Tag.sampleTagArray,
//        people: Person.samplePersonArray,
//        isPublic: false,
//        completedDate: Date()
//    )
//
//    static let sampleEntryArray: [Entry] = [
//        Entry(
//            id: "1",
//            title: "Pastry Card Component",
//            body: "I created a card view in SwiftUI for bakery shop's application.",
//            tags: Tag.sampleTagArray,
//            people: Person.samplePersonArray,
//            isPublic: false,
//            completedDate: Date()
//        ),
//        Entry(
//            id: "2",
//            title: "Navigation Bar Animation",
//            body: "I implemented an animation for the navigation bar's cta's hover states.",
//            tags: Tag.sampleTagArray,
//            people: Person.samplePersonArray,
//            isPublic: false,
//            completedDate: Date()
//        ),
//        Entry(
//            id: "3",
//            title: "Search Component - AEM",
//            body: "I build the foundational functionality for the search component for a telecommunications company",
//            tags: Tag.sampleTagArray,
//            people: Person.samplePersonArray,
//            isPublic: false,
//            completedDate: Date()
//        )
//    ]
}
