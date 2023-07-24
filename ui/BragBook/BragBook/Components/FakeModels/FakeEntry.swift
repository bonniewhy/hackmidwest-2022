//
//  BragEntry.swift
//  BragBook
//
//  Created by Angela Mitchell on 7/23/22.
//

import Foundation

struct FakeEntry: Identifiable {
    let id: UUID
    let title: String?
    let body: String?
    let tags: [FakeTag]?
    let people: [FakePerson]?
    let isPublic: Bool?
    let completedDate: Date?

//    static func == (lhs: Entry, rhs: Entry) -> Bool {
//        return lhs.id == rhs.id
//    }
//
//
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(id)
//    }
}

extension FakeEntry {
    static let sampleEntry: FakeEntry =
    FakeEntry(
        id: UUID(),
        title: "Pastry Card Component",
        body: "I created a card view in SwiftUI for bakery shop's application.",
        tags: FakeTag.sampleTagArray,
        people: FakePerson.samplePersonArray,
        isPublic: false,
        completedDate: Date()
    )

    static let sampleEntryArray: [FakeEntry] = [
        FakeEntry(
            id: UUID(),
            title: "Pastry Card Component",
            body: "I created a card view in SwiftUI for bakery shop's application.",
            tags: FakeTag.sampleTagArray,
            people: FakePerson.samplePersonArray,
            isPublic: false,
            completedDate: Date()
        ),
        FakeEntry(
            id: UUID(),
            title: "Navigation Bar Animation",
            body: "I implemented an animation for the navigation bar's cta's hover states.",
            tags: [],
            people: [],

//            tags: FakeTag.sampleTagArray,
//            people: FakePerson.samplePersonArray,
            isPublic: false,
            completedDate: Date()
        ),
        FakeEntry(
            id: UUID(),
            title: "Search Component - AEM",
            body: "I build the foundational functionality for the search component for a telecommunications company",
            tags: [],
            people: [],

//            tags: FakeTag.sampleTagArray,
//            people: FakePerson.samplePersonArray,
            isPublic: false,
            completedDate: Date()
        )
    ]
}
