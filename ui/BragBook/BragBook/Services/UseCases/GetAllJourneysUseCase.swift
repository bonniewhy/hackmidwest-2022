import Foundation

protocol GetAllJourneysUseCase {
    func execute(completion: @escaping (Result<[BragJourney]?, Error>) -> ())
}
