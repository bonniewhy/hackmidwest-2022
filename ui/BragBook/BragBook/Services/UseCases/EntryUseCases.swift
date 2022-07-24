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
