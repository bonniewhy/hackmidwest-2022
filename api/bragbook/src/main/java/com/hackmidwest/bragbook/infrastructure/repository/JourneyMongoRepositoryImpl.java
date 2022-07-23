package com.hackmidwest.bragbook.infrastructure.repository;

import com.hackmidwest.bragbook.domain.entity.Journey;
import com.hackmidwest.bragbook.domain.repository.JourneyRepository;
import org.springframework.context.annotation.Lazy;

import java.util.List;

public class JourneyMongoRepositoryImpl implements JourneyRepository {
    private JourneyMongoRepository journeyRepository;

    public JourneyMongoRepositoryImpl(@Lazy JourneyMongoRepository journeyRepository) {
        this.journeyRepository = journeyRepository;
    }

    @Override
    public Journey getJourneyByTitle(String title) {
        return journeyRepository.findItemByTitle(title);
    }

    @Override
    public List<Journey> getAll() {
        return journeyRepository.findAll();
    }
}
