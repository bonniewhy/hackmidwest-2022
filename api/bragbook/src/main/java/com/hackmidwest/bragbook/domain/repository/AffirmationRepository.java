package com.hackmidwest.bragbook.domain.repository;

import com.hackmidwest.bragbook.domain.entity.Affirmation;

import java.util.List;

public interface AffirmationRepository {
    Affirmation saveAffirmation(Affirmation affirmation);

    Affirmation getAffirmationById(String affirmationId);

    List<Affirmation> getAllAffirmations();

    void deleteAffirmation(String affirmationId);
}
