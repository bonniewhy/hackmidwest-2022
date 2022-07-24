import Foundation

class CreateNewJourneyInteractor: CreateNewJourneyUseCase {
    func execute(with journey: Journey, completion: @escaping (Result<String, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/journey/") else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = try? JSONEncoder().encode(journey)

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let journeyId = try JSONDecoder().decode(String.self, from: data!)
                completion(.success(journeyId))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }

        task.resume()
    }
}

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

class UpdateJourneyInteractor: UpdateJourneyUseCase {
    func execute(with journey: Journey, withId journeyId: String, completion: @escaping (Result<Journey, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/journey/" + journeyId) else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "PUT"
        request.httpBody = try? JSONEncoder().encode(journey)

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

class DeleteJourneyInteractor: DeleteJourneyUseCase {
    func execute(with journeyId: String, completion: @escaping (Result<String, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/journey/" + journeyId) else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "DELETE"

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let deleteConfirmation = try JSONDecoder().decode(String.self, from: data!)
                completion(.success(deleteConfirmation))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }

        task.resume()
    }
}
