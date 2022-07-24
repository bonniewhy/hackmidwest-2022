package com.hackmidwest.bragbook.domain.service;

import com.hackmidwest.bragbook.domain.entity.Journey;
import com.hackmidwest.bragbook.domain.repository.JourneyRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class JourneyServiceImpl implements JourneyService{

    private final JourneyRepository journeyRepository;

    @Override
    public String saveJourney(Journey journey) {
        Journey savedJourney = journeyRepository.saveJourney(journey);
        return savedJourney.getId();
    }

    @Override
    public Journey getJourneyById(String journeyId) {
        return journeyRepository.getJourneyById(journeyId);
    }

    @Override
    public List<Journey> getAllJourneys() {
        return journeyRepository.getAllJourneys();
    }

    @Override
    public Journey updateJourney(String journeyId, Journey journey) {
        Journey journeyToUpdate = journeyRepository.getJourneyById(journeyId);
        Journey updatedJourney = new Journey().builder()
                .id(journeyToUpdate.getId())
                .title(journey.getTitle())
                .description(journey.getDescription())
                .completed(journey.isCompleted())
                .completedDate(journey.getCompletedDate())
                .startDate(journey.getStartDate())
                .prompts(journey.getPrompts())
                .build();

        journeyRepository.saveJourney(journey);
        return updatedJourney;
    }

    @Override
    public void deleteJourney(String journeyId) {
        journeyRepository.deleteJourney(journeyId);
    }
}
