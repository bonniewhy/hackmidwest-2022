import Foundation

class CreateNewPersonInteractor: CreateNewPersonUseCase {
    func execute(with person: Person, completion: @escaping (Result<String, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/entry/") else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = try? JSONEncoder().encode(person)

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let personId = try JSONDecoder().decode(String.self, from: data!)
                completion(.success(personId))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }

        task.resume()
    }
}

class GetAllPeopleInteractor: GetAllPeopleUseCase {
    func execute(completion: @escaping (Result<[Person], Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/person/") else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let people = try JSONDecoder().decode([Person].self, from: data!)
                completion(.success(people))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }

        task.resume()
    }
}

class GetPersonByIdInteractor: GetPersonByIdUseCase {
    func execute(with personId: String, completion: @escaping (Result<Person, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/person/" + personId) else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let person = try JSONDecoder().decode(Person.self, from: data!)
                completion(.success(person))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }

        task.resume()
    }
}

class UpdatePersonInteractor: UpdatePersonUseCase {
    func execute(with person: Person, withId personId: String, completion: @escaping (Result<Person, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/entry/" + personId) else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "PUT"
        request.httpBody = try? JSONEncoder().encode(person)

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let person = try JSONDecoder().decode(Person.self, from: data!)
                completion(.success(person))

            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }

        task.resume()
    }
}

class DeletePersonInteractor: DeletePersonUseCase {
    func execute(with personId: String, completion: @escaping (Result<String, Error>) -> Void) {
        guard let url = URL(string: "http://localhost:8080/entry/" + personId) else { return }

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
