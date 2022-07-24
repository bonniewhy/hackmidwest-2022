import Foundation

protocol GetAllJourneysUseCase {
    func execute(with url: String, completion: @escaping (Result<[Journey], Error>) -> Void)
}
