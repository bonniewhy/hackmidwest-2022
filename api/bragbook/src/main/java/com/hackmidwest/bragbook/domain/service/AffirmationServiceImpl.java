package com.hackmidwest.bragbook.domain.service;

import com.hackmidwest.bragbook.domain.entity.Affirmation;
import com.hackmidwest.bragbook.domain.repository.AffirmationRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AffirmationServiceImpl implements AffirmationService {

    private final AffirmationRepository affirmationRepository;

    @Override
    public String saveAffirmation(Affirmation affirmation) {
        Affirmation savedAffirmation = affirmationRepository.saveAffirmation(affirmation);
        return savedAffirmation.getId();
    }

    @Override
    public Affirmation getAffirmationById(String affirmationId) {
        return affirmationRepository.getAffirmationById(affirmationId);
    }

    @Override
    public List<Affirmation> getAllAffirmations() {
        return affirmationRepository.getAllAffirmations();
    }

    @Override
    public Affirmation updateAffirmation(String affirmationId, Affirmation affirmation) {
        Affirmation affirmationToUpdate = affirmationRepository.getAffirmationById(affirmationId);
        Affirmation updatedAffirmation = new Affirmation().builder()
                .id(affirmationToUpdate.getId())
                .title(affirmation.getTitle())
                .person(affirmation.getPerson())
                .isPublic(affirmation.isPublic())
                .build();
        affirmationRepository.saveAffirmation(updatedAffirmation);
        return updatedAffirmation;
    }

    @Override
    public void deleteAffirmation(String affirmationId) {
        affirmationRepository.deleteAffirmation(affirmationId);
    }
}
