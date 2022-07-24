package com.hackmidwest.bragbook.infrastructure.repository;

import com.hackmidwest.bragbook.domain.entity.Affirmation;
import com.hackmidwest.bragbook.domain.repository.AffirmationRepository;
import com.hackmidwest.bragbook.exception.AffirmationNotFoundException;
import org.springframework.context.annotation.Lazy;

import java.util.List;
import java.util.Optional;

public class AffirmationMongoRepositoryImpl implements AffirmationRepository {

    private final AffirmationMongoRepository affirmationRepository;

    public AffirmationMongoRepositoryImpl(@Lazy AffirmationMongoRepository affirmationRepository) {
        this.affirmationRepository = affirmationRepository;
    }

    @Override
    public Affirmation saveAffirmation(Affirmation affirmation) {
        return affirmationRepository.save(affirmation);
    }

    @Override
    public Affirmation getAffirmationById(String affirmationId) {
        Optional<Affirmation> affirmation = affirmationRepository.findById(affirmationId);

        if (affirmation.isPresent()) {
            return affirmation.get();
        } else {
            throw new AffirmationNotFoundException();
        }
    }

    @Override
    public List<Affirmation> getAllAffirmations() {
        return affirmationRepository.findAll();
    }

    @Override
    public void deleteAffirmation(String affirmationId) {
        affirmationRepository.deleteById(affirmationId);
    }
}
