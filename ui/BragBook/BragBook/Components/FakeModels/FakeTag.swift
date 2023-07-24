import Foundation

struct FakeTag: Identifiable {
    let id: UUID
    let title: String
    let journeys: [FakeJourney]
    let entries: [FakeEntry]
    let people: [FakePerson]
    let isPublic: Bool

//    static func == (lhs: Tag, rhs: Tag) -> Bool {
//        return lhs.id == rhs.id
//    }
//
//
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(id)
//    }
}

extension FakeTag {
    static let sampleTag: FakeTag = FakeTag(
        id: UUID(),
        title: "Something Again",
        journeys: FakeJourney.sampleJourneyArray,
        entries: FakeEntry.sampleEntryArray,
        people: FakePerson.samplePersonArray,
        isPublic: true
    )

    static let sampleTagArray: [FakeTag] =
    [
        FakeTag(
            id: UUID(),
            title: "short-term",
            journeys: FakeJourney.sampleJourneyArray,
            entries: FakeEntry.sampleEntryArray,
            people: FakePerson.samplePersonArray,
            isPublic: true
        ),
        FakeTag(
            id: UUID(),
            title: "front-end",
            journeys: FakeJourney.sampleJourneyArray,
            entries: FakeEntry.sampleEntryArray,
            people: FakePerson.samplePersonArray,
            isPublic: true
        ),
        FakeTag(
            id: UUID(),
            title: "web design",
            journeys: FakeJourney.sampleJourneyArray,
            entries: FakeEntry.sampleEntryArray,
            people: FakePerson.samplePersonArray,
            isPublic: true
        ),
        FakeTag(
            id: UUID(),
            title: "swift ui",
            journeys: FakeJourney.sampleJourneyArray,
            entries: FakeEntry.sampleEntryArray,
            people: FakePerson.samplePersonArray,
            isPublic: true
        ),
        FakeTag(
            id: UUID(),
            title: "component",
            journeys: FakeJourney.sampleJourneyArray,
            entries: FakeEntry.sampleEntryArray,
            people: FakePerson.samplePersonArray,
            isPublic: true
        ),
        FakeTag(
            id: UUID(),
            title: "AEM",
            journeys: FakeJourney.sampleJourneyArray,
            entries: FakeEntry.sampleEntryArray,
            people: FakePerson.samplePersonArray,
            isPublic: true
        ),
        FakeTag(
            id: UUID(),
            title: "Docker",
            journeys: FakeJourney.sampleJourneyArray,
            entries: FakeEntry.sampleEntryArray,
            people: FakePerson.samplePersonArray,
            isPublic: true
        )
    ]
}
