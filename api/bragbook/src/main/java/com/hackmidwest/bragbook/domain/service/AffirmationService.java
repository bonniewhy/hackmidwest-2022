package com.hackmidwest.bragbook.domain.service;

import com.hackmidwest.bragbook.domain.entity.Affirmation;

import java.util.List;

public interface AffirmationService {
    String saveAffirmation(Affirmation affirmation);

    Affirmation getAffirmationById(String affirmationId);

    List<Affirmation> getAllAffirmations();

    Affirmation updateAffirmation(String affirmationId, Affirmation affirmation);

    void deleteAffirmation(String affirmationId);
}
