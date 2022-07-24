package com.hackmidwest.bragbook.domain.service;

import com.hackmidwest.bragbook.domain.entity.Prompt;

public interface PromptService {
    String savePrompt(Prompt prompt);
    Prompt getPromptById(String promptId);
    Prompt updatePrompt(String promptId, Prompt prompt);
    void deletePrompt(String promptId);
}
