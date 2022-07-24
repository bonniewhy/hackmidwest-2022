import Foundation

protocol CreateNewJourneyUseCase {
    func execute(with journey: Journey, completion: @escaping (Result<String, Error>) -> Void)
}

protocol GetAllJourneysUseCase {
    func execute(completion: @escaping (Result<[Journey], Error>) -> Void)
}

protocol GetJourneyByIdUseCase {
    func execute(with journeyId: String, completion: @escaping (Result<Journey, Error>) -> Void)
}
