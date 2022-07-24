package com.hackmidwest.bragbook.infrastructure.repository;

import com.hackmidwest.bragbook.domain.entity.Prompt;
import com.hackmidwest.bragbook.domain.repository.PromptRepository;
import org.springframework.context.annotation.Lazy;

import java.util.Optional;

public class PromptMongoRepositoryImpl implements PromptRepository {
    private PromptMongoRepository promptRepository;

    public PromptMongoRepositoryImpl(@Lazy PromptMongoRepository promptRepository) {
        this.promptRepository = promptRepository;
    }

    @Override
    public Prompt getPromptById(String promptId) {
        Optional<Prompt> prompt = promptRepository.findById(promptId);

        return prompt.orElseGet(() -> new Prompt().builder().build());
    }

    @Override
    public void savePrompt(Prompt prompt) {
        promptRepository.save(prompt);
    }

    @Override
    public void deletePrompt(String promptId) {
        promptRepository.deleteById(promptId);
    }

}