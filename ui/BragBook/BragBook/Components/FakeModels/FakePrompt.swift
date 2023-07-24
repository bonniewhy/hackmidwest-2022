import Foundation

struct FakePrompt: Identifiable {
    let id: UUID
    let title: String
    let body: String
    let journey: FakeJourney
    let entry: FakeEntry
    let completedDate: Date?
    let isCompleted: Bool

//    static func == (lhs: Prompt, rhs: Prompt) -> Bool {
//        return lhs.id == rhs.id
//    }
//
//
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(id)
//    }
}

extension FakePrompt {
    static let samplePrompt: FakePrompt =
    FakePrompt(
        id: UUID(),
        title: "Something",
        body: "Something",
        journey: FakeJourney.sampleJourney,
        entry: FakeEntry.sampleEntry,
        completedDate: nil,
        isCompleted: false
    )

    static let samplePromptArray: [FakePrompt] = [samplePrompt]
}
