import Foundation

struct FakePerson: Identifiable {
    let id: UUID
    let firstName: String?
    let lastName: String?
    let city: String?
    let state: String?
    let photo: String?
    let email: String?
    let password: String?
    let phoneNumber: String?
    let entries: [FakeEntry]?
    let journeys: [FakeJourney]?
    let dateCreated: Date?
    let lastLoggedIn: Date?
    let profile: String?

//    static func == (lhs: Person, rhs: Person) -> Bool {
//        return lhs.id == rhs.id
//    }
//
//
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(id)
//    }
}

extension FakePerson {
    static let samplePerson: FakePerson = FakePerson(
        id: UUID(),
        firstName: "Savannah",
        lastName: "Brooks",
        city: "Parts",
        state: "Unknown",
        photo: "image.jpg",
        email: "sbrooks@gmail.com",
        password: "password",
        phoneNumber: "(123) 456-7890",
        entries: FakeEntry.sampleEntryArray,
        journeys: FakeJourney.sampleJourneyArray,
        dateCreated: Date(),
        lastLoggedIn: Date(),
        profile: "This is a profile of the person who is using this app. It'll probably be a couple of lines, so here ya go."
    )

    static let samplePersonArray: [FakePerson] = [samplePerson]
}
