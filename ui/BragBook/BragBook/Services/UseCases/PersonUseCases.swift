import Foundation

protocol CreateNewPersonUseCase {
    func execute(with person: Person, completion: @escaping (Result<String, Error>) -> Void)
}

protocol GetAllPeopleUseCase {
    func execute(completion: @escaping (Result<[Person], Error>) -> Void)
}

protocol GetPersonByIdUseCase {
    func execute(with personId: String, completion: @escaping (Result<Person, Error>) -> Void)
}

protocol UpdatePersonUseCase {
    func execute(with person: Person, withId personId: String, completion: @escaping (Result<Person, Error>) -> Void)
}

protocol DeletePersonUseCase {
    func execute(with personId: String, completion: @escaping (Result<String, Error>) -> Void)
}
