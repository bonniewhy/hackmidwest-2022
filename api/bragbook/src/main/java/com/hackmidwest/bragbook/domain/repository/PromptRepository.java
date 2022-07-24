package com.hackmidwest.bragbook.domain.repository;

import com.hackmidwest.bragbook.domain.entity.Prompt;

import java.util.List;

public interface PromptRepository{
    Prompt savePrompt(Prompt prompt);
    Prompt getPromptById(String promptId);
    List<Prompt> getAllPrompts();
    void deletePrompt(String promptId);
}