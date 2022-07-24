import Foundation

protocol CreateNewTagUseCase {
    func execute(with tag: Tag, completion: @escaping (Result<String, Error>) -> Void)
}

protocol GetAllTagsUseCase {
    func execute(completion: @escaping (Result<[Tag], Error>) -> Void)
}

protocol GetTagByIdUseCase {
    func execute(with tagId: String, completion: @escaping (Result<Tag, Error>) -> Void)
}

protocol UpdateTagUseCase {
    func execute(with tag: Tag, withId tagId: String, completion: @escaping (Result<Tag, Error>) -> Void)
}

protocol DeleteTagUseCase {
    func execute(with tagId: String, completion: @escaping (Result<String, Error>) -> Void)
}
