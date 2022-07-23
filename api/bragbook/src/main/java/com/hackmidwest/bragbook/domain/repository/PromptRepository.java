package com.hackmidwest.bragbook.domain.repository;

import com.hackmidwest.bragbook.domain.entity.Prompt;

public interface PromptRepository{
    void savePrompt(Prompt prompt);
    Prompt getPromptById(String promptId);
    void deletePrompt(String promptId);
}