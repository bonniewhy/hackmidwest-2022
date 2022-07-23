package com.hackmidwest.bragbook.domain.service;

import com.hackmidwest.bragbook.domain.entity.Prompt;

public interface PromptService {
    Prompt updatePrompt(String promptId, Prompt prompt);
}
