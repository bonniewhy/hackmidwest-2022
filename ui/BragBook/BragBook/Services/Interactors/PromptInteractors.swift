import Foundation

class CreateNewPromptInteractor: CreateNewPromptUseCase {
    func execute(with prompt: Prompt, completion: @escaping (Result<String, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/prompt/") else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = try? JSONEncoder().encode(prompt)

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let promptId = try JSONDecoder().decode(String.self, from: data!)
                completion(.success(promptId))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }

        task.resume()
    }
}

class GetAllPromptsInteractor: GetAllPromptsUseCase {
    func execute(completion: @escaping (Result<[Prompt], Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/prompt/") else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let prompts = try JSONDecoder().decode([Prompt].self, from: data!)
                completion(.success(prompts))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }

        task.resume()
    }
}

class GetPromptByIdInteractor: GetPromptByIdUseCase {
    func execute(with promptId: String, completion: @escaping (Result<Prompt, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/prompt/" + promptId) else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let prompt = try JSONDecoder().decode(Prompt.self, from: data!)
                completion(.success(prompt))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }

        task.resume()
    }
}

class UpdatePromptInteractor: UpdatePromptUseCase {
    func execute(with prompt: Prompt, withId promptId: String, completion: @escaping (Result<Prompt, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/prompt/" + promptId) else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "PUT"
        request.httpBody = try? JSONEncoder().encode(prompt)

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let prompt = try JSONDecoder().decode(Prompt.self, from: data!)
                completion(.success(prompt))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }

        task.resume()
    }
}

class DeletePromptInteractor: DeletePromptUseCase {
    func execute(with promptId: String, completion: @escaping (Result<String, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/prompt/" + promptId) else { return }

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
