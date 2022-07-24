import Foundation

class GetAllJourneysInteractor: GetAllJourneysUseCase {
    func execute(with url: String, completion: @escaping (Result<[Journey], Error>) -> ()) {
        // TODO: Handle error here. (NetworkError)
        guard let url = URL(string: url) else { return }

        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let journeys = try JSONDecoder().decode([Journey].self, from: data!)
                completion(.success(journeys))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }
    }
}
