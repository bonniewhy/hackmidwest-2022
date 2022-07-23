package com.hackmidwest.bragbook.domain.service;

import com.hackmidwest.bragbook.domain.entity.Journey;
import com.hackmidwest.bragbook.domain.repository.JourneyRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class JourneyServiceImpl implements JourneyService{

    private final JourneyRepository journeyRepository;

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
}
