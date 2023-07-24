import Foundation

struct FakeJourney: Identifiable {
    let id: UUID
    let title: String?
    let description: String?
    let prompts: [FakePrompt]?
    let startDate: Date?
    let completedDate: Date?
    let isCompleted: Bool?

//    static func == (lhs: Journey, rhs: Journey) -> Bool {
//        return lhs.id == rhs.id
//    }
//
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(id)
//    }
}

extension FakeJourney {
    static let sampleJourney: FakeJourney =
    FakeJourney(
        id: UUID(),
        title: "Some Journey",
        description: "Do this. I'm serious. Right now. Make yourself feel better. You will love it. And yourself. I promise.",
        prompts: FakePrompt.samplePromptArray,
        startDate: Date(),
        completedDate: nil,
        isCompleted: false
    )

    static let sampleJourneyArray: [FakeJourney] = [sampleJourney]
}
