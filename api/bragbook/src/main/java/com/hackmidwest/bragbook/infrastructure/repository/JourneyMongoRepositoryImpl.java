package com.hackmidwest.bragbook.infrastructure.repository;

import com.hackmidwest.bragbook.domain.entity.Journey;
import com.hackmidwest.bragbook.domain.repository.JourneyRepository;
import org.springframework.context.annotation.Lazy;

import java.util.List;
import java.util.Optional;

public class JourneyMongoRepositoryImpl implements JourneyRepository {
    private JourneyMongoRepository journeyRepository;

    public JourneyMongoRepositoryImpl(@Lazy JourneyMongoRepository journeyRepository) {
        this.journeyRepository = journeyRepository;
    }

    @Override
    public Journey getJourneyById(String journeyId) {
        Optional<Journey> journey = journeyRepository.findById(journeyId);

        return journey.orElseGet(() -> new Journey().builder().build());
    }

    @Override
    public List<Journey> getAll() {
        return journeyRepository.findAll();
    }

    @Override
    public void saveJourney(Journey journey) {
        journeyRepository.save(journey);
    }

    @Override
    public void deleteJourney(String journeyId) {
        journeyRepository.deleteById(journeyId);
    }
}
