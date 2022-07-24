package com.hackmidwest.bragbook.rest;

import com.hackmidwest.bragbook.domain.entity.Journey;
import com.hackmidwest.bragbook.domain.entity.Prompt;
import com.hackmidwest.bragbook.domain.repository.PromptRepository;
import com.hackmidwest.bragbook.domain.service.JourneyService;
import com.hackmidwest.bragbook.domain.service.PromptService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequiredArgsConstructor
@RestController
@RequestMapping("/prompt")
public class PromptController {

//    private final PromptRepository promptRepository;
    private final PromptService promptService;

    @GetMapping(path = "/{promptId}")
    public Prompt getPromptByTitle(@PathVariable String promptId) {
        return promptService.getPromptById(promptId);
    }

    @GetMapping(path = "/")
    public List<Prompt> getAllPrompts() {
        return promptService.getAllPrompts();
    }

    @PostMapping(consumes = {MediaType.APPLICATION_JSON_VALUE})
    public String savePrompt(@RequestBody Prompt prompt) {
        String savedPromptId = promptService.savePrompt(prompt);
        return "prompt saved " + savedPromptId;
    }

    @PutMapping(path = "/{promptId}", consumes = {MediaType.APPLICATION_JSON_VALUE})
    public Prompt updatePrompt(@PathVariable String promptId, @RequestBody Prompt prompt) {
        return promptService.updatePrompt(promptId, prompt);
    }

    @DeleteMapping(path = "/{promptId}")
    public String deletePrompt(@PathVariable String promptId) {
        promptService.deletePrompt(promptId);
        return "prompt deleted";
    }

}