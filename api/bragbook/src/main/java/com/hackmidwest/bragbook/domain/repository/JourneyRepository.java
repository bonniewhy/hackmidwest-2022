package com.hackmidwest.bragbook.domain.repository;

import com.hackmidwest.bragbook.domain.entity.Journey;

import java.util.List;

public interface JourneyRepository {
    Journey getJourneyById(String journeyId);
    List<Journey> getAll();
    Journey saveJourney(Journey journey);
    void deleteJourney(String journeyId);
}
