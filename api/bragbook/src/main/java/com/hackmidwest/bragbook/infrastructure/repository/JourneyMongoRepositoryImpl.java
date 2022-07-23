package com.hackmidwest.bragbook.infrastructure.repository;

import com.hackmidwest.bragbook.domain.entity.Journey;
import com.hackmidwest.bragbook.domain.repository.JourneyRepository;
import com.hackmidwest.bragbook.exception.JourneyNotFoundException;
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

        if (journey.isPresent()) {
            return journey.get();
        } else {
            throw new JourneyNotFoundException();
        }
    }

    @Override
    public List<Journey> getAll() {
        return journeyRepository.findAll();
    }

    @Override
    public Journey saveJourney(Journey journey) {
        return journeyRepository.save(journey);
    }

    @Override
    public void deleteJourney(String journeyId) {
        journeyRepository.deleteById(journeyId);
    }
}
