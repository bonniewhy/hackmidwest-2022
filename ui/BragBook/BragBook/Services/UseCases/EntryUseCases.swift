import Foundation

protocol CreateNewEntryUseCase {
    func execute(with entry: Entry, completion: @escaping (Result<String, Error>) -> Void)
}

protocol GetAllEntriesUseCase {
    func execute(completion: @escaping (Result<[Entry], Error>) -> Void)
}

protocol GetEntryByIdUseCase {
    func execute(with entryId: String, completion: @escaping (Result<Entry, Error>) -> Void)
}

protocol UpdateEntryUseCase {
    func execute(with entry: Entry, withId entryId: String, completion: @escaping (Result<Entry, Error>) -> Void)
}

protocol DeleteEntryUseCase {
    func execute(with entryId: String, completion: @escaping (Result<String, Error>) -> Void)
}
