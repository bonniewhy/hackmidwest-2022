package com.hackmidwest.bragbook.rest;

import com.hackmidwest.bragbook.domain.entity.Journey;
import com.hackmidwest.bragbook.domain.repository.JourneyRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
@RequestMapping("journey")
public class JourneyController {

    private final JourneyRepository journeyRepository;

    @GetMapping(path = "/{title}")
    public Journey getJourneyByTitle(@PathVariable String title) {
        return journeyRepository.getJourneyByTitle(title);
    }
}
