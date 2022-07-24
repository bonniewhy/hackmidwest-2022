import Foundation

protocol GetAllJourneysUseCase {
    func execute(completion: @escaping (Result<[Journey], Error>) -> Void)
}
