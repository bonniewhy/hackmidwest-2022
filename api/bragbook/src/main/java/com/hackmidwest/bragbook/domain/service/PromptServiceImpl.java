package com.hackmidwest.bragbook.domain.service;

import com.hackmidwest.bragbook.domain.entity.Prompt;
import com.hackmidwest.bragbook.domain.repository.PromptRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PromptServiceImpl implements PromptService{

    private final PromptRepository promptRepository;

    @Override
    public Prompt updatePrompt(String promptId, Prompt prompt) {
        Prompt promptToUpdate = promptRepository.getPromptById(promptId);
        Prompt updatedPrompt = new Prompt().builder()
                .id(promptToUpdate.getId())
                .title(prompt.getTitle())
                .body(prompt.getBody())
                .completed(prompt.isCompleted())
                .completedDate(prompt.getCompletedDate())
                .journey(prompt.getJourney())
                .build();

        promptRepository.savePrompt(prompt);
        return updatedPrompt;
    }
}
