package com.hackmidwest.bragbook.domain.service;

import com.hackmidwest.bragbook.domain.entity.Prompt;

import java.util.List;

public interface PromptService {
    String savePrompt(Prompt prompt);
    Prompt getPromptById(String promptId);
    List<Prompt> getAllPrompts();
    Prompt updatePrompt(String promptId, Prompt prompt);
    void deletePrompt(String promptId);
}
