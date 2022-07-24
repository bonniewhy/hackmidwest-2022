import Foundation

class CreateNewTagInteractor: CreateNewTagUseCase {
    func execute(with journey: Tag, completion: @escaping (Result<String, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/tag/") else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = try? JSONEncoder().encode(journey)

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let tagId = try JSONDecoder().decode(String.self, from: data!)
                completion(.success(tagId))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }

        task.resume()
    }
}

class GetAllTagsInteractor: GetAllTagsUseCase {
    func execute(completion: @escaping (Result<[Tag], Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/tag/") else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let tags = try JSONDecoder().decode([Tag].self, from: data!)
                completion(.success(tags))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }

        task.resume()
    }
}

class GetTagByIdInteractor: GetTagByIdUseCase {
    func execute(with tagId: String, completion: @escaping (Result<Tag, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/tag/" + tagId) else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let tag = try JSONDecoder().decode(Tag.self, from: data!)
                completion(.success(tag))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }

        task.resume()
    }
}

class UpdateTagInteractor: UpdateTagUseCase {
    func execute(with tag: Tag, withId tagId: String, completion: @escaping (Result<Tag, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/tag/" + tagId) else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "PUT"
        request.httpBody = try? JSONEncoder().encode(tag)

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let tag = try JSONDecoder().decode(Tag.self, from: data!)
                completion(.success(tag))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }

        task.resume()
    }
}

class DeleteTagInteractor: DeleteTagUseCase {
    func execute(with tagId: String, completion: @escaping (Result<String, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/tag/" + tagId) else { return }

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
