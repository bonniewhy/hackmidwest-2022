//
//  BragTag.swift
//  BragBook
//
//  Created by Angela Mitchell on 7/23/22.
//

import Foundation

struct Tag: Decodable, Hashable {
    let id: String
    let title: String
    let journeys: [Journey]
    let entries: [Entry]
    let people: [Person]
    let isPublic: Bool

    static func == (lhs: Tag, rhs: Tag) -> Bool {
        return lhs.id == rhs.id
    }


    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension Tag {
//    static let sampleTag: Tag = Tag(
//        id: "5",
//        title: "Something Again",
//        journeys: Journey.sampleJourneyArray,
//        entries: Entry.sampleEntryArray,
//        people: Person.samplePersonArray,
//        isPublic: true
//    )
//
//    static let sampleTagArray: [Tag] =
//    [
//        Tag(
//            id: "1",
//            title: "short-term",
//            journeys: Journey.sampleJourneyArray,
//            entries: Entry.sampleEntryArray,
//            people: Person.samplePersonArray,
//            isPublic: true
//        ),
//        Tag(
//            id: "2",
//            title: "front-end",
//            journeys: Journey.sampleJourneyArray,
//            entries: Entry.sampleEntryArray,
//            people: Person.samplePersonArray,
//            isPublic: true
//        ),
//        Tag(
//            id: "3",
//            title: "web design",
//            journeys: Journey.sampleJourneyArray,
//            entries: Entry.sampleEntryArray,
//            people: Person.samplePersonArray,
//            isPublic: true
//        ),
//        Tag(
//            id: "4",
//            title: "swift ui",
//            journeys: Journey.sampleJourneyArray,
//            entries: Entry.sampleEntryArray,
//            people: Person.samplePersonArray,
//            isPublic: true
//        ),
//        Tag(
//            id: "5",
//            title: "component",
//            journeys: Journey.sampleJourneyArray,
//            entries: Entry.sampleEntryArray,
//            people: Person.samplePersonArray,
//            isPublic: true
//        ),
//        Tag(
//            id: "6",
//            title: "AEM",
//            journeys: Journey.sampleJourneyArray,
//            entries: Entry.sampleEntryArray,
//            people: Person.samplePersonArray,
//            isPublic: true
//        ),
//        Tag(
//            id: "7",
//            title: "Docker",
//            journeys: Journey.sampleJourneyArray,
//            entries: Entry.sampleEntryArray,
//            people: Person.samplePersonArray,
//            isPublic: true
//        )
//    ]
}
