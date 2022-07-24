package com.hackmidwest.bragbook.rest;

import com.hackmidwest.bragbook.domain.entity.Affirmation;
import com.hackmidwest.bragbook.domain.service.AffirmationService;
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

import java.util.List;

@RequiredArgsConstructor
@RestController
@RequestMapping("/affirmation")
public class AffirmationController {

    private final AffirmationService affirmationService;

    @PostMapping(consumes = {MediaType.APPLICATION_JSON_VALUE})
    public String saveAffirmation(@RequestBody Affirmation affirmation) {
        String savedAffirmationId = affirmationService.saveAffirmation(affirmation);
        return "affirmation saved: " + savedAffirmationId;
    }

    @GetMapping(path = "/{affirmationId}")
    public Affirmation getAffirmationById(@PathVariable String affirmationId) {
        return affirmationService.getAffirmationById(affirmationId);
    }

    @GetMapping(path = "/")
    public List<Affirmation> getAllAffirmations() {
        return affirmationService.getAllAffirmations();
    }

    @PutMapping(path = "/{affirmationId}", consumes = {MediaType.APPLICATION_JSON_VALUE})
    public Affirmation updateAffirmation(@PathVariable String affirmationId, @RequestBody Affirmation affirmation) {
        return affirmationService.updateAffirmation(affirmationId, affirmation);
    }

    @DeleteMapping(path = "/{affirmationId}")
    public String deleteAffirmation(@PathVariable String affirmationId) {
        affirmationService.deleteAffirmation(affirmationId);
        return "affirmation deleted";
    }
}
