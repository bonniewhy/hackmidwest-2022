import Foundation

struct Journey: Codable, Hashable {
    let id: String
    let title: String?
    let description: String?
    let prompts: [Prompt]?
    let startDate: Date?
    let completedDate: Date?
    let isCompleted: Bool?

    static func == (lhs: Journey, rhs: Journey) -> Bool {
        return lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension Journey {
//    static var sampleJourney: Journey =
//    Journey(
//        id: "1",
//        title: "Some Journey",
//        description: "Do this. I'm serious.",
//        prompts: Prompt.samplePromptArray,
//        startDate: Date(),
//        completedDate: nil,
//        isCompleted: false
//    )
//
//    static let sampleJourneyArray: [Journey] = [sampleJourney]
}
