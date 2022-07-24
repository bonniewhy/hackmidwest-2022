//
//  BragUser.swift
//  BragBook
//
//  Created by Angela Mitchell on 7/23/22.
//

import Foundation

struct Person: Decodable, Hashable {
    let id: String
    let firstName: String
    let lastName: String
    let location: String
    let email: String
    let phoneNumber: String
    let entries: [Entry]
    let journeys: [Journey]

    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.id == rhs.id
    }


    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension Person {
    static let samplePerson: Person = Person(
        id: "1",
        firstName: "Savannah",
        lastName: "Brooks",
        location: "Parts Unknown",
        email: "sbrooks.gmail.com",
        phoneNumber: "(123) 456-7890",
        entries: Entry.sampleEntryArray,
        journeys: Journey.sampleJourneyArray
    )

    static let samplePersonArray: [Person] = [samplePerson]
}
