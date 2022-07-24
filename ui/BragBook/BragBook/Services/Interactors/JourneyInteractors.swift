import Foundation

class GetAllJourneysInteractor: GetAllJourneysUseCase {
    func execute(completion: @escaping (Result<[Journey], Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/journey/") else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
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

        task.resume()
    }
}

class GetJourneyByIdInteractor: GetJourneyByIdUseCase {
    func execute(with journeyId: String, completion: @escaping (Result<Journey, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/journey/" + journeyId) else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let journey = try JSONDecoder().decode(Journey.self, from: data!)
                completion(.success(journey))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }

        task.resume()
    }
}
