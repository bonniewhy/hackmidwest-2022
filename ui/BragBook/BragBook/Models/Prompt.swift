import Foundation

struct Prompt: Codable, Hashable {
    let id: String
    let title: String
    let body: String
    let journey: Journey
    let entry: Entry
    let completedDate: Date?
    let isCompleted: Bool

    static func == (lhs: Prompt, rhs: Prompt) -> Bool {
        return lhs.id == rhs.id
    }


    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension Prompt {
//    static let samplePrompt: Prompt =
//    Prompt(
//        id: "1",
//        title: "Something",
//        body: "Something",
//        journey: Journey.sampleJourney,
//        entry: Entry.sampleEntry,
//        completedDate: nil,
//        isCompleted: false
//    )
//
//    static let samplePromptArray: [Prompt] = [samplePrompt] 
}
