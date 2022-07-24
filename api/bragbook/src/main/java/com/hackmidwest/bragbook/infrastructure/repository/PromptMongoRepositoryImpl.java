package com.hackmidwest.bragbook.infrastructure.repository;

import com.hackmidwest.bragbook.domain.entity.Prompt;
import com.hackmidwest.bragbook.domain.repository.PromptRepository;
import com.hackmidwest.bragbook.exception.PromptNotFoundException;
import org.springframework.context.annotation.Lazy;

import java.util.List;
import java.util.Optional;

public class PromptMongoRepositoryImpl implements PromptRepository {
    private PromptMongoRepository promptRepository;

    public PromptMongoRepositoryImpl(@Lazy PromptMongoRepository promptRepository) {
        this.promptRepository = promptRepository;
    }

    @Override
    public Prompt getPromptById(String promptId) {
        Optional<Prompt> prompt = promptRepository.findById(promptId);

        if (prompt.isPresent()) {
            return prompt.get();
        } else {
            throw new PromptNotFoundException();
        }
    }

    @Override
    public List<Prompt> getAllPrompts() {return promptRepository.findAll();}

    @Override
    public Prompt savePrompt(Prompt prompt) {
        return promptRepository.save(prompt);
    }

    @Override
    public void deletePrompt(String promptId) {
        promptRepository.deleteById(promptId);
    }

}