package com.hackmidwest.bragbook.rest;

import com.hackmidwest.bragbook.domain.entity.Journey;
import com.hackmidwest.bragbook.domain.service.JourneyService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
@RequestMapping("/journey")
public class JourneyController {

    private final JourneyService journeyService;

    @GetMapping(path = "/{journeyId}")
    public Journey getJourneyByTitle(@PathVariable String journeyId) {
        return journeyService.getJourneyById(journeyId);
    }

    @PostMapping(consumes = {MediaType.APPLICATION_JSON_VALUE})
    public String saveJourney(@RequestBody Journey journey) {
        String savedJourneyId = journeyService.saveJourney(journey);
        return "journey saved: " + savedJourneyId;
    }

    @PutMapping(path = "/{journeyId}", consumes = {MediaType.APPLICATION_JSON_VALUE})
    public Journey updateJourney(@PathVariable String journeyId, @RequestBody Journey journey) {
        return journeyService.updateJourney(journeyId, journey);
    }

    @DeleteMapping(path = "/{journeyId}")
    public String deleteJourney(@PathVariable String journeyId) {
        journeyService.deleteJourney(journeyId);
        return "journey deleted";
    }
}
