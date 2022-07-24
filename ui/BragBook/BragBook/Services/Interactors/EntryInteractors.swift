import Foundation

class CreateNewEntryInteractor: CreateNewEntryUseCase {
    func execute(with entry: Entry, completion: @escaping (Result<String, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/entry/") else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = try? JSONEncoder().encode(entry)

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let entryId = try JSONDecoder().decode(String.self, from: data!)
                completion(.success(entryId))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }

        task.resume()
    }
}

class GetAllEntriesInteractor: GetAllEntriesUseCase {
    func execute(completion: @escaping (Result<[Entry], Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/entry/") else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let entries = try JSONDecoder().decode([Entry].self, from: data!)
                completion(.success(entries))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }

        task.resume()
    }
}

class GetEntryByIdInteractor: GetEntryByIdUseCase {
    func execute(with entryId: String, completion: @escaping (Result<Entry, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/entry/" + entryId) else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let entry = try JSONDecoder().decode(Entry.self, from: data!)
                completion(.success(entry))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }

        task.resume()
    }
}

class UpdateEntryInteractor: UpdateEntryUseCase {
    func execute(with entry: Entry, withId entryId: String, completion: @escaping (Result<Entry, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/entry/" + entryId) else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "PUT"
        request.httpBody = try? JSONEncoder().encode(entry)

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let entry = try JSONDecoder().decode(Entry.self, from: data!)
                completion(.success(entry))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }

        task.resume()
    }
}

class DeleteEntryInteractor: DeleteEntryUseCase {
    func execute(with entryId: String, completion: @escaping (Result<String, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/entry/" + entryId) else { return }

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
