import Foundation

protocol CreateNewPromptUseCase {
    func execute(with prompt: Prompt, completion: @escaping (Result<String, Error>) -> Void)
}

protocol GetAllPromptsUseCase {
    func execute(completion: @escaping (Result<[Prompt], Error>) -> Void)
}

protocol GetPromptByIdUseCase {
    func execute(with promptId: String, completion: @escaping (Result<Prompt, Error>) -> Void)
}

protocol UpdatePromptUseCase {
    func execute(with prompt: Prompt, withId promptId: String, completion: @escaping (Result<Prompt, Error>) -> Void)
}

protocol DeletePromptUseCase {
    func execute(with promptId: String, completion: @escaping (Result<String, Error>) -> Void)
}
